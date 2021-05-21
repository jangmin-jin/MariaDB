-- 새로 추가된 DATABASE 확인
SHOW databases;
USE classicmodels;
SHOW tables;
DESC customers;
-- 데이터 다 보면 참사가 일어나기 때문에 갯수 먼저 확인후
-- limit으로 일부 정보만 확인한다.
SELECT count(*) FROM customers;
SELECT * FROM customers limit 0, 1;
DROP database classicmodels;

-- Maria 워크밴치에서 sakila ERD를 forward engineer엔지니어링 하면 코드로 바꿔준다.
show databases;
use sakila;
-- 추가된 녀석들을 볼 수 있다.
show tables;
-- 삭제
drop database sakila;