CREATE OR REPLACE PACKAGE ONLINE_STORE AS
    PROCEDURE REGION_INS(ID   REGIONS.REGION_ID%TYPE,
                         NAME REGIONS.REGION_NAME%TYPE);
    PROCEDURE COUNTRY_INS(ID   COUNTRYS.COUNTRY_ID%TYPE,
                          NAME COUNTRYS.COUNTRY_NAME%TYPE);
    PROCEDURE PROD_CATEGORYS_INS(ID   PROD_CATEGORYS.CAT_ID%TYPE,
                                 NAME PROD_CATEGORYS.CATEGORY_NAME%TYPE);
  
    PROCEDURE LOCATION_INS(ID    LOCATIONS.LOCATION_ID%TYPE,
                           ADD   LOCATIONS.ADDRESS%TYPE,
                           PC    LOCATIONS.POSTAL_CODE%TYPE,
                           CITY  LOCATIONS.CITY%TYPE,
                           STATE LOCATIONS.STATE%TYPE,
                           CID   LOCATIONS.COUNTRY_ID%TYPE);
  
    PROCEDURE WAREHOUSES_INS(ID   WAREHOUSES.WAREHOUSE_ID%TYPE,
                             NAME WAREHOUSES.WAREHOUSENAME%TYPE,
                             LID  WAREHOUSES.LOCATION_ID%TYPE);
  
    PROCEDURE DEP_INS(ID   DEPARTMENTS.DEPT_ID%TYPE,
                      NAME DEPARTMENTS.DEPT_NAME%TYPE,
                      LID  DEPARTMENTS.LOCATION_ID%TYPE);
    PROCEDURE EMPLOYEES_INS(ID    EMPLOYEES.EMP_ID%TYPE,
                            FNAME EMPLOYEES.FIRSTNAME%TYPE,
                            LNAME EMPLOYEES.LASTNAME%TYPE,
                            MAIL  EMPLOYEES.EMAIL%TYPE,
                            PHONE EMPLOYEES.PHONE%TYPE,
                            HDATE EMPLOYEES.HIREDATE%TYPE,
                            DOB   EMPLOYEES.DOB%TYPE,
                            SAL   EMPLOYEES.SALARY%TYPE,
                            MGR   EMPLOYEES.MANAGER%TYPE,
                            DES   EMPLOYEES.DESIGNATION%TYPE,
                            DID   EMPLOYEES.DEPT_ID%TYPE);
  
    PROCEDURE CUSTOMERS_INS(ID   CUSTOMERS.CUST_ID%TYPE,
                            NAME CUSTOMERS.CUST_NAME%TYPE,
                            ADD  CUSTOMERS.ADDRESS%TYPE,
                            WS   CUSTOMERS.WEBSITE%TYPE,
                            FACE CUSTOMERS.FACEBOOK%TYPE,
                            TWIT CUSTOMERS.TWITTER%TYPE,
                            WAPP CUSTOMERS.WHATSAPP%TYPE);
  
    PROCEDURE CONTACTS_INS(ID    CUST_CONTACTS.CONT_ID%TYPE,
                           FNAME CUST_CONTACTS.FIRSTNAME%TYPE,
                           LNAME CUST_CONTACTS.LASTNAME%TYPE,
                           EMAIL CUST_CONTACTS.EMAIL%TYPE,
                           PHONE CUST_CONTACTS.PHONE%TYPE,
                           CID   CUST_CONTACTS.CUST_ID%TYPE);
  
    PROCEDURE PRODUCTS_INS(ID     PRODUCTS.PROD_ID%TYPE,
                           NAME   PRODUCTS.PROD_NAME%TYPE,
                           DESCR  PRODUCTS.DESCRIPTION%TYPE,
                           SCOST  PRODUCTS.STANDARDCOST%TYPE,
                           LPRICE PRODUCTS.LISTPRICE%TYPE,
                           INV    PRODUCTS.INVENTORY%TYPE,
                           CID    PRODUCTS.CAT_ID%TYPE);
    PROCEDURE ORDERSS_INS(ID     ORDERSS.ORDER_ID%TYPE,
                          CID    ORDERSS.CUST_ID%TYPE,
                          STATUS ORDERSS.STATUS%TYPE,
                          EID    ORDERSS.EMP_ID%TYPE,
                          ODATE  ORDERSS.ORDER_DATE%TYPE);
    PROCEDURE ORDER_ITEMS_INS(ID     ORDER_ITEMS.ORDER_ID%TYPE,
                              PID    ORDER_ITEMS.PROD_ID%TYPE,
                              QUAN   ORDER_ITEMS.QUANTITY%TYPE,
                              UPRICE ORDER_ITEMS.UNITPRICE%TYPE,
                              WID    ORDER_ITEMS.WAREHOUSE_ID%TYPE);
  END ONLINE_STORE;
  /