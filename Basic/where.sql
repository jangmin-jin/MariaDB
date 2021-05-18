-- 두개의 문장 합쳐서 표현하기 ( 단일행 서브쿼리 )
-- select sal from emp where ename ='scott'; --3000;
-- select empno, ename, sal from emp where sal >= 3000;
select empno, ename, sal from emp 
where sal >= (select sal from emp where ename = 'scott');