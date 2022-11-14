------------------------------------------------
FAQ Live SQL
-- Zakaždým, keď pristupujete k Live SQL, dostanete dočasne priradenú novú schému (takto môžeme časom slúžiť toľkým používateľom). Zaznamenávame každý výpis, ktorý spracujete, a ukladáme posledných 10 relácií v časti Moja relácia > Predchádzajúce relácie. Ak sa chcete vrátiť tam, kde ste prestali, jednoducho tam prejdite a kliknite na položku Zobraziť reláciu naľavo od predchádzajúcej relácie a kliknite na tlačidlo Znova spustiť a budete mať všetky objekty, ktoré ste mali naposledy. Môžete tiež uložiť ľubovoľnú reláciu ako pomenovaný skript, aby ste si ju ponechali na dobu neurčitú a upravili ju len na príkazy, ktoré chcete alebo potrebujete.


BEGIN
    -- Najkratsi Ahoj Svet/Hello World skript
	-- Nazov balicka/package.procedura/funkcia 
	-- package dbms_output umožňuje odosielať správy z uložených procedúr, balíkov a spúšťačov/triggerov. Balík je užitočný najmä na zobrazenie informácií o ladení/debuggovani PL/SQL.
    dbms_output.put_line('Ahoj Svet');
END;
/

select banner from v$version;
-- Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production

/*
 Dokumentacia Oracle Database 19c: https://docs.oracle.com/en/database/oracle/oracle-database/19/arpls/DBMS_OUTPUT.html#GUID-C1400094-18D5-4F36-A2C9-D28B0E12FD8C
 
Dokumentacia Oracle Database 21c: 
https://docs.oracle.com/en/database/oracle/oracle-database/21/arpls/DBMS_OUTPUT.html#GUID-3C2FDFF2-4A8A-4555-988C-7AA3D0FF7971
*/


/*
-- Zablokovanie volani procedur PUT, PUT_LINE, NEW_LINE, GET_LINE, and GET_LINES
begin
DBMS_OUTPUT.DISABLE;
end;
/

-- Odblokovanie volani procedur PUT, PUT_LINE, NEW_LINE, GET_LINE, and GET_LINES
-- buffer_size
-- Upper limit, in bytes, the amount of buffered information. Setting buffer_size to NULL specifies that there should be no limit.
-- veľkosť_bufferu
-- Horný limit, v bajtoch, množstvo informácií vo vyrovnávacej pamäti. Nastavenie buffer_size na NULL určuje, že by nemal existovať žiadny limit.

begin
DBMS_OUTPUT.ENABLE (
   buffer_size IN INTEGER DEFAULT 20000);
end;
/

*/
------------------------------------------------

REM Kurz_PL_SQL_I-D1_01_Ahoj_Svet

DECLARE 
 -- Deklaracia premennych 
 sprava varchar(10):='Ahoj svet'; 
BEGIN 
 /* 
    PL/SQL spustitelne prikazy 
    put, put_line (odriadkuje) 
 */ 
 dbms_output.put_line('Hello World'); 
 dbms_output.put_line(sprava); 
-- EXCEPTION 
 -- Spracovanie vynimiek/chyb 
END; 
/

------------------------------------------------
/* 
-- Odriadkovanie
DBMS_OUTPUT.NEW_LINE

Microsoft Windows
concatenate CR a LF: chr(13)||chr(10)
Linux, Mac:
chr(10)
*/

 dbms_output.put_line('Hello World' || chr(13) || chr(10)); 
 
BEGIN
	DBMS_OUTPUT.PUT('1. riadok (put)... ');
	DBMS_OUTPUT.PUT('stale 1. riadok (put)...');
	DBMS_OUTPUT.NEW_LINE;
	DBMS_OUTPUT.PUT_LINE('2. riadok (new_line + put_line)...');
	DBMS_OUTPUT.PUT('3. riadok TEST');
	DBMS_OUTPUT.NEW_LINE;
	DBMS_OUTPUT.PUT_LINE('4. riadok' || CHR(10) || '5. riadok priklad LF (chr10)');
	DBMS_OUTPUT.PUT_LINE(CHR(10));
	DBMS_OUTPUT.PUT_LINE('9. riadok');
END;
/

------------------------------------------------
REM Kurz_PL_SQL_I-D1_01_Ahoj_Svet

DECLARE 
 -- Deklaracia premennych 
 sprava varchar(10):='Ahoj svet'; 
BEGIN 
 /* 
    PL/SQL spustitelne prikazy 
    put, put_line (odriadkuje) 
 */ 
 dbms_output.put_line('Hello World'); 
 dbms_output.put_line(sprava); 
EXCEPTION 
WHEN OTHERS THEN NULL;
END;
/
------------------------------------------------

DECLARE
    v_datum_aktualny TIMESTAMP;
    v_datum_aktualny2 TIMESTAMP := CURRENT_TIMESTAMP;
	v_datum_aktualny3 TIMESTAMP := SYSTIMESTAMP;
BEGIN
    SELECT systimestamp INTO v_datum_aktualny FROM dual;
    -- Vypis aktualneho datumu a zretazenie
    DBMS_OUTPUT.PUT_LINE('Aktualne je (TIMESTAMP, Datum + Cas): ' || v_datum_aktualny);
    DBMS_OUTPUT.PUT_LINE('Aktualne je (TIMESTAMP2, Datum + Cas): ' || v_datum_aktualny2);
	DBMS_OUTPUT.PUT_LINE('Aktualne je (TIMESTAMP3, Datum + Cas): ' || v_datum_aktualny3);
    DBMS_OUTPUT.PUT_LINE('Aktualne je (Datum + Cas): ' || TO_CHAR(SYSDATE, 'DD-MON-YYYY HH24:MI:SS'));
    DBMS_OUTPUT.PUT_LINE('Aktualne je (Datum SK/CZ): ' || TO_CHAR(SYSDATE, 'DD.MON.YYYY'));
    DBMS_OUTPUT.PUT_LINE('Aktualne je (Cas SK/CZ, ine casove pasmo/pasmo servera): ' || TO_CHAR(SYSDATE, 'HH:MI:SS'));
END;
/
------------------------------------------------

-- Upravit NLS_DATE_FORMAT na zobrazenie času
ALTER SESSION SET NLS_DATE_FORMAT='dd.mm.yyyy hh24:mi:ss';
BEGIN
    -- yyyy-mm-dd hh24:mi:ss
    dbms_output.put_line(SYSDATE); 
    -- Použitie SYSTIMESTAMP na zobrazenie vyššej presnosti času, napríklad milisekúnd
    dbms_output.put_line(SYSTIMESTAMP); 
    dbms_output.put_line(TO_CHAR(SYSDATE,'dd.mm.yyyy hh24:mi:ss'));
END;
/


