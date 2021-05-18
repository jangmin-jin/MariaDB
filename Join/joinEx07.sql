-- (left, right) outer-join
select * from emp; -- 40번 부서 없음
select * from dept; -- 40번 부서 존재
select * from salgrade;

-- join 시 deptno를 조건으로 걸시 공통되지 않는 정보는 안나온다
select *
from emp e inner join dept d
using(deptno);

-- left outer join을 사용하면 공통된 정보가 출력된다.
select *
from dept d left outer join emp e
on (d.deptno = e.deptno);

-- left outer join 과 결과가 조금 다르게 나온다.
select *
from dept d right outer join emp e
on (d.deptno = e.deptno);