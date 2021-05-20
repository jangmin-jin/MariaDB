-- 중복되는 테이블 네임이 없는지 일단 확인
SHOW tables;

DROP TABLE products;

-- costomers (pk 1개)
CREATE TABLE customers(
  cno VARCHAR (5) PRIMARY KEY,
  cname VARCHAR (10),
  address VARCHAR (50),
  email VARCHAR (20),
  phone VARCHAR (20)
);
DESC customers;

-- orders (pk 1개 fk 1개)
CREATE TABLE orders(
  orderno VARCHAR (10) PRIMARY KEY,
  orderdate VARCHAR (8),
  address VARCHAR (50),
  phone VARCHAR (20),
  status VARCHAR (5),
  cno VARCHAR (5),
  constraint FOREIGN KEY (cno) REFERENCES customers (cno)
);
DESC orders;

-- products (pk 1개)
CREATE TABLE products(
  pno VARCHAR (5) PRIMARY KEY,
  pname VARCHAR (20),
  cost INT (8),
  stock INT (5)
);
DESC products;

-- orderdetail (fk 2개)
CREATE TABLE orderdetail(
  orderno VARCHAR (10),
  pno VARCHAR (5),
  qty INT (5),
  cost INT (8),
  constraint FOREIGN KEY (orderno) REFERENCES orders (orderno),
  constraint FOREIGN KEY (pno) REFERENCES products (pno)
);
DESC orderdetail;