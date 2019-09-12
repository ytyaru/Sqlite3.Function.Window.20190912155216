.read 0.sql

select row_number() over (order by rowid) from (select 'A' value union select 'B');
select row_number() over(order by rowid) from student_grades;
select row_number() over(order by rowid) rownum, name from student_grades;
select 
  class,
  row_number() over(partition by class order by rowid) rownum, 
  name 
from student_grades;

