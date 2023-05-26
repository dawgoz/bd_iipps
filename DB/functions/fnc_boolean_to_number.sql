CREATE OR REPLACE FUNCTION boolean_to_number(b BOOLEAN)
    RETURN NUMBER
IS
BEGIN
    RETURN CASE
               WHEN b THEN
                   1
               WHEN NOT b THEN
                   0
           END;
END boolean_to_number;
/