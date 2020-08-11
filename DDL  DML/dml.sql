/*2.DML*/

-- 插入记录 --
insert into student values 
('003','王五',24,'男');

-- 修改记录 --
update student set name='赵六' where id = '003';

-- 删除记录 --
delete from student where id = '003';

-- 查询记录 --
select * from student where id = '002';