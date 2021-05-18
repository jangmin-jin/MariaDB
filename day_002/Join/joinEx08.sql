select empno, ename, mgr from emp;

select e.ename, m.ename
from emp e inner join emp m
on (e.mgr = m.empno);

-- 별명을 지정할 수 있다.
select e.ename '사원명', m.ename '관리자명'
from emp e inner join emp m
on (e.mgr = m.empno);

-- 포함되지 않는 KING 같은 놈들 출력해주려면 OUTER join을 쓴다
select e.ename '사원명', m.ename '관리자명'
from emp e LEFT OUTER join emp m
on (e.mgr = m.empno);

-- 사원번호, 사원명, 관리자(관리자가 없으면 '관리자 없음' 출력)
select e.empno '사원번호', e.ename '사원명', ifnull(m.ename, '관리자 없음') '관리자명'
from emp e left outer join emp m
on (e.mgr = m.empno);