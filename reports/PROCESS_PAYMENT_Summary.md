# Report: PROCESS_PAYMENT_Summary

**Caption:** PROCESS_PAYMENT  
**Record source:**

```sql
PROCESS_PAYMENT
```

**Grouping/sorting:** `contract_item`, `pack_date`, `id`  
**Opened from (VBA):** `Form_PROCESS_PAYMENT_ESTIMATE_INVOICE`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text39 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 3.79, 0.38, 2.79, 0.00 |
| Label | Label118 | USDA Forest Service |  |  |  | 3.92, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 3.79, 0.17, 2.78, 0.20 |
| Label | CONTRACT_NO_Label | Seedling Processing Estimate/Invoice Calculations - Contract No.: |  |  |  | 0.04, 0.65, 4.00, 0.21 |
| TextBox | CONTRACT_NO |  | CONTRACT_NO |  |  | 4.06, 0.65, 2.35, 0.00 |
| Line | Line25 |  |  |  |  | 0.04, 1.40, 10.42, 0.00 |
| Label | amount_packed_Label | Amt Pack (M) |  |  |  | 1.69, 1.09, 0.66, 0.30 |
| Label | gross_processed_Label | Gross Processed (M) |  |  |  | 2.44, 0.95, 0.73, 0.45 |
| Label | gross_reduction_Label | Cull (%) |  |  |  | 3.22, 1.10, 0.38, 0.29 |
| Label | adjusted_gross_Label | Cull over 30% |  |  |  | 3.65, 0.95, 0.46, 0.45 |
| Label | adjusted_gross_payment_Label | Net Payment |  |  |  | 7.43, 1.07, 0.64, 0.32 |
| Label | reduced_gross_payment_Label |  Cull  Net Pmt ($) |  |  |  | 5.41, 0.95, 0.53, 0.45 |
| Label | deductions_Label | Quality Adjust (%) |  |  |  | 6.33, 0.95, 0.53, 0.45 |
| Label | incremental_payment_Label | Non-Hourly Incremental Payment |  |  |  | 8.16, 0.95, 0.84, 0.45 |
| Label | Net_Pay_Label | Payment Amount |  |  |  | 9.87, 1.07, 0.58, 0.32 |
| Label | Label90 | Hourly Payment |  |  |  | 9.09, 1.07, 0.55, 0.32 |
| Label | Label148 | Inclusive Dates: |  |  |  | 8.12, 0.65, 1.06, 0.21 |
| TextBox | Text149 |  | =[Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Begin_Date] & " - " & [Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![End_Date] |  |  | 9.21, 0.65, 1.26, 0.00 |
| Label | Label152 | Cull Adjust% |  |  |  | 4.14, 0.95, 0.46, 0.45 |
| Label | Label154 | Quality (%) |  |  |  | 5.91, 1.07, 0.46, 0.32 |
| Label | Label158 |  Qual Adj Pay/Amt ($) |  |  |  | 6.86, 0.95, 0.57, 0.45 |
| Label | Label168 |  Cull Adj Pay/Amt ($) |  |  |  | 4.60, 0.95, 0.55, 0.45 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line120 |  |  |  |  | 0.04, 0.00, 10.42, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text96 |  | =Sum([hourly_payment]) |  |  | 8.92, 0.02, 0.73, 0.00 |
| TextBox | Text97 |  | =Sum([gross_processed]) |  |  | 2.34, 0.02, 0.00, 0.00 |
| TextBox | Text100 |  | =Sum([Net_Payment]) |  |  | 7.16, 0.02, 0.93, 0.00 |
| TextBox | Text103 |  | =Sum([IP2]) |  |  | 8.21, 0.02, 0.00, 0.00 |
| TextBox | Text104 |  | =Sum([total_payment_net]) |  |  | 9.67, 0.02, 0.79, 0.00 |
| TextBox | Text126 |  | contract_item |  |  | 0.50, 0.02, 0.79, 0.20 |
| Label | Label127 |  Item : |  |  |  | 0.05, 0.02, 0.46, 0.20 |
| TextBox | Text151 |  | =Sum([amount_packed]) |  |  | 1.29, 0.02, 0.94, 0.00 |
| TextBox | Text170 |  | =Sum([Net_Payment_Cull]) |  |  | 4.99, 0.02, 0.93, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text161 |  | =Date() & "  " & Time() |  |  | 0.08, 0.04, 3.04, 0.00 |
| Line | Line164 |  |  |  |  | 0.04, 0.00, 10.42, 0.00 |
| TextBox | Text10 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 8.28, 0.04, 2.17, 0.20 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line115 |  |  |  |  | 0.04, 0.00, 10.21, 0.00 |
| TextBox | Text105 |  | =Sum([hourly_payment]) |  |  | 8.93, 0.03, 0.72, 0.00 |
| TextBox | Text106 |  | =Sum([gross_processed]) |  |  | 2.23, 0.03, 0.80, 0.00 |
| TextBox | Text109 |  | =Sum([Net_Payment]) |  |  | 7.00, 0.03, 1.08, 0.00 |
| TextBox | Text112 |  | =Sum([IP2]) |  |  | 8.16, 0.03, 0.75, 0.00 |
| TextBox | Text119 |  | =Sum([total_payment_net]) |  |  | 9.67, 0.03, 0.79, 0.00 |
| Line | Line147 |  |  |  |  | 0.04, 0.00, 10.42, 0.00 |
| TextBox | Text150 |  | =Sum([amount_packed]) |  |  | 1.29, 0.03, 0.94, 0.00 |
| Label | Label160 | Grand Totals |  |  |  | 0.21, 0.04, 0.90, 0.18 |
| TextBox | Text171 |  | =Sum([Net_Payment_Cull]) |  |  | 4.99, 0.03, 0.93, 0.00 |
