CREATE TABLE "ITEMS"
(
    "ID"          NUMBER(8, 0)
                     GENERATED BY DEFAULT ON NULL AS IDENTITY
                         MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH   1 CACHE 20 NOORDER NOCYCLE NOKEEP NOSCALE
                     NOT NULL ENABLE
   ,"SUPPLIER"    VARCHAR2(20) NOT NULL ENABLE
   ,"MODEL"       VARCHAR2(20) NOT NULL ENABLE
   ,"IMAGE"       BLOB
   ,"BADGE"       BLOB
   ,"CATEGORY"    VARCHAR2(20)
   ,CONSTRAINT "ITEMS_PK" PRIMARY KEY("ID") USING INDEX ENABLE
);

CREATE UNIQUE INDEX "ITEMS_PK"
    ON "ITEMS"("ID");