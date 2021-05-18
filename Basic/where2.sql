-- 단일행 서브쿼리
select ename, job, deptno, sal
from emp
where sal = (select max(sal) from emp);