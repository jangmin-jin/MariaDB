-- 사용자 확인방법
SELECT user();

-- mysql안에 사용자 정보가 담겨져 있다.
SHOW DATABASES;

use mysql;
SHOW FULL tables;
-- user안에 구성요소 확인
DESC user;
-- 사용자 설정 (빨간 박스)
-- 권한 (그외)

-- user안 중요 정보들 확인
-- 암호화 되어 있는 정보들 (Password)
SELECT host, user, password FROM user;

-- 테이터 베이스 확인
DESC db;
-- 사용자를 지정할 수 있으므로, 권한을 가지는 사용자를 따로 지정할 수 있다.

SELECT host, db, user FROM db;
-- test 라고 표기된 것은 모든 사용자가 사용 가능 이라는 뜻.