show tables;
SELECT * FROM dept2;
-- dept2의 모든 loc값을 대전으로 바꿔줘
UPDATE dept2 SET loc='대전';
-- deptno=10 에 해당하는 loc정보를 서울로 바꿔줘
UPDATE dept2 SET loc='서울' WHERE deptno=10;