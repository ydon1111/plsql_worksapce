DECLARE

CURSOR C1 IS 
	SELECT EMPNO,ENAME,SAL,DEPTNO
	FROM EMP
	WHERE DEPTNO =30;

C2 C1%ROWTYPE;

BEGIN
    OPEN C1;

	LOOP FETCH C1 INTO C2;
	EXIT WHEN C1%NOTFOUND;
	DBMS_OUTPUT.PUT_LINE(C2.EMPNO||' '||C2.ENAME||' '||C2.SAL||' '||C2.DEPTNO );
	END LOOP;
 CLOSE C1;
END;
/


