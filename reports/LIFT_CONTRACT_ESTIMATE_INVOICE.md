# Report: LIFT_CONTRACT_ESTIMATE_INVOICE

**Grouping/sorting:** `FISCAL_YEAR`, `CONTRACT_ITEM`  
**Opened from (VBA):** `Form_PROCESS_PAYMENT_ESTIMATE_INVOICE`, `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NURSERY |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.00, 0.38, 3.50, 0.21 |
| Label | REPORT_Label | CONTRACT INVOICE |  |  |  | 2.49, 0.58, 2.51, 0.19 |
| TextBox | Text63 |  | ="Contract No. : " & [CONTRACT_NO] |  |  | 2.48, 0.81, 2.54, 0.20 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.46, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.33, 0.17, 2.78, 0.20 |
| TextBox | Text71 |  | ="Inclusive Dates: " & [Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Begin_Date] & " - " & [Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![End_Date] |  |  | 0.04, 1.12, 6.54, 0.19 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CONTRACT_ITEM_Label | Contract Item |  |  |  | 0.04, 0.00, 1.12, 0.20 |
| Label | FEET_Label | Quantity |  |  |  | 3.19, 0.00, 0.78, 0.20 |
| Label | PAYMENT_PER_UNIT_Label | Unit Price |  |  |  | 5.01, 0.00, 0.70, 0.20 |
| Rectangle | Box98 |  |  |  |  | 0.00, 0.00, 7.42, 0.21 |
| Label | Label120 | Unit |  |  |  | 3.98, 0.00, 0.40, 0.20 |
| Rectangle | Box126 |  |  |  |  | 0.00, 0.00, 7.42, 0.21 |
| Label | Label130 | Total     |  |  |  | 6.31, 0.00, 1.04, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CONTRACT_ITEM_DESC |  | CONTRACT_ITEM_DESC |  |  | 0.50, 0.00, 2.08, 0.21 |
| TextBox | FEET |  | Units2 |  |  | 3.08, 0.00, 0.79, 0.21 |
| TextBox | PAYMENT_PER_UNIT |  | PAYMENT_PER_UNIT |  |  | 5.07, 0.00, 0.58, 0.21 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 0.04, 0.00, 0.46, 0.21 |
| TextBox | Text121 |  | UNIT_CODE |  |  | 3.98, 0.00, 0.35, 0.21 |
| TextBox | Text131 |  | P2 |  |  | 6.39, 0.00, 0.96, 0.21 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text132 |  | =Sum([P2]) |  |  | 6.43, 0.08, 0.92, 0.21 |
| Line | Line133 |  |  |  |  | 6.43, 0.04, 0.92, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PAGES |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.33, 0.02, 2.08, 0.18 |
| TextBox | Text134 |  | =Now() |  |  | 0.00, 0.00, 2.08, 0.18 |
