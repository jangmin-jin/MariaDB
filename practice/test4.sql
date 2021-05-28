create user tester2@'%' identified by '123456';
grant all privileges on sample.* to tester2@'%';

use mysql;
SELECT host, user, password from user;

DROP user tester2@localhost;

create table EMP2 as select * from EMP where 1 != 1;
SELECT * FROM emp2;
show tables;
use sample;
drop view emp_vu1;