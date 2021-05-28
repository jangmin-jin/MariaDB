CREATE TABLE testtbl(
  col1 VARCHAR (10), 
  col2 VARCHAR (10)
  );

-- 벌키 INSERT
INSERT INTO testtbl VALUES ('aa', 'bb'), ('bb', 'cc'), ('cc', 'dd');

DESC testtbl;
SELECT * FROM testtbl;