select *
from HR."EMPLOYEES";

DECLARE
    pocet_riadkov NUMBER := 2;
BEGIN
    UPDATE HR."EMPLOYEES" SET SALARY = SALARY + 500
    WHERE JOB_ID = 'IT_PROG';
    
    IF sql%notfound THEN
        DBMS_OUTPUT.PUT_LINE('Nenasli sme takych zamestnancov...');
    
    ELSIF sql%found THEN
        pocet_riadkov := sql%rowcount;
        DBMS_OUTPUT.PUT_LINE(pocet_riadkov || ' zamestnancov bolo vybranych na zvysenie mzdy');
    END IF;
END;
/