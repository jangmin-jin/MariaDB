-- 입사년도 2011년인 사원정보 (부서번호, 이름, 입사일, 직책, 급여) 를 출력한다.
SELECT deptno, ename, hiredate, job, sal FROM emp WHERE hiredate LIKE '2011%';

-- 날짜 관련
select now(), date_add(now(), interval 2 day);
select now(), date_add(now(), interval 2 month);
select now(), date_add(now(), interval 2 year);
select now(), date_sub(now(), interval 2 day);
select now(), date_sub(now(), interval 2 month);
select now(), date_sub(now(), interval 2 year);

-- 최대 최소 비교
-- greatest : 보다큰
SELECT greatest (100, 101, 102);
-- least : 보다 작은
SELECT least (100, 101, 102);

-- emp sal 컬럼 내 2000보다 큰 수들을 선택
SELECT greatest(sal, 2000) FROM emp;

-- if 문을 이용한 참/ 거짓 판별
SELECT if(1=2, '참', '거짓');
SELECT ename, sal, if(sal<2000, '적음', '많음') FROM emp WHERE deptno=30;

-- 별명 설정
SELECT sal, comm, (sal*12 + comm) FROM emp;
SELECT sal, comm, (sal*12 + ifnull(comm, 0)) FROM emp;

-- case when else end문
SELECT case 1
when 1 then 'one'
when 2 then 'two'
else 'three'
end;

SELECT empno, ename, sal, job, case job
when 'analyst' then sal*1.1
when 'clerk' then sal*1.2
when 'manager' then sal*1.3
when 'president' then sal*1.4
else sal
end FROM emp;

-- count 요소를 카운트 할 수 있다
SELECT count(sal) FROM emp;
SELECT count(sal), count(comm) FROM emp;

-- 단, null은 카운트 해주지 않는다.
-- *을 사용하면 null도 카운트 해준다.
SELECT count(*) FROM emp;
SELECT count(ifnull(comm, 0)) FROM emp;

-- 산술연산
SELECT sum(sal) FROM emp;
SELECT sum(comm) FROM emp;

SELECT avg(sal) FROM emp;
SELECT avg(ifnull(comm,0)), sum(comm)/count(*), sum(comm)/14 FROM emp;

-- GROUP BY 그룹별로 묶기
SELECT sum(sal) FROM emp GROUP BY deptno;
SELECT deptno, sum(sal) FROM emp GROUP BY deptno;
SELECT deptno, avg(sal) FROM emp GROUP BY deptno;
SELECT deptno, max(sal) FROM emp GROUP BY deptno;
SELECT deptno, min(sal) FROM emp GROUP BY deptno;

-- GROUP BY HAVING 그룹별로 묶은뒤 조건설정
SELECT deptno, job, sum(sal) 
FROM emp GROUP BY deptno, job HAVING sum(sal) >= 2000;

SELECT deptno, job, sum(sal) 
FROM emp WHERE sal>=2000 GROUP BY deptno, job HAVING sum(sal)>=2000;

-- GROUP BY 응용
SELECT job, deptno, max(sal)
FROM emp GROUP BY job, deptno;

SELECT job, deptno, count(job)
FROM emp GROUP BY job, deptno;

-- 단일행 서브쿼리
-- 가장 높은 급여를 받는 직원을 구하시오
SELECT ename, job, deptno, sal
FROM emp WHERE sal = (SELECT max(sal) FROM emp);

SELECT ename, job, deptno, sal
FROM emp WHERE sal >= (SELECT sal FROM emp WHERE ename='scott');

-- in any all
SELECT ename, sal
FROM emp WHERE sal IN (SELECT max(sal) FROM emp GROUP BY deptno);

-- 매니저보다 급여 낮은 놈들
SELECT ename, sal
FROM emp WHERE sal < all(SELECT sal FROM emp WHERE job='MANAGER');

SELECT empno, ename, sal
FROM emp WHERE sal > (SELECT sal FROM emp WHERE ename='BLAKE');

SELECT empno, ename, hiredate
FROM emp WHERE hiredate < (SELECT hiredate FROM emp WHERE ename='MILLER');

-- JOIN
SELECT * FROM dept;
SELECT * FROM emp;
SELECT * FROM emp cross JOIN dept;
SELECT * FROM emp INNER JOIN dept;

-- deptno를 이용한 조인
SELECT * FROM emp JOIN dept USING (deptno);
SELECT * FROM dept JOIN emp USING (deptno);

SELECT * FROM emp e JOIN dept d ON(e.deptno = d.deptno);

SELECT empno, d.dname, d.deptno
FROM emp e join dept d
ON (e.deptno = d.deptno);

SELECT e.empno, dname, d.deptno
FROM dept d join emp e
ON (e.deptno = d.deptno);

-- 10번 부서에 해당하는 사원들에 대한
-- 사원번호, 사원명, 부서명, 부서위치 출력
SELECT e.empno, e.ename, d.dname, d.loc
FROM emp e JOIN dept d ON (e.deptno = d.deptno) WHERE e.deptno = 10;

-- non-equijoin
SELECT * 
FROM emp e 
INNER JOIN salgrade s 
ON (e.sal >= s.losal and e.sal <= s.hisal);

SELECT e.empno, e.ename, d.dname, d.loc, e.sal, s.grade
-- 1차 조인
FROM emp e INNER JOIN dept d
ON (e.deptno = d.deptno)
-- 2차 조인
INNER JOIN salgrade s 
ON (e.sal BETWEEN s.losal AND s.hisal); 

SELECT e.empno, e.ename, d.dname, d.loc, e.sal, s.grade
FROM emp e INNER JOIN dept d INNER JOIN salgrade s 
ON(e.deptno = d.deptno AND e.sal BETWEEN s.losal AND s.hisal); 

-- OUTER JOIN
SELECT * FROM dept d LEFT OUTER JOIN emp e
ON (d.deptno = e.deptno);

SELECT * FROM dept d RIGHT OUTER JOIN emp e
ON (d.deptno = e.deptno);

-- INNER JOIN, OUTER JOIN 응용
SELECT e.ename '사원명', m.ename '관리자명'
FROM emp e INNER JOIN emp m
ON (m.mgr = e.empno);

SELECT e.ename '사원명', m.ename '관리자명'
FROM emp e LEFT OUTER JOIN emp m
ON (e.mgr = m.empno);

SELECT e.empno, e.ename, (ifnull(m.ename, '관리자 없음')) '관리자명'
FROM emp e LEFT OUTER JOIN emp m 
ON (e.mgr = m.empno); 