SET SEARCH_PATH TO online_learning_platform;

--domain
insert into domain values('MA','Machine learning and Artificial intelligence');
insert into domain values('AM','Applied Mathematics');
insert into domain values('CP','Competitive Programming');
insert into domain values('WD','Web Devlopement');

--colab_company
insert into colab_company values('Google');
insert into colab_company values('Amazon');
insert into colab_company values('Microsoft');
insert into colab_company values('Facebook');
insert into colab_company values('Oracle');
insert into colab_company values('Platform');

--educator
insert into educator values(default,'david','willians','davidwilliams@gmail.com',0,2.5,'Google');
insert into educator values(default,'Roy','Jones','royjones@gmail.com',0,1.5,'Amazon');
insert into educator values(default,'Glibart','Strang','glibartstrang@gmail.com',0,4.5,'Microsoft');
insert into educator values(default,'olivia','johnson','liviajohnson@gmail.com',0,1,'Facebook');
insert into educator values(default,'ellen','degenres','ellendegenres@gmail.com',0,4,'Oracle');
insert into educator values(default,'megan','fox','meganfox@gmail.com',0,5,'Google');
insert into educator values(default,'Rahul','Mishra','rahulmishra@gmail.com',0,2,'Platform');
insert into educator values(default,'shikhar','dhavan','shikhardhavan@gmail.com',0,3,'Platform');

--edu_qualification
insert into edu_qualification values(1,'p.h.d');
insert into edu_qualification values(1,'MSC');
insert into edu_qualification values(2,'p.h.d');
insert into edu_qualification values(3,'MSC');
insert into edu_qualification values(4,'p.h.d');
insert into edu_qualification values(4,'Mtech');
insert into edu_qualification values(5,'p.h.d');
insert into edu_qualification values(6,'MCA');
insert into edu_qualification values(7,'MCA');
insert into edu_qualification values(7,'p.h.d');
insert into edu_qualification values(8,'Mtech');
insert into edu_qualification values(8,'p.h.d');

--course
insert into course values('MA101','Artificial Neural Network(ALL)',12,'MA',0,1,'Live');
insert into course values('MA102','Linear regression',15,'MA',0,2,'Record');
insert into course values('MA103','Logistic regression',10,'MA',0,2,'Live');
insert into course values('MA104','Machine learning with python',9,'MA',0,3,'Live');
insert into course values('AM101','Number theory',15,'AM',0,4,'Record');
insert into course values('AM102','Probability and statistics',16,'AM',0,5,'Live');
insert into course values('CP101','DSA in C++',13,'CP',0,6,'Live');
insert into course values('CP102','JAVA Core and Advance',20,'CP',0,7,'Live');
insert into course values('CP103','Graphs and algorithms',14,'CP',0,8,'Live');
insert into course values('WD101','HTML with CSS and JavaScript',11,'WD',0,8,'Record');

--course_provide
insert into course_provide values('MA101','Neural networks');
insert into course_provide values('MA101','Deep learning');
insert into course_provide values('MA101','Artificial intelligence');
insert into course_provide values('MA102','Matplotlib');
insert into course_provide values('MA102','Linear regression models');
insert into course_provide values('MA103','Logistic regression models');
insert into course_provide values('MA103','Logistic regression algorithms');
insert into course_provide values('MA104','Machine learning models');
insert into course_provide values('MA104','Sklearn');
insert into course_provide values('AM101','Applications of number theory');
insert into course_provide values('AM102','Probability');
insert into course_provide values('CP101','DSA');
insert into course_provide values('CP102','Advanced java');
insert into course_provide values('CP103','Graph');
insert into course_provide values('WD101','CSS');
insert into course_provide values('WD101','JavaScript');

--course_prerequiste
insert into course_prerequiste values('MA101','python');
insert into course_prerequiste values('MA101','maths');
insert into course_prerequiste values('MA102','vector algebra');
insert into course_prerequiste values('MA103','python');
insert into course_prerequiste values('MA104','machine learning algorithms');
insert into course_prerequiste values('MA104','maths');
insert into course_prerequiste values('AM101','maths');
insert into course_prerequiste values('AM102','maths');
insert into course_prerequiste values('CP101','None');
insert into course_prerequiste values('CP102','Basic Java');
insert into course_prerequiste values('CP103','data structures');
insert into course_prerequiste values('WD101','None');

--record_course
insert into record_course values('MA102','Record',2);
insert into record_course values('AM101','Record',3);
insert into record_course values('WD101','Record',4);

--live_course
insert into live_course values('MA101',10000,'2020-09-09','2020-11-07','Live');
insert into live_course values('MA103',25000,'2020-07-15','2020-09-25','Live');
insert into live_course values('MA104',12000,'2020-12-12','2021-02-15','Live');
insert into live_course values('AM102',15000,'2020-06-24','2020-08-26','Live');
insert into live_course values('CP102',9000,'2021-01-02','2021-03-05','Live');
insert into live_course values('CP103',14000,'2020-08-26','2020-10-10','Live');
insert into live_course values('CP101',18000,'2020-05-28','2020-08-26','Live');

--exam
insert into exam values('exMA103',100,35,'2:00:00','2020-11-12','5:00:00','MA103');
insert into exam values('exMA104',50,18,'2:00:00','2020-09-30','3:00:00','MA104');
insert into exam values('exMA101',100,35,'2:00:00','2021-02-28','5:00:00','MA101');
insert into exam values('exAM102',80,28,'2:00:00','2020-09-10','4:00:00','AM102');
insert into exam values('exCP102',100,35,'2:00:00','2020-03-25','5:00:00','CP102');
insert into exam values('exCP103',50,18,'2:00:00','2020-10-30','3:00:00','CP103');
insert into exam values('exCP101',80,28,'2:00:00','2020-09-10','4:00:00','CP101');

--student
insert into student values(default,'pratik','shejpal','pratik123@gmail.com','M','mumbai','pratik12');
insert into student values(default,'rahul','singh','rahulsingh@gmail.com','M','delhi','rahul123');
insert into student values(default,'mukund','ladani','ladani123@gmail.com','M','agra','ladani12');
insert into student values(default,'manjal','shah','manjalshah@gmail.com','M','ahemadabad','manjal12');
insert into student values(default,'prayag','patel','patelprayag@gmail.com','M','ahemadabad','patel123');
insert into student values(default,'ishan','patel','ishanpatel@gmail.com','M','baroda','ishan123');
insert into student values(default,'shidharth','shukla','shuklasid123@gmail.com','M','kolkata','sid12345');
insert into student values(default,'paras','chhabda','paras123aa@gmail.com','M','mumbai','paras123');
insert into student values(default,'asim','riyaz','asimriyaz@gmail.com','M','mumbai','asim1234');
insert into student values(default,'nishan','sharma','nishansharma@gmail.com','M','raypur','nishan12');
insert into student values(default,'vishal','verma','vishalverma@gmail.com','M','delhi','vishal12');
insert into student values(default,'karan','kundra','karankundra@gmail.com','M','bangalore','karan123');
insert into student values(default,'donal','bhishth','donal123@gmail.com','F','punjab','donal123');
insert into student values(default,'vidhi','pandya','pandyavidhi@gmail.com','F','surat','vidhi123');
insert into student values(default,'arishfa','hussain','arishfakhan@gmail.com','F','hydrabad','arishfa1');
insert into student values(default,'afsana','khan','khanafsana@gmail.com','F','junagadh','khan1234');
insert into student values(default,'kim','jenner','jennerkim@gmail.com','F','goa','kimje123');
insert into student values(default,'dakota','johnson','dakota123@gmail.com','F','jammu','dakota12');
insert into student values(default,'jigisha','gujjar','jigishagujjar@gmail.com','F','surat','jigisha1');
insert into student values(default,'bhumi','sharma','bhumisharma@gmail.com','F','jaypur','bhumi123');
insert into student values(default,'isha','vaghani','ishavaghani@gmail.com','F','ajmer','isha1234');
insert into student values(default,'disha','patel','dishapatel@gmail.com','F','surat','disha123');
insert into student values(default,'piyush','parmar','parmarpiyush@gmail.com','M','surat','piyush12');
insert into student values(default,'maulik','patel','maulikpatel@gmail.com','M','varasani','maulik12');
insert into student values(default,'ankit','sirshath','ankit1234@gmail.com','M','madras','ankit123');
insert into student values(default,'jayesh','parmar','jayeshparmar@gmail.com','M','gwalior','jayesh12');
insert into student values(default,'manan','parikh','mananparikh@gmail.com','M','mumbai','manan123');
insert into student values(default,'manav','kumar','manavkumar@gmail.com','M','delhi','manav123');
insert into student values(default,'nishita','patel','nishitapatel@gmail.com','F','kolkata','nishita1');
insert into student values(default,'aditi','shah','aditishah@gmail.com','F','agra','aditi123');

--student_contact
insert into student_contact values(1,9854125635);
insert into student_contact values(2,9754125422);
insert into student_contact values(3,9854545454);
insert into student_contact values(4,9874521155);
insert into student_contact values(4,9754785569);
insert into student_contact values(6,9545451252);
insert into student_contact values(8,9854525252);
insert into student_contact values(8,9752523236);
insert into student_contact values(9,9745123366);
insert into student_contact values(10,9854115475);
insert into student_contact values(11,9855521457);
insert into student_contact values(12,9985857485);
insert into student_contact values(13,9854741122);
insert into student_contact values(15,9855223636);
insert into student_contact values(16,9745255585);
insert into student_contact values(17,9985774455);
insert into student_contact values(17,9985212121);
insert into student_contact values(18,9985744545);
insert into student_contact values(18,9685668574);
insert into student_contact values(18,9752452365);
insert into student_contact values(19,9998545125);
insert into student_contact values(20,9987452522);
insert into student_contact values(21,9985653322);
insert into student_contact values(22,9874521452);
insert into student_contact values(23,9855663352);
insert into student_contact values(24,9852336644);
insert into student_contact values(24,9585858545);
insert into student_contact values(27,9855663322);
insert into student_contact values(28,9744525215);
insert into student_contact values(29,9726712365);
insert into student_contact values(30,9985632145);
insert into student_contact values(29,7874542536);
insert into student_contact values(1,8956451245);

--learn
insert into learn values('MA101',1);
insert into learn values('MA101',11);
insert into learn values('MA101',21);
insert into learn values('MA101',2);
insert into learn values('MA101',12);
insert into learn values('MA102',3);
insert into learn values('MA102',13);
insert into learn values('MA102',22);
insert into learn values('MA103',4);
insert into learn values('MA103',14);
insert into learn values('MA103',23);
insert into learn values('MA103',5);
insert into learn values('MA104',15);
insert into learn values('MA104',24);
insert into learn values('MA104',6);
insert into learn values('MA104',16);
insert into learn values('AM101',25);
insert into learn values('AM101',7);
insert into learn values('AM101',17);
insert into learn values('AM101',13);
insert into learn values('AM102',18);
insert into learn values('AM102',8);
insert into learn values('CP101',1);
insert into learn values('CP101',8);
insert into learn values('CP101',6);
insert into learn values('CP102',23);
insert into learn values('CP102',10);
insert into learn values('CP102',11);
insert into learn values('CP102',28);
insert into learn values('CP102',27);
insert into learn values('CP103',29);
insert into learn values('CP103',30);
insert into learn values('CP103',19);
insert into learn values('CP103',20);
insert into learn values('CP103',17);
insert into learn values('WD101',13);

--payment
insert into payment values('dfhf123k','2020-09-01',10000,'03:25:21');
insert into payment values('jdjdk145','2020-09-01',10000,'03:20:21');
insert into payment values('jcdj125','2020-09-02',10000,'04:05:21');
insert into payment values('djddc444','2020-09-02',10000,'10:25:20');
insert into payment values('ksjdj555','2020-07-10',25000,'03:05:11');
insert into payment values('djdjc412','2020-07-09',25000,'06:25:11');
insert into payment values('jdbdc212','2020-07-08',25000,'08:20:19');
insert into payment values('dghf123k','2020-07-09',25000,'03:05:11');
insert into payment values('dxcf123k','2020-12-10',12000,'08:20:21');
insert into payment values('klflf123','2020-12-11',12000,'03:11:26');
insert into payment values('kalso123','2020-12-09',12000,'04:13:24');
insert into payment values('ijdkc145','2020-06-20',15000,'09:25:59');
insert into payment values('oskpe145','2020-06-20',15000,'10:45:38');
insert into payment values('pidcc125','2020-12-28',9000,'11:42:48');
insert into payment values('poidn147','2020-12-29',9000,'01:40:17');
insert into payment values('pocdn123','2020-12-29',9000,'10:35:24');
insert into payment values('psdef156','2020-12-28',9000,'11:30:32');
insert into payment values('152adddd','2020-12-29',9000,'08:35:33');
insert into payment values('abcde145','2020-08-24',14000,'05:12:55');
insert into payment values('ifnfk145','2020-08-20',14000,'07:09:54');
insert into payment values('enfjc147','2020-08-19',14000,'07:32:58');
insert into payment values('pdinc145','2020-08-21',14000,'08:59:13');

--take
insert into take values('MA103',4,'dfhf123k');
insert into take values('MA103',14,'jdjdk145');
insert into take values('MA103',23,'jcdj125');
insert into take values('MA103',5,'djddc444');
insert into take values('MA104',15,'ksjdj555');
insert into take values('MA104',24,'djdjc412');
insert into take values('MA104',6,'jdbdc212');
insert into take values('MA104',16,'dghf123k');
insert into take values('MA101',25,'dxcf123k');
insert into take values('MA101',7,'klflf123');
insert into take values('MA101',17,'kalso123');
insert into take values('AM102',18,'ijdkc145');
insert into take values('AM102',8,'oskpe145');
insert into take values('CP102',23,'pidcc125');
insert into take values('CP102',10,'poidn147');
insert into take values('CP102',11,'pocdn123');
insert into take values('CP102',28,'psdef156');
insert into take values('CP102',27,'152adddd');
insert into take values('CP103',29,'abcde145');
insert into take values('CP103',30,'ifnfk145');
insert into take values('CP103',19,'enfjc147');
insert into take values('CP103',20,'pdinc145');

--view_for_give is a view created for inserting data in 'give' table after checking some conditions
insert into view_for_give values('exMA103',4);
insert into view_for_give values('exMA103',14);
insert into view_for_give values('exMA103',23);
insert into view_for_give values('exMA103',5);
insert into view_for_give values('exMA104',15);
insert into view_for_give values('exMA104',24);
insert into view_for_give values('exMA104',6);
insert into view_for_give values('exMA104',16);
insert into view_for_give values('exMA101',25);
insert into view_for_give values('exMA101',7);
insert into view_for_give values('exMA101',17);
insert into view_for_give values('exAM102',18);
insert into view_for_give values('exAM102',8);
insert into view_for_give values('exCP102',23);
insert into view_for_give values('exCP102',10);
insert into view_for_give values('exCP102',11);
insert into view_for_give values('exCP102',28);
insert into view_for_give values('exCP103',29);
insert into view_for_give values('exCP103',19);
insert into view_for_give values('exCP103',20);

--result
insert into result values('exMA103',4,'pass','ksdfg147');
insert into result values('exMA103',14,'pass','kjhgl147');
insert into result values('exMA103',23,'pass','mnbvc123');
insert into result values('exMA103',5,'pass','zxcdf132');
insert into result values('exMA104',15,'pass','poisj123');
insert into result values('exMA104',24,'pass','ghfjdk12');
insert into result values('exMA104',6,'pass','asedf124');
insert into result values('exMA104',16,'fail');
insert into result values('exMA101',25,'pass','edrft345');
insert into result values('exMA101',7,'pass','tgfrd345');
insert into result values('exMA101',17,'pass','tgyhf321');
insert into result values('exAM102',18,'fail');
insert into result values('exAM102',8,'pass','rfvcd334');
insert into result values('exCP102',23,'pass','wsazx223');
insert into result values('exCP102',10,'pass','aswed224');
insert into result values('exCP102',11,'fail');
insert into result values('exCP102',28,'pass','tgfrt554');
insert into result values('exCP103',29,'pass','erfgt556');
insert into result values('exCP103',19,'pass','ujyht667');
insert into result values('exCP103',20,'pass','ujikl778');

--feedback
insert into feedback values('MA103',4,'very nice teaching quality',4,5);
insert into feedback values('MA103',23,'Watching this in 2020. Revising for Machine Learning. That guy is brilliant',5,5);
insert into feedback values('MA104',15,'Brilliant teaching, a gift to the world. Thank you prof. Strang and OCW',4,4);
insert into feedback values('MA104',24,'Is it me or this is more addictive than GOT',3,5);
insert into feedback values('AM101',25,'I love this man the way he teach and connects the subject with reality. .. Last 5 min... 💚',3,4);
insert into feedback values('AM101',7,'oh I can not stop this class I watch it all nigh',4,3);
insert into feedback values('AM101',17,'awesome lecture!!!',4,4);
insert into feedback values('CP102',10,'I love how you can actually see his brain thinking lol ',5,5);
insert into feedback values('CP102',28,'i really had to stretch my mind here !',5,4);
insert into feedback values('CP103',30,'my right ear feels wholly educated',4,5);
insert into feedback values('CP103',19,'what a great sir it is!',4,4);
insert into feedback values('MA102',3,'Nice explanation',4,4);
insert into feedback values('MA102',13,'Amazing course',4,5);
insert into feedback values('CP102',23,'Wow',5,5);
insert into feedback values('MA101',1,'Moderate level',3,3);
insert into feedback values('AM102',8,'Not that good',2,3);
insert into feedback values('CP101',6,'Boring',3,1);

--time_table
insert into time_table values('MA103','02:00:00','4:00:00');
insert into time_table values('MA104','03:00:00','5:00:00');
insert into time_table values('MA101','02:30:00','4:30:00');
insert into time_table values('AM102','02:00:00','3:00:00');
insert into time_table values('CP102','03:30:00','5:00:00');
insert into time_table values('CP103','04:30:00','5:30:00');
insert into time_table values('CP101','02:45:00','4:45:00');

--week_days
insert into week_days values('MA103','monday');
insert into week_days values('MA103','wednesday');
insert into week_days values('MA103','friday');
insert into week_days values('MA104','tuesday');
insert into week_days values('MA104','thursday');
insert into week_days values('MA101','tuesday');
insert into week_days values('MA101','thursday');
insert into week_days values('AM102','monday');
insert into week_days values('AM102','friday');
insert into week_days values('AM102','thursday');
insert into week_days values('CP102','tuesday');
insert into week_days values('CP102','monday');
insert into week_days values('CP102','friday');
insert into week_days values('CP103','thursday');
insert into week_days values('CP103','friday');
insert into week_days values('CP101','wednesday');

