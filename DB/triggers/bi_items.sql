CREATE OR REPLACE TRIGGER "BI_ITEMS"
    BEFORE INSERT
    ON "ITEMS"
    FOR EACH ROW
BEGIN
    IF :new."ID" IS NULL THEN
        SELECT "ITEMS_SEQ".NEXTVAL INTO :new."ID" FROM sys.DUAL;
    END IF;
END;