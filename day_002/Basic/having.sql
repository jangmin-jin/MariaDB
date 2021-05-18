-- where 사용
select deptno, job, sum(sal)
from emp
where sal >= 2000
group by deptno, job
having sum(sal) >= 2000
order by 3;