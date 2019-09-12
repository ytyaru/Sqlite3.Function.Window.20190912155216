.read 0.sql

select lag(point) over (order by point desc), point, name from student_grades;
select lag(point,2) over (order by point desc), point, name from student_grades;
select lag(point,2,-1) over (order by point desc), 
  point, name 
  from student_grades;

