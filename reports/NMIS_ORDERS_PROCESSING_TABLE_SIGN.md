# Report: NMIS_ORDERS_PROCESSING_TABLE_SIGN

**Grouping/sorting:** `ORDER_ID`, `CN`  
**Subforms/subreports:** `Report.NMIS_ORDER_PROCESSING_TABLE_SIGN_SERVICES subreport`, `Report.NMIS_ORDER_PROCESSING_TABLE_SIGN_SERVICES subreport`, `Report.Processing_Table_Sign_Precooler_Totals`, `Report.Processing_Table_Sign_Precooler_Totals`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Client |  | CLIENT |  |  | 0.12, 0.01, 10.50, 6.99 |
| TextBox | Text34 |  | CLIENT |  |  | 0.11, 8.02, 10.50, 1.04 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_ORDER_PROCESSING_TABLE_SIGN_SERVICES subreport |  | Report.NMIS_ORDER_PROCESSING_TABLE_SIGN_SERVICES subreport (master: CN → child: ORDER_CN) |  |  | 0.08, 4.24, 10.46, 0.81 |
| TextBox | Ht_Spec |  | ="Ht: " & [HT_RANGE] & "in." |  |  | 0.61, 0.00, 9.84, 1.46 |
| TextBox | Cal |  | ="Cal: " & [CALIPER_MIN] & "mm" |  |  | 0.00, 1.32, 10.46, 1.46 |
| TextBox | RP |  | ="RP: " & [ROOT_PRUNE_TARGET] & "in." |  |  | 0.24, 2.70, 10.22, 1.46 |
| Subform | Child36 |  | Report.NMIS_ORDER_PROCESSING_TABLE_SIGN_SERVICES subreport (master: CN → child: ORDER_CN) |  |  | 0.08, 11.26, 10.46, 0.81 |
| TextBox | Text37 |  | ="Cal: " & [CALIPER_MIN] & "mm" |  |  | 0.00, 8.34, 10.46, 1.46 |
| TextBox | Text38 |  | ="RP: " & [ROOT_PRUNE_TARGET] & "in." |  |  | 0.24, 9.72, 10.22, 1.46 |
| TextBox | Text39 |  | ="Ht: " & [HT_RANGE] & "in." |  |  | 0.61, 7.01, 9.84, 1.46 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ORDER_AMT |  | Order_M |  |  | 2.67, 2.00, 7.83, 1.13 |
| TextBox | Text23 |  | ORDER |  |  | 0.00, 3.15, 10.50, 1.16 |
| TextBox | Text40 |  | Order_M |  |  | 2.67, 8.92, 7.83, 1.13 |
| TextBox | Text41 |  | ORDER |  |  | 0.00, 10.06, 10.50, 1.16 |
| Subform | Child35 |  | Report.Processing_Table_Sign_Precooler_Totals (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 0.08, 0.00, 10.42, 1.12 |
| Subform | Processing_Table_Sign_Precooler_Totals |  | Report.Processing_Table_Sign_Precooler_Totals (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 0.04, 7.76, 10.42, 1.12 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text13 |  | ORDER |  |  | 0.04, 0.00, 3.25, 0.27 |
