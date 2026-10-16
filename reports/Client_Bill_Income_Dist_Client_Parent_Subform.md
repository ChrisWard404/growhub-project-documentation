# Report: Client_Bill_Income_Dist_Client_Parent_Subform

**Grouping/sorting:** `Reporting_Parent`, `MC`  
**Embedded in:** `Report:CLIENT_BILL_INVOICE`, `Report:CLIENT_BILL_INVOICE_Client_Checklist`, `Report:CLIENT_BILL_INVOICE_w_lot_detail`, `Report:CLIENT_BILL_INVOICE_w_lot_detail_Errors`, `Report:CLIENT_BILL_INVOICE_w_lot_detail_no_spcsvc`, `Report:CLIENT_BILL_INVOICE_wo_lot_detail`  

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
| TextBox | Hourly_Charges |  | INCOME |  |  | 1.09, 0.00, 1.12, 0.21 |
| TextBox | MGMT_CODE |  | MC |  |  | 0.08, 0.00, 0.90, 0.21 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text13 |  | =Sum([INCOME]) |  |  | 0.90, 0.02, 1.31, 0.21 |
| Line | Line14 |  |  |  |  | 1.15, 0.02, 1.05, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line9 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
