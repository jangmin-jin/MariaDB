-- 문자열 합치기
SELECT CONCAT('변신', '로봇');
SELECT CONCAT(ename, '님의 직책은 ', job, '입니다.') FROM emp WHERE deptno = 30;

-- col 이름 추가
SELECT CONCAT(ename, '님의 직책은 ', job, '입니다.') '직책 정보' FROM emp WHERE deptno = 30;
SELECT CONCAT(ename, '님의 연봉은', truncate(sal*12, 0), '원 입니다.') '연봉정보' FROM emp WHERE deptno = 30;

-- 문자열 포함관계 검사
SELECT instr('mysql database study', 'mysql');
SELECT instr('mysql database study', 'yes');
-- 부서 20에 모든 사원들의 이름에 co가 포함되어 있는지 검사한다.
SELECT ename, instr(ename, 'co') FROM emp WHERE deptno = 20;

-- 문자열 자르기
SELECT left('mysql database study', 5) '왼쪽 부터 자르기';
SELECT right('mysql database study', 5) '오른쪽 부터 자르기';
SELECT mid('mysql database study', 7, 8) '중간 자르기';
SELECT substring('mysql database study', 7, 4) '원하는 위치 자르기';

-- 문자열 자르기를 이용하여 S로 시작하는 사원 이름 뽑아내는 방법
SELECT ename FROM emp WHERE ename LIKE 'S%';
SELECT ename FROM emp WHERE left(ename, 1) = 'S';

-- 문자열 바꿔치기
SELECT replace('mysql database study', 'study', '공부') '문자열 바꾸기';

-- 대, 소문자 교환
SELECT lcase('ABC') '대문자 -> 소문자';
SELECT Ucase('abc') '소문자 -> 대문자';

-- 문자열 뒤집기
SELECT reverse('뒤집어보아요') '문자 뒤집기';