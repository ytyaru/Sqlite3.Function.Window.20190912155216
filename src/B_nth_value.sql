.read 0.sql

select nth_value(point, 2) over (order by point desc), point, name from student_grades;
select 
  nth_value(point,2) over (partition by class order by point desc), 
  point, name 
from student_grades;

