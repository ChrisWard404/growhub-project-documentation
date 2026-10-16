# Report: Processing_Table_Sign_Precooler_Totals

**Caption:** Processing_Table_Sign_Precooler_Totals  
**Record source:**

```sql
SELECT transaction_totals_precooler_balance.AGREEMENT_LOT_CN, transaction_totals_precooler_balance.SumOfNUMBER_OF_ACTIVITY_UNITS, transaction_totals_precooler_balance.UNIT_CODE, [SumOfNUMBER_OF_ACTIVITY_UNITS] & " " & [Unit_Code] AS Display FROM transaction_totals_precooler_balance;
```

**Embedded in:** `Report:NMIS_ORDERS_PROCESSING_TABLE_SIGN`, `Report:NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler`, `Report:NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler_v1`, `Report:NMIS_ORDERS_PROCESSING_TABLE_SIGN_v1`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line6 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | UNIT_CODE |  | Display |  |  | 3.75, 0.00, 6.46, 1.38 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line7 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line10 |  |  |  |  | 0.04, 0.04, 9.96, 0.00 |
