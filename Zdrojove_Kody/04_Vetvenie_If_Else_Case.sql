select 
    "EMPLOYEE_ID",
    "FIRST_NAME",
    "LAST_NAME",
    "EMAIL",
    "PHONE_NUMBER",
    "HIRE_DATE",
    "SALARY"
from HR."EMPLOYEES";

-- SET SERVEROUTPUT ON;
DECLARE
mzda_vysoka NUMBER := 10000;
mzda_nizka NUMBER := 3000;

BEGIN
    IF mzda_vysoka > 11000 THEN
    DBMS_OUTPUT.PUT_LINE('Je to nad rozpocet firmy...');
    END IF;
    
    IF mzda_vysoka > 11000 THEN
    DBMS_OUTPUT.PUT_LINE('Je to nad rozpocet firmy...');
    ELSE
    DBMS_OUTPUT.PUT_LINE('Je to v ramci rozpoctu firmy...');
    END IF;
    
    IF mzda_vysoka > 11000 THEN
    DBMS_OUTPUT.PUT_LINE('Je to nad rozpocet firmy...');
    ELSIF mzda_vysoka > 9000 THEN
    DBMS_OUTPUT.PUT_LINE('Este je to v ramci rozpoctu firmy...');
    ELSE
    DBMS_OUTPUT.PUT_LINE('Je to v ramci rozpoctu firmy...');
    END IF;
END;
/

DECLARE
znamka CHAR := 'C';

BEGIN
    CASE znamka
    WHEN 'A' THEN DBMS_OUTPUT.PUT_LINE('Mas vyborne vysledky');
    WHEN 'B' THEN DBMS_OUTPUT.PUT_LINE('Mas chvalitebne vysledky');
    WHEN 'C' THEN DBMS_OUTPUT.PUT_LINE('Mas dobre vysledky');
    WHEN 'D' THEN DBMS_OUTPUT.PUT_LINE('Mas priemerne vysledky');
    WHEN 'E' THEN DBMS_OUTPUT.PUT_LINE('Mas dostatocne vysledky');
    WHEN 'FX' THEN DBMS_OUTPUT.PUT_LINE('Mas nedostatocne vysledky');
    ELSE
    DBMS_OUTPUT.PUT_LINE('Take znamka neexistuje, nie je...');
    END CASE;
END;
/