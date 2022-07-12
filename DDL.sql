--DROP SCHEMA online_learning_platform CASCADE;

CREATE SCHEMA online_learning_platform;
SET SEARCH_PATH TO online_learning_platform;

CREATE TABLE domain(
	did char(2) primary key check(did != ''),
	dname varchar(50) not NULL check(dname != '') unique
)

CREATE TABLE colab_company(
	comp_name varchar(30) primary key check(comp_name != '')
)

CREATE TABLE educator(
	eid serial primary key,
	fname varchar(20) not null,
	lname varchar(20) not null,
	email_id varchar(60) unique not null,
	rating decimal(3,2) not null check(rating>=0 and rating<=5),
	exeperience_in_years decimal(3,1) check(exeperience_in_years >=0),
	company_name varchar(30) references colab_company(comp_name) ON DELETE CASCADE ON UPDATE CASCADE
)

CREATE TABLE edu_qualification(
	eid int not null check(eid>0),
	qualification varchar(20) check(qualification != '') not null,
	unique(eid,qualification),
	foreign key(eid) references educator(eid) ON DELETE CASCADE ON UPDATE CASCADE	
)

CREATE TABLE course(	
    cid char(5) primary key,
	course_name varchar(50) check(course_name != '') unique not null,
	no_of_lesson int check(no_of_lesson >= 0),
	domain_id varchar(2) not null,
	rating decimal(3,2) not null check(rating>=0 and rating<=5),
	eid int not null check(eid>0),
	type_of_course varchar(6) not null check(type_of_course in ('Live','Record')),
	unique(cid,type_of_course),
	foreign key(domain_id) references domain(did) ON DELETE CASCADE ON UPDATE CASCADE,
	foreign key(eid) references educator(eid) ON DELETE SET NULL ON UPDATE CASCADE
)

CREATE TABLE course_provide(
	cid char(5) not null,
	providing_skill varchar(100) check(Providing_skill != ''),
	unique(cid,Providing_skill),
	foreign key(cid) references course(cid) ON DELETE CASCADE ON UPDATE CASCADE	
)

CREATE TABLE course_prerequiste(
	cid char(5) not null,
	prerequiste_skill varchar(100) check(prerequiste_skill != ''),
	unique(cid,prerequiste_skill),
	foreign key(cid) references course(cid) ON DELETE CASCADE ON UPDATE CASCADE	
)

CREATE TABLE record_course(
	record_id char(5) primary key,
	type varchar(6) not null check(type='Record'),
	estimated_time_in_months decimal(3,1) check(estimated_time_in_months > 0) not null,
	foreign key(record_id,type) references course(cid,type_of_course) ON DELETE CASCADE ON UPDATE CASCADE	
)

CREATE TABLE live_course(
	live_id char(5) primary key,
	fees int check(fees > 0 and fees<100000) not null,
	start_date date not null,
	end_date date not null check(end_date > start_date),
	type varchar(6) not null check(type='Live'),
	foreign key(live_id,type) references course(cid,type_of_course) ON DELETE CASCADE ON UPDATE CASCADE	
)

create table exam(
	exam_id char(7) primary key,
	total_marks int not null check(total_marks>0 and total_marks<=100),
	passing_marks int not null check(passing_marks <= total_marks*0.8 ),
	start_time time not null,
	exam_date date not null,
	end_time time not null check(end_time > start_time ),
	live_id char(5) not null unique,
	foreign key(live_id) references live_course(live_id) ON DELETE CASCADE ON UPDATE CASCADE	
)

CREATE TABLE student(
	sid serial primary key,
	fname varchar(25) not null check(fname != ''),
	lname varchar(25) not null check(lname != ''),
	email_id varchar(40) unique not null check(email_id != ''),
	gender char(1) check(gender in ('F','M','O')),
	city varchar(20),
	student_password char(8) unique not null check(student_password != '')
)

CREATE TABLE student_contact(
	sid int not null check(sid>0),
	contact_no BIGINT CONSTRAINT TenDigits CHECK (contact_no BETWEEN 1000000000 and 9999999999),
	foreign key(sid) references student(sid) ON DELETE CASCADE ON UPDATE CASCADE,
	unique (sid,contact_no)
)

CREATE TABLE learn(
	cid char(5) not null,
	sid int not null check(sid>0),
	unique (cid , sid),
	foreign key(cid) references course(cid) ON DELETE NO ACTION ON UPDATE CASCADE,
	foreign key(sid) references student(sid) ON DELETE CASCADE ON UPDATE CASCADE	
)

CREATE TABLE payment(
	pid char(8) primary key,
	pay_date date not null,
	amount int not null check(amount > 0 and amount < 100000),
	pay_time time not null
)

CREATE TABLE take(
	live_id char(5) not null,
	sid int not null check(sid>0),
	pid char(8) not null unique,
	unique (live_id , sid),
	foreign key(pid) references payment(pid) ON DELETE CASCADE ON UPDATE CASCADE	
)

CREATE TABLE give(
	exam_id char(7) not null,
	sid int not null check(sid>0),
	unique (exam_id , sid),
	foreign key(exam_id) references exam(exam_id) ON DELETE CASCADE ON UPDATE CASCADE,
	foreign key(sid) references student(sid) ON DELETE CASCADE ON UPDATE CASCADE	
)

CREATE TABLE result (
	exam_id char(7) not null,
	sid int not null check(sid>0),
	status char(4) not null check(status in ('pass','fail')),
	certificate_id char(8) unique,
	unique (exam_id,sid),
	foreign key(exam_id,sid) references give(exam_id,sid) ON DELETE CASCADE ON UPDATE CASCADE
)

create table feedback(
	cid char(5) not null,
	sid int not null check(sid>0),
	comment text,
	rating_course int not null check(rating_course>=1 and rating_course<=5),
	rating_mentor int not null check(rating_mentor>=1 and rating_mentor<=5),
	unique (cid , sid),	
	foreign key(cid,sid) references learn(cid,sid) ON DELETE CASCADE ON UPDATE CASCADE
)

create table time_table(
	live_id char(5) not null unique,
	start_time time not null,
	end_time time not null check(end_time > start_time),
	foreign key(live_id) references live_course(live_id) ON DELETE CASCADE ON UPDATE CASCADE
)

create table week_days(
	live_id char(5) not null,
	week_day varchar(9) not null check(week_day in ('monday','tuesday','wednesday','thursday','friday')),
	unique (live_id,week_day),
	foreign key(live_id) references time_table(live_id) ON DELETE CASCADE ON UPDATE CASCADE
)
