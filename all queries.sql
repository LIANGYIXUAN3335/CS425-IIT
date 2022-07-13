select * from student;

select instructor_name from instructor;

select courseid  from course;

select dept_name from department;

select * from college;

select courseid from course;

select college_name,avg(budget) from department group by college_name;

select college_name,sum(budget) from department group by college_name;

select college_name,count(*) from department group by college_name;

select dept_name,budget from department  where budget > 10000;

select * from instructor where instructor_name like '_______%';

select dept_name,budget from department  where budget between 10000 and 12000;

select dept_name,budget from department  where budget > 10000 union all(
select dept_name,budget from department  where budget < 12000);

select dept_name,budget from department  where budget > 10000 intersect all(
select dept_name,budget from department  where budget < 12000);

select dept_name,budget from department  where budget > 10000 except all(
select dept_name,budget from department  where budget < 12000);

select dept_name,budget from department  where budget is not null;

select dept_name,budget from department   where not exists(
select dept_name,budget from department  where budget < 12000);

select dept_name,instructor_name from department natural join instructor;

select department.dept_name,instructor.instructor_name from department left join instructor on department.dept_name =instructor.dept_name;

select department.dept_name,instructor.instructor_name from department right join instructor on department.dept_name =instructor.dept_name;

select department.dept_name,instructor.instructor_name from department inner join instructor on department.dept_name =instructor.dept_name;

select department.dept_name,instructor.instructor_name from department full outer join instructor on department.dept_name =instructor.dept_name;

select department.dept_name,instructor.instructor_name from department left outer join instructor on department.dept_name =instructor.dept_name;

select department.dept_name,instructor.instructor_name from department right outer join instructor on department.dept_name =instructor.dept_name;


select studentname from student
where student.college_name in 
(select department.college_name from department 
 where building in ('jish','jiren')group by college_name );

select college_name , ( select count(*) from     student
					 where  college.college_name = student.college_name 
					 )as num_students from college ;

select  dept_name , ( select count(*) from     instructor
					 where  department.dept_name = instructor.dept_name 
					 )as num_instructors from department ;

select distinct  S.studentid , S.studentname 
from  student as S
where not exists ( select courseid
from course where college_name= 'math'）；

select dept_name from department
where budget < all (select budget
from college where college_name = 'math'); 

select college_name from  college
where budget > some (select budget
from college where college_name  = 'math'); 

select distinct courseid from students_courses_relation,student where
 student.sex='F' and student.age =20 order by courseid;

select distinct courseid from students_courses_relation where
studentid in
(select studentid from student
where student.sex='F' and student.age =20);

select instructor_name from instructor where college_name in 
(select college_name from college where budget>230000);

select distinct studentid from 
students_courses_relation  where courseid in 
(select courseid from course where instructor_name in
(select instructor.instructor_name  from instructor  
 where instructor.college_name ='engineering'));


select studentname from student
where student.college_name in 
(select department.college_name from department 
 group by college_name having avg (budget)>8400);