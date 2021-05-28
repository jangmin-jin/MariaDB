select * from EMP order by empno asc limit 0, 2;
select concat(ename, '님의 연봉은 ', (sal*12+ifnull(comm, 0)), '원 입니다.') from EMP where deptno=30;
select concat( ename, '님의 연봉은 ', truncate( sal*12+ifnull(comm, 0), 0), '원 입니다.' ) '연봉' from EMP where deptno=10;
select concat( ename, '님의 연봉은 ', truncate( sal*12+ifnull(comm, 0), 0), '원 입니다.' ) '연봉' from EMP where deptno=10;

SELECT * FROM emp;
select ename, sal from EMP where sal >= (select sal from EMP where ename ='scott');
select ename, sal from EMP where sal > (select sal from EMP where ename ='scott');
select ename, sal from EMP where sal > ( select sal from EMP where ename ='scott' );
show databases;
use sample;
show tables;
desc EMP;
show create table EMP;
select count(*) from EMP;
select * from EMP order by empno asc limit 0, 2;
select * from EMP order by empno limit 0, 2;