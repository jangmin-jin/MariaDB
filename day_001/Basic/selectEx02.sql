-- 간단한 연산
SELECT sal, sal*12 FROM emp;
-- ifnull로 null값 제거
SELECT sal, comm, (sal*12 + ifnull(comm, 0)) FROM emp;
