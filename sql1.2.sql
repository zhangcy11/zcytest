/*学生考试系统的数据库*/
create database student_examination_sys；

/*学生表*/
create table student (
id varchar(8) NOT NULL primary key,
name varchar(12),
age int CHECK(age>0),
sex varchar(2) NOT NULL CHECK(sex in ('男','女'))
)

insert into student values 
('001','张三',18,'男'),
('002','李四',20,'女')

/*考试科目表*/
create table subject (
id varchar(8) NOT NULL primary key,
subject varchar(16),
teacher varchar(16),
description varchar(100)
)

insert into subject values
('1001','语文','王老师','本次考试比较简单'),
('1002','数学','刘老师','本次考试比较难')

/*成绩表*/
create table score (
id int not null,
student_id varchar(8) NOT NULL,
subject_id varchar(10) NOT NULL,
score float NOT NULL,
foreign key (student_id) references student(id),
foreign key (subject_id) references subject(id)
)

insert into score values
(1,'001','1001','80'),
(2,'002','1002','60'),
(3,'001','1001','70'),
(4,'002','1002','60.5')

select * from student;
select * from subject;
select * from score;