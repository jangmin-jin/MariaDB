-- 테이블 선택과 별명 정하기
-- select *
select e.empno, d.dname, e.deptno
from emp e join dept d
on(e.deptno = d.deptno);