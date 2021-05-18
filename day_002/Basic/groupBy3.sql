-- 직업, 부서에서 직업별 인원수 구하기
select job, deptno, count(job)
from emp
group by job, deptno;