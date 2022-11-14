
DECLARE
 a NUMBER := 0;
 EX_HODNOTA EXCEPTION;
BEGIN
    IF a <= 0 THEN
        RAISE EX_HODNOTA;
    ELSE:
        DBMS_OUTPUT.PUT_LINE('ELSE...');
    END IF;
    
EXCEPTION 
    WHEN EX_HODNOTA THEN
        DBMS_OUTPUT.PUT_LINE('Nastala EXCEPTION: EX_HODNOTA - Hodnota musi byt vacsia ako 0... ');
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Nastala EXCEPTION: NO_DATA_FOUND - Ziadna hodnota... ');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Nastala EXCEPTION: OTHERS - Zvysne chyby... ');
END;
/