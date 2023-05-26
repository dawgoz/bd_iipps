CREATE OR REPLACE FUNCTION fnc_get_sid(n IN NUMBER)
    RETURN VARCHAR2
AS
    i   NUMBER := n;
    s   VARCHAR2(9);
    r   NUMBER(2, 0);
BEGIN
    WHILE i > 0
    LOOP
        r :=
            MOD(i
               ,36);
        i := (i - r) / 36;

        IF (r < 10) THEN
            s := TO_CHAR(r) || s;
        ELSE
            s := CHR(55 + r) || s;
        END IF;
    END LOOP;

    RETURN LPAD(s
               ,9
               ,'0');
END;
/

CREATE OR REPLACE FUNCTION hash_password(p_user_name   IN VARCHAR2
                                        ,p_password    IN VARCHAR2)
    RETURN VARCHAR2
IS
    l_user       users.user_name%TYPE := UPPER(p_user_name);
    l_password   VARCHAR2(255);
BEGIN
    SELECT standard_hash(p_user_name || p_password
                        ,'SHA512')
    INTO   l_password
    FROM   DUAL;

    RETURN l_password;
END hash_password;
/