.read 0.sql

select rank() over (order by point desc), point, name from student_grades;
select 
  rank() over (partition by class order by point desc), 
  class, point, name 
from student_grades;

