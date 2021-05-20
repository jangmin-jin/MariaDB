SELECT * FROM dept_p2;
SELECT * FROM emp_f2;

-- Cannot delete or update a parent row: a foreign key constraint fails
-- foreign key에서 연결된 애들이 있어서 바꿀수 없음! : 에러발생
UPDATE dept_p2 SET deptno=20 WHERE deptno=10;

-- 부모가 있는 경우 자식은 바꿀 수 있다.
INSERT INTO dept_p2 values (20, '연구부', '경기');
UPDATE emp_f2 SET deptno=20 WHERE deptno=10;

-- 부모가 없는 애들은 바뀔 수 없다.
UPDATE emp_f2 SET deptno=30 WHERE deptno=20;