DECLARE
     -- Deklaračná sekcia (voliteľná)
     -- Deklarácia premenných a konštánt
     -- variable_name datatype [NOT NULL := value ]; 
     mzda_priemerna number (6) := 1820;
     oddelenie varchar2(10) NOT NULL := 'HR';
     mzda_zakladna number;
     mzda_priplatok number;
     
BEGIN
     -- Exekučná sekcia (povinná)
     -- Vykonanie príkazov/inštrukcií
     mzda_zakladna  := 850;
     mzda_priplatok := 530;
     DBMS_OUTPUT.PUT_LINE('Na oddeleni: ' || oddelenie || ' je priemerna mzda: ' || mzda_priemerna);

EXCEPTION WHEN OTHERS THEN
     -- Spracovanie výnimiek/chýb (voliteľná)
     dbms_output.put_line(sqlerrm);
     dbms_output.put_line('Sme v Exception casti');
END;
/


/*
Výhody PL/SQL

1. Blokové štruktúry: PL SQL pozostáva z blokov kódu, ktoré môžu byť vnorené do seba. 
Každý blok tvorí jednotku úlohy alebo logický modul. 
Bloky PL/SQL je možné uložiť do databázy a opätovne použiť.

2. Schopnosti procedurálneho jazyka: PL SQL pozostáva z konštrukcií procedurálneho jazyka, 
ako sú podmienené príkazy (if else príkazy) a slučky ako (cykly FOR).

3. Lepší výkon: PL SQL engine spracováva viacero SQL príkazov súčasne ako jeden blok, čím sa znižuje sieťová prevádzka.

4. Spracovanie chýb: PL/SQL efektívne spracováva chyby alebo výnimky počas vykonávania programu PL/SQL. 
Akonáhle je výnimka zachytená, môžu sa vykonať špecifické akcie v závislosti od typu výnimky alebo sa môže zobraziť používateľovi so správou.

*/