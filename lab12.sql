## Lab 12

1. Concatenate Course Name and Semester:
    * Write a query to list all courses, concatenating the course_name and semester fields with a hyphen between them. Like this: "IT Essentials - 2024-3" 
    

 SELECT course_name || ' - ‘ || semester from courses; 


    - "IT Essentials - 2024-3"
    - "Fundamentals of Computing Logic - 2024-3"
    - "Introduction To Web Development - 2024-3"
    - "Introduction to Data Management - 2024-3"
    - "Mathematics for Computer Technology I - 2024-3"
    - "Communicating Across Contexts - 2024-3"
    - "Database Management - 2025-1"
    - "Object-Oriented Programming - 2025-1"
    - "Introduction To Full-Stack Development - 2025-1"
    - "Linux Essentials - 2025-1"
    - "Personal Finance - 2025-1"
    - "Mathematics for Computer Technology II - 2025-1"
    - "Advanced Web Programming - 2025-3"
    - "Application Development using Java - 2025-3"
    - "Software Quality Assurance - 2025-3"
    - "Web Application Development - 2025-3"
    - "System Analysis, Design And Testing - 2025-3"
    - "General Education Elective - 2025-3"
    - "Data Structures and Algorithms - 2026-1"
    - "Professional Workplace Competencies - 2026-1"
    - "Agile Software Development - 2026-1"
    - "Open Source Development - 2026-1"
    - "System Development Project - 2026-1"
    - "General Education Elective - 2026-1"
    - "Capstone Project I - 2026-3"
    - "Mobile Application Development I - 2026-3"
    - "Web Application Development Using Java - 2026-3"
    - "DevOps - 2026-3"
    - "Applied Data Science - 2026-3"
    - "Full Stack Development I - 2026-3"
    - "Capstone Project II - 2027-1"
    - "Introduction to Cyber Security - 2027-1"
    - "Mobile Application Development II - 2027-1"
    - "Applied Machine Learning - 2027-1"
    - "Full Stack Development II - 2027-1"







2. Find Courses with Labs on Fridays:
    * Write a query to find all courses that have a lab session scheduled on Friday. Include only the course_id, course_name, and lab_time in the result.

SELECT course_id, course_name, lab_time
FROM courses 
WHERE lab_time LIKE 'Fri%';


- "COMP1234"	"Introduction To Web Development"	"Fri 11"
- "COMP1168"	"Database Management"	"Fri 10"
- "GSSC1027"	"Personal Finance"	"Fri 09"
- "COMP2136"	"Software Quality Assurance"	"Fri 12"
- "COMP2154"	"System Development Project"	"Fri 14"
- "COMP3095"	"Web Application Development Using Java"	"Fri 13"
- "COMP3078"	"Capstone Project II"	"Fri 15"





3. Upcoming Assignments:
    - Write a query to list all assignments with a due date after the current date.  

select * FROM assignments where due_date > ('2024-11-22'); 
    
  
    -"13"	"COMP1168"	"Database Design Project"	"Not Started"	"2025-02-10"
    - "14"	"COMP1168"	"SQL Optimization Assignment"	"In Progress"	"2025-03-01"
    - "15"	"COMP1202"	"Java OOP Basics"	"Completed"	"2025-02-05"
    - "16"	"COMP1202"	"Inheritance and Polymorphism Task"	"Not Started"	"2025-03-15"
    - "17"	"COMP1235"	"Frontend Development Exercise"	"Completed"	"2025-02-18"
    - "18"	"COMP1235"	"Backend API Development"	"In Progress"	"2025-03-10"
    - "19"	"COMP3044"	"Linux Command Line Basics"	"Not Started"	"2025-02-25"
    - "20"	"COMP3044"	"Shell Scripting Project"	"Completed"	"2025-03-20"
    - "21"	"GSSC1027"	"Budget Planning Assignment"	"In Progress"	"2025-02-22"
    - "22"	"GSSC1027"	"Investment Strategies Essay"	"Not Started"	"2025-03-12"
    - "23"	"MATH1172"	"Probability Problem Set"	"Completed"	"2025-02-15"
    - "24"	"MATH1172"	"Complex Numbers Quiz"	"In Progress"	"2025-03-05"




4. Count Assignments by Status:
Write a query to count the number of assignments for each status (e.g., "Not Started", "In Progress", "Completed"). Hint: GROUP BY

SELECT  count(*)
FROM assignments
group by status;

"7"
"8"
"24"



5. Longest Course Name:
    * Write a query to find the course with the longest course_name. Use the length() function to compare the lengths. Hint: either use 
    ORDER BY ... DESC or do it in two steps - first find the length, then the course. 
  
  SELECT course_name, LENGTH(course_name) 
  AS name_length from courses
      order by name_length DESC;

"Introduction To Full-Stack Development"	"38"
"Mathematics for Computer Technology II"	"38"
"Web Application Development Using Java"	"38"
"Mathematics for Computer Technology I"	"37"
"System Analysis, Design And Testing"	"35"
"Professional Workplace Competencies"	"35"
"Application Development using Java"	"34"
"Mobile Application Development II"	"33"
"Mobile Application Development I"	"32"
"Fundamentals of Computing Logic"	"31"
"Introduction To Web Development"	"31"
"Introduction to Data Management"	"31"
"Data Structures and Algorithms"	"30"
"Introduction to Cyber Security"	"30"
"Communicating Across Contexts"	"29"
"Object-Oriented Programming"	"27"
"Web Application Development"	"27"
"Software Quality Assurance"	"26"
"General Education Elective"	"26"
"Agile Software Development"	"26"
"System Development Project"	"26"
"General Education Elective"	"26"
"Full Stack Development II"	"25"
"Advanced Web Programming"	"24"
"Full Stack Development I"	"24"
"Applied Machine Learning"	"24"
"Open Source Development"	"23"
"Applied Data Science"	"20"
"Database Management"	"19"
"Capstone Project II"	"19"
"Capstone Project I"	"18"
"Linux Essentials"	"16"
"Personal Finance"	"16"
"IT Essentials"	"13"
"DevOps"	"6"
    



6. Uppercase Course Names:
    * Write a query to return a list of all course names in uppercase.

SELECT upper(course_name) from courses;

"IT ESSENTIALS"
"FUNDAMENTALS OF COMPUTING LOGIC"
"INTRODUCTION TO WEB DEVELOPMENT"
"INTRODUCTION TO DATA MANAGEMENT"
"MATHEMATICS FOR COMPUTER TECHNOLOGY I"
"COMMUNICATING ACROSS CONTEXTS"
"DATABASE MANAGEMENT"
"OBJECT-ORIENTED PROGRAMMING"
"INTRODUCTION TO FULL-STACK DEVELOPMENT"
"LINUX ESSENTIALS"
"PERSONAL FINANCE"
"MATHEMATICS FOR COMPUTER TECHNOLOGY II"
"ADVANCED WEB PROGRAMMING"
"APPLICATION DEVELOPMENT USING JAVA"
"SOFTWARE QUALITY ASSURANCE"
"WEB APPLICATION DEVELOPMENT"
"SYSTEM ANALYSIS, DESIGN AND TESTING"
"GENERAL EDUCATION ELECTIVE"
"DATA STRUCTURES AND ALGORITHMS"
"PROFESSIONAL WORKPLACE COMPETENCIES"
"AGILE SOFTWARE DEVELOPMENT"
"OPEN SOURCE DEVELOPMENT"
"SYSTEM DEVELOPMENT PROJECT"
"GENERAL EDUCATION ELECTIVE"
"CAPSTONE PROJECT I"
"MOBILE APPLICATION DEVELOPMENT I"
"WEB APPLICATION DEVELOPMENT USING JAVA"
"DEVOPS"
"APPLIED DATA SCIENCE"
"FULL STACK DEVELOPMENT I"
"CAPSTONE PROJECT II"
"INTRODUCTION TO CYBER SECURITY"
"MOBILE APPLICATION DEVELOPMENT II"
"APPLIED MACHINE LEARNING"
"FULL STACK DEVELOPMENT II"




7. Assignments Due in September:
    * Write a query to list the titles of all assignments that are due in September, regardless of year. Use the LIKE operator to filter due_date.

select strftime('%M', due_date) 
AS Month, *
from assignments
where due_date like '09';

No results for this, couldn’t figure it out :(




8. Assignments with Missing Due Dates:
    * Write a query to find all assignments where the due_date is missing. Note, there are no assignments with NULL due_dates initially, but one was added if you ran the INSERT statement in the examples above. Hint: due_date IS NULL
    * Make sure you ran the INSERT ... from examples in Step 3, otherwise there are no assignments with NULL due_date

select * from assignments
where due_date is NULL;

"25"	"COMP1238"	"Assignment with no date"	"Not Started"	"null"
"26"	"COMP1238"	"Assignment with no date"	"Not Started"	"null"
"27"	"COMP1238"	"Assignment with no date"	"Not Started"	"null"
"28"	"COMP1238"	"Assignment with no date"	"Not Started"	"null"
"29"	"COMP1238"	"Assignment with no date"	"Not Started"	"null"
"30"	"COMP1238"	"Assignment with no date"	"Not Started"	"null"
"31"	"COMP1238"	"Assignment with no date"	"Not Started"	"null"
"32"	"COMP1238"	"Assignment with no date"	"Not Started"	"null"
"33"	"COMP1238"	"Assignment with no date"	"Not Started"	"null"
"34"	"COMP1238"	"Assignment with no date"	"Not Started"	"null"
"35"	"COMP1238"	"Assignment with no date"	"Not Started"	"null"
"36"	"COMP1238"	"Assignment with no date"	"Not Started"	"null"
"37"	"COMP1238"	"Assignment with no date"	"Not Started"	"null"
"38"	"COMP1238"	"Assignment with no date"	"Not Started"	"null"
"39"	"COMP1238"	"Assignment with no date"	"Not Started"	"null"
