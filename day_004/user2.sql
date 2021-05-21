-- 사용자 컴퓨터와 접근 경로가 같은 것 : localhost
-- 사용자 ID / 사용자 비밀번호 ' ';
CREATE user tester1@localhost IDENTIFIED BY '1234';

-- 확인
SELECT host, user, password FROM user;

-- 새로 생성한 user는 기존 유저와 접근할 수 있는 데이터베이스가 다르다
-- 원격 접속은 허용하지 않는다.
-- 로컬 접속으로만 접속 가능.

-- 원격 접속을 허용하는 사용자 생성
-- '%' : 어디서나 접속을 허용
CREATE user tester1@'%' IDENTIFIED BY '1234';
SELECT host, user, password FROM user;

-- 권한 확인 (일반 사용자는 확인 할 수 없음)
SHOW GRANTS for tester1@localhost;
SHOW GRANTS for tester1@'%';

-- 사용자 제거
-- 경고) 사용자를 제거한다고 해서 접속되어있는 사용자가 팅기는건 아님
-- 재 접속이 막힐뿐 작업은 진행 가능하게 된다.
DROP user tester1@'%';
SELECT host, user, password FROM user;