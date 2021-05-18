-- null 인 항목만 출력해줘
SELECT * FROM emp WHERE comm is null;

-- null 이 아닌 항목만 출력해줘
SELECT * FROM emp WHERE comm is not null;