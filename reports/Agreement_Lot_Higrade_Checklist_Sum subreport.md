# Report: Agreement_Lot_Higrade_Checklist_Sum subreport

**Caption:** Agreement_Lot_Destroy_Checklist subreport  
**Grouping/sorting:** `Charged_To`  
**Embedded in:** `Report:Agreement_Lot_Higrade_Checklist subreport`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line29 |  |  |  |  | 0.00, 0.02, 2.58, 0.00 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line2 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Total |  | Total |  |  | 1.00, 0.00, 0.71, 0.18 |
| TextBox | Charged_To |  | Charged_To |  |  | 0.00, 0.00, 0.00, 0.18 |
| TextBox | Client_Destroy_Flag |  | =IIf([Sum_Total]>0.001,IIf([Charged_To] Like "*Client*",IIf([Total]<>[Sum_Total] And [Total]<[Reports]![Agreement_Lot_Higrade_Checklist]![Obligation],"**Less Than Firm Order**",IIf([Total]<>[Sum_Total] And [Total]<[Reports]![Agreement_Lot_Higrade_Checklist]![Amount_Requested],"**Greater Than Firm Order, Less Than Request**")),IIf([Total]=[Sum_Total],"**Check Client Obligation**"))) |  |  | 1.73, 0.00, 4.31, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line3 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Sum_Total |  | =Sum([Total]) |  |  | 1.00, 0.00, 0.71, 0.19 |
| Line | Line32 |  |  |  |  | 1.00, 0.00, 0.71, 0.00 |
| Label | Label39 |  Lot Total:  |  |  |  | 0.24, 0.00, 0.76, 0.19 |
