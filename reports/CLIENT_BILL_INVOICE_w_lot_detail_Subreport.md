# Report: CLIENT_BILL_INVOICE_w_lot_detail_Subreport

**Caption:** **CLIENT_BILL  
**Grouping/sorting:** `CLIENT`, `JC`, `PRIORITY`, `TYPE`, `CAT`, `PRODUCT`, `BILL_CODE`, `BILL_DESC`, `Check_PMC`  

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRIORITY_NAME |  | PRIORITY_NAME |  |  | 0.00, 0.03, 3.00, 0.21 |
| Line | Line40 |  |  |  |  | 0.00, 0.24, 7.93, 0.00 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line29 |  |  |  |  | 0.00, 0.00, 7.95, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | BILL_CODE |  | BILL_CODE |  |  | 0.00, 0.00, 0.58, 0.19 |
| TextBox | BILL_DESC |  | BILL_DESC |  |  | 0.59, 0.00, 1.66, 0.19 |
| TextBox | PRODUCT |  | PRODUCT |  |  | 2.27, 0.00, 2.29, 0.19 |
| TextBox | Text40 |  | CAT |  |  | 4.56, 0.00, 0.50, 0.19 |
| TextBox | UNITS |  | SumOfUNITS |  |  | 5.08, 0.00, 0.68, 0.19 |
| TextBox | TYPE |  | TYPE |  |  | 5.92, 0.00, 0.25, 0.19 |
| TextBox | CHARGE_PER_UNIT |  | CHARGE_PER_UNIT |  |  | 6.18, 0.00, 0.75, 0.19 |
| TextBox | ITEM_COST |  | ITEM_COST |  |  | 6.97, 0.00, 0.97, 0.19 |
| TextBox | Check_PMC |  | Check_PMC |  |  | 0.58, 0.21, 2.83, 0.00 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Non_Product_Charges_Total |  | =Sum(Round([ITEM_COST],2)) |  |  | 6.89, 0.10, 1.04, 0.20 |
| Line | Line36 |  |  |  |  | 6.94, 0.06, 0.00, 0.00 |
| Line | Line37 |  |  |  |  | 6.94, 0.04, 0.00, 0.00 |
| Label | Label47 | Non-Product Total Charges |  |  |  | 0.00, 0.10, 1.85, 0.20 |
