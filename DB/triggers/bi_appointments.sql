CREATE OR REPLACE EDITIONABLE TRIGGER "BI_APPOINTMENTS"
    BEFORE INSERT
    ON "APPOINTMENTS"
    FOR EACH ROW
BEGIN
    IF :new."ID" IS NULL THEN
        SELECT "APPOINTMENTS_SEQ".NEXTVAL INTO :new."ID" FROM sys.DUAL;
    END IF;
END;
/

ALTER TRIGGER "BI_APPOINTMENTS"
    ENABLE;

CREATE OR REPLACE EDITIONABLE TRIGGER "BI_ITEMS"
    BEFORE INSERT
    ON "ITEMS"
    FOR EACH ROW
BEGIN
    IF :new."ID" IS NULL THEN
        SELECT "ITEMS_SEQ".NEXTVAL INTO :new."ID" FROM sys.DUAL;
    END IF;
END;
/

ALTER TRIGGER "BI_ITEMS"
    ENABLE;