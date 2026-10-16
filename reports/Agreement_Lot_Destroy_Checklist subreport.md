# Report: Agreement_Lot_Destroy_Checklist subreport

**Caption:** Agreement_Lot_Destroy_Checklist subreport  
**Record source:**

```sql
*Agreement_Lot_Destroy_Checklist_Subreport_Table
```

**Grouping/sorting:** `ID`, `Charged_To2`, `ID_Act_CN`, `Order2`, `ACTIVITY_DATE`, `ACTIVITY_CODE`  
**Subforms/subreports:** `Report.Agreement_Lot_Destroy_Checklist_Sum subreport`, `Report.agreement_Lot_Higrade_ORDERS subreport`  
**Embedded in:** `Report:Agreement_Lot_Destroy_Checklist`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label12 | Date |  |  |  | 0.00, 0.16, 0.61, 0.20 |
| Label | Label13 | Activity |  |  |  | 0.66, 0.16, 0.53, 0.20 |
| Label | Label14 | Packed (M) |  |  |  | 3.17, 0.01, 0.62, 0.34 |
| Label | Label15 | Gross (M) |  |  |  | 3.83, 0.16, 0.66, 0.20 |
| Label | Label16 | Net (M) |  |  |  | 4.58, 0.16, 0.55, 0.20 |
| Label | Label17 | Units |  |  |  | 5.33, 0.16, 0.55, 0.20 |
| Label | Label18 |  Code |  |  |  | 5.91, 0.16, 0.48, 0.20 |
| Label | Label19 | Chrg To |  |  |  | 7.26, 0.16, 0.57, 0.20 |
| Label | Label20 | ----------------------------------------Destroyed---------------------------------------- |  |  |  | 3.78, 0.00, 4.14, 0.20 |
| Label | Label38 |  Amt/Unit |  |  |  | 6.50, 0.16, 0.67, 0.20 |
| Label | Label41 | Order-Client |  |  |  | 1.28, 0.16, 0.88, 0.20 |
| Line | Line42 |  |  |  |  | 0.04, 0.36, 0.53, 0.00 |
| Line | Line43 |  |  |  |  | 0.67, 0.36, 0.50, 0.00 |
| Line | Line44 |  |  |  |  | 1.28, 0.36, 0.88, 0.00 |
| Line | Line45 |  |  |  |  | 3.18, 0.36, 0.61, 0.00 |
| Line | Line46 |  |  |  |  | 3.83, 0.36, 0.66, 0.00 |
| Line | Line47 |  |  |  |  | 4.60, 0.36, 0.53, 0.00 |
| Line | Line48 |  |  |  |  | 5.35, 0.36, 0.54, 0.00 |
| Line | Line49 |  |  |  |  | 5.93, 0.36, 0.47, 0.00 |
| Line | Line50 |  |  |  |  | 6.51, 0.36, 0.66, 0.00 |
| Line | Line51 |  |  |  |  | 7.26, 0.36, 0.57, 0.00 |
| Label | Label55 | Order Specs |  |  |  | 2.17, 0.16, 0.89, 0.20 |
| Line | Line56 |  |  |  |  | 2.18, 0.36, 0.88, 0.00 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line2 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 0.00, 0.00, 0.61, 0.19 |
| TextBox | Activity |  | ACTIVITY_CODE |  |  | 0.66, 0.00, 0.60, 0.19 |
| TextBox | Packed_Net |  | Packed_Net |  |  | 3.07, 0.00, 0.68, 0.19 |
| TextBox | Destroyed_gross |  | Destroyed_gross |  |  | 3.81, 0.00, 0.61, 0.19 |
| TextBox | Destroyed_Net |  | Destroyed_Net |  |  | 4.50, 0.00, 0.65, 0.19 |
| TextBox | Units_Destroyed |  | Units_Destroyed |  |  | 5.17, 0.00, 0.68, 0.19 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 5.89, 0.00, 0.51, 0.19 |
| TextBox | Charged_To |  | Charged_To2 |  |  | 7.26, 0.00, 0.55, 0.19 |
| TextBox | AMT_PER_UNIT |  | AMT_PER_UNIT |  |  | 6.42, 0.00, 0.77, 0.19 |
| TextBox | Order |  | Order2 |  |  | 1.27, 0.00, 0.92, 0.19 |
| TextBox | ORDER_SIZE_SPEC_STRING |  | Order_Size_Specs |  |  | 2.21, 0.00, 0.84, 0.19 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CandN_NOTES |  | CandN_NOTES |  |  | 1.21, 0.00, 6.57, 0.01 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Sum_Destroyed_Net |  | =Sum([Destroyed_Net]) |  |  | 4.50, 0.03, 0.65, 0.19 |
| TextBox | Sum_Destroyed_Gross |  | =Sum([Destroyed_gross]) |  |  | 3.81, 0.03, 0.61, 0.19 |
| TextBox | Sum_Packed_Net |  | =Sum([Packed_Net]) |  |  | 3.08, 0.03, 0.68, 0.19 |
| Line | Line32 |  |  |  |  | 3.07, 0.03, 0.69, 0.00 |
| Line | Line33 |  |  |  |  | 3.90, 0.03, 0.53, 0.00 |
| Line | Line34 |  |  |  |  | 4.54, 0.03, 0.60, 0.00 |
| TextBox | Charged_To2 |  | Charged_To2 |  |  | 0.00, 0.03, 0.62, 0.19 |
| Label | Label36 |  Subtotals: |  |  |  | 0.62, 0.03, 0.76, 0.19 |
| TextBox | Check_Client_Destroyed |  | =IIf([Charged_To2]="Client",IIf((Nz([Sum_Packed_Net],0)>=[Reports]![Agreement_Lot_Destroy_Checklist]![Amount_Requested] And Nz([Sum_Destroyed_Net],0)>0) Or ([Agreement_Lot_Destroy_Checklist_Sum subreport].[Report]![Charged_To] Like "Client" And [Agreement_Lot_Destroy_Checklist_Sum subreport].[Report]![Total]>[Reports]![Agreement_Lot_Destroy_Checklist]![Amount_Requested] And Nz([Sum_Packed_Net],0)<[Reports]![Agreement_Lot_Destroy_Checklist]![Amount_Requested]),"**Client Destroy Possibly Too Much**",Null)) |  |  | 5.17, 0.03, 2.78, 0.19 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text21 |  | =Sum([Destroyed_Net]) |  |  | 4.50, 0.02, 0.65, 0.19 |
| TextBox | Text22 |  | =Sum([Destroyed_gross]) |  |  | 3.81, 0.02, 0.61, 0.19 |
| TextBox | Text23 |  | =Sum([Packed_Net]) |  |  | 3.08, 0.02, 0.68, 0.19 |
| Line | Line24 |  |  |  |  | 3.07, 0.02, 0.69, 0.00 |
| Line | Line25 |  |  |  |  | 3.90, 0.02, 0.53, 0.00 |
| Line | Line26 |  |  |  |  | 4.54, 0.02, 0.60, 0.00 |
| Subform | Agreement_Lot_Destroy_Checklist_Sum subreport |  | Report.Agreement_Lot_Destroy_Checklist_Sum subreport (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 0.00, 0.22, 5.24, 0.19 |
| Label | Label39 |  Lot Totals: |  |  |  | 0.62, 0.02, 0.76, 0.19 |
| Subform | agreement_Lot_Higrade_ORDERS subreport |  | Report.agreement_Lot_Higrade_ORDERS subreport (master: agreement_lot_cn → child: agreement_lot_cn) |  |  | 5.24, 0.21, 2.64, 0.20 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line3 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
