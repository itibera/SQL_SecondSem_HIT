CREATE TABLE EMP
(
    EMPNO NUMBER(4),
    ENAME VARCHAR2(10),
    EJOB VARCHAR2(9) CHECK IN('CLRK','MGR','A.MGR','GM','CEO') default CLRK,
    MGR_ID NUMBER(4),
    BIRTH_DATE DATE CHECK (BIRTH_DATE < DATE_OF_JOIN),
    SAL NUMBER(7,2), CHECK(SAL > 20000) DEFAULT 20001,
    COMM NUMBER(7,2) DEFAULT 1000,
    DEPTNO VARCHAR2(3) REFERENCES DEPT,
    PRJ_ID VARCHAR2(9) CLRK/MGR/A.MGR/GM/CEO, default CLRK,
    DATE_OF_JOIN DATE
);

CREATE TABLE DEPT
(
    DNO VARCHAR2(3) PRIMARY KEY CHECK(DNO LIKE 'D%'),
    DNAME VARCHAR2(10) UNIQUE
);