ACCEPT vno prompt '����� �Է��ϼ��� :  ' 


DECLARE 
	-- ���� ����� 
	-- ��Į�� ���� 
	-- ��� ���̺��� �����ȣ�� ������ ���� ũ�� 
	-- �����ϴ� ������ DB�� ���� Ư�� ���̺��� �÷��� ������ �ڷ����� �ο� 
	-- emp.empno%type
	-- ���̺���.����%type

	vempno emp.empno%type := &vno;
	vename emp.ename%type;
	vsal emp.sal%type;


BEGIN
	--�����
	SELECT ename , sal 
		INTO vename , vsal 
	FROM emp
	WHERE empno = vempno;

    DBMS_OUTPUT.PUT_LINE(vempno || ' ' || vename ||' ' || vsal);
END;
/



--SQL> alter table emp
-- 2  modify empno number(5);
