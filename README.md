# 📋 Kurz_Oracle_DB_PLSQL
Materiály ku kurzu Oracle DB PL/SQL

## 🧱 Testovacia Oracle DB 
Prihlasovacie údaje na kurze od lektora  
DB Name: KurzOraclePLSQL  
Password: Oracle-je-super-2022  

Database name: F861DMQMREFDG3ZG
Wallet: IT-academy-456...
ocid1.autonomousdatabase.oc1.eu-frankfurt-1.antheljtabxkwpiangbzg7rars3ru375p3nm3gsayo3qxmoqv6nce4zidj2a

## 📁 Súbory na kurze od lektora  
Registrujte sa na a vytvorte si konto na: https://livesql.oracle.com
Kto si bude chcieť okrem simulátorov vyskúšaj aj vlastné databázy a nad nimi písanie skriptov, nainštalujte si:
1. Oracle XE (free Database)
2. SQL Developer
Dostupné na: https://vitask-my.sharepoint.com/:f:/g/personal/miroslav_vitask_onmicrosoft_com/ErD-ruCODExDnWXA1heKXhABKiTSIi4BC90Bw7QUow17vg?e=j3MsER  

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

Cesta, kde sú uložené SQL skripty DBeaver
C:\Users\User\AppData\Roaming\DBeaverData\workspace6\General

## 📔 Dokumentácia
https://docs.oracle.com/en/database/oracle/oracle-database/21/development.html
https://docs.oracle.com/en/database/oracle/oracle-database/21/lnpls/index.html

## 📦 Dátové Typy
### 🎰 Znakové Dátové Typy
**VARCHAR2** uchováva reťazce s premenlivou dĺžkou. Pri deklarácii premennej treba zadať jej maximálnu dĺžku (1 – 32 767 bytov).   
Dĺžku je možné zadať aj počtom znakov, vtedy sa potrebnýpočet bytov preráta podľa najvačšej dĺžky ktorú znaková sada databázy využíva pre nejaký znak.  
Napr. pre UTF8 je to 3, t.j. 100 CHAR = 300 BYTE  

``sql 
nazov_premennej VARCHAR2(max_dlzka [BYTE|CHAR]) 
``

**CHAR** pre reťazce pevnej dĺžky, táto sa zadáva pri deklarácii obdobne ako pri VARCHAR2  
V rozmedzí 1‐32 767 bytov alebo korešpondujúci počet znakov.  
Ak sa nezadá dĺžka, premenná  bude dlhá 1 znak, ak sa nezadá CHAR alebo BYTE, určí sa to z hodnoty inicializačnej premennej NLS_LENGTH_SEMANTICS.  
Ak sú hodnoty v premennej CHAR menšie ako jej dĺžka, doplnia sa do  tejto dĺžky automaticky medzerami sprava.  

**NVARCHAR2** unicode obdoba VARCHAR2, uchováva premenné v znakovej sade definovanej parametrom NLS_NCHAR_CHARACTERSET t.j. UTF-8 alebo UTF-16  

**NCHAR** unicode obdoba CHAR  

### 🎱 Číselné Dátové Typy (Reálne)
NUMBER je najpoužívanejší číselný dátový typ, ukladá decimálne hodnoty od 10^-130 do 10^126-1  

``sql
nazov_premennej NUMBER [(precision, scale)] 
``
  
Ak zadáme precision a scale, premenná bude číslo s pevnou desatinnou čiarkou.  
Precision je  celkový počet signifikantných číslic v rozmedzí 1 až 38. Scale je počet číslic za desatinnou čiarkou  (ak je kladné) alebo pred ňou (záporné scale).   
Rozmedzie scale je -84 až 127. 
Hodnoty, ktoré  presnosťou presahujú scale premennej do ktorej majú byť vložené, budú implicitne zaokrúhlené. Ak nezadáme precision ani scale, premenná bude číslo s pohyblivou desatinnou čiarkou s dĺžkou  maximálne 40 číslic.  

**BINARY_FLOAT** a **BINARY_DOUBLE** sa používajú pre čísla s pohyblivou desatinnou čiarkou a  jednoduchou alebo dvojitou presnosťou podľa normy IEEE-754.   
BINARY_FLOAT zaberá 4 byty a ukladá čísla od 1,17549435E-38F do 3,40282347E+38F.  
BINARY_DOUBLE zaberie 8 bytov a spracuje čísla od 2,2250748585072014E-308 do 1,7976931348623157E+308.  

**SIMPLE_FLOAT** a **SIMPLE_DOUBLE** (od ver. 11g) je ich rýchlejšia alternatíva, ktorá ale nepodporuje NULL hodnoty, predikáty **IS NAN** a **IS INFINITY** a nekontroluje podmienkypretečenia

### 🎲 Číselné Dátové Typy (Celé)
**PLS_INTEGER** ukladá celočíselné hodnoty (signed integer) od −2 147 483 648 do 2 147 483 647.  
Hodnoty sú reprezentované natívnym integer formátom príslušnej hardvérovej platformy, celočíselné výpočty sa tak vykonávajú rýchlejšie ako pri dátovom type NUMBER. PLS_INTEGER je náhradou a ekvivalentom staršieho typu BINARY_INTEGER.  

**SIMPLE_INTEGER** (od ver. 11g) je rýchlejšia alternatíva PLS_INTEGER, nepodporuje však NULL hodnoty a nekontroluje podmienky pretečenia. 




