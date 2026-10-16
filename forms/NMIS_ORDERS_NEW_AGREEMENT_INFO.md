# Form: NMIS_ORDERS_NEW_AGREEMENT_INFO

**Caption:** Agreement Info For New Orders  
**Record source:**

```sql
SELECT NMIS_AGREEMENTS.CLIENT_ASSOCIATE, NMIS_AGREEMENTS.AMOUNT_REQUESTED, NMIS_AGREEMENTS.BEGIN_FY, NMIS_AGREEMENTS.END_FY, NMIS_AGREEMENTS.NOTE, NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, NMIS_AGREEMENTS.AGREEMENT_LOT_CN, NMIS_AGREEMENTS.SPECIES_PRODUCT_CN, NMIS_AGREEMENTS.SOURCE_LOT_CN, NMIS_AGREEMENTS.CN, " Lot " & [nmis_agreement_lots].[ID] & " was requested sown by:" AS ID2, [Last_Name] & IIf(Not IsNull([first_name]),", " & [first_name]) AS Contact FROM ((NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENTS ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENTS.SOURCE_LOT_CN) INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_AGREEMENTS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) LEFT JOIN NMIS_CONTACTS ON NMIS_AGREEMENTS.CONTACT_CN = NMIS_CONTACTS.CN WHERE (((NMIS_AGREEMENTS.AGREEMENT_LOT_CN)=[Forms]![NMIS_PROCESSING_ORDERS_INPUT]![AGREEMENT_LOT_CN]));
```

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_CONTACTS`, `NMIS_FISCAL_YEARS`, `NMIS_SOURCE_LOTS`  
**Opened from (VBA):** `Form_NMIS_PROCESSING_ORDERS_INPUT`, `Form_NMIS_PROCESSING_ORDERS_INPUT_LotIdLookup`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | AMOUNT_REQUESTED_Label | Requested |  |  |  | 6.25, 0.08, 0.76, 0.21 |
| Label | BEGIN_FY_Label | Begin FY |  |  |  | 7.09, 0.08, 0.66, 0.21 |
| Label | END_FY_Label | End FY |  |  |  | 7.82, 0.08, 0.52, 0.21 |
| TextBox | ID |  | id2 |  |  | 0.09, 0.08, 6.09, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE] & " - " & [ASSOCIATE_NAME] AS Expr1 FROM NMIS_ASSOCIATES; |  | 0.09, 0.03, 3.91, 0.20 |
| TextBox | AMOUNT_REQUESTED |  | AMOUNT_REQUESTED |  |  | 6.24, 0.03, 0.78, 0.20 |
| TextBox | NOTE |  | NOTE |  |  | 0.09, 0.26, 8.25, 0.20 |
| ComboBox | BEGIN_FY |  | BEGIN_FY | SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;  |  | 7.09, 0.03, 0.67, 0.20 |
| ComboBox | END_FY |  | END_FY | SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;  |  | 7.81, 0.03, 0.53, 0.20 |
| TextBox | Text38 |  | Contact |  |  | 4.05, 0.03, 2.12, 0.20 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SUM_Amt_Requested |  | =Sum([AMOUNT_REQUESTED]) |  |  | 6.24, 0.06, 0.78, 0.20 |
| Label | Label35 | Total Requested: |  |  |  | 5.01, 0.05, 1.18, 0.21 |
