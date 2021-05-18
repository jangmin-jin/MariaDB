-- 수학적 계산들
-- 절대값 구하기
SELECT abs(123), abs(-123);

-- 올림
SELECT ceil(4.4), ceil(4.5);
-- 내림
SELECT floor(4.4), floor(4.5);
-- 반올림
SELECT round(4.4), round(4.5);

-- 소수점 버림
SELECT TRUNCATE(999.9999, 0), TRUNCATE(999.999, 2), TRUNCATE(999.999, -2);

-- 제곱값 구하기
SELECT power(2, 8);

-- 나누기
SELECT MOD(5, 2), 5%2;

-- ASKII 코드 구하기
SELECT ascii('a'), ascii('A');

-- 영문자열 및 한글문자열 구하기
SELECT LENGTH('abc');
SELECT CHAR_LENGTH('한글문자열')