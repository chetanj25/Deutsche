--THIS STUB TO UPADTE ORDER STATUS 
DECLARE
	L_ORD_STATUS VARCHAR2(1);
	L_ORD VARCHAR2(12);
BEGIN
	L_ORD := '&ORDERNUMBER';
	L_ORD_STATUS := '&STATUS_P_S_C';
	IF L_ORD_STATUS IN ('P','S','C') THEN
		UPDATE ORDERSS SET STATUS = L_ORD_STATUS
		WHERE ORDER_ID =L_ORD;
	END IF;
EXCEPTION WHEN OTHERS THEN
	DBMS_OUTPUT.PUT_LINE('FAILE WHILE UPDATING STATUS ORDER ID'||SQLERRM);	
END ;
/
COMMIT;
