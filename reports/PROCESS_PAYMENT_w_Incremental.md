# Report: PROCESS_PAYMENT_w_Incremental

**Caption:** PROCESS_PAYMENT  
**Record source:**

```sql
PROCESS_PAYMENT
```

**Grouping/sorting:** `contract_item`, `pack_date`, `id`  
**Subforms/subreports:** `Report.PROCESS_PAYMENT_INCREMENTAL_Subreport`  
**Opened from (VBA):** `Form_PROCESS_PAYMENT_ESTIMATE_INVOICE`  
**Report events with code:** Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | pack_date_Label | Pack Date |  |  |  | 0.14, 1.25, 0.58, 0.17 |
| Label | id_Label | ID |  |  |  | 0.86, 1.25, 0.18, 0.17 |
| Label | amount_packed_Label | Amt Pack (M) |  |  |  | 1.66, 1.14, 0.61, 0.28 |
| Label | gross_processed_Label | Gross Processed (M) |  |  |  | 2.39, 0.99, 0.69, 0.43 |
| Label | gross_reduction_Label | Gross Reduction (M) (1+2+3) |  |  |  | 3.14, 0.99, 0.86, 0.43 |
| Label | adjusted_gross_Label | Adjusted Gross (M) |  |  |  | 4.06, 0.99, 0.50, 0.43 |
| Label | adjusted_gross_payment_Label | Adj Gross Payment |  |  |  | 4.75, 1.11, 0.72, 0.30 |
| Label | reduced_gross_payment_Label | ReducedPayment |  |  |  | 6.54, 1.11, 0.53, 0.30 |
| Label | deductions_Label | Deductions (4+5) |  |  |  | 7.22, 1.11, 0.69, 0.30 |
| Label | incremental_payment_Label | Non-Hourly Incremental Payment |  |  |  | 8.08, 0.99, 0.80, 0.43 |
| Label | Net_Pay_Label | Payment Amount |  |  |  | 9.92, 1.11, 0.54, 0.30 |
| Label | Label90 | Hourly Payment |  |  |  | 9.11, 1.11, 0.51, 0.30 |
| TextBox | Text39 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 3.92, 0.38, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 3.92, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 3.79, 0.17, 2.78, 0.20 |
| Label | CONTRACT_NO_Label | Seedling Processing Estimate/Invoice Calculations - Contract No.: |  |  |  | 0.04, 0.71, 4.06, 0.21 |
| TextBox | CONTRACT_NO |  | CONTRACT_NO |  |  | 4.10, 0.71, 1.67, 0.21 |
| TextBox | Text31 |  | =Now() |  |  | 0.00, 0.00, 3.50, 0.20 |
| TextBox | Text32 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.95, 0.00, 3.50, 0.20 |
| Line | Line25 |  |  |  |  | 0.04, 1.46, 10.44, 0.00 |
| Label | Label121 | Inclusive Dates: |  |  |  | 8.06, 0.71, 1.06, 0.21 |
| TextBox | Inclusive_Dates |  | =[Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Begin_Date] & " - " & [Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![End_Date] |  |  | 9.15, 0.71, 1.26, 0.21 |
| Label | Label128 | Reduced Pmt Gross (3) |  |  |  | 5.66, 0.99, 0.75, 0.43 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | contract_item_Label | Contract Item |  |  |  | 0.08, 0.05, 1.12, 0.23 |
| Line | Line120 |  |  |  |  | 0.04, 0.00, 10.42, 0.00 |
| TextBox | Text136 |  | CI |  |  | 1.22, 0.05, 3.95, 0.23 |
| TextBox | PAYMENT_PER_AMT_GROSS | Payment/Amt Gross: | PAYMENT_PER_AMT_GROSS |  |  | 6.95, 0.08, 0.54, 0.20 |
| TextBox | Reduced_PAYMENT_PER AMT | Reduced Pmt/Amt Gross: | Reduced_PAYMENT_PER AMT |  |  | 9.82, 0.08, 0.58, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | id |  | id |  |  | 0.82, 0.03, 0.72, 0.21 |
| TextBox | amount_packed |  | amount_packed |  |  | 1.57, 0.03, 0.69, 0.21 |
| TextBox | gross_processed |  | gross_processed |  |  | 2.35, 0.03, 0.70, 0.21 |
| TextBox | gross_reduction |  | gross_reduction |  |  | 3.18, 0.03, 0.63, 0.21 |
| TextBox | adjusted_gross |  | adjusted_gross |  |  | 3.95, 0.03, 0.63, 0.21 |
| TextBox | adjusted_gross_payment |  | adjusted_gross_payment |  |  | 4.72, 0.03, 0.70, 0.21 |
| TextBox | reduced_gross_payment |  | reduced_gross_payment |  |  | 6.41, 0.03, 0.70, 0.21 |
| TextBox | deductions |  | deductions |  |  | 7.24, 0.03, 0.70, 0.21 |
| TextBox | incremental_payment |  | incremental_payment |  |  | 8.08, 0.03, 0.70, 0.21 |
| TextBox | NET_PAYMENT |  | total_payment |  |  | 9.68, 0.03, 0.79, 0.21 |
| TextBox | pack_date |  | pack_date |  |  | 0.14, 0.03, 0.67, 0.21 |
| TextBox | Text89 |  | hourly_payment |  |  | 8.93, 0.03, 0.69, 0.21 |
| TextBox | text_line1 |  | text_line1 |  |  | 1.58, 0.24, 7.42, 0.00 |
| TextBox | Text92 |  | text_line2 |  |  | 1.58, 0.41, 7.42, 0.00 |
| TextBox | Text93 |  | text_line3 |  |  | 1.58, 0.57, 7.42, 0.00 |
| TextBox | Text94 |  | text_line4 |  |  | 1.58, 0.74, 7.42, 0.00 |
| TextBox | Text95 |  | text_line5 |  |  | 1.58, 0.91, 7.42, 0.00 |
| TextBox | Text129 |  | marginal_reduction |  |  | 5.56, 0.03, 0.70, 0.21 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text96 |  | =Sum([hourly_payment]) |  |  | 8.92, 0.04, 0.73, 0.21 |
| TextBox | Text97 |  | =Sum([gross_processed]) |  |  | 2.34, 0.04, 0.70, 0.21 |
| TextBox | Text98 |  | =Sum([gross_reduction]) |  |  | 3.17, 0.04, 0.63, 0.21 |
| TextBox | Text99 |  | =Sum([adjusted_gross]) |  |  | 3.94, 0.04, 0.63, 0.21 |
| TextBox | Text100 |  | =Sum([adjusted_gross_payment]) |  |  | 4.71, 0.04, 0.70, 0.21 |
| TextBox | Text101 |  | =Sum([reduced_gross_payment]) |  |  | 6.40, 0.04, 0.70, 0.21 |
| TextBox | Text102 |  | =Sum([deductions]) |  |  | 7.23, 0.04, 0.70, 0.21 |
| TextBox | Text103 |  | =Sum([incremental_payment]) |  |  | 8.07, 0.04, 0.70, 0.21 |
| TextBox | Text104 |  | =Sum([total_payment]) |  |  | 9.67, 0.04, 0.79, 0.21 |
| Line | Line114 |  |  |  |  | 0.04, 0.00, 10.44, 0.00 |
| TextBox | Text126 |  | contract_item |  |  | 0.91, 0.04, 0.39, 0.21 |
| Label | Label127 |  Item Totals: |  |  |  | 0.07, 0.04, 0.83, 0.20 |
| TextBox | Text130 |  | =Sum([marginal_reduction]) |  |  | 5.55, 0.04, 0.70, 0.21 |
| TextBox | Text150 |  | =Sum([amount_packed]) |  |  | 1.32, 0.04, 0.94, 0.21 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text105 |  | =Sum([hourly_payment]) |  |  | 8.81, 0.08, 0.83, 0.21 |
| TextBox | Text106 |  | =Sum([gross_processed]) |  |  | 2.24, 0.08, 0.80, 0.21 |
| TextBox | Text107 |  | =Sum([gross_reduction]) |  |  | 3.06, 0.08, 0.74, 0.21 |
| TextBox | Text108 |  | =Sum([adjusted_gross]) |  |  | 3.83, 0.08, 0.74, 0.21 |
| TextBox | Text109 |  | =Sum([adjusted_gross_payment]) |  |  | 4.60, 0.08, 0.80, 0.21 |
| TextBox | Text110 |  | =Sum([reduced_gross_payment]) |  |  | 6.29, 0.08, 0.80, 0.21 |
| TextBox | Text111 |  | =Sum([deductions]) |  |  | 7.12, 0.08, 0.80, 0.21 |
| TextBox | Text112 |  | =Sum([incremental_payment]) |  |  | 7.97, 0.08, 0.80, 0.21 |
| Line | Line115 |  |  |  |  | 0.04, 0.00, 10.44, 0.00 |
| Line | Line118 |  |  |  |  | 0.04, 0.02, 10.44, 0.00 |
| TextBox | Text119 |  | =Sum([total_payment]) |  |  | 9.68, 0.08, 0.79, 0.21 |
| TextBox | Text131 |  | =Sum([marginal_reduction]) |  |  | 5.45, 0.08, 0.80, 0.21 |
| Subform | PROCESS_PAYMENT_INCREMENTAL_Subreport |  | Report.PROCESS_PAYMENT_INCREMENTAL_Subreport |  |  | 1.09, 0.45, 8.00, 0.25 |
| TextBox | Text137 |  | =Sum([amount_packed]) |  |  | 1.32, 0.08, 0.94, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)

        DoCmd.Close acReport, "Processing_Contract_Processed_not_in_pmt_temp"

End Sub
```
