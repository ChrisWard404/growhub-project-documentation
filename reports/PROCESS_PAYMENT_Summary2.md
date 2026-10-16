# Report: PROCESS_PAYMENT_Summary2

**Caption:** PROCESS_PAYMENT  
**Record source:**

```sql
PROCESS_PAYMENT
```

**Grouping/sorting:** `contract_item`, `pack_date`, `id`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | pack_date_Label | Pack Date |  |  |  | 0.29, 0.88, 0.67, 0.50 |
| Label | id_Label | ID |  |  |  | 1.04, 0.88, 0.46, 0.50 |
| Label | amount_packed_Label | Amt Pack |  |  |  | 1.54, 0.88, 0.79, 0.50 |
| Label | gross_processed_Label | Gross Processed |  |  |  | 2.39, 0.88, 0.80, 0.50 |
| Label | gross_reduction_Label | Gross Reduction |  |  |  | 3.26, 0.88, 0.80, 0.50 |
| Label | adjusted_gross_Label | Adjusted Gross |  |  |  | 4.14, 0.88, 0.80, 0.50 |
| Label | adjusted_gross_payment_Label | Adj Gross Payment |  |  |  | 5.00, 0.88, 0.80, 0.50 |
| Label | reduced_gross_payment_Label | Reduced Payment |  |  |  | 5.87, 0.88, 0.80, 0.50 |
| Label | deductions_Label | Deductions |  |  |  | 6.73, 0.88, 0.80, 0.50 |
| Label | incremental_payment_Label | Non-Hourly Incremental Payment |  |  |  | 7.60, 0.88, 0.80, 0.50 |
| Label | Net_Pay_Label | Payment Amount |  |  |  | 9.29, 0.88, 0.83, 0.50 |
| Label | Label90 | Hourly Payment |  |  |  | 8.46, 0.88, 0.80, 0.50 |
| TextBox | Text39 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 3.92, 0.38, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 3.92, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 3.79, 0.17, 2.78, 0.20 |
| Label | CONTRACT_NO_Label | Seedling Processing Payment Calculations - Contract No.: |  |  |  | 0.04, 0.62, 3.54, 0.21 |
| TextBox | CONTRACT_NO |  | CONTRACT_NO |  |  | 3.62, 0.62, 0.92, 0.21 |
| TextBox | Text31 |  | =Now() |  |  | 0.00, 0.00, 3.50, 0.20 |
| TextBox | Text32 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.88, 0.00, 3.50, 0.20 |
| Line | Line25 |  |  |  |  | 0.04, 1.38, 10.21, 0.00 |
| Label | Label121 | Payment Period: |  |  |  | 7.12, 0.62, 1.06, 0.21 |
| TextBox | Text122 |  | [Begin_Date] |  |  | 8.17, 0.62, 0.75, 0.21 |
| TextBox | Text124 |  | [End_Date] |  |  | 9.54, 0.62, 0.75, 0.21 |
| Label | Label125 | Through |  |  |  | 9.00, 0.62, 0.56, 0.21 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | contract_item |  | contract_item |  |  | 1.00, 0.04, 0.46, 0.00 |
| Label | contract_item_Label | Contract Item |  |  |  | 0.08, 0.04, 0.88, 0.17 |
| Line | Line120 |  |  |  |  | 0.04, 0.00, 10.21, 0.00 |
| TextBox | Text96 |  | =Sum([hourly_payment]) |  |  | 8.44, 0.04, 0.83, 0.21 |
| TextBox | Text97 |  | =Sum([gross_processed]) |  |  | 2.36, 0.04, 0.80, 0.21 |
| TextBox | Text98 |  | =Sum([gross_reduction]) |  |  | 3.24, 0.04, 0.80, 0.21 |
| TextBox | Text99 |  | =Sum([adjusted_gross]) |  |  | 4.12, 0.04, 0.80, 0.21 |
| TextBox | Text100 |  | =Sum([adjusted_gross_payment]) |  |  | 4.98, 0.04, 0.80, 0.21 |
| TextBox | Text101 |  | =Sum([reduced_gross_payment]) |  |  | 5.85, 0.04, 0.80, 0.21 |
| TextBox | Text102 |  | =Sum([deductions]) |  |  | 6.71, 0.04, 0.80, 0.21 |
| TextBox | Text103 |  | =Sum([incremental_payment]) |  |  | 7.58, 0.04, 0.80, 0.21 |
| TextBox | Text104 |  | =Sum([total_payment]) |  |  | 9.31, 0.04, 0.79, 0.21 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line114 |  |  |  |  | 0.04, 0.00, 10.21, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text105 |  | =Sum([hourly_payment]) |  |  | 8.45, 0.08, 0.83, 0.21 |
| TextBox | Text106 |  | =Sum([gross_processed]) |  |  | 2.38, 0.08, 0.80, 0.21 |
| TextBox | Text107 |  | =Sum([gross_reduction]) |  |  | 3.25, 0.08, 0.80, 0.21 |
| TextBox | Text108 |  | =Sum([adjusted_gross]) |  |  | 4.13, 0.08, 0.80, 0.21 |
| TextBox | Text109 |  | =Sum([adjusted_gross_payment]) |  |  | 4.99, 0.08, 0.80, 0.21 |
| TextBox | Text110 |  | =Sum([reduced_gross_payment]) |  |  | 5.86, 0.08, 0.80, 0.21 |
| TextBox | Text111 |  | =Sum([deductions]) |  |  | 6.72, 0.08, 0.80, 0.21 |
| TextBox | Text112 |  | =Sum([incremental_payment]) |  |  | 7.59, 0.08, 0.80, 0.21 |
| Line | Line115 |  |  |  |  | 0.04, 0.00, 10.21, 0.00 |
| Line | Line118 |  |  |  |  | 0.04, 0.02, 10.21, 0.00 |
| TextBox | Text119 |  | =Sum([total_payment]) |  |  | 9.33, 0.08, 0.79, 0.21 |
