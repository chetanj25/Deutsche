--Creating schema which will have all rights
CREATE TABLESPACE ONLINESTOREDB DATAFILE '/APP/PRODUCT/12.1.0/DBHOME_1/DBS/ONLINESTOREDB.DBF' SIZE 100M AUTOEXTEND ON;
CREATE USER ONLINESTOREDB IDENTIFIED BY ONLINESTOREDB DEFAULT TABLESPACE ONLINESTOREDB ;
GRANT ALL PRIVILEGES TO ONLINESTOREDB;


