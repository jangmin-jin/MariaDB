-- 두개의 테이블을 조인시킨뒤 view로 선언해서 만들어 줄 수 있다.
CREATE VIEW emp_dept 
AS SELECT empno, ename, e.deptno, dname, loc 
FROM emp e INNER JOIN dept d
ON e.deptno=d.deptno;

desc emp_dept;
SELECT * FROM emp_dept;

-- 사원번호, 사원이름, 급여, 연봉(sal*12+ifnull(comm, 0)), 호봉을 나타내는
-- emp_salgrade 라는 view 생성.
-- 조건1. 연봉의 컬럼이름을 annsal로 표시하라.
CREATE VIEW emp_salgrade
AS SELECT empno, ename, sal, (sal*12 + ifnull(comm, 0)) annsal, grade
FROM emp e INNER JOIN salgrade s
ON (e.sal BETWEEN s.losal and s.hisal);

desc emp_salgrade;
SELECT * FROM emp_salgrade;

-- 사원테이블에서 사원번호, 사원이름, 관리자이름이 출력할 수 있는
-- emp_mgr VIEW 생성
-- 조건1. 관리자가 없을때는 '없음' 으로 표시할 것.
CREATE VIEW emp_mgr
AS SELECT e.empno, e.ename, ifnull(m.ename, '없음') '관리자'
-- LEFT OUTER JOIN을 사용한 이유는 표시되지 않는 NULL 자료 부분도 추가하기 위함임.
FROM emp e LEFT OUTER JOIN emp m
ON (e.mgr=m.empno);
DESC emp_mgr;
SELECT * FROM emp_mgr;