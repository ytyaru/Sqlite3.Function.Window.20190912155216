.read 0.sql

select percent_rank() over (order by point desc), point, name from student_grades;
select 
  percent_rank() over (partition by class order by point desc), 
  class, point, name 
from student_grades;

