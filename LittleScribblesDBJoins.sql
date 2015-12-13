---Lori/Brad/Jenna CS 3700 Little Scribbles DB project
---This file is uses a various number of different selections and join to show what can be found in the data.

SELECT (a.FIRSTNAME || ' ' || a.LASTNAME )AS "Parent", NVL2(b.FIRSTNAME,  (b.FIRSTNAME || ' ' || b .LASTNAME ), 'No Known Spouse')  AS  "Souse"
FROM S45.LS_PARENTS a LEFT OUTER JOIN S45.LS_PARENTS b
ON a.SPOUSE = b.PARENT#;


SELECT '$' || sum(current_amt) as "Total Outstanding",
to_Char(sum(amt_paid)/sum(billed_amt), '99.999') as "Percentage Paid on Open Bills" 
FROM S45.LS_BILLING where (current_amt > 0 );


Select fname AS "First", lname AS "Last", DOB, TO_CHAR(TRUNC((SYSDATE - DOB)/ 365.25), 0) AS "Age"
FROM s45.ls_students;

Select student#, TO_CHAR(AVG(billed_amt)) "Avg"
FROM s45.ls_billing
GROUP BY student#
ORDER BY student#;

CREATE INDEX ls_students_lname ON s45.ls_students (lname);

SELECT teacher# AS "Teacher#", salary AS "Salary", edu_level AS "Education Level", CASE
WHEN (edu_level = 'MS') THEN 'Their starting salary is $45,000'
WHEN (edu_level = 'BS') THEN 'Their starting salary is $35,000'
WHEN (edu_level = 'CT') THEN 'Their starting salary is $30,000'
ELSE 'Not certified to be a teacher.'
END
"Starting Salary"
FROM s45.ls_teachers;


--final_sql_lori
--Part II, Section 1, part e: Create a view and explain its purpose
-- Create a View for ls_teachers table:
-- This teacher's view was created for the ls_teachers table.  It allows every teacher 
-- access to the data; however, that data is restricted due to its sensitive nature. 
-- Teachers will be able to view the following information about their co-workers:
-- teacher#			room#			lname			fname
-- address			city			state			zip
-- email			home#			cell#
-- Having access to this information will allow teachers to communicate with one another. 
-- on topics such as lesson plans, students issues, and field trips. Teachers will still
-- be in contact after school hours since they will have access to email or phone 
-- numbers.

CREATE VIEW teachers_view
AS SELECT teacher#, room#, lname, fname, address, city, state, zip, email, home#, 
cell_phone# 
FROM ls_teachers
WITH READ ONLY;

--Part II, Section 3, part d: 3 Inner Joins using min 3 tables and a restriction
--select (s.fname || ' '|| s.lname) AS Student FROM ls_students s; 
--The director is searching for those students who are past due in their 
--forms submissions. The director needs to see the student's name, 
--their parent's name, which forms are overdue, the expriration date, 
--and how late the forms are (in days)
select (s.fname || ' '|| s.lname) AS Student, 
(p.firstname || ' ' ||  p.lastname) AS Parent,
f.form_name, f.exp_date,TRUNC((SYSDATE - exp_date), 0) DELAY
FROM ls_forms f JOIN ls_students s USING(student#)
JOIN ls_child_ownership USING(student#)
JOIN ls_parents p USING(parent#)
WHERE ((SYSDATE - exp_date) > 0);

--Part II, Section 3, part e: Outer Join using min 2 tables w/restriction
--Select statement that displays the lesson plans for students who are less than 4 years
--old or who turned 4 as of the beginning of 2014. It also displays the student's names, 
--and the last name of the teacher. Restriction is dob less than 2011
SELECT l.lpname AS LESSON, 
t.lname AS TEACHER, 
(s.fname || ' ' || s.lname) AS STUDENT
FROM ls_students s JOIN ls_teachers t USING(teacher#)
LEFT OUTER JOIN ls_lesson_plan l USING(teacher#)
WHERE s.dob < '01-JAN-2011';

---SPOOL OFF; 