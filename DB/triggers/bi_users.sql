CREATE OR REPLACE EDITIONABLE TRIGGER "BI_USERS"
    BEFORE INSERT
    ON users
    FOR EACH ROW
BEGIN
    :new.user_name := UPPER(:new.user_name);
    :new.password :=
        hash_password(UPPER(:new.user_name)
                     ,:new.password);
END;
/

ALTER TRIGGER "BI_USERS"
    ENABLE;