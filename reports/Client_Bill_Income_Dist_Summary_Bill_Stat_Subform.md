# Report: Client_Bill_Income_Dist_Summary_Bill_Stat_Subform

**Grouping/sorting:** `MC`  
**Embedded in:** `Report:CLIENT_BILL_INVOICE_COMBINED`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Hourly_Charges_Label | Amount |  |  |  | 1.54, 0.21, 0.57, 0.20 |
| Label | MGMT_CODE_Label | Job Code |  |  |  | 0.09, 0.21, 0.68, 0.20 |
| Label | Label10 | Income Distribution: |  |  |  | 0.11, 0.03, 1.52, 0.20 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line8 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Hourly_Charges |  | INCOME |  |  | 1.08, 0.00, 1.09, 0.21 |
| TextBox | MGMT_CODE |  | MC |  |  | 0.08, 0.00, 0.90, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line9 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text13 |  | =Sum([INCOME]) |  |  | 0.99, 0.00, 1.18, 0.21 |
| Line | Line14 |  |  |  |  | 1.24, 0.00, 0.93, 0.00 |
