CREATE OR REPLACE EDITIONABLE TRIGGER "BI_ORDERS"
    BEFORE INSERT
    ON "ORDERS"
    FOR EACH ROW
BEGIN
    IF :new."ID" IS NULL THEN
        SELECT "ORDERS_SEQ".NEXTVAL INTO :new."ID" FROM sys.DUAL;
    END IF;
END;
/

ALTER TRIGGER "BI_ORDERS"
    ENABLE;