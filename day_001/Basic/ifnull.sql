SELECT comm FROM emp;
-- 만약 comm 값에 null이 있으면 전부 0으로 치환해라
SELECT ifnull(comm, 0) FROM emp;