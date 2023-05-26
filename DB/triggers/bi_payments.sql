CREATE OR REPLACE EDITIONABLE TRIGGER "BI_PAYMENTS"
    BEFORE INSERT
    ON "PAYMENTS"
    FOR EACH ROW
BEGIN
    IF :new."ID" IS NULL THEN
        SELECT "PAYMENTS_SEQ".NEXTVAL INTO :new."ID" FROM sys.DUAL;
    END IF;
END;
/

ALTER TRIGGER "BI_PAYMENTS"
    ENABLE;