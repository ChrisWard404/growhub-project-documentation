# Report: PROCESS_PAYMENT_Summary_pre_fy06

**Caption:** PROCESS_PAYMENT  
**Record source:**

```sql
PROCESS_PAYMENT
```

**Grouping/sorting:** `contract_item`, `pack_date`, `id`  
**Subforms/subreports:** `Report.PROCESS_PAYMENT_INCREMENTAL_Subreport`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text39 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 3.79, 0.38, 2.79, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 3.92, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 3.79, 0.17, 2.78, 0.20 |
| Label | CONTRACT_NO_Label | Seedling Processing Estimate/Invoice Calculations - Contract No.: |  |  |  | 0.04, 0.73, 4.00, 0.21 |
| TextBox | CONTRACT_NO |  | CONTRACT_NO |  |  | 4.06, 0.73, 1.61, 0.21 |
| TextBox | Text31 |  | =Now() |  |  | 0.00, 0.00, 3.50, 0.20 |
| TextBox | Text32 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.88, 0.00, 3.50, 0.20 |
| Line | Line25 |  |  |  |  | 0.04, 1.48, 10.42, 0.00 |
| Label | pack_date_Label | Contract Item |  |  |  | 0.00, 1.18, 0.78, 0.30 |
| Label | amount_packed_Label | Amt Pack (M) |  |  |  | 1.60, 1.18, 0.66, 0.30 |
| Label | gross_processed_Label | Gross Processed (M) |  |  |  | 2.33, 1.03, 0.73, 0.45 |
| Label | gross_reduction_Label | Gross Reduction (M) |  |  |  | 3.17, 1.03, 0.71, 0.47 |
| Label | adjusted_gross_Label | Adjusted Gross (M) |  |  |  | 4.01, 1.03, 0.54, 0.45 |
| Label | adjusted_gross_payment_Label | Adj Gross Payment |  |  |  | 4.70, 1.16, 0.76, 0.32 |
| Label | reduced_gross_payment_Label | Reduced Payment |  |  |  | 6.49, 1.16, 0.59, 0.34 |
| Label | deductions_Label | Deductions |  |  |  | 7.18, 1.29, 0.74, 0.19 |
| Label | incremental_payment_Label | Non-Hourly Incremental Payment |  |  |  | 8.03, 1.03, 0.84, 0.45 |
| Label | Net_Pay_Label | Payment Amount |  |  |  | 9.87, 1.16, 0.58, 0.32 |
| Label | Label90 | Hourly Payment |  |  |  | 9.05, 1.16, 0.55, 0.32 |
| Label | Label128 | Reduced Pmt Gross (M) |  |  |  | 5.60, 1.03, 0.69, 0.45 |
| Label | Label121 | Inclusive Dates: |  |  |  | 8.12, 0.73, 1.06, 0.21 |
| TextBox | Inclusive_Dates |  | =[Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Begin_Date] & " - " & [Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![End_Date] |  |  | 9.21, 0.73, 1.26, 0.21 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line120 |  |  |  |  | 0.04, 0.00, 10.42, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line114 |  |  |  |  | 0.04, 0.00, 10.42, 0.00 |
| TextBox | Text96 |  | =Sum([hourly_payment]) |  |  | 8.92, 0.02, 0.73, 0.21 |
| TextBox | Text97 |  | =Sum([gross_processed]) |  |  | 2.34, 0.02, 0.70, 0.21 |
| TextBox | Text98 |  | =Sum([gross_reduction]) |  |  | 3.17, 0.02, 0.63, 0.21 |
| TextBox | Text99 |  | =Sum([adjusted_gross]) |  |  | 3.94, 0.02, 0.63, 0.21 |
| TextBox | Text100 |  | =Sum([adjusted_gross_payment]) |  |  | 4.71, 0.02, 0.70, 0.21 |
| TextBox | Text101 |  | =Sum([reduced_gross_payment]) |  |  | 6.40, 0.02, 0.70, 0.21 |
| TextBox | Text102 |  | =Sum([deductions]) |  |  | 7.23, 0.02, 0.70, 0.21 |
| TextBox | Text103 |  | =Sum([incremental_payment]) |  |  | 8.07, 0.02, 0.70, 0.21 |
| TextBox | Text104 |  | =Sum([total_payment]) |  |  | 9.67, 0.02, 0.79, 0.21 |
| TextBox | Text126 |  | contract_item |  |  | 0.16, 0.02, 0.50, 0.21 |
| TextBox | Text130 |  | =Sum([marginal_reduction]) |  |  | 5.55, 0.02, 0.70, 0.21 |
| TextBox | amount_packed |  | =Sum([amount_packed]) |  |  | 1.51, 0.02, 0.69, 0.21 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line115 |  |  |  |  | 0.04, 0.00, 10.21, 0.00 |
| Subform | PROCESS_PAYMENT_INCREMENTAL_Subreport |  | Report.PROCESS_PAYMENT_INCREMENTAL_Subreport |  |  | 0.05, 0.34, 7.94, 0.24 |
| TextBox | Text105 |  | =Sum([hourly_payment]) |  |  | 8.80, 0.03, 0.83, 0.21 |
| TextBox | Text106 |  | =Sum([gross_processed]) |  |  | 2.23, 0.03, 0.80, 0.21 |
| TextBox | Text107 |  | =Sum([gross_reduction]) |  |  | 3.05, 0.03, 0.74, 0.21 |
| TextBox | Text108 |  | =Sum([adjusted_gross]) |  |  | 3.82, 0.03, 0.74, 0.21 |
| TextBox | Text109 |  | =Sum([adjusted_gross_payment]) |  |  | 4.59, 0.03, 0.80, 0.21 |
| TextBox | Text110 |  | =Sum([reduced_gross_payment]) |  |  | 6.28, 0.03, 0.80, 0.21 |
| TextBox | Text111 |  | =Sum([deductions]) |  |  | 7.11, 0.03, 0.80, 0.21 |
| TextBox | Text112 |  | =Sum([incremental_payment]) |  |  | 7.96, 0.03, 0.80, 0.21 |
| TextBox | Text119 |  | =Sum([total_payment]) |  |  | 9.67, 0.03, 0.79, 0.21 |
| TextBox | Text131 |  | =Sum([marginal_reduction]) |  |  | 5.44, 0.03, 0.80, 0.21 |
| Line | Line147 |  |  |  |  | 0.04, 0.00, 10.42, 0.00 |
| TextBox | Text150 |  | =Sum([amount_packed]) |  |  | 1.26, 0.03, 0.94, 0.21 |
