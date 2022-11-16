BEGIN
	DBMS_OUTPUT.PUT('1. riadok (put)... ');
	DBMS_OUTPUT.PUT('stale 1. riadok (put)...');
	DBMS_OUTPUT.NEW_LINE;
	DBMS_OUTPUT.PUT_LINE('2. riadok (new_line + put_line)...');
	DBMS_OUTPUT.PUT('TEST');
	DBMS_OUTPUT.NEW_LINE;
	DBMS_OUTPUT.PUT_LINE('4. riadok' || CHR(10) || '5. riadok priklad LF (chr10)');
	DBMS_OUTPUT.PUT_LINE(CHR(10));
	DBMS_OUTPUT.PUT_LINE('9. riadok');
END;
/