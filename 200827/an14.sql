--부서테이블 : 10번 부서의 부서명 , 부서위치 출력
-- %rowtype

DECLARE 
vdept dept%rowtype;

BEGIN
    SELECT *
		INTO vdept
	FROM dept
	WHERE deptno = 10;
	
	
	DBMS_OUTPUT.PUT_LINE(vdept.dname||' ' ||vdept.loc);
END;
/


