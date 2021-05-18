-- 이렇게 가져오면 컬럼 이름이 이상해 진다는 단점이 있다.
create table emp_year
as select empno, ename, sal*12+ifnull(comm, 0), hiredate
from emp;
desc emp_year;

-- 별명을 지어줘서 컬럼 이름이 이상해 지는 것을 막는다.
create table emp_year2
as select empno, ename, sal*12+ifnull(comm, 0) annsal, hiredate
from emp;
desc emp_year2;