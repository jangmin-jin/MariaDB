-- UNIQUE 를 이용한 INDEX 추가
desc dept_i;
-- null 허용으로 변경
ALTER TABLE dept_i MODIFY deptno int(2) null;

-- UNIQUE 속성 추가
ALTER TABLE dept_i ADD constraint UNIQUE (deptno);
-- INDEX 가 자동 생성됨.
SHOW INDEX FROM dept_i;

-- 옵티마이저 라는 녀석이 테이블에 먼저 접근할지, INDEX 에 먼저 접근할지 결정하게된다.