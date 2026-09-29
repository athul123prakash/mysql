-- create database education_db;
 use education_db

-- create table course(course_id int primary key auto_increment,
--                     course_name varchar(20) not null unique,
--                     duration varchar(20),
--                     fee varchar(20));
                    
                    
-- create table student(student_id int primary key auto_increment,
--                     student_name varchar(20) not null ,
--                     email varchar(20) unique,
--                     age int,
--                     gender enum('F','M') default 'M',
--                     mark int,
--                     course_id int,
--                     foreign key(course_id) references course(course_id));
                    
-- insert into course(course_name,duration,fee)
-- values('python','3 months','10000'),
-- 	  ('java','5 months','15000'),
--       ('mearnstack','4 months','20000'),
--       ('datascience','6 months','25000'),
--       ('dataanalytics','6 months','30000');
      
      
-- insert into student(student_name,email,age,mark,course_id)
-- values('anu','anu@gmail.com',24,82,1),
-- 	  ('amal','amal@gmail.com',19,84,2),
--       ('abin','abin@gmail.com',24,78,1),
--       ('anas','anas@gmail.com',23,73,3),
--       ('grifith','grifith@gmail.com',26,66,4);

-- 1. Write a query to display all students who scored more than *80 marks, ordered by mark in descending order.
-- select * from student where mark>80 order by mark desc;

-- 2. Write a query to find the highest mark, lowest mark, and average mark of all students.
-- select max(mark) from student;
-- select min(mark) from student;
-- select avg(mark) from student;


-- 3. Write a query to display the top 5 students based on their marks.
-- select * from student order by mark desc limit 5;


-- 4. Write a query to display the names and marks of students whose age is between 18 and 25, ordered by age.
-- select student_name,age from student where age between 18 and 25 order by age;

-- 5. Write a query to find the number of students in each course.
--  --select course_id, count(*) from student group by course_id;



-- 6. Write a query to display the courses that have more than 2 students.
-- select course_id, count(*) from student group by course_id having count(*)>2;



-- 7. Write a query to display the student name, mark, and course name using an `INNER JOIN`.
 -- select student.student_name,student.mark,course.course_name from student inner join course
--  on course.course_id=student.course_id;



-- 8. Write a query to display all courses and their students, including courses that have no students, using a `LEFT JOIN`.
-- select student_name,course_name from course left join student on course.course_id=student.course_id;

-- 9. Write a query to display students whose marks are greater than the overall average mark using a subquery.
-- select * from student where mark>(select avg(mark) from student;



-- 10. Write a query to find the second-highest mark and display the student name, mark, and course name using a subquery and `JOIN`.
-- select student.student_name,student.mark,course.course_name from student  join course
-- on course.course_id=student.course_id order by mark desc limit 1 offset 1;
