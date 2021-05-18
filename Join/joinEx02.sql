-- join where / join on / join using 을 이용한 테이블 조인
select * 
from emp inner join dept
-- from emp join dept
-- where emp.deptno = dept.deptno;
on emp.deptno = dept.deptno;
-- using (deptno);