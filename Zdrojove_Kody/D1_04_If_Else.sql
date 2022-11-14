-- WARNING! ERRORS ENCOUNTERED DURING SQL PARSING!
ALTER SESSION SET nls_territory = "Slovakia";
DECLARE 
	v_aktualny_datum DATE := sysdate;
BEGIN
	IF to_char(v_aktualny_datum, 'D') < 4 THEN 
		dbms_output.put_line('Sme v plnom pracovnom nasadeni Mon-Fri');
	ELSE
		dbms_output.put_line('Uzivame si prijemny vikend Sat-Sun');
	END IF;
	
	dbms_output.put_line('Dnes je: ' || to_char(v_aktualny_datum, 'Day') || to_char(v_aktualny_datum, 'D') || '. den v tyzdni. (Pozor ENG kalendar, ak nenastavis nls)');
END;
/


-- select distinct object_type from dba_objects;