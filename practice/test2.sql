-- 중복되는 테이블 네임이 없는지 일단 확인
SHOW tables;
 
-- costomers (cno : pk)
CREATE TABLE customers(
  cno VARCHAR (5),
  cname VARCHAR (10),
  address VARCHAR (50),
  email VARCHAR (20),
  phone VARCHAR (20)
);
ALTER TABLE customers ADD constraint PRIMARY KEY (cno);
DESC customers;
 
-- orders (orderno : pk / cno : fk - customers(cno))
CREATE TABLE orders(
  orderno VARCHAR (10),
  orderdate VARCHAR (8),
  address VARCHAR (50),
  phone VARCHAR (20),
  status VARCHAR (5),
  cno VARCHAR (5)
);
ALTER TABLE orders ADD constraint PRIMARY KEY (orderno);
ALTER TABLE orders ADD constraint FOREIGN KEY (cno) REFERENCES customers (cno);
DESC orders;
 
-- products (pno : pk)
CREATE TABLE products(
  pno VARCHAR (5),
  pname VARCHAR (20),
  cost INT (8),
  stock INT (5)
);
ALTER TABLE products ADD constraint PRIMARY KEY (pno);
DESC products;
 
-- orderdetail (orderno : fk - orders(orderno)/ pno : fk - products(pno))
CREATE TABLE orderdetail(
  orderno VARCHAR (10),
  pno VARCHAR (5),
  qty INT (5),
  cost INT (8)
);
ALTER TABLE orderdetail ADD FOREIGN KEY (orderno) REFERENCES orders (orderno);
ALTER TABLE orderdetail ADD FOREIGN KEY (pno) REFERENCES products (pno);
DESC orderdetail;


