.read 0.sql

select ntile(3) over (order by point desc), point, name from student_grades;
select 
  ntile(2) over (partition by class order by point desc), 
  class, point, name 
from student_grades;

