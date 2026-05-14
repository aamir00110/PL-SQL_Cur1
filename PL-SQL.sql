DECLARE
    CURSOR cur_name IS
        SELECT column1,
               column2,
               column3
        FROM your_table;
BEGIN
    FOR rec IN cur_name LOOP
        INSERT INTO table_name
        (
            column1,
            column2,
            column3
        )
        VALUES
        (
            rec.column1,
            rec.column2,
            rec.column3
        );
    END LOOP;
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
