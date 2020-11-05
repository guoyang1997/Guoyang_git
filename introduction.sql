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