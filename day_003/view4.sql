SELECT * FROM emp;

-- inline view / view를 생성하지 않고 view처럼 동작한다.
SELECT * FROM (select * from emp) e;

-- 조인도 가능하다.
SELECT empno, ename, sal, grade
FROM (SELECT empno, ename, sal FROM emp) e INNER JOIN salgrade s
ON e.sal BETWEEN s.losal AND s.hisal;

-- VIEW 를 이용한 조인도 가능하다.
CREATE VIEW emp_sal
AS SELECT empno, ename, sal
FROM emp;

SELECT empno, ename, sal, grade
FROM emp_sal e INNER JOIN salgrade s
ON e.sal BETWEEN s.losal AND s.hisal;