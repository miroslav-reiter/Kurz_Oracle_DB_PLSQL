-------------------------------------------------------------
-- https://livesql.oracle.com/apex/livesql/file/tutorial_KS0KNKP218J86THKN85XU37.html
-- Najprv to spusti bez tabuliek, potom s tabuľkami... Tabulky.sql

DECLARE
  l_table_count integer := 0;
BEGIN
  for c1 in (
  SELECT table_name
  FROM USER_TABLES
  order by 1) loop
      l_table_count := l_table_count + 1;
      dbms_output.put_line(c1.table_name);
  end loop;
  if l_table_count = 0 then
     dbms_output.put_line('V schéme/DB nemáte žiadne tabuľky');
  end if;
END;


-------------------------------------------------------------

CREATE OR REPLACE PACKAGE pkg AUTHID DEFINER AS
  table_row_count integer;
END;
/

DECLARE
  l_table_count integer := 0;
  l_sql         varchar2(32767);
BEGIN
  for c1 in (
  SELECT table_name
  FROM USER_TABLES
  order by 1) loop
      l_table_count := l_table_count + 1;
      l_sql := 'begin select count(*) into pkg.table_row_count from "'||c1.table_name||'"; end;';
      execute immediate l_sql;
      dbms_output.put_line(c1.table_name||' - '||to_char(pkg.table_row_count,'999G999G990')||' rows');
  end loop;
  if l_table_count = 0 then
     dbms_output.put_line('V schéme/DB nemáte žiadne tabuľky');
  end if;
END;
/