-- BLAKE 보다 높은 급여를 받는 사원의 사번, 이름, 급여를 출력하시오
select empno, ename, sal
from emp
where sal > (select sal from emp where ename ='BLAKE');

-- MILLER보다 늦게 입사한 사원의 사번, 이름, 입사일을 출력하시오
-- select empno, ename, hiredate
-- from emp
-- where hiredate < (select hiredate from emp where ename = 'MILLER');