.read 0.sql

select first_value(point) over (order by point desc), point, name from student_grades;
select 
  first_value(point) over (partition by class order by point desc), 
  point, name 
from student_grades;

