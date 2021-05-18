-- 10부서에 해당하는 사원들에 대한 사원번호, 사원명, 부서명, 부서위치 출력
select e.empno, e.ename, d.deptno, d.loc
from emp e join dept d
on (e.deptno = d.deptno)
where e.deptno = 10;