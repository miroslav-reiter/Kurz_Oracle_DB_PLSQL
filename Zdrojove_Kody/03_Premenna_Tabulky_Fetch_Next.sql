SELECT 
    "CUSTOMER_ID",
    "EMAIL_ADDRESS",
    "FULL_NAME"
FROM CO."CUSTOMERS"
-- limit 5
FETCH NEXT 5 ROWS ONLY;


DECLARE
     c_name varchar2(30);
BEGIN
     -- Exekučná sekcia (povinná)
     -- Vykonanie príkazov/inštrukcií
     SELECT FULL_NAME INTO c_name FROM CO."CUSTOMERS"
     where CUSTOMER_ID = 3;
     DBMS_OUTPUT.PUT_LINE('Meno zakaznika s ID 10: ' || c_name || chr(10));
     
EXCEPTION WHEN OTHERS THEN
     -- Spracovanie výnimiek/chýb (voliteľná)
     dbms_output.put_line(sqlerrm);
     dbms_output.put_line('Sme v Exception casti');
END;
/

