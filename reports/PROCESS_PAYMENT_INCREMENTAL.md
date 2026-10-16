# Report: PROCESS_PAYMENT_INCREMENTAL

**Caption:** PROCESS_PAYMENT_INCREMENTAL  
**Record source:**

```sql
SELECT PROCESSING_INCREMENTAL_TEMP.*, NMIS_CONTRACT_ITEMS.UNIT_CODE
FROM NMIS_CONTRACT_ITEMS INNER JOIN PROCESSING_INCREMENTAL_TEMP ON NMIS_CONTRACT_ITEMS.CONTRACT_ITEM = PROCESSING_INCREMENTAL_TEMP.CONTRACT_ITEM
WHERE (((NMIS_CONTRACT_ITEMS.FISCAL_YEAR)=[Forms]![Switchboard]![FY_For_Reports]));
```

**Grouping/sorting:** `UNIT_CODE`, `CONTRACT_ITEM`  
**Backend tables referenced:** `NMIS_CONTRACT_ITEMS`  
**Opened from (VBA):** `Form_PROCESS_PAYMENT_ESTIMATE_INVOICE`, `Form_Reports_Menu_Misc Subform`, `Form_Reports_Menu_Processing Subform`  
**Report events with code:** Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CONTRACT_ITEM_Label | Contract Item |  |  |  | 0.00, 1.62, 1.08, 0.20 |
| Label | CONTRACT_ITEM_DESC_Label | Description |  |  |  | 1.08, 1.62, 2.12, 0.20 |
| Label | PAYMENT_PER_UNIT_Label | Payment Per Unit |  |  |  | 3.28, 1.46, 0.79, 0.36 |
| Label | units_Label | Number of Units |  |  |  | 4.41, 1.46, 0.71, 0.36 |
| Label | Expr1_Label | Contract Item Payment |  |  |  | 5.90, 1.46, 0.96, 0.36 |
| Line | Line15 |  |  |  |  | 0.00, 1.86, 7.50, 0.00 |
| TextBox | Text39 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.58, 0.38, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.58, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.46, 0.17, 2.78, 0.20 |
| Label | CONTRACT_NO_Label | Contract Incremental Payment Calculations - Contract No.: |  |  |  | 1.50, 0.58, 3.62, 0.21 |
| TextBox | CONTRACT_NO |  | =[Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Contract_No] |  |  | 5.12, 0.58, 1.96, 0.21 |
| TextBox | Text31 |  | =Now() |  |  | 0.00, 0.00, 2.00, 0.20 |
| TextBox | Text32 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.38, 0.00, 2.12, 0.20 |
| Label | Label121 | Inclusive Dates: |  |  |  | 2.58, 1.00, 1.06, 0.21 |
| TextBox | Inclusive_Dates |  | =[Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Begin_Date] & " - " & [Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![End_Date] |  |  | 3.67, 1.00, 1.26, 0.21 |
| Label | Label22 | Unit Code |  |  |  | 5.11, 1.46, 0.59, 0.36 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 0.22, 0.00, 0.79, 0.21 |
| TextBox | CONTRACT_ITEM_DESC |  | CONTRACT_ITEM_DESC |  |  | 1.08, 0.00, 2.12, 0.21 |
| TextBox | PAYMENT_PER_UNIT |  | PAYMENT_PER_UNIT |  |  | 3.21, 0.00, 0.79, 0.21 |
| TextBox | units |  | units |  |  | 4.29, 0.00, 0.71, 0.21 |
| TextBox | PAYMENT |  | =Val([Expr1]) |  |  | 5.78, 0.00, 0.96, 0.21 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 5.17, 0.00, 0.39, 0.21 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | ="Totals for " & [UNIT_CODE] |  |  | 3.92, 0.04, 1.64, 0.21 |
| TextBox | Text28 |  | =Sum([Expr1]) |  |  | 5.80, 0.04, 0.96, 0.21 |
| Line | Line29 |  |  |  |  | 5.80, 0.00, 0.96, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text11 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.20 |
| TextBox | Text12 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.96, 0.17, 3.50, 0.20 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text20 |  | =Sum([Expr1]) |  |  | 5.78, 0.04, 0.96, 0.21 |
| Line | Line21 |  |  |  |  | 5.78, 0.00, 0.96, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)

        DoCmd.Close acReport, "Processing_Contract_Processed_not_in_pmt_temp"

End Sub
```
