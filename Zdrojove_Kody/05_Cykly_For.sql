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
i NUMBER := 1;

BEGIN
    LOOP
    DBMS_OUTPUT.PUT_LINE('Hodnota i: ' || i);
    i := i + 1;
    
    if i > 10 THEN
        DBMS_OUTPUT.PUT_LINE('Koncime...');
        exit;
    END IF;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Sme za LOOP (Sluckou)...');
END;
/


DECLARE
j NUMBER := 2;

BEGIN
    WHILE j <= 16 
    LOOP
    DBMS_OUTPUT.PUT_LINE('Hodnota j: ' || j);
    j := j * 2;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Sme za While (Sluckou)...');
END;
/

DECLARE
-- k NUMBER := 2;
k NUMBER(2);
BEGIN
    for k in 10..20
    LOOP
    DBMS_OUTPUT.PUT_LINE('Hodnota k: ' || k);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Sme za For (Sluckou)...');
END;
/


BEGIN
    FOR v_vonkajsie_pocitadlo in 1..2
    LOOP
        FOR v_vnutorne_pocitadlo in 1..4
        LOOP
            DBMS_OUTPUT.PUT_LINE('Hodnota v_vnutorne_pocitadlo: --> ' || v_vnutorne_pocitadlo);
        END LOOP;
    DBMS_OUTPUT.PUT_LINE('Hodnota v_vonkajsie_pocitadlo: <-- ' || v_vonkajsie_pocitadlo);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Sme za For (Sluckou)...');
END;
/


-------------
/*

Program:3
Create a pl-sql program to display an output as below
54321
4321
321
21
1


*/
BEGIN
FOR rec IN REVERSE 1..5
LOOP
            FOR inner_rec IN REVERSE 1..rec
            LOOP
            dbms_output.put(inner_rec);
            END LOOP;
            dbms_output.new_line;
END LOOP;
END;
/


/*Program:4
Create a pl-sql program to display output as below
$
$$
$$$
$$$$
$$$$$
 */
BEGIN
    FOR i in 1..5
    LOOP
        FOR j in 1..i
        LOOP
            dbms_output.put('$');
        END LOOP;
        
        dbms_output.new_line;
    END LOOP;
END;
/

