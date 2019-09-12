.read 0.sql

select cume_dist() over (order by point desc), point, name from student_grades;
select 
  cume_dist() over (partition by class order by point desc), 
  class, point, name 
from student_grades;

