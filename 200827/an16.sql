DECLARE 
	-- PL/SQL TABLE ���� : PL_TAB ���ο� �ڷ��� 
	TYPE PL_TAB IS TABLE OF EMP.ENAME%TYPE 
	INDEX BY BINARY_INTEGER; 
	-- �迭�� ����Ʈ�� ���� 
	-- ���� �������� ���ӵ� ������ �Ҵ�Ǵ� ���� 


	-- ���� ����
	PL1 PL_TAB;
	-- VEMPNO NUMBER;

BEGIN

	FOR i IN 1..20 LOOP
		PL1(i) := 'SCOTT'||i;
	END LOOP;

	FOR J IN 1..20 LOOP
		DBMS_OUTPUT.PUT_LINE(PL1(J));
	END LOOP;
END;
/

