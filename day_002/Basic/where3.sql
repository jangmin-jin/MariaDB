-- select ename, sal
-- from emp
-- where sal in (select max(sal) from emp group by deptno);

select ename, sal
from emp
where sal < all (select sal from emp where job = 'manager');