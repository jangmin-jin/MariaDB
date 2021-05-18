-- group by 와 having 사용
select deptno, job, sum(sal)
from emp
-- where sum(sal) >= 2000
group by deptno, job
having sum(sal) >= 2000;