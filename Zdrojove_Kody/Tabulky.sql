-- Tabuľka Hračky
create table toys (
  toy_id               integer not null primary key,
  toy_name             varchar2(100) not null,
  weight               number(10, 2) not null,
  quantity_of_stuffing integer,
  volume_of_wood       integer,
  times_lost           integer
);

insert into toys values (1, 'Mr. Penguin', 50, 100, null, 10);
insert into toys values (2, 'Blue Brick', 10, null, 10, null);
insert into toys values (3, 'Red Brick', 20, null, 20, 1);
commit;

---------------------------------------------
-- Vyber/Select
-- 1. Výber dát
select * from toys;

-- 2. Filtrovanie null
select *
from   toys
where  volume_of_wood is null;
-- where  volume_of_wood is not null;

-- 3. Coalesce
select t.*,
       coalesce ( volume_of_wood , 0 ) coalesce_two,
       coalesce ( times_lost, volume_of_wood , quantity_of_stuffing, 0 ) coalesce_many
from   toys t;
---------------------------------------------
https://livesql.oracle.com/apex/livesql/file/tutorial_D39T3OXOCOQ3WK9EWZ5JTJA.html
-- 1. Vytvor tabulky
create table DEPARTMENTS (  
  deptno        number,  
  name          varchar2(50) not null,  
  location      varchar2(50),  
  constraint pk_departments primary key (deptno)  
);

create table EMPLOYEES (  
  empno             number,  
  name              varchar2(50) not null,  
  job               varchar2(50),  
  manager           number,  
  hiredate          date,  
  salary            number(7,2),  
  commission        number(7,2),  
  deptno           number,  
  constraint pk_employees primary key (empno),  
  constraint fk_employees_deptno foreign key (deptno) 
      references DEPARTMENTS (deptno)  
);

/*
Vytváranie spúšťačov/Triggers
Spúšťače sú procedúry, ktoré sú uložené v databáze a sú implicitne spúšťané alebo spúšťané, keď sa niečo stane. Tradične spúšťače podporovali vykonávanie procedurálneho kódu, v Oracle sa procedurálne SQL nazýva PL/SQL blok. PL znamená procedurálny jazyk. Keď sa v tabuľke alebo zobrazení vyskytli príkazy INSERT, UPDATE alebo DELETE. Spúšťače podporujú systémové a iné dátové udalosti na DATABASE a SCHEMA.

Spúšťače sa často používajú na automatické vyplnenie primárnych kľúčov tabuľky. Príklady spúšťačov nižšie zobrazujú príklad spúšťača, ktorý to umožňuje. Na získanie globálne jedinečného identifikátora alebo GUID použijeme vstavanú funkciu.
*/

/*
SYS_GUID generates and returns a globally unique identifier (RAW value) made up of 16 bytes. On most platforms, the generated identifier consists of a host identifier, a process or thread identifier of the process or thread invoking the function, and a nonrepeating value (sequence of bytes) for that process or thread.

SYS_GUID generuje a vracia globálne jedinečný identifikátor (hodnota RAW) pozostávajúci zo 16 bajtov. Na väčšine platforiem sa vygenerovaný identifikátor skladá z identifikátora hostiteľa, identifikátora procesu alebo vlákna procesu alebo vlákna vyvolávajúceho funkciu a neopakujúcej sa hodnoty (sekvencie bajtov) pre daný proces alebo vlákno.

https://stackoverflow.com/questions/3037462/how-to-generate-a-guid-in-oracle
*/
-- 2. Vytvor triggre
create or replace trigger  DEPARTMENTS_BIU
    before insert or update on DEPARTMENTS
    for each row
begin
    if inserting and :new.deptno is null then
        :new.deptno := to_number(sys_guid(), 
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
end;
/

-- 3a. Vkladanie dát/oddelenia
insert into departments (name, location) values
   ('Financie','Bratislava');

insert into departments (name, location) values
   ('Development','Praha');
   
/*
 DELETE FROM "ADMIN"."DEPARTMENTS" WHERE ROWID = 'AAAQ/EAAAAAAJj3AAA' AND ORA_ROWSCN = '38993571368937' and ( "DEPTNO" is null or "DEPTNO" is not null )
DELETE FROM "ADMIN"."DEPARTMENTS" WHERE ROWID = 'AAAQ/EAAAAAAJj3AAB' AND ORA_ROWSCN = '38993571368937' and ( "DEPTNO" is null or "DEPTNO" is not null )
 
*/

-- 3b. Vkladanie zamestnanci
insert into EMPLOYEES 
   (name, job, salary, deptno) 
   values
   ('Adam Sangala','PL/SQL Developer', 
    2830, 
  (select deptno 
  from departments 
  where name = 'Development'));

insert into EMPLOYEES 
   (name, job, salary, deptno) 
   values
   ('Monika Mudra','Analytik', 
   2260, 
   (select deptno 
   from departments 
   where name = 'Financie'));

insert into EMPLOYEES 
   (name, job, salary, deptno) 
   values
   ('Ivana Krasicka','Analytik', 
   3200, 
   (select deptno 
   from departments 
   where name = 'Development'));
   
-- 4. Indexovanie stlpcov
 select table_name "Table", 
       index_name "Index", 
       column_name "Column", 
       column_position "Position"
from  user_ind_columns 
where table_name = 'EMPLOYEES' or 
      table_name = 'DEPARTMENTS'
order by table_name, column_name, column_position;

create index employee_dept_no_fk_idx 
on employees (deptno);

create unique index employee_ename_idx
on employees (name);

-- 5. Dopyty
select * from employees;

select e.name employee,
           d.name department,
           e.job,
           d.location
from departments d, employees e
where d.deptno = e.deptno(+)
order by e.name;

-- 6. Struktura
select table_name, tablespace_name, status
from user_tables
where table_Name = 'EMPLOYEES';

select column_id, column_name , data_type
from user_tab_columns
where table_Name = 'EMPLOYEES'
order by column_id;

-- 6. Dopyty
update employees
set country_code = 'US';

update employees
set commission = 2000
where  name = 'Adam Sangala';

select name, country_code, salary, commission
from employees
order by name;