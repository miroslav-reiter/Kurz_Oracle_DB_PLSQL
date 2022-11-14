
EXECUTE VYPIS_AHOJ;

select 
    "EMPLOYEE_ID",
    "FIRST_NAME",
    "LAST_NAME"
from HR."EMPLOYEES"
FETCH NEXT 5 ROWS ONLY;

-- SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE VYPIS_AHOJ
AS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('AHOJ...');
    END;
/


EXECUTE VYPIS_AHOJ;

BEGIN
    VYPIS_AHOJ;
END;
/


CREATE OR REPLACE PROCEDURE GET_MINIMUM(x IN number, y IN number, z OUT number) IS
    BEGIN
        IF x < y THEN
         z := x;
        ELSE
         z := y;
        END IF;
    END;
/

DECLARE
 v_minalna_prax NUMBER;
BEGIN
    GET_MINIMUM(3, 11, v_minalna_prax);
    DBMS_OUTPUT.PUT_LINE('Minimalna prax je: ' || v_minalna_prax || ' roky');
END;
/