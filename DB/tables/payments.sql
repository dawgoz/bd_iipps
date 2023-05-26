CREATE TABLE "PAYMENTS"
(
    "ID"                  NUMBER
                             GENERATED BY DEFAULT ON NULL AS IDENTITY
                                 MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH           1 CACHE 20 NOORDER NOCYCLE NOKEEP NOSCALE
                             NOT NULL ENABLE
   ,"ORDER_ID"            NUMBER NOT NULL ENABLE
   ,"CARD_NUMBER"         VARCHAR2(16) NOT NULL ENABLE
   ,"SECURITY_CODE"       NUMBER NOT NULL ENABLE
   ,"EXPIRATION_YEAR"     NUMBER NOT NULL ENABLE
   ,"EXPIRATION_MONTH"    NUMBER NOT NULL ENABLE
   ,"BILLING_ADDRESS"     VARCHAR2(254) NOT NULL ENABLE
   ,"DATE_AND_TIME"       TIMESTAMP(6)
   ,CONSTRAINT "PAYMENTS_PK" PRIMARY KEY("ID") USING INDEX ENABLE
);

CREATE UNIQUE INDEX "PAYMENTS_PK"
    ON "PAYMENTS"("ID");