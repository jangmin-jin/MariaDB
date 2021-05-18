-- test1 만들어줘잉
CREATE DATABASE test1;
-- 만든거 확인 할랭
SHOW DATABASES ;
-- test1이라는게 없으면 만들어줘잉 (있어도 에러는 안나고 경고만)
CREATE DATABASE if NOT t exists test1;
-- test2이라는게 없으면 만들어줘잉 (있어도 에러는 안나고 경고만)
CREATE DATABASE if NOT EXISTS test2;
-- database 지워줘잉 (해당 명이 없으면 에러)
DROP DATABASE test1;
DROP DATABASE test2;
-- EXISTS 를 사용하면 없어도 경고만 남
DROP DATABASE if EXISTS test3;
-- DATABASE 선택
use test2;
use test3;