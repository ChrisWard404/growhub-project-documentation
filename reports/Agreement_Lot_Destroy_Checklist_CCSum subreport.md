# Report: Agreement_Lot_Destroy_Checklist_CCSum subreport

**Caption:** Agreement_Lot_Destroy_Checklist subreport  
**Grouping/sorting:** `Charged_To`  
**Embedded in:** `Report:Agreement_Lot_Destroy_Checklist`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo199 |  | Cost_Center | B;Bareroot Plant Totals;C;Container Plant Totals |  | 0.00, 0.06, 3.21, 0.26 |
| Line | Line29 |  |  |  |  | 0.00, 0.06, 2.58, 0.00 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line2 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Total |  | SumOfDestroyed_Net |  |  | 1.81, 0.00, 0.77, 0.19 |
| TextBox | Charged_To |  | Charged_To |  |  | 0.00, 0.00, 1.80, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line3 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
