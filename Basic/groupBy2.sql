-- 직업, 부서 에서 최고 급여 구하기
select job, deptno, max(sal)
from emp
group by job, deptno;