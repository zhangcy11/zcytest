
create procedure calc_student_stat()
begin

drop table if exists student_stat;
create table student_stat as 
select name,teacher,subject,score,avg_score,total_score,score/total_score as score_rate
from student,subject,score,(select subject_id, avg(score) as avg_score from score group by subject_id) as t1,
(select student_id,sum(score) as total_score from score group by student_id) as t2
where student.id = score.student_id and subject.id = score.subject_id 
and t1.subject_id = subject.id and t2.student_id = student.id;

end;

call calc_student_stat();
select * from student_stat;
