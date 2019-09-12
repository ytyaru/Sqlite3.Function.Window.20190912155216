.read 0.sql

select lead(point) over (order by point desc), point, name from student_grades;
select lead(point,2) over (order by point desc), point, name from student_grades;
select lead(point,2,-1) over (order by point desc), 
  point, name 
  from student_grades;

