# Report: Client_Bill_Income_Dist_sum_Subform

**Grouping/sorting:** `MC`  
**Embedded in:** `Report:CLIENT_BILL_INVOICE_Client_Checklist`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Hourly_Charges_Label | Amount |  |  |  | 1.53, 0.17, 0.57, 0.20 |
| Label | MGMT_CODE_Label | Job Code |  |  |  | 0.08, 0.17, 0.68, 0.20 |
| Label | Label10 | Income Distribution: |  |  |  | 0.10, 0.00, 1.52, 0.20 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line8 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Hourly_Charges |  | INCOME |  |  | 1.09, 0.00, 1.12, 0.21 |
| TextBox | MGMT_CODE |  | MC |  |  | 0.08, 0.00, 0.90, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line9 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text13 |  | =Sum([INCOME]) |  |  | 0.92, 0.00, 1.31, 0.21 |
| Line | Line14 |  |  |  |  | 1.17, 0.00, 1.05, 0.00 |
