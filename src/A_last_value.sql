.read 0.sql

select last_value(point) over (order by point desc), point, name from student_grades;
select 
  last_value(point) over (partition by class order by point desc), 
  point, name 
from student_grades;
select 
  last_value(point) over (
    order by point desc
    range between unbounded preceding and unbounded following), 
  point, name 
from student_grades;

