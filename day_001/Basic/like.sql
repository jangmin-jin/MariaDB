-- like 를 이용한 검색 방법
-- S% 시작이 S인 이름을 가진 정보 검색
SELECT * FROM emp WHERE ename LIKE 'S%';
-- %R 끝이 R인 이름을 가진 정보 검색
SELECT * FROM emp WHERE ename LIKE '%R';
-- ____ 4글자수인 이름을 가진 정보 검색
SELECT * FROM emp WHERE ename LIKE '____';
-- hiredate가 2011년도인 정보 검색, 02월 입사자들 검색
SELECT * FROM emp WHERE hiredate LIKE '2011%';
SELECT * FROM emp WHERE hiredate LIKE '%-02-%';