# Report: Client_Bill_Billing_Parent_MGMT_Code subreport

**Grouping/sorting:** `CLIENT`, `JC`  
**Embedded in:** `Report:CLIENT_BILL_INVOICE_Client_Checklist`, `Report:CLIENT_BILL_INVOICE_w_lot_detail`, `Report:CLIENT_BILL_INVOICE_w_lot_detail_Errors`, `Report:CLIENT_BILL_INVOICE_wo_lot_detail`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Hourly_Charges_Label | Amount |  |  |  | 1.73, 0.21, 0.83, 0.17 |
| Label | MGMT_CODE_Label | Job Code |  |  |  | 0.09, 0.21, 0.71, 0.17 |
| Label | Label10 | Charge to: |  |  |  | 0.08, 0.03, 0.74, 0.17 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line8 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Hourly_Charges |  | CHARGE |  |  | 1.51, 0.00, 0.95, 0.19 |
| TextBox | MGMT_CODE |  | JC |  |  | 0.08, 0.00, 1.42, 0.19 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text11 |  | =Sum([CHARGE]) |  |  | 1.39, 0.01, 1.08, 0.19 |
| Line | Line14 |  |  |  |  | 2.00, 0.01, 0.98, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line9 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
