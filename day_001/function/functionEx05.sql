-- 날짜 관련 표현 sysdate를 자주 사용한다.
SELECT now(), sysdate(), current_timestamp();

-- 현재 시간 표현
SELECT curtime();

-- 년, 월, 일 표현 / dayofweek 0:일요일 기준
SELECT year(now()), month(now()), day(now()), dayofweek(now());
-- date_format으로 포멧 지정
SELECT now(), date_format(now(), '%Y-%m-%d');
SELECT hiredate, date_format(hiredate, '%Y-%m') FROM emp WHERE deptno = 10;