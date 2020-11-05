/*
    关系型数据库（数据表）：sqlite   db2  mysql  oracle  access  sql  Server
    非关系型数据库（key-value）
*/

select user();

---  退出mysql  ---
quit；
exit；

--- 创建账号 ---
--- 制定某一个IP
create user 'bruce'@'119.3.45.25';
--- 指定网段
create user 'bruce'@'119.3.45.%';

--- 所有IP（机器）都能访问
create user 'bruce'@'%';

--- 远程登陆指令 ---
mysql -u root -p 123456 -h 119.3.45.25;

--- 查看某一个账号权限 ---
show grants for 'bruce'@'119.3.45.25';

--- 给账号授权 ---
grant all on *.* to 'bruce'@'%';
flush privileges;  /*刷新权限*/

--- 创建一个账号并授权 ---
grant all on *.* to 'bruce'@'%' identified by '123456'


/*
    SQL 结构性查询语言 ，分成三种类型
    1 DDL  数据库定义语言：数据库，数据表，视图，索引，存储过程  比如：create drop alter
    2 DML  数据库操纵语言: 插入 insert  删除 delete  更新 update  查询 select
    3 DCL  数据库控制语言：控制用户访问权限  grant  revoke
*/

---  创建一个数据库  ---
create database 'db1' charset utf8;
show databases;
alter database 'db1' charset gbk;
dorp database 'db1';

---  操作表  ---
use db1;
create table 'tab1'(id int,name char);
show tables;
alter table 'tab1' modify 'name' char(3);  /*修改数据类型*/
alter tables 'tab1' change 'name' 'username' 