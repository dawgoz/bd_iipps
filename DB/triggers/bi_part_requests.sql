CREATE OR REPLACE EDITIONABLE TRIGGER "BI_PART_REQUESTS"
    BEFORE INSERT
    ON "PART_REQUESTS"
    FOR EACH ROW
BEGIN
    IF :new."ID" IS NULL THEN
        SELECT "PART_REQUESTS_SEQ".NEXTVAL INTO :new."ID" FROM sys.DUAL;
    END IF;
END;
/

ALTER TRIGGER "BI_PART_REQUESTS"
    ENABLE;