/* create table DEPARTMENTS (  
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
); */

/*
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

create or replace trigger EMPLOYEES_BIU
    before insert or update on EMPLOYEES
    for each row
begin
    if inserting and :new.empno is null then
        :new.empno := to_number(sys_guid(), 
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
end;
/
*/
/*
INSERT INTO departments(name , location) VALUES ('Financie', 'Bratislava');
INSERT INTO departments(name , location) VALUES ('Development', 'Praha');
INSERT INTO departments(name , location) VALUES ('HR', 'Bratislava');
INSERT INTO departments(name , location) VALUES ('Operation', 'Praha');
*/

-- INSERT INTO departments(name , location) VALUES ('Developeri', 'Praha');
select * from departments;


INSERT INTO employees(name , job, salary, deptno) VALUES ('Adam Sangala', 'Programator', 2000, (select deptno from departments where name='Developeri'));


select * from employees;