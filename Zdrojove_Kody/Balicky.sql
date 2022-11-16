select 
    "EMPNO",
    "ENAME",
    "JOB",
    "MGR",
    "HIREDATE",
    "SAL",
    "COMM",
    "DEPTNO"
from SCOTT."EMP";

/*
 Balicek (Package) je skupina logicky pribuznych PL/SQL typov, premennych a podprogramov
 Majú 2 časti:
 1. specifikacia - deklaruje, ze vsetky objetky (procedury, kurzory, premenne atd.) sú referencované/je na nich odkazovane z vonka balika
 2. bod (telo) alebo definicia
*/

create package priklad
as
procedure GET_SALARY(v_hiredate "EMP"."HIREDATE"%type);
END priklad;


create or replace package body priklad
as
procedure GET_SALARY(v_hiredate  "EMP"."HIREDATE"%type)
is v_salary SCOTT."EMP".SAL%type;
BEGIN
    SELECT SAL INTO v_salary FROM "EMP"
    where HIREDATE = v_hiredate;
    dbms_output.put_line('Mzda je: ' || v_salary);
END GET_SALARY;
END priklad;

/* --- Pouzivanie Balickov --- */
BEGIN
priklad.GET_SALARY('23-JAN-82');
END;
/