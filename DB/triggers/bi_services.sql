CREATE OR REPLACE EDITIONABLE TRIGGER "BI_SERVICES"
    BEFORE INSERT
    ON "SERVICES"
    FOR EACH ROW
BEGIN
    IF :new."ID" IS NULL THEN
        SELECT "SERVICES_SEQ".NEXTVAL INTO :new."ID" FROM sys.DUAL;
    END IF;
END;
/

ALTER TRIGGER "BI_SERVICES"
    ENABLE;