------------------------------------------------
SELECT * FROM scott.emp;

DECLARE 
	v_mzda_minimalna NUMBER; 
	v_priemerny_plat NUMBER; 
	v_pocet_zamestnancov NUMBER; 
	v_report_mzdy VARCHAR2(200); 
BEGIN 
	SELECT COUNT(DISTINCT EMPNO), MIN(SAL), ROUND(AVG(SAL)) 
	INTO v_pocet_zamestnancov, v_mzda_minimalna, v_priemerny_plat 
	FROM SCOTT."EMP"; 
	v_report_mzdy:= 'V podniku je: ' || v_pocet_zamestnancov || ' zamestnancov, priemerna mzda je: ' || 
	v_priemerny_plat || ' Eur ' ||'a najmensia mzda je: ' || v_mzda_minimalna || ' Eur '; 
	DBMS_OUTPUT.PUT_LINE(v_report_mzdy); 
END; 
/

------------------------------------------------
SELECT * FROM scott.emp WHERE JOB = 'MANAGER';

DECLARE 
    v_mzda_minimalna NUMBER; 
    v_priemerny_plat NUMBER; 
    v_pocet_manazer NUMBER; 
    v_report_mzdy VARCHAR2(200); 
BEGIN 
    SELECT COUNT(DISTINCT EMPNO), MIN(SAL), ROUND(AVG(SAL)) 
    INTO v_pocet_manazer, v_mzda_minimalna, v_priemerny_plat 
    FROM SCOTT."EMP" WHERE JOB = 'MANAGER'; 
    v_report_mzdy:= 'V podniku su: ' || v_pocet_manazer || ' manazeri, ich priemerna mzda je: ' || 
    v_priemerny_plat || ' Eur ' ||'a najmensia mzda je: ' || v_mzda_minimalna || ' Eur '; 
    DBMS_OUTPUT.PUT_LINE(v_report_mzdy); 
END; 
/

------------------------------------------------

DECLARE 
	v_job_id scott.emp.EMPNO%TYPE; 
	v_job_pozicia scott.emp.JOB%TYPE; 
	v_max_mzda NUMBER; 
BEGIN 
	v_job_id := '9999'; 
	v_job_pozicia := 'DATABASE ANALYST/DEVELOPER'; 
	v_max_mzda := 3000; 
	--  vkladanie udajov 
	INSERT INTO scott.emp VALUES (v_job_id, 'Sangala', v_job_pozicia, 7566, default, 10000, v_max_mzda, 20); 
	DBMS_OUTPUT.PUT_LINE('OK - Zaznam/riadok uspesne vlozeny'); 
	--  uprava udajov 
	UPDATE scott.emp SET min_salary = ROUND(v_max_mzda/3) WHERE EMPNO = v_job_id; 
	DBMS_OUTPUT.PUT_LINE('OK - Udaj o mzde upraveny'); 
	--  mazanie udajov 
	DELETE FROM scott.emp WHERE EMPNO = v_job_id; 
	DBMS_OUTPUT.PUT_LINE('OK - Udaje vymazane'); 
	COMMIT; 
	-- ukončenie transakcie 
END; 
/
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