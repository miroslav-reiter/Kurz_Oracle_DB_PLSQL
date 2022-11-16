# 📋 Kurz Oracle DB PL/SQL
Kurz PL/SQL ťa prevedie od nulových schopností písania PL/SQL po schopnosť písať efektívne programy na spracovanie údajov. V kurze sa naučíš popísať vlastnosti a syntax PL/SQL. Vytvárať a ladiť uložené procedúry a funkcie. PL/SQL je rozšírenie procedurálneho jazyka Oracle SQL. Program PL/SQL môže mať príkazy SQL aj procedurálne príkazy. V programe PL/SQL sa príkazy SQL používajú na prístup k súborom údajov uloženým v databáze, zatiaľ čo procedurálne príkazy sa používajú na spracovanie jednotlivých údajov a riadenie toku programu.

## 🧱 Testovacia Oracle DB 
**Prihlasovacie údaje na kurze od lektora**    

### ☁️ Oracle Autonomous Database (Oracle Cloud Database)
Username: admin  
Wallet: KurzOraclePLSQL.zip  
Configuration File: C:\Users\Administrator\Documents\Oracle Wallet\Wallet_KurzOraclePLSQL.zip  
Service: kurzoracleplsql_high (automaticky)  

DB Name: KurzOraclePLSQL alebo F861DMQMREFDG3ZG  
URL Connection: ocid1.autonomousdatabase.oc1.eu-frankfurt-1.antheljtabxkwpiangbzg7rars3ru375p3nm3gsayo3qxmoqv6nce4zidj2a  

### 📋 Samostatne nainštalovan8 databáza Oracle Express Database  
Username: sysdba alebo sysdba 
Password: oracle alebo zadané pri inštalácií  
Hostname: localhost alebo 127.0.0.1  
Port: 1521  
SID: xe  

## 📁 Súbory a materiály na kurze od lektora  
Registrujte sa na a vytvorte si **Oracle konto** pre používanie [Oracle Live SQL editora](https://livesql.oracle.com)
Kto si bude chcieť okrem simulátorov vyskúšaj aj vlastné databázy a nad nimi písanie skriptov, nainštalujte si:
1. [Oracle XE Express (free Database)](https://www.oracle.com/database/technologies/appdev/xe.html) 
2. [SQL Developer](https://www.oracle.com/database/sqldeveloper/)  
 
**Materiály** sú dostupné na: [Microsoft OneDrive/Sharepoint](https://vitask-my.sharepoint.com/:f:/g/personal/miroslav_vitask_onmicrosoft_com/ErD-ruCODExDnWXA1heKXhABKiTSIi4BC90Bw7QUow17vg?e=j3MsER)

## 🧰 Stránky a nástroje na precvičovanie Oracle DB a PL/SQL
1. [SQLzoo](https://sqlzoo.net/wiki/SQL_Tutorial)  
2. [Oracle Live SQL](https://livesql.oracle.com/apex/f?p=590:1000)
3. [Oracle Database XE Express](https://www.oracle.com/database/technologies/appdev/xe.html) 
3. [SQL Developer](https://www.oracle.com/database/sqldeveloper/) 
4. [Oracle Autonomous Database Cloud](https://www.oracle.com/autonomous-database/) 
5. [SQL Joins Visualizer](https://sql-joins.leopard.in.ua/)  
6. [Jetbrains Datalore](https://datalore.jetbrains.com)  
7. [DBeaver](https://dbeaver.io/)
8. [HackerRank](https://www.hackerrank.com/domains/sql)  
9. [SQL Fiddle](http://sqlfiddle.com/#!4/c0be1c/1)  

Cesta, kde je uložený konfiguračný súbor **(product.conf)** SQL Developer:
C:\Users\\**POUZIVATEL**\\AppData\Roaming\sqldeveloper\\**VASA_VERZIA**\\product.conf
C:\Users\Administrator\AppData\Roaming\sqldeveloper\22.2.1\product.conf

Cesta, kde sú uložené SQL skripty DBeaver:
C:\Users\User\AppData\Roaming\DBeaverData\workspace6\General

## 📔 Dokumentácia Oracle PL/SQL a Oracle Database a Guidelines
1. [Oracle Database 21c](https://docs.oracle.com/en/database/oracle/oracle-database/21/lnpls/index.html)
2. [Oracle Database 19c](https://docs.oracle.com/en/database/oracle/oracle-database/21/lnpls/index.html)
3. [Database PL/SQL Language Reference 21c](https://docs.oracle.com/en/database/oracle/oracle-database/21/development.html)  
4. [Database PL/SQL Language Reference 19c](https://docs.oracle.com/en/database/oracle/oracle-database/19/development.html)
5. [Oracle SQL and PL/SQL Coding Guidelines]([https://databaseline.tech/guidelines.html](https://oracle.readthedocs.io/en/latest/sql/basics/style-guide.html) 
6. [Ian Hellström Oracle SQL and PL/SQL Coding Guidelines](https://databaseline.tech/guidelines.html) 

## Čo je PL/SQL?
**Procedurálne rozšírenie SQL od Oracle**
Je procedurálna nadstavba jazyka SQL firmy Oracle. Jazyk PL/SQL je pôvodne procedurálny, dnes má však niektoré prvky a možnosti OOP. Na rozdiel od SQL umožňuje používať cykly, podmienky, procedúry, funkcie, ošetrenie výnimiek a iné programátorské postupy.
![image](https://user-images.githubusercontent.com/24510943/202174834-c7da6809-0378-4dc9-80fa-e23eacb96125.png)

### SQL jazyk – Rozšírenie o procedúry
Každý DB systém ma vlastný druh rozšírenia

V relačných DB častokrát nájdeme aspoň tieto 3:
1. **PROCEDURE** - zoskupenie dopytov, výsledkom môže byť tabuľka
2. **FUNCTION** - zoskupenie dopytov, výsledkom je skalárna hodnota
3. **TRIGGER** - špeciálna procedúra k určitým udalostiam/eventom ako je aktualizáciua, vymazanie, vytvorenie údajov.

Oracle – **PL/SQL**
Microsoft/Sybase – T–SQL
MySQL – SQL/PSM (Persistent Stored Module)
Sybase – Watcom–SQL
PostgreSQL – PL/PSM

#### Databázové Objekty
Databáza/Schéma – zoskupenie objektov
Tabuľka – štruktúrované zoskupenie dát
Index – štruktúra dát zvyšujúca výkon a rýchlosť dopytov
Avšak na úkor diskových operácií a diskového priestoru
Procedúra, funkcia – sekvencia dopytov
Pohľad – predpripravený dopyt
Trigger – špeciálna procedúra – vkladanie, aktualizácia a mazanie

## Architektúra PL/SQL
PL/SQL compilation and run-time system (ďalej len CRTS) je technológia, nie nezávislý produkt. Predstavte si túto technológiu nasledovne. CRTS je engina, ktorá kompiluje a vykonáva PL/SQL bloky a podprogramy. Engina môže byť nainštalovaná buď v Oracle serveri alebo v application development tool, ako napr. v Oracle Forms alebo Oracle Report. Takže PL/SQL sídli v 2 prostrediach.

- Databázový server Oracle
- Oracle tools

Tieto dve prostredia sú nezávislé.

V oboch prostrediach PL/SQL engina prijme ako vstup ľubovoľný platný PL/SQL blok alebo podprogram a vykoná ho tak, že vykoná procedurálne príkazy/statementy v bloku alebo podprograme, ale SQL statementy pošle SQL Statement Executorovi v databázovom serveri Oracle.

Kompilačný a runtime systém PL/SQL je engine, ktorý kompiluje a spúšťa jednotky PL/SQL Engine je možné nainštalovať do databázy alebo do nástroja na vývoj aplikácií, ako je napríklad Oracle Forms. V oboch prostrediach engine PL/SQL akceptuje ako vstup akúkoľvek platnú jednotku PL/SQL. Engine spúšťa procedurálne príkazy, ale odosiela príkazy SQL do nástroja SQL v databáze. Databáza zvyčajne spracováva jednotky PL/SQL. Keď nástroj na vývoj aplikácií spracuje jednotky PL/SQL, odovzdá ich svojmu lokálnemu jadru PL/SQL. Ak jednotka PL/SQL neobsahuje žiadne príkazy SQL, lokálny mechanizmus spracuje celú jednotku PL/SQL. Je to užitočné, ak nástroj na vývoj aplikácií môže ťažiť z podmieneného a iteračného riadenia. Napríklad aplikácie Oracle Forms často používajú príkazy SQL na testovanie hodnôt položiek polí a vykonávanie jednoduchých výpočtov. Použitím PL/SQL namiesto SQL sa tieto aplikácie môžu vyhnúť volaniam do databázy.
![image](https://user-images.githubusercontent.com/24510943/202174430-44b8ddc5-64da-423b-965c-2e2b6109b64a.png)

## Výhody PL/SQL
![image](https://user-images.githubusercontent.com/24510943/202175645-037b0b41-802d-4d75-8e9a-afbcf25095ce.png)

### Základná štruktúra anonymných blokov
**DECLARE**
	Deklaračná sekcia
	v_priezvisko varchar2(10):='Sangala'
**BEGIN**
	Výkonná/exekučná sekcia
	DBMS_OUTPUT.PUT_LINE(v_priezvisko); 
**EXCEPTION**
	Ošetrenie výnimiek/chýb
	WHEN TOO_MANY_ROWS THEN
	DBMS_OUTPUT.PUT_LINE('SELECT vratil viacero riadkov');
**END**;
	Ukončenie bloku
![image](https://user-images.githubusercontent.com/24510943/202175394-f5fe2c65-2036-4a53-ba22-97390329bf92.png)

## 📦 Dátové Typy
### 🎰 Znakové Dátové Typy
**VARCHAR2** uchováva reťazce s premenlivou dĺžkou. Pri deklarácii premennej treba zadať jej maximálnu dĺžku (1 – 32 767 bytov).   
Dĺžku je možné zadať aj počtom znakov, vtedy sa potrebnýpočet bytov preráta podľa najvačšej dĺžky ktorú znaková sada databázy využíva pre nejaký znak.  
Napr. pre UTF8 je to 3, t.j. 100 CHAR = 300 BYTE  

```sql 
nazov_premennej VARCHAR2(max_dlzka [BYTE|CHAR]) 
```

**CHAR** pre reťazce pevnej dĺžky, táto sa zadáva pri deklarácii obdobne ako pri VARCHAR2  
V rozmedzí 1‐32 767 bytov alebo korešpondujúci počet znakov.  
Ak sa nezadá dĺžka, premenná  bude dlhá 1 znak, ak sa nezadá CHAR alebo BYTE, určí sa to z hodnoty inicializačnej premennej NLS_LENGTH_SEMANTICS.  
Ak sú hodnoty v premennej CHAR menšie ako jej dĺžka, doplnia sa do  tejto dĺžky automaticky medzerami sprava.  

**NVARCHAR2** unicode obdoba VARCHAR2, uchováva premenné v znakovej sade definovanej parametrom NLS_NCHAR_CHARACTERSET t.j. UTF-8 alebo UTF-16  

**NCHAR** unicode obdoba CHAR  

### 🎱 Číselné Dátové Typy (Reálne)
NUMBER je najpoužívanejší číselný dátový typ, ukladá decimálne hodnoty od 10^-130 do 10^126-1  

```sql
nazov_premennej NUMBER [(precision, scale)] 
```
  
Ak zadáme precision a scale, premenná bude číslo s pevnou desatinnou čiarkou.  
Precision je  celkový počet signifikantných číslic v rozmedzí 1 až 38. 
Scale je počet číslic za desatinnou čiarkou  (ak je kladné) alebo pred ňou (záporné scale).    
Rozmedzie scale je -84 až 127.  
Hodnoty, ktoré presnosťou presahujú scale premennej, do ktorej majú byť vložené, budú implicitne zaokrúhlené. Ak nezadáme precision ani scale, premenná bude číslo s pohyblivou desatinnou čiarkou s dĺžkou  maximálne 40 číslic.  

**BINARY_FLOAT** a **BINARY_DOUBLE** sa používajú pre čísla s pohyblivou desatinnou čiarkou a jednoduchou alebo dvojitou presnosťou podľa normy IEEE-754.   
BINARY_FLOAT zaberá 4 byty a ukladá čísla od 1,17549435E-38F do 3,40282347E+38F.  
BINARY_DOUBLE zaberie 8 bytov a spracuje čísla od 2,2250748585072014E-308 do 1,7976931348623157E+308.  

**SIMPLE_FLOAT** a **SIMPLE_DOUBLE** (od ver. 11g) je ich rýchlejšia alternatíva, ktorá ale nepodporuje NULL hodnoty, predikáty **IS NAN** a **IS INFINITY** a nekontroluje podmienkypretečenia

### 🎲 Číselné Dátové Typy (Celé)
**PLS_INTEGER** ukladá celočíselné hodnoty (signed integer) od -2 147 483 648 do 2 147 483 647.  
Hodnoty sú reprezentované natívnym integer formátom príslušnej hardvérovej platformy, celočíselné výpočty sa tak vykonávajú rýchlejšie ako pri dátovom type NUMBER. PLS_INTEGER je náhradou a ekvivalentom staršieho typu BINARY_INTEGER.  

**SIMPLE_INTEGER** (od ver. 11g) je rýchlejšia alternatíva PLS_INTEGER, nepodporuje však NULL hodnoty a nekontroluje podmienky pretečenia. 

### 📅 Dátumové Dátové Typy
**DATE** ukladá datum a čas s presnosťou na sekundy.  
```sql
nazov_premennej DATE 
```
**TIMESTAMP** ukladá datum a čas s presnosťou až na miliardtinu sekundy (9 miest, defaultne 6). 
```sql
nazov_premennej TIMESTAMP [(precision)]
```
**TIMESTAMP WITH TIMEZONE** ukladá datum a čas ako TIMESTAMP, navyše však ukladá  informáciu o časovej zóne 
```sql
nazov_premennej TIMESTAMP [(precision)] WITH TIME ZONE
```
**TIMESTAMP WITH LOCAL TIMEZONE** ako TIMESTAMP, je však citlivý na rozdiely medzi SESSION_TIMEZONE a DB_TIMEZONE. Informácie sa pri ukladaní na server prepočítavajú a uložia  v časovej zone databázy, naopak pri výbere sa prerátajú na časovú zónu session. 
```sql
nazov_premennej TIMESTAMP [(precision)] WITH LOCAL TIME ZONE
```

### ⏳ Intervalové Dátové Typy
**INTERVAL YEAR TO MONTH** umožňuje ukladať časové úseky ako počet rokov a mesiacov   
**INTERVAL DAY TO SECOND** použijeme pre časové úseky zadané ako počet dní, hodín, minút a sekúnd (vrátane zlomkov sekúnd) 

### ✅ Ďalšie Dátové Typy
**BOOLEAN** môže nadobúdať 3 hodnoty – TRUE, FALSE a NULL   
**ROWID** slúži pre ukladanie fyzickej adresy riadka v tabuľke    
**UROWID** pre logickú adresu riadka v index organized tabuľke   
**REF CURSOR** a **SYS_REFCURSOR** pre kurzorové premenné používané so statickým, alebo dynamickým SQL  

### ⬛ LOB (Large Objects) Dátové Typy
**CLOB** (Character Large Object) pre deklaráciu premennej, ktorá predstavuje LOB locator – odkaz na blok veľkého textu v databáze   
**NCLOB** odkaz na blok veľkého unicode textu v databáze   
**BLOB** odkaz na veľký binárny objekt uložený v databáze   
**BFILE** odkaz na veľký binárny objekt uložený mimo databázy  

## Rozšírenia (prípony) súborv Oracle PL/SQL
1. Functions (\*.pls)
2. Procedures (\*.pls)
3. Package Specification (\*.pks)
4. Package Body (\*.pkb)
5. Trigger (\*.trg)
5. SQL skripty oddelené / (tvorba/odstránenie tabuliek, reláci a pod.) (\*.sql)

### Odporúčanie:
Špecifikácia balíčka do (\*.pks)  
Telo/implementácia balíčka do (\*.pkb)  
Všetko ostatné vrátane funkcií, procedúry, triggerov, SQL príkazov do (\*.sql)  

## Packages (Balíčky)
PL/SQL umožňuje zoskupiť logický príbuzné typy, premenné, kurzory a podprogramy do balíčkov. Balíčky majú obvykle 2 časti: **špecifikáciu** a **telo**. Špecifikácia je rozhranie/interface balíčka pre aplikáciu - deklaruje typy, konštanty, premenné, výnimky, kurzory a podprogramy, ktoré môžeme z balíčka využívať. Telo obsahuje definície kurzorov a podprogramov, takže implementuje špecifikáciu. Iba deklarácie v špecifikácii balíčkov sú viditeľné a prístupné z aplikácie. Implementačné detaily (v tele balíčka) sú skryté a neprístupné z aplikácie. Balíčky môžu byť skompilované a uložené v Oracle databáze, kde môžu byť zdieľané mnohými aplikáciami, keď voláte prvýkrát podprogram z balíčka, tak sa celý balíček načíta do pamäte. Pri ďalších volaniach už je balíček v pamäti a nevyžaduje teda ďalšie I/O operácie, čo priaznivo ovplyvňuje výkon.

### Prečo používať Balíčky (Packages)?
![image](https://user-images.githubusercontent.com/24510943/202182620-7fbb3f64-ed18-4b20-92a6-730df2840c3a.png)

```sql
-- Tabulka pre logovanie
create table log_table
( message varchar2(200)
)
//

-- Vytvor špecifikáciu balíčka
create or replace package pkg_test
is
    -- Definícia 1 verejnej/public procedúry
    procedure do;
end;
//

-- Vytvor telo balíčka
create or replace package body pkg_test
is
    -- Privátna/súkromná logovacia procedúra
    procedure log(p_message in varchar)
    is
    begin
        insert into log_table(message) values (p_message);
    end;

    -- Privátna/súkromná, ktorá vráti na výstupe dvojnásobné číslo
    function double(p_number in number)
    return number
    is
    begin
        return 2 * p_number;
    end;

    -- Použitie verejnej/public procedúry
    procedure do
    is
    begin
        log('2 * 12 = ' || double(12));
    end;

end;
//

```
### Spustenie príslušnej verejnej procedúry a balíka
```sql
-- Vykonanie verejnej/public procedúry balíka
begin
    pkg_test.do;
end;
/

-- dbms_output nefunguje, takže sa lognene do tabuľky
-- (podobne ako v skutočnom živote) a vyberiete z neho všetky záznamy
select *
from   log_table
/

```
## Záznamy (Records)

Record je skupina dátových položiek uložená v poliach, každé má svoje meno a datatype. Atribút %ROWTYPE dovoľuje deklarovať recordy, ktoré zodpovedajú riadku databázovej tabuľky. Avšak tak nemôžete určiť datatypy políčok recordu, alebo ich sami definovať. Takýto record je presný obraz datatypu databázovej tabuľky. Preto existuje datatype RECORD, ktorý toto obmedzenie ruší.
