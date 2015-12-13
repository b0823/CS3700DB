---Lori/Brad/Jenna CS 3700 Little Scribbles DB project
----This file drops the old tables and create's the tables with the correct contraints.

DROP TABLE ls_students CASCADE CONSTRAINTS;
DROP TABLE ls_child_ownership CASCADE CONSTRAINTS;
DROP TABLE ls_school CASCADE CONSTRAINTS;

DROP TABLE LS_Busing CASCADE CONSTRAINTS;
DROP TABLE LS_Billing CASCADE CONSTRAINTS;
DROP TABLE LS_Parents CASCADE CONSTRAINTS;

DROP TABLE ls_forms CASCADE CONSTRAINTS;
DROP TABLE ls_lesson_plan CASCADE CONSTRAINTS;
DROP TABLE ls_teachers CASCADE CONSTRAINTS;
DROP SEQUENCE ls_forms_form#_seq;

---switched order of table declarations so fk's would be there when necessary

CREATE TABLE ls_school(
  school# NUMBER(2) CONSTRAINT ls_school_school#_pk PRIMARY KEY,
  school_name VARCHAR2(20),
  address VARCHAR2(30),
  zipcode NUMBER(5),
  city VARCHAR2(15),
  state CHAR(2) DEFAULT 'OH',
  school_phone# NUMBER(10)
);

CREATE TABLE LS_Busing(
	bus# NUMBER(2) CONSTRAINT LS_BUSING_bus#_pk PRIMARY KEY, 
	buslastoilchange DATE, 
	busmilage NUMBER(7)
);

CREATE TABLE ls_teachers( ---made employment status name contraint shorter due to 30 character max.
  teacher# NUMBER (4),
  room# NUMBER (2),
  lname VARCHAR (20),
  gender CHAR(1) CONSTRAINT ls_teachers_gender_cc CHECK (gender in ('M', 'F')),
  fname VARCHAR (20),
  address VARCHAR (30),
  city VARCHAR (15) DEFAULT 'CENTERVILLE',
  state CHAR (2) DEFAULT 'OH',
  email VARCHAR (30),
  home# NUMBER (10),
  cell_phone# NUMBER (10),
  emergency_contact VARCHAR(40),
  emergency# NUMBER (10) NOT NULL,
  edu_level CHAR (2),
  salary NUMBER (8,2),
  emp_status CHAR (2),
  CONSTRAINT ls_teachers_teacher#_pk PRIMARY KEY(teacher#),
  CONSTRAINT ls_teachers_room#_uk UNIQUE(room#),
  CONSTRAINT ls_teachers_edu_level_cc CHECK (edu_level IN ('CT', 'BS', 'MS')),
  CONSTRAINT ls_teachers_emp_status_cc CHECK (emp_status IN ('PT', 'FT'))
);

CREATE TABLE ls_lesson_plan(---switched weekday to varchar from day. Think that was accident
  lp# NUMBER (4),
  teacher# NUMBER (4),
  lpname VARCHAR (20),
  field_trip_status VARCHAR (3), 
  field_trip_location VARCHAR (40),
  field_trip_date DATE,
  weekday VARCHAR(10),
  CONSTRAINT ls_lesson_plan_lp#_pk PRIMARY KEY(lp#),
  CONSTRAINT ls_lesson_plan_teacher#_fk FOREIGN KEY(teacher#) 
  REFERENCES ls_teachers(teacher#) ON DELETE CASCADE,
  CONSTRAINT ls_lesson_plan_weekday_cc CHECK (weekday IN('MONDAY', 'TUESDAY', 'WEDNESDAY',
  'THURSDAY', 'FRIDAY'))
);

CREATE TABLE ls_students( ---teacher to teachers
  student# NUMBER(5) CONSTRAINT students_student#_pk PRIMARY KEY,
  gender CHAR(1) CONSTRAINT ls_students_gender_cc CHECK (gender in ('M', 'F')),
  lname VARCHAR2(20),
  fname VARCHAR(20),
  address VARCHAR(30),
  city VARCHAR(20) ,
  state CHAR(2) DEFAULT 'OH',
  zipcode NUMBER(5),
  dob DATE,
  bus# NUMBER(2) CONSTRAINT ls_busing_bus#_fk REFERENCES ls_busing (bus#),
  school# NUMBER(2) CONSTRAINT ls_school_school#_fk REFERENCES ls_school (school#),
  teacher# NUMBER(4) CONSTRAINT ls_teachers_teacher#_fk REFERENCES ls_teachers (teacher#),
  student_pic BLOB
);


CREATE TABLE LS_Parents(---Changed constraint name due to interference w/ child ownership
	parent# NUMBER(5) CONSTRAINT LS_PARENTS_parent#_pk PRIMARY KEY,
	lastname VARCHAR2(20), 
	firstname VARCHAR2(20),
  gender CHAR(1) CONSTRAINT ls_parents_gender_cc CHECK (gender in ('M', 'F')),
	address VARCHAR2(45), 
	city VARCHAR2(20), 
	state CHAR(2) DEFAULT 'OH', 
	dayphone NUMBER(10), 
	eveningphone NUMBER(10),  
	cell_phone NUMBER(10),  
	email VARCHAR2(45), 
	employer VARCHAR2(45), 
	employer_address VARCHAR2(45),
	spouse NUMBER(5) CONSTRAINT LS_PARENTS_SELF_parent#_fk REFERENCES LS_Parents (parent#),
	employeer_phone NUMBER(10)
);

CREATE TABLE ls_child_ownership( 
  student# NUMBER(5) CONSTRAINT LS_STUDENTS_student#_fk REFERENCES ls_students (student#),
  parent# NUMBER(5) CONSTRAINT LS_PARENTS_parent#_fk REFERENCES ls_parents (parent#),
  relation VARCHAR(15) CONSTRAINT ls_child_ownership_relation_cc CHECK (relation IN ('Mother', 
  'Father', 'Grandparent', 'Aunt', 'Uncle', 'Guardian', 'Other'))
);

CREATE TABLE LS_Billing(
	billing# NUMBER(9) CONSTRAINT LS_BILLING_billing#_pk PRIMARY KEY,
	student# NUMBER(5) CONSTRAINT LS_bill_STUDENTS_student#_fk REFERENCES LS_STUDENTS (student#), 
	billed_amt NUMBER(5, 2),
	current_amt NUMBER(5, 2), 
	billing_code NUMBER(3), 
	due_date DATE, 
	amt_paid NUMBER(7, 2)
);

CREATE TABLE ls_forms(
  form# NUMBER (5),
  form_name VARCHAR (30),
  student# NUMBER (5),
  distribution_date DATE,
  due_date DATE,
  date_received DATE,
  exp_date DATE,
  CONSTRAINT ls_forms_form#_pk PRIMARY KEY(form#),
  CONSTRAINT ls_forms_student#_fk FOREIGN KEY(student#) REFERENCES ls_students(student#) ON DELETE CASCADE
);

CREATE SEQUENCE ls_forms_form#_seq
INCREMENT BY 3
START WITH 250;