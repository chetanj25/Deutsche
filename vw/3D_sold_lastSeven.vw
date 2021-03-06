--VIEW TO GET SOLD PRODUCT IN LAST 7DAYS COUNTRYWISE
CREATE OR REPLACE VIEW SOLD_LASTSEVEN AS  
	SELECT E.COUNTRY_NAME,B.PROD_NAME,SUM(A.QUANTITY) QUANTITY
	FROM ORDER_ITEMS A
	INNER JOIN ORDERSS X
	ON A.ORDER_ID = X.ORDER_ID AND X.ORDER_DATE BETWEEN TO_DATE(SYSDATE-7,'DD-MM-YYYY') AND TO_DATE(SYSDATE,'DD-MM-YYYY')  
	INNER JOIN PRODUCTS B
	ON A.PROD_ID = B.PROD_ID
	INNER JOIN WAREHOUSES C
	ON A.WAREHOUSE_ID = C.WAREHOUSE_ID
	INNER JOIN LOCATIONS D
	ON C.LOCATION_ID = D.LOCATION_ID
	INNER JOIN COUNTRYS E
	ON E.COUNTRY_ID = D.COUNTRY_ID
	GROUP BY E.COUNTRY_NAME,B.PROD_NAME
/
