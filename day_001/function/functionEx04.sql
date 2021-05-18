-- 공백 제거
SELECT ltrim('      mysql study') '왼쪽 여백 제거';
SELECT rtrim('mysql study      ') '오른쪽 여백 제거';
SELECT trim('      mysql study      ') '양쪽 여백 제거';

-- 빈공간 채우기
SELECT lpad('mysql', 8, '얍') '왼쪽 빈공간 채우기';
SELECT rpad('mysql', 8, '욥') '오른쪽 빈공간 채우기';