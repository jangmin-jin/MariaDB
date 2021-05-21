-- 사용자 생성
CREATE user tester1@'%' IDENTIFIED BY '1234';
-- 현재는 sample 테이블에 접근 권한이 없다.

-- 사용 권한 추가 / sample에 대한 모든 하위폴더 접근 허용
GRANT ALL PRIVILEGES ON sample.* TO tester1@'%';
SHOW GRANTS FOR tester1@'%';

-- 권한 제거
-- tester1@'%'에 대한 모든 sample 및 하위폴더의 접근을 제거한다.
REVOKE ALL ON sample.* FROM tester1@'%';

-- 부분 권한 추가
GRANT SELECT ON sample.emp to tester1@'%';
SHOW GRANTS FOR tester1@'%';
-- 부분 권한 삭제
REVOKE SELECT ON sample.emp FROM tester1@'%';

-- emp2를 emp를 복제하여 만들고
-- emp2 에 insert, select 할수있는 권한을 tester1에게 부여한다.
-- tester1 에서 정상 동작하는지 확인한다.
USE sample;
-- 생성 (난 빈껍데기로 만듬 그냥)
CREATE TABLE emp2 AS SELECT * FROM emp WHERE 1 != 1;
-- 생성 확인
DESC emp2;

-- 권한 부여
GRANT SELECT ON sample.emp2 to tester1@'%';
GRANT INSERT ON sample.emp2 to tester1@'%';
-- 권한 부여 확인
SHOW GRANTS FOR tester1@'%';

-- CMD 에서 select, insert 실행