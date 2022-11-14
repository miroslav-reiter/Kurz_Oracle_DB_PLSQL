select *
from HR."EMPLOYEES"
FETCH NEXT 5 ROWS ONLY;

DECLARE
    v_id HR."EMPLOYEES".EMPLOYEE_ID%type;
    v_name HR."EMPLOYEES".FIRST_NAME%type;
    v_salary HR."EMPLOYEES".SALARY%type;
    CURSOR cur is 
    SELECT EMPLOYEE_ID, FIRST_NAME, SALARY from HR."EMPLOYEES";
BEGIN
    -- Otvorenie kurzoru
    OPEN cur;
    DBMS_OUTPUT.PUT_LINE('1. priklad kurzor s Loop cyklom: ');
    LOOP
    -- Fetching kurzor
    FETCH cur into v_id, v_name, v_salary;
        EXIT WHEN cur%notfound;
        DBMS_OUTPUT.PUT_LINE(v_id || ' ' || v_name ||  ' ' || v_salary);
    END LOOP;
    CLOSE cur;
END;
/


DECLARE
    CURSOR cur is 
    SELECT EMPLOYEE_ID, FIRST_NAME, SALARY from HR."EMPLOYEES";
BEGIN
    -- Otvorenie kurzoru
    DBMS_OUTPUT.PUT_LINE('2. priklad kurzor s FOR cyklom: ');
    FOR i IN cur
    LOOP
        DBMS_OUTPUT.PUT_LINE(i.EMPLOYEE_ID || ' ' || i.FIRST_NAME ||  ' ' || i.SALARY);
    END LOOP;
END;
/

