# Report: NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler_v1

**Caption:** NMIS_ORDERS_PROCESSING_TABLE_SIGN  
**Record source:**

```sql
SELECT NMIS_AGREEMENT_LOTS.ID, Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7) AS ORDER_ID, NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, [ORDER_AMT] & "m" AS Order_M, NMIS_ORDERS.SPEC_MIN, NMIS_ORDERS.SPEC_MAX, NMIS_ORDERS.CALIPER_MIN, NMIS_ORDERS.ROOT_PRUNE_TARGET, [ID] & "/" & Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7) AS [ORDER], [ASSOCIATE_NAME] & " (" & [aSSOCIATE] & ")" AS CLIENT, [SPEC_MIN] & IIf(Not IsNull([SPEC_MAX])," - " & [SPEC_MAX],"+") AS HT_RANGE, NMIS_ORDERS.CN, NMIS_ORDERS.AGREEMENT_LOT_CN FROM (NMIS_ASSOCIATES RIGHT JOIN NMIS_ORDERS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_ORDERS.CLIENT_ASSOCIATE) INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN WHERE (((NMIS_ORDERS.CN)=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Order_CN]));
```

**Grouping/sorting:** `ORDER_ID`, `CN`  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_ORDERS`  
**Subforms/subreports:** `Report.Processing_Table_Sign_Precooler_Totals`, `Report.NMIS_ORDER_PROCESSING_TABLE_SIGN_SERVICES subreport`  

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Client |  | CLIENT |  |  | 0.12, 0.01, 10.50, 0.02 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | Processing_Table_Sign_Precooler_Totals |  | Report.Processing_Table_Sign_Precooler_Totals (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 0.00, 5.04, 10.42, 1.12 |
| Subform | NMIS_ORDER_PROCESSING_TABLE_SIGN_SERVICES subreport |  | Report.NMIS_ORDER_PROCESSING_TABLE_SIGN_SERVICES subreport (master: CN → child: ORDER_CN) |  |  | 0.00, 4.19, 10.46, 0.81 |
| TextBox | Ht_Spec |  | ="Ht: " & [HT_RANGE] & "in." |  |  | 0.61, 0.00, 9.84, 1.46 |
| TextBox | Cal |  | ="Cal: " & [CALIPER_MIN] & "mm" |  |  | 0.00, 1.32, 10.46, 1.46 |
| TextBox | RP |  | ="RP: " & [ROOT_PRUNE_TARGET] & "in." |  |  | 0.24, 2.70, 10.22, 1.46 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ORDER_AMT |  | Order_M |  |  | 2.67, 0.03, 7.83, 1.13 |
| TextBox | Text23 |  | ORDER |  |  | 0.00, 1.18, 10.50, 1.16 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text13 |  | ORDER |  |  | 0.04, 0.00, 3.25, 0.27 |
