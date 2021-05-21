-- 기존 DATABASE 삭제
DROP DATABASE sample;
show DATABASES ;
-- sample이라는 이름의 DATABASE 생성
CREATE DATABASE sample;

-- cmd에서 sample.sql을 이용하여 sample 복원
-- mysql -u root -p sample < sample.sql

-- 특정 테이블만 가져와서 백업 / 복원하는 방법
-- cmd에서 입력
-- mysqldump -u root -p sample emp > sample_emp.sql
-- 비밀번호
-- sample_emp.sql이 생성됨.