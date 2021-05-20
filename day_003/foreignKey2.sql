-- 테이블 확인 (빈값)
SELECT * FROM dept_p2; -- deptno, dname, loc
SELECT * FROM emp_f2; -- empno, ename, job, deptno

-- Cannot add or update a child row: a foreign key constraint fails
-- 10번 부서가 없워요 참조할게 없다구요
INSERT INTO emp_f2 VALUES (1000, '홍길동', '팀장', 10);

-- primary key로 선언된 값이 있어야 입력 가능
INSERT INTO dept_p2 VALUES (10, '개발부', '서울');
INSERT INTO emp_f2 VALUES (1000, '홍길동', '팀장', 10);

-- deptno 20 은 아직 선언이 안되었기에 다시 에러 발생
INSERT INTO emp_f2 VALUES (1001, '홍길동', '팀장', 20);

-- Null 은 참조를 안해서 선언 가능, 단, foreign key에서 not Null 시엔 입력 불가
INSERT INTO emp_f2 VALUES (1001, '홍길동', '팀장', Null);