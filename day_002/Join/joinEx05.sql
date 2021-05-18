-- 범위를 지정한(부등호에 의한) join(non-equijoin)
select empno, ename, sal
from emp;

select *
-- 호봉 테이블
from salgrade;

select *
from emp e inner join salgrade s
-- on(e.sal >= s.losal and e.sal <= s.hisal);
on (e.sal between s.losal and s.hisal);