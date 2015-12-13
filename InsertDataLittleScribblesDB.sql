---Lori/Brad/Jenna CS 3700 Little Scribbles DB project
---This file inserts all of the sample data necesarry.


--del old data
delete from s45.ls_billing;
delete from S45.LS_LESSON_PLAN;
delete from S45.LS_CHILD_OWNERSHIP;
delete from s45.ls_parents;
delete from S45.LS_STUDENTS;
delete from s45.ls_school;
delete from s45.ls_teachers;
delete from s45.ls_parents;
delete from s45.ls_busing;

--to verify use below block
/* select * from s45.ls_school;
select * from s45.ls_busing;
select * from s45.ls_billing;
select * from s45.ls_parents;
select * from s45.LS_CHILD_OWNERSHIP;
select * from s45.LS_LESSON_PLAN;
select * from s45.ls_teachers;
select * from s45.ls_forms;
select * from s45.ls_parents; */

---cs3700 enter data to little scribbles database
---schools
INSERT INTO s45.ls_school
VALUES(1, 'Stingley Elementary', '95 Linden Drive', 45459, 'Dayton', DEFAULT, 9374341054);
INSERT INTO s45.ls_school
VALUES(2, 'Cline Elementary', '99 Virginia Ave', 45458, 'Dayton', DEFAULT, 9374351315);
INSERT INTO s45.ls_school
VALUES(3, 'Normandy Elementary', '401 Normandy Ridge Road', 45459, 'Dayton', DEFAULT, 9374340917);
INSERT INTO s45.ls_school
VALUES(4, 'Weller Elementary', '9600 Sheehan Road', 45458, 'Dayton', DEFAULT, 9378853273);

---busing
INSERT INTO s45.ls_BUSING VALUES(1, to_date('17 Mar 2015','dd MON YYYY') , 125555);
INSERT INTO s45.ls_BUSING VALUES(2, to_date('1 Jan 2015','dd MON YYYY'), 25000);
INSERT INTO s45.ls_BUSING VALUES(3, to_date('22 Dec 2014','dd MON YYYY'), 123122);
INSERT INTO s45.ls_BUSING VALUES(4, to_date('21 Feb 2015','dd MON YYYY'), 525252);


---teachers
INSERT INTO S45.ls_teachers (teacher#, room#, lname, fname, gender, address, city, state, zip,
email, home#, cell_phone#, emergency_contact, emergency#, edu_level, salary, emp_status)
VALUES (100, 1, 'ACOSTA', 'AVA', 'F', '123 CENTERVILLE STATION RD', 'CENTERVILLE', 
DEFAULT, 45458,'aacosta100@gmail.com', 9374345555, 9372213434, 'MIGUEL ACOSTA', 
9372558878, 'MS', 50000,'FT');

INSERT INTO S45.ls_teachers(teacher#, room#, lname, fname, gender, address, city, state, zip,
email, home#, cell_phone#, emergency_contact, emergency#, edu_level, salary, emp_status)
VALUES (102, 2, 'MUELLER', 'REBECCA', 'F', '1355 PELWOOD DR', 'CENTERVILLE', DEFAULT, 45459,
'becca@gmail.com', 9374356543, 9372252178, 'DAVID MUELLER', 9374569009, 'MS', 48000,
'FT');

INSERT INTO S45.ls_teachers(teacher#, room#, lname, fname, gender, address, city, state, zip, 
email, home#, cell_phone#, emergency_contact, emergency#, edu_level, salary, emp_status) 
VALUES (104, 3, 'FREY', 'DIANA', 'F', '3234 AMBRIDGE RD', 'CENTERVILLE', DEFAULT, 45458,
'frey55@gmail.com', 9374342929, 9375340931, 'ANDY FREY', 9375340932, 'MS', 50000,
'FT');

INSERT INTO S45.ls_teachers (teacher#, room#, lname, fname, gender, address, city, state, zip, 
email, home#, cell_phone#, emergency_contact, emergency#, edu_level, salary, emp_status)
VALUES (106, 4, 'GEBHART', 'LILY', 'F', '580 LYNNFIELD DRIVE', 'KETTERING', DEFAULT, 45429,
'lilgebhart@msn.com', 9374350317, 9374638825, 'MAE GEBHART', 9374332197, 'CT', 35000,
'PT');

INSERT INTO S45.ls_teachers (teacher#, room#, lname, fname, gender, address, city, state, zip, 
email, home#, cell_phone#, emergency_contact, emergency#, edu_level, salary, emp_status)
VALUES (108, 5, 'HINES', 'MARY', 'F', '55 GUTHRIE ROAD', 'MIAMISBURG', DEFAULT, 45439,
'stargazer@gmail.com', 9374452131, 9374789002, 'CHRISTOPHER HINES', 9374789003, 'BS', 
40000,'PT');

INSERT INTO S45.ls_teachers(teacher#, room#, lname, fname, gender, address, city, state, zip, 
email, home#, cell_phone#, emergency_contact, emergency#, edu_level, salary, emp_status) 
VALUES (110, 6, 'ROBBINS', 'DAVID', 'M', '3211 BRADSTREET RD', 'CENTERVILLE', DEFAULT, 45458,
'redrobbins@gmail.com', 9374246541, 9378542793, 'ISABELLA ROBBINS', 9378652196, 'BS', 
36000,'PT');

INSERT INTO S45.ls_teachers(teacher#, room#, lname, fname, gender, address, city, state, zip, 
email, home#, cell_phone#, emergency_contact, emergency#, edu_level, salary, emp_status) 
VALUES (112, 7, 'DANTHORP', 'DOMINIC', 'M', '3211 QUAKER WAY', 'CENTERVILLE', DEFAULT, 45458,
'adanthrop97@gmail.com', 9374345680, 9372035672, 'JESSICA DANTHORP', 9372035673, 'CT', 
30000,'PT');


---lesson plans
INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0100, 100, 'STORY TIME 1', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0200, 102, 'STORY TIME 2', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0300, 103, 'STORY TIME 3', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0400, 104, 'STORY TIME 4', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0500, 105, 'STORY TIME 5','F', NULL, NULL, NULL);



INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0101, 100, 'NAP TIME 1', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0201, 102, 'NAP TIME 2', 'F', NULL, NULL, NULL);


INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0102, 100, 'MUSIC 1', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0202, 102, 'MUSIC 2', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0302, 103, 'MUSIC 3', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0402, 104, 'MUSIC 4', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0502, 105, 'MUSIC 5', 'F', NULL, NULL, NULL);


INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0103, 100, 'PLAY TIME', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0203, 102, 'PLAY TIME 1', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0303, 103, 'PLAY TIME 2', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0403, 104, 'PLAY TIME 3', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0503, 105, 'PLAY TIME 4', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0603, 106, 'PLAY TIME 5', 'F', NULL, NULL, NULL);


INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0104, 100, 'MOTOR SKILLS 1', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0204, 102, 'MOTOR SKILLS 2', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0304, 103, 'MOTOR SKILLS 3', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0205, 102, 'ART 1', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0305, 103, 'ART 2', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0405, 104, 'ART 3', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0505, 105, 'ART 4', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0605, 106, 'ART 5', 'F', NULL, NULL, NULL);


INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0206, 102, 'ABC 1', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0306, 103, 'ABC 2', 'F', NULL, NULL, NULL);


INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0207, 102, 'NUMBERS 1', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0307, 103, 'NUMBERS 2', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0208, 102, 'COLORS 1', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0308, 103, 'COLORS 2', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0310, 103, 'WRITING 1', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#, teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0410, 104, 'WRITING 2', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0411, 104, 'HOMEWORK TIME 1', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0511, 105, 'HOMEWORK TIME 1', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0611, 106, 'HOMEWORK TIME 3', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0312, 103, 'LIBRARY 1', 'T', 'CENTERVILLE LIBRARY', 
TO_DATE('04/06/2015', 'MM/DD/YYYY'), 'MONDAY');

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0412, 104, 'LIBRARY 2', 'T', 'CENTERVILLE LIBRARY', 
TO_DATE('04/07/2015', 'MM/DD/YYYY'), 'TUESDAY');

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0512, 105, 'LIBRARY 3', 'T', 'CENTERVILLE LIBRARY', 
TO_DATE('04/08/2015', 'MM/DD/YYYY'),'WEDNESDAY');

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0612, 106, 'LIBRARY 4', 'T', 'CENTERVILLE LIBRARY', 
TO_DATE('04/09/2015', 'MM/DD/YYYY'), 'THURSDAY');

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0313, 103, 'PARK 1', 'T', 'GRANT PARK', 
TO_DATE('04/13/2015', 'MM/DD/YYYY'), 'MONDAY');

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0413, 104, 'PARK 2', 'T', 'GRANT PARK', 
TO_DATE('04/14/2015', 'MM/DD/YYYY'), 'TUESDAY');

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0513, 105, 'PARK 3', 'T', 'GRANT PARK', 
TO_DATE('04/15/2015', 'MM/DD/YYYY'), 'WEDNESDAY');

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0613, 106, 'PARK 4', 'T', 'GRANT PARK', 
TO_DATE('04/16/2015', 'MM/DD/YYYY'), 'THURSDAY');

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0414, 104, 'ROCK WALL 1', 'T', 'REC CTR', 
TO_DATE('04/20/2015', 'MM/DD/YYYY'), 'MONDAY');

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0514, 105, 'ROCK WALL 2', 'T', 'REC CTR', 
TO_DATE('04/22/2015', 'MM/DD/YYYY'), 'TUESDAY');

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0614, 106, 'ROCK WALL 3', 'T', 'REC CTR', 
TO_DATE('04/23/2015', 'MM/DD/YYYY'), 'WEDNESDAY');

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0215, 102, 'SWIM 1', 'T', 'REC CTR', 
TO_DATE('04/27/2015', 'MM/DD/YYYY'), 'MONDAY');

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0315, 103, 'SWIM 2', 'T', 'REC CTR', 
TO_DATE('04/28/2015', 'MM/DD/YYYY'), 'TUESDAY');

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0415, 104, 'SWIM 3', 'T', 'REC CTR', 
TO_DATE('04/29/2015', 'MM/DD/YYYY'), 'WEDNESDAY');

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0515, 105, 'SWIM 4', 'T', 'REC CTR', 
TO_DATE('04/30/2015', 'MM/DD/YYYY'), 'THURSDAY');

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0615, 106, 'SWIM 5', 'T', 'REC CTR', 
TO_DATE('05/01/2015', 'MM/DD/YYYY'), 'FRIDAY');

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0316, 103, 'READING 1', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0416, 104, 'READING 2 ', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0516, 105, 'READING 3 ', 'F', NULL, NULL, NULL);

INSERT INTO s45.ls_lesson_plan(lp#,teacher#, lpname, ftstatus, field_trip_location, 
field_trip_date, weekday)
VALUES(0616, 106, 'READING 4 ', 'F', NULL, NULL, NULL);



----parents
INSERT INTO s45.ls_PARENTS VALUES(1, 'Baker', 'Shelly', 'F', 9376348080, 9377450950, 9371239090, 'shelly.baker@mail.com', 'Mail Company', '32 North Main Street', NULL, 9378549687 );

INSERT INTO s45.ls_PARENTS VALUES(2, 'Perkins', 'Rob', 'M', 9378754891, 9378754891, 9378459687, 'rob@directtv.com', 'Direct TV', '68 Loop Road', NULL, 9378462561 );

INSERT INTO s45.ls_PARENTS VALUES(3, 'Sawyer', 'Tom', 'M', 9373432323, 8459645656, 9378456987, 'sawyer232@aol.com', NULL, NULL, NULL, NULL );

INSERT INTO s45.ls_PARENTS VALUES(4, 'Bates', 'Sandra', 'F', 323456879, 9375846874, 9378456664, 'sandra43@yahoo.com', 'Nullcorp', '56 Blue Street', NULL, 9379998723 );

INSERT INTO s45.ls_PARENTS VALUES(5, 'Jennings', 'Elizabeth', 'F', 9378901325, 9378901325, 9378901325, 'elizabeth.34@ball.com', 'Ball Aerospace', '2500 West Street', NULL, 9371846565 );

INSERT INTO s45.ls_PARENTS VALUES(6, 'Watson', 'Sandra', 'M', 9378542154, 9378542154, 9376856565, 'watson.76@kayak.co.uk', 'Kayak', '131 3rd Street', NULL, 9376508545 );

INSERT INTO s45.ls_PARENTS VALUES(7, 'Jones', 'Jimmy', 'F', 9372323651, 9372323651, 9372323651, 'jones.54@powerprinting.com', 'Power Printing', '200 Green Street', NULL, 9376854231 );

INSERT INTO s45.ls_PARENTS VALUES(8, 'Watson', 'Tim', 'M', 9376654532, 9376654532, 9376654532, 'tim.watson@gmail.com', 'Kroger', '8165 North Xenia Road', 6, 9372216598 );

INSERT INTO S45.LS_PARENTS VALUES(9, 'Perkins', 'Ann', 'F', 9378754891, 9378754891, 9375239090, 'perkins54@wright.edu', 'Meijer', '25 Acorn Drive', 2, 9377789467  );

INSERT INTO s45.ls_PARENTS VALUES(10, 'Bates', 'Daniel', 'M', 323456879, 9375846874, 9378468888, 'bates.250@gmail.com', 'Marion''s Pizza', '32 North Elm Street', 4, 9373679851 );

UPDATE s45.ls_parents SET  spouse = 8 where parent# = 6;
UPDATE s45.ls_parents SET  spouse = 9 where parent# = 2;
UPDATE s45.ls_parents SET  spouse = 10 where parent# = 4;


---students
INSERT INTO s45.ls_students
VALUES(60001, 'M', 'Baker', 'Colton', '2465 Wilmington Pike', 'Dayton', DEFAULT,45459,  TO_DATE('04/29/2012', 'MM/DD/YYYY'), 
NULL, NULL, 104, EMPTY_BLOB());
INSERT INTO s45.ls_students
VALUES(60002, 'F', 'Perkins', 'Jessa', '7825 Main St', 'Dayton', DEFAULT, 45459,TO_DATE('09/15/2009', 'MM/DD/YYYY'), 
1, 1, 106, EMPTY_BLOB());
INSERT INTO s45.ls_students
VALUES(60003, 'F', 'Perkins', 'Sarah', '7825 Main St', 'Dayton', DEFAULT, 45459,TO_DATE('02/02/2014', 'MM/DD/YYYY'), 
NULL, NULL, 108, EMPTY_BLOB());
INSERT INTO s45.ls_students
VALUES(60004, 'M', 'Sawyer', 'Dylan', '2587 Brown St', 'Dayton',  DEFAULT,45458, TO_DATE('09/15/2008', 'MM/DD/YYYY'), 
1, 4, 110, EMPTY_BLOB());
INSERT INTO s45.ls_students
VALUES(60005, 'M', 'Bates', 'Conner', '25 North Broad St', 'Dayton',  DEFAULT,45459, TO_DATE('04/01/2014', 'MM/DD/YYYY'), 
NULL, NULL, 112, EMPTY_BLOB());
INSERT INTO s45.ls_students
VALUES(60006, 'F', 'Darke', 'Ava', '505 East St', 'Dayton', DEFAULT,45458, TO_DATE('05/22/2007', 'MM/DD/YYYY'), 
3, 4, 112, EMPTY_BLOB());
INSERT INTO s45.ls_students
VALUES(60007, 'F', 'Watson', 'Claire', '6894 Cable Rd', 'Dayton', DEFAULT, 45458, TO_DATE('10/30/2007', 'MM/DD/YYYY'), 
3, 2, 100, EMPTY_BLOB());
INSERT INTO s45.ls_students
VALUES(60008, 'M', 'Watson', 'Zachary', '6894 Cable Rd', 'Dayton',  DEFAULT,45458, TO_DATE('11/11/2005', 'MM/DD/YYYY'), 
4, 2, 100, EMPTY_BLOB());
INSERT INTO s45.ls_students
VALUES(60009, 'M', 'Watson', 'John', '6894 Cable Rd', 'Dayton',  DEFAULT,45459, TO_DATE('07/25/2012', 'MM/DD/YYYY'), 
NULL, NULL, 100, EMPTY_BLOB());
INSERT INTO s45.ls_students
VALUES(60010, 'F', 'Black', 'Rachael', '5589 Irvine Rd', 'Dayton', DEFAULT,45459, TO_DATE('03/19/2008', 'MM/DD/YYYY'), 
1, 3, 102, EMPTY_BLOB());

---child ownership
INSERT INTO s45.ls_child_ownership
VALUES(60001, 1, 'Mother');

INSERT INTO s45.ls_child_ownership
VALUES(60002, 2, 'Father');

INSERT INTO s45.ls_child_ownership
VALUES(60003, 2, 'Father');

INSERT INTO s45.ls_child_ownership
VALUES(60002, 9, 'Mother');

INSERT INTO s45.ls_child_ownership
VALUES(60003, 9, 'Mother');

INSERT INTO s45.ls_child_ownership
VALUES(60004, 3, 'Grandparent');

INSERT INTO s45.ls_child_ownership
VALUES(60005, 4, 'Mother');

INSERT INTO s45.ls_child_ownership
VALUES(60005, 10, 'Father');

INSERT INTO s45.ls_child_ownership
VALUES(60006, 5, 'Aunt');

INSERT INTO s45.ls_child_ownership
VALUES(60007, 6, 'Mother');

INSERT INTO s45.ls_child_ownership
VALUES(60008, 6, 'Mother');

INSERT INTO s45.ls_child_ownership
VALUES(60009, 6, 'Mother');

INSERT INTO s45.ls_child_ownership
VALUES(60007, 8, 'Father');

INSERT INTO s45.ls_child_ownership
VALUES(60008, 8, 'Father');

INSERT INTO s45.ls_child_ownership
VALUES(60009, 8, 'Father');

INSERT INTO s45.ls_child_ownership
VALUES(60010, 7, 'Guardian');


---billing
INSERT INTO s45.ls_BILLING VALUES(1, 60001, 500.00, 0, 1, to_date('28 Feb 2015','dd MON YYYY'), 500.00 );
INSERT INTO s45.ls_BILLING VALUES(2, 60002, 500.00, 0, 1, to_date('28 Feb 2015','dd MON YYYY'), 500.00 );
INSERT INTO s45.ls_BILLING VALUES(3, 60003, 500.00, 0, 1, to_date('28 Feb 2015','dd MON YYYY'), 500.00 );
INSERT INTO s45.ls_BILLING VALUES(4, 60004, 500.00, 0, 1, to_date('28 Feb 2015','dd MON YYYY'), 500.00 );
INSERT INTO s45.ls_BILLING VALUES(5, 60005, 500.00, 0, 1, to_date('28 Feb 2015','dd MON YYYY'), 500.00 );
INSERT INTO s45.ls_BILLING VALUES(6, 60006, 500.00, 0, 1, to_date('28 Feb 2015','dd MON YYYY'), 500.00 );
INSERT INTO s45.ls_BILLING VALUES(7, 60007, 500.00, 0, 1, to_date('28 Feb 2015','dd MON YYYY'), 500.00 );
INSERT INTO s45.ls_BILLING VALUES(8, 60008, 500.00, 0, 1, to_date('28 Feb 2015','dd MON YYYY'), 500.00 );
INSERT INTO s45.ls_BILLING VALUES(9, 60009, 500.00, 0, 1, to_date('28 Feb 2015','dd MON YYYY'), 500.00 );
INSERT INTO s45.ls_BILLING VALUES(10, 60010, 500.00, 0, 1, to_date('28 Feb 2015','dd MON YYYY'), 500.00 );

INSERT INTO s45.ls_BILLING VALUES(11, 60001, 500.00, 0, 1, to_date('31 Mar 2015','dd MON YYYY'), 500.00 );
INSERT INTO s45.ls_BILLING VALUES(12, 60002, 500.00, 0, 1, to_date('31 Mar 2015','dd MON YYYY'), 500.00 );
INSERT INTO s45.ls_BILLING VALUES(13, 60003, 500.00, 0, 1, to_date('31 Mar 2015','dd MON YYYY'), 500.00 );
INSERT INTO s45.ls_BILLING VALUES(14, 60004, 500.00, 0, 1, to_date('31 Mar 2015','dd MON YYYY'), 500.00 );
INSERT INTO s45.ls_BILLING VALUES(15, 60005, 500.00, 0, 1, to_date('31 Mar 2015','dd MON YYYY'), 500.00 );
INSERT INTO s45.ls_BILLING VALUES(16, 60006, 500.00, 0, 1, to_date('31 Mar 2015','dd MON YYYY'), 500.00 );
INSERT INTO s45.ls_BILLING VALUES(17, 60007, 500.00, 0, 1, to_date('31 Mar 2015','dd MON YYYY'), 500.00 );
INSERT INTO s45.ls_BILLING VALUES(18, 60008, 500.00, 0, 1, to_date('31 Mar 2015','dd MON YYYY'), 500.00 );
INSERT INTO s45.ls_BILLING VALUES(19, 60009, 500.00, 0, 1, to_date('31 Mar 2015','dd MON YYYY'), 500.00 );
INSERT INTO s45.ls_BILLING VALUES(20, 60010, 500.00, 0, 1, to_date('31 Mar 2015','dd MON YYYY'), 500.00 );

INSERT INTO s45.ls_BILLING VALUES(21, 60001, 500.00,0, 1, to_date('30 Apr 2015','dd MON YYYY'), 0 );
INSERT INTO s45.ls_BILLING VALUES(22, 60002, 500.00,0, 1, to_date('30 Apr 2015','dd MON YYYY'), 0 );
INSERT INTO s45.ls_BILLING VALUES(23, 60003, 500.00,0, 1, to_date('30 Apr 2015','dd MON YYYY'), 500.00 );
INSERT INTO s45.ls_BILLING VALUES(24, 60004, 500.00,0, 1, to_date('30 Apr 2015','dd MON YYYY'), 500.00 );
INSERT INTO s45.ls_BILLING VALUES(25, 60005, 500.00,0, 1, to_date('30 Apr 2015','dd MON YYYY'), 500.00 );
INSERT INTO s45.ls_BILLING VALUES(26, 60006, 500.00,0, 1, to_date('30 Apr 2015','dd MON YYYY'), 250.00 );
INSERT INTO s45.ls_BILLING VALUES(27, 60007, 500.00,0, 1, to_date('30 Apr 2015','dd MON YYYY'), 500.00 );
INSERT INTO s45.ls_BILLING VALUES(28, 60008, 500.00,0, 1, to_date('30 Apr 2015','dd MON YYYY'), 100.00 );
INSERT INTO s45.ls_BILLING VALUES(29, 60009, 500.00,0, 1, to_date('30 Apr 2015','dd MON YYYY'), 500.00 );
INSERT INTO s45.ls_BILLING VALUES(30, 60010, 500.00,0, 1, to_date('30 Apr 2015','dd MON YYYY'), 50.00 );

INSERT INTO s45.ls_BILLING VALUES(31, 60002, 15.00, 15.00, 2, to_date('16 Apr 2015','dd MON YYYY'), 0 );
INSERT INTO s45.ls_BILLING VALUES(32, 60006, 20.00, 5,  2, to_date('18 Apr 2015','dd MON YYYY'), 15.00 );
INSERT INTO s45.ls_BILLING VALUES(33, 60010, 32.00, 22, 3, to_date('28 Apr 2015','dd MON YYYY'), 10.00 );


---forms
--forms with sequence for PK
--student 60001, AGE 3 
INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'MEDICAL FORM', 60001, 
TO_DATE('03/03/2014', 'MM/DD,YYYY'), 
TO_DATE('03/17/2014', 'MM/DD/YYYY'),
TO_DATE('03/10/2014', 'MM/DD/YYYY'),
TO_DATE('03/10/2015', 'MM/DD/YYYY')
);

INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'EMERGENCY CONTACT', 60001, 
TO_DATE('03/03/2014', 'MM/DD,YYYY'), 
TO_DATE('03/17/2014', 'MM/DD/YYYY'),
TO_DATE('03/10/2014', 'MM/DD/YYYY'),
TO_DATE('03/10/2015', 'MM/DD/YYYY')
);

INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'STUDENT INFORMATION', 60001, 
TO_DATE('03/03/2014', 'MM/DD,YYYY'), 
TO_DATE('03/17/2014', 'MM/DD/YYYY'),
TO_DATE('03/25/2014', 'MM/DD/YYYY'),
TO_DATE('03/25/2015', 'MM/DD/YYYY')
);


--student 60002, AGE 6, ATTENDS KINDERGARTEN AT THE CENTER 
INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'MEDICAL FORM', 60002, 
TO_DATE('08/11/2014', 'MM/DD,YYYY'), 
TO_DATE('08/25/2014', 'MM/DD/YYYY'),
TO_DATE('08/25/2014', 'MM/DD/YYYY'),
TO_DATE('08/11/2015', 'MM/DD/YYYY')
);

INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'EMERGENCY CONTACT', 60002, 
TO_DATE('08/11/2014', 'MM/DD,YYYY'), 
TO_DATE('08/25/2014', 'MM/DD/YYYY'),
TO_DATE('08/25/2014', 'MM/DD/YYYY'),
TO_DATE('08/11/2015', 'MM/DD/YYYY')
);

INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'STUDENT INFORMATION', 60002, 
TO_DATE('08/11/2014', 'MM/DD,YYYY'), 
TO_DATE('08/25/2014', 'MM/DD/YYYY'),
TO_DATE('08/25/2014', 'MM/DD/YYYY'),
TO_DATE('08/11/2015', 'MM/DD/YYYY')
);


--student 60003, AGE 1 ok
INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'MEDICAL FORM', 60003, 
TO_DATE('03/31/2015', 'MM/DD,YYYY'), 
TO_DATE('04/14/2015', 'MM/DD/YYYY'),
NULL,
NULL
);

INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'EMERGENCY CONTACT', 60003, 
TO_DATE('03/31/2015', 'MM/DD,YYYY'), 
TO_DATE('04/14/2015', 'MM/DD/YYYY'),
NULL,
NULL
);

INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'STUDENT INFORMATION', 60003, 
TO_DATE('03/31/2015', 'MM/DD,YYYY'), 
TO_DATE('04/14/2015', 'MM/DD/YYYY'),
NULL,
NULL
);


--student 60004, AGE 7, BUS RIDER
INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'MEDICAL FORM', 60004, 
TO_DATE('01/05/2015', 'MM/DD,YYYY'), 
TO_DATE('01/19/2015', 'MM/DD/YYYY'),
TO_DATE('01/15/2015', 'MM/DD/YYYY'),
TO_DATE('01/15/2016', 'MM/DD/YYYY')
);

INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'BUSING FORM', 60004, 
TO_DATE('01/05/2015', 'MM/DD,YYYY'), 
TO_DATE('01/19/2015', 'MM/DD/YYYY'),
TO_DATE('01/15/2015', 'MM/DD/YYYY'),
TO_DATE('01/15/2016', 'MM/DD/YYYY')
);

INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'EMERGENCY CONTACT', 60004, 
TO_DATE('01/05/2015', 'MM/DD,YYYY'), 
TO_DATE('01/19/2015', 'MM/DD/YYYY'),
TO_DATE('01/15/2014', 'MM/DD/YYYY'),
TO_DATE('01/15/2016', 'MM/DD/YYYY')
);

INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'STUDENT INFORMATION', 60004, 
TO_DATE('01/05/2015', 'MM/DD,YYYY'), 
TO_DATE('01/19/2015', 'MM/DD/YYYY'),
TO_DATE('01/15/2015', 'MM/DD/YYYY'),
TO_DATE('01/15/2016', 'MM/DD/YYYY')
);


--student 60005, AGE 1
INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'MEDICAL FORM', 60005, 
TO_DATE('02/26/2015', 'MM/DD,YYYY'), 
TO_DATE('03/19/2015', 'MM/DD/YYYY'),
TO_DATE('03/25/2015', 'MM/DD/YYYY'),
TO_DATE('03/25/2016', 'MM/DD/YYYY')
);

INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'EMERGENCY CONTACT', 60005, 
TO_DATE('02/26/2015', 'MM/DD,YYYY'), 
TO_DATE('03/19/2015', 'MM/DD/YYYY'),
TO_DATE('03/19/2015', 'MM/DD/YYYY'),
TO_DATE('03/25/2016', 'MM/DD/YYYY')
);

INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'STUDENT INFORMATION', 60005, 
TO_DATE('02/26/2015', 'MM/DD,YYYY'), 
TO_DATE('03/19/2015', 'MM/DD/YYYY'),
TO_DATE('03/25/2015', 'MM/DD/YYYY'),
TO_DATE('03/25/2016', 'MM/DD/YYYY')
);


--student 60006, AGE 8, BUS RIDER
INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'MEDICAL FORM', 60006, 
TO_DATE('10/22/2014', 'MM/DD,YYYY'), 
TO_DATE('11/05/2014', 'MM/DD/YYYY'),
TO_DATE('11/15/2014', 'MM/DD/YYYY'),
TO_DATE('11/15/2015', 'MM/DD/YYYY')
);

INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'BUSING FORM', 60006, 
TO_DATE('10/22/2014', 'MM/DD,YYYY'), 
TO_DATE('11/05/2014', 'MM/DD/YYYY'),
TO_DATE('11/15/2014', 'MM/DD/YYYY'),
TO_DATE('11/15/2015', 'MM/DD/YYYY')
);

INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'EMERGENCY CONTACT', 60006, 
TO_DATE('10/22/2014', 'MM/DD,YYYY'), 
TO_DATE('11/05/2014', 'MM/DD/YYYY'),
TO_DATE('11/15/2014', 'MM/DD/YYYY'),
TO_DATE('11/15/2015', 'MM/DD/YYYY')
);

INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'STUDENT INFORMATION', 60006, 
TO_DATE('10/22/2014', 'MM/DD,YYYY'), 
TO_DATE('11/05/2014', 'MM/DD/YYYY'),
TO_DATE('11/15/2014', 'MM/DD/YYYY'),
TO_DATE('11/15/2015', 'MM/DD/YYYY')
);


--student 60007, AGE 8, SIB TO 60008, 60009
INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'MEDICAL FORM', 60007, 
TO_DATE('04/09/2015', 'MM/DD,YYYY'), 
TO_DATE('04/23/2015', 'MM/DD/YYYY'),
NULL,
NULL
);

INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'BUSING FORM', 60007, 
TO_DATE('04/09/2015', 'MM/DD,YYYY'), 
TO_DATE('04/23/2015', 'MM/DD/YYYY'),
NULL,
NULL
);

INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'EMERGENCY CONTACT', 60007, 
TO_DATE('04/09/2015', 'MM/DD,YYYY'), 
TO_DATE('04/23/2015', 'MM/DD/YYYY'),
NULL,
NULL
);

INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'STUDENT INFORMATION', 60007, 
TO_DATE('04/09/2015', 'MM/DD,YYYY'), 
TO_DATE('04/23/2015', 'MM/DD/YYYY'),
NULL,
NULL
);

--student 60008, AGE 10, SIB TO 60007, 60009
INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'MEDICAL FORM', 60008, 
TO_DATE('04/09/2015', 'MM/DD,YYYY'), 
TO_DATE('04/23/2015', 'MM/DD/YYYY'),
NULL,
NULL
);

INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'BUSING FORM', 60008, 
TO_DATE('04/09/2015', 'MM/DD,YYYY'), 
TO_DATE('04/23/2015', 'MM/DD/YYYY'),
NULL,
NULL
);

INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'EMERGENCY CONTACT', 60008, 
TO_DATE('04/09/2015', 'MM/DD,YYYY'), 
TO_DATE('04/23/2015', 'MM/DD/YYYY'),
NULL,
NULL
);

INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'STUDENT INFORMATION', 60008, 
TO_DATE('04/09/2015', 'MM/DD,YYYY'), 
TO_DATE('04/23/2015', 'MM/DD/YYYY'),
NULL,
NULL
);

--student 60009, AGE 3, SIBS 60007, 60008
INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'MEDICAL FORM', 60009, 
TO_DATE('04/09/2015', 'MM/DD,YYYY'), 
TO_DATE('04/23/2015', 'MM/DD/YYYY'),
NULL,
NULL
);


INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'EMERGENCY CONTACT', 60009, 
TO_DATE('04/09/2015', 'MM/DD,YYYY'), 
TO_DATE('04/23/2015', 'MM/DD/YYYY'),
NULL,
NULL
);

INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'STUDENT INFORMATION', 60009, 
TO_DATE('04/09/2015', 'MM/DD,YYYY'), 
TO_DATE('04/23/2015', 'MM/DD/YYYY'),
NULL,
NULL
);


--student 60010, AGE 7, BUS RIDER
INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'MEDICAL FORM', 60010, 
TO_DATE('04/09/2015', 'MM/DD,YYYY'), 
TO_DATE('04/23/2015', 'MM/DD/YYYY'),
NULL,
NULL
);

INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'EMERGENCY CONTACT', 60010, 
TO_DATE('04/09/2015', 'MM/DD,YYYY'), 
TO_DATE('04/23/2015', 'MM/DD/YYYY'),
NULL,
NULL
);

INSERT INTO S45.ls_forms(form#, form_name, student#, distribution_date, due_date,
date_received, exp_date)
VALUES(ls_forms_form#_seq.NEXTVAL, 'STUDENT INFORMATION', 60010, 
TO_DATE('04/09/2015', 'MM/DD,YYYY'), 
TO_DATE('04/23/2015', 'MM/DD/YYYY'),
NULL,
NULL
);


COMMIT; ---uncomment when ready to really run this
