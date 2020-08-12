# 1.查询同时存在1课程和2课程的情况
SELECT C1.studentid, C3.name, C3.age, C3.sex, C1.score AS score1, 
	C2.score AS score2 
FROM (SELECT * FROM student_course WHERE courseid = 1) AS C1 
	inner JOIN (SELECT * FROM student_course WHERE courseid = 2) AS C2 
    ON C1.studentid = C2.studentid 
	inner JOIN student AS C3 
    ON C1.studentid = C3.id;

# 2.查询同时存在1课程和2课程的情况
SELECT C1.studentid, C3.name, C3.age, C3.sex, C1.score AS score1, 
	C2.score AS score2 
FROM (SELECT * FROM student_course WHERE courseid = 1) AS C1 
	inner JOIN (SELECT * FROM student_course WHERE courseid = 2) AS C2 
    ON C1.studentid = C2.studentid 
	inner JOIN student AS C3 
    ON C1.studentid = C3.id;

# 3.查询平均成绩大于等于60分的同学的学生编号和学生姓名和平均成绩
SELECT S1.id, S1.name, S2.avg AS 平均成绩 
FROM Student AS S1 
INNER JOIN (
SELECT studentid, AVG(score) AS avg 
FROM student_course 
GROUP BY studentid 
HAVING AVG(score) >= 60) AS S2 
ON S1.id = S2.studentid;

# 4.查询在student_course表中不存在成绩的学生信息的SQL语句
select * from student
where id not in (select studentId from student_course); 

# 5.查询所有有成绩的SQL
select * from student
where id in (select  distinct studentId from student_course); 

# 6.查询学过编号为1并且也学过编号为2的课程的同学的信息
SELECT C1.studentid, C3.name, C3.age, C3.sex
FROM (SELECT * FROM student_course WHERE courseid = 1) AS C1 
	inner JOIN (SELECT * FROM student_course WHERE courseid = 2) AS C2 
    ON C1.studentid = C2.studentid 
	inner JOIN student AS C3 
    ON C1.studentid = C3.id;

# 7.检索1课程分数小于60，按分数降序排列的学生信息
select S.id, S.name, S.age, S.sex, score 
FROM 
(SELECT * FROM student_course WHERE courseid = 1 AND score < 60) AS A1 
INNER JOIN Student AS S 
ON A1.studentid = S.id 
ORDER BY score DESC;


# 8.查询每门课程的平均成绩，结果按平均成绩降序排列，平均成绩相同时，按课程编号升序排列
SELECT C.name, C.id, AVG(SC.score) 
FROM student_course as SC 
 INNER JOIN course AS C 
   ON SC.courseid = C.id 
GROUP BY C.id,C.name
ORDER BY AVG(SC.Score) DESC, C.id;

# 9.查询课程名称为"数学"，且分数低于60的学生姓名和分数
SELECT S.name, C.name, SC.score 
FROM student AS S INNER JOIN student_course as SC 
	ON S.id = SC.studentid 
INNER JOIN course AS C 
	ON SC.courseid = C.id 
WHERE C.name = '数学' AND SC.score < 60;