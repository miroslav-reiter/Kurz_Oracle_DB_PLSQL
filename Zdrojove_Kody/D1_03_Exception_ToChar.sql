------------------------------------------------
SELECT * FROM scott.emp;

DECLARE
 v_pozicia VARCHAR2(15);
 v_meno VARCHAR2(15);
BEGIN
 SELECT ENAME, JOB INTO v_meno, v_pozicia
 FROM scott.emp
 WHERE ENAME = 'CLARK';
  DBMS_OUTPUT.PUT_LINE(v_meno || ' ma poziciu: ' || v_pozicia);
EXCEPTION
  WHEN TOO_MANY_ROWS THEN
  DBMS_OUTPUT.PUT_LINE('Váš príkaz SELECT vrátil viacero riadkov. Zváž použitie kurzora...');
END;
/
-- Procedúra PL/SQL bola úspešne dokončená.
------------------------------------------------
--- Skus spravit chybu Day -> Days
DECLARE
    v_datum_aktualny date := sysdate;
BEGIN
    dbms_output.put_line(
           'Prave je: ' || to_char(v_datum_aktualny,'Day'));
EXCEPTION WHEN OTHERS THEN
    dbms_output.put_line(sqlerrm);
    dbms_output.put_line('Sme v Exception casti');
END;
/