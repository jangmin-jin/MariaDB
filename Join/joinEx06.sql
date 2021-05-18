-- 세개 이상의 테이블 join 하기
-- 사원들에 대한 사원번호, 사원명, 부서명, 부서위치, 호봉 출력
select empno, ename, dname, loc, sal, grade
-- 1차 조인
from emp e inner join dept d
on (e.deptno = d.deptno)
-- 2차 조인
inner join salgrade s
on (e.sal between s.losal and s.hisal);

-- 다른 표현 방법
select empno, ename, dname, loc, sal, grade
from emp e inner join dept d inner join salgrade s
on (e.deptno = d.deptno and e.sal between s.losal and s.hisal);