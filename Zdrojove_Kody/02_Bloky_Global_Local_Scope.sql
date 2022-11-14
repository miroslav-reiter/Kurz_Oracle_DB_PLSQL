DECLARE
     -- Deklaračná sekcia (voliteľná)
     -- Deklarácia premenných a konštánt
     -- variable_name datatype [NOT NULL := value ]; 
     
     -- Globalne premenne (Globalny Scope)
     mzda_priemerna number (6) := 1820;
     oddelenie varchar2(10) NOT NULL := 'HR';
     mzda_zakladna number;
     mzda_priplatok number;
     
BEGIN
     -- Exekučná sekcia (povinná)
     -- Vykonanie príkazov/inštrukcií
     mzda_zakladna  := 850;
     mzda_priplatok := 530;
     DBMS_OUTPUT.PUT_LINE('Na oddeleni: ' || oddelenie || ' je priemerna mzda: ' || mzda_priemerna || ' Eur' || chr(10));
     
     DECLARE
        -- Lokalne premenne (Lokalny Scope)
        mzda_celkova number;
     BEGIN
        mzda_celkova :=  mzda_zakladna + mzda_priplatok;
        DBMS_OUTPUT.PUT_LINE('Zakladna mzda je (Global Scope): ' || mzda_zakladna || ' Eur');
        DBMS_OUTPUT.PUT_LINE('Priplatok ku mzde je (Global Scope): ' || mzda_priplatok || ' Eur');
        DBMS_OUTPUT.PUT_LINE('Celkova mzda je (Local Scope): ' || mzda_celkova || ' Eur');
     END;

EXCEPTION WHEN OTHERS THEN
     -- Spracovanie výnimiek/chýb (voliteľná)
     dbms_output.put_line(sqlerrm);
     dbms_output.put_line('Sme v Exception casti');
END;
/

