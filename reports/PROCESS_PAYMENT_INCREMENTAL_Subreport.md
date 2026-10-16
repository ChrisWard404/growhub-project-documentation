# Report: PROCESS_PAYMENT_INCREMENTAL_Subreport

**Grouping/sorting:** `UNIT_CODE`, `CONTRACT_ITEM`  
**Embedded in:** `Report:PROCESS_PAYMENT_CONDENSED`, `Report:PROCESS_PAYMENT_CONDENSED_pre_fy14`, `Report:PROCESS_PAYMENT_Summary_pre_fy06`, `Report:PROCESS_PAYMENT_w_Incremental`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label23 | Hourly and Incremental Items Included above  |  |  |  | 0.00, 0.12, 3.10, 0.20 |
| Label | CONTRACT_ITEM_Label | Contract Item |  |  |  | 0.77, 0.52, 1.08, 0.20 |
| Label | CONTRACT_ITEM_DESC_Label | Description |  |  |  | 1.85, 0.52, 2.12, 0.20 |
| Label | PAYMENT_PER_UNIT_Label | Payment Per Unit |  |  |  | 4.11, 0.35, 0.79, 0.36 |
| Label | units_Label | Number of Units |  |  |  | 4.93, 0.35, 0.71, 0.36 |
| Label | Expr1_Label | Contract Item Payment |  |  |  | 6.15, 0.35, 0.96, 0.36 |
| Line | Line15 |  |  |  |  | 0.00, 0.75, 7.33, 0.00 |
| Line | Line22 |  |  |  |  | 0.00, 0.00, 7.33, 0.00 |
| Label | Label24 | Unit Code |  |  |  | 5.57, 0.35, 0.55, 0.36 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 1.04, 0.00, 0.81, 0.21 |
| TextBox | CONTRACT_ITEM_DESC |  | CONTRACT_ITEM_DESC |  |  | 1.85, 0.00, 2.12, 0.21 |
| TextBox | PAYMENT_PER_UNIT |  | PAYMENT_PER_UNIT |  |  | 3.98, 0.00, 0.79, 0.21 |
| TextBox | units |  | units |  |  | 4.84, 0.00, 0.71, 0.21 |
| TextBox | PAYMENT |  | =Val([Expr1]) |  |  | 6.15, 0.00, 0.96, 0.21 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 5.57, 0.00, 0.39, 0.21 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | ="Totals for " & [UNIT_CODE] |  |  | 3.19, 0.04, 1.64, 0.21 |
| TextBox | Text28 |  | =Sum([Expr1]) |  |  | 6.15, 0.04, 0.96, 0.21 |
| Line | Line29 |  |  |  |  | 6.15, 0.00, 0.96, 0.00 |
| TextBox | Text31 |  | =Sum([units]) |  |  | 4.84, 0.04, 0.71, 0.21 |
| TextBox | Text32 |  | UNIT_CODE |  |  | 5.57, 0.04, 0.39, 0.21 |
| Line | Line33 |  |  |  |  | 5.00, 0.00, 0.96, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Grand_Total |  | =Sum([Expr1]) |  |  | 6.15, 0.04, 0.96, 0.21 |
| Line | Line21 |  |  |  |  | 6.15, 0.00, 0.96, 0.00 |
