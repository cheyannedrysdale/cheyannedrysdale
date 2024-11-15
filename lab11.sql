
--1. Write a query to display the title and due_date of assignments for the course COMP1234.

SELECT * FROM assignments 
WHERE course_id LIKE 'COMP1234'
ORDER BY due_date;

"5"	"COMP1234"	"HTML/CSS Basics"	"Not Started"	"2024-09-20"
"6"	"COMP1234"	"JavaScript Interactive Page"	"Not Started"	"2024-10-10"

  


--2. Write a query to find the earliest assignment due date in the assignments table.  

select min(due_date) from assignments;

"2024-09-10"


  

--3. Write a query to find the latest assignment due date in the assignments table.  

select max(due_date) from assignments;

"2025-03-20"
  

  
  
--4. Write a query to find the title and course_id of assignments due on 2024-10-08.

select * FROM assignments
WHERE due_date = '2024-10-08';

"8"	"COMP1238"	"Data Normalization Task"	"In Progress"	"2024-10-08"
  
  

  
--5. Write a query to display the title and due_date of assignments due in October 2024. 

SELECT * FROM assignments
WHERE due_date LIKE '2024-10%';

"2"	"COMP1151"	"Hardware Installation Project"	"In Progress"	"2024-10-01"
"4"	"COMP1236"	"Algorithm Design Task"	"In Progress"	"2024-10-05"
"6"	"COMP1234"	"JavaScript Interactive Page"	"Not Started"	"2024-10-10"
"8"	"COMP1238"	"Data Normalization Task"	"In Progress"	"2024-10-08"
"10"	"MATH1162"	"Linear Algebra Quiz"	"Not Started"	"2024-10-15"
"12"	"COMM2000"	"Presentation Project"	"Not Started"	"2024-10-20"


  

--6. Write a query to find the most recent due_date of assignments with a status of "Completed".  

SELECT * FROM assignments
WHERE status = 'Completed'
and due_date < '2024-11-15';

"3"	"COMP1236"	"Logic Gates Exercise"	"Completed"	"2024-09-10"
"7"	"COMP1238"	"SQL Query Assignment"	"Completed"	"2024-09-18"
"9"	"MATH1162"	"Calculus Problem Set"	"Completed"	"2024-09-12"


