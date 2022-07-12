set search_path to online_learning_platform

--views

----guest

------instructors details
select * from educator
create view instructors_details
as 
select fname ||' '|| lname as name,exeperience_in_years as experience,company_name as company,rating from educator order by rating desc

select * from instructors_details
------drop view instructors_details

------course details
create view course_details
as
select cid as course_id,course_name as name,company_name as company,c.rating,fname ||' '|| lname as instructor,no_of_lesson as lessons,prerequiste_skill,providing_skill 
from (course natural join course_prerequiste natural join course_provide) as c join educator as e on c.eid=e.eid order by c.rating desc

select * from course_details
------drop view course_details

------feedback details
create view feedback_details
as
select course_name,comment,fname||' '||lname as name from feedback natural join course natural join student

select * from feedback_details
------drop view feedback_details


----user 

------course_time_table 
create view course_time_table
as
select live_id as course_id,course_name,start_date,end_date,week_day as lecture_on_day,start_time||'-'||end_time as lecture_timing
from (live_course natural join week_days natural join time_table) as a join course on course.cid = a.live_id

select * from course_time_table
------drop view course_time_table

------view created for trigger
create view view_for_give as
select * from give;
------drop view view_for_give


--triggers

----(1) trigger for inserting data in table named 'give' after checking some conditions
create or replace function func() 
returns trigger as $BODY$
declare
	num1 char(5);
	num2 char(8);
begin
	select live_id into num1 from exam where exam_id=new.exam_id;
	select pid into num2 from take where live_id=num1 and sid=new.sid;
	if num2 is not null then
		insert into give values(new.exam_id,new.sid);
	else
		raise notice 'You cannot add this data to "give" table';
	end if;
	return new;
end;
$BODY$
language plpgsql;

create trigger func
instead of insert
on view_for_give
for each row
execute procedure func();

----(2) trigger for updating rating in educator and course table
create or replace function update_rating() 
returns trigger as $BODY$
declare
	num1 decimal(3,2);
	num2 decimal(3,2);
	num3 int;
	num4 decimal(3,2);
	num5 decimal(3,2);
begin
	select count(*) into num1 from feedback where cid=new.cid;
	select rating into num2 from course where cid=new.cid;
	update course set rating=(((num1-1)*num2) + new.rating_course)/num1 where cid=new.cid;
	
	select eid into num3 from feedback natural join course where cid=new.cid;
	select rating into num4 from educator where eid=num3;
	select count(*) into num5 from feedback natural join course where eid=num3;
	update educator set rating=(((num5-1)*num4) + new.rating_mentor)/num5 where eid=num3;
	return new;
end;
$BODY$
language plpgsql;

create trigger update_rating
after insert
on feedback
for each row
execute procedure update_rating();

--stored procedure

----this stored procedure will check whether given student has taken particular course or not
create or replace procedure has_taken(student_id integer, course_id varchar(5), INOUT b bool)
language plpgsql as $proc$
declare
	r record;
begin
	select * into r from learn where sid=student_id and cid=course_id;
	if r is null then
		b=false;
	else
		b=true;
	end if;
end;$proc$

----call has_taken(1,'MA101',true)
