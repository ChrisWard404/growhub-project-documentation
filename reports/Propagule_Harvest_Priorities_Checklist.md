# Report: Propagule_Harvest_Priorities_Checklist

**Grouping/sorting:** `ID`  
**Backend tables referenced:** `NMIS_ACCESS_USER_NURSERY`  
**Subforms/subreports:** `Report.Propagule_Harvest_Priorities_Subform`  
**Opened from (VBA):** `Form_Propagule_Harvest_Priorties`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.53, 0.38, 2.83, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.67, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.54, 0.17, 2.78, 0.20 |
| Label | Label52 | Lot ID |  |  |  | 0.74, 1.21, 0.68, 0.23 |
| Label | Label53 | Harvest Date |  |  |  | 2.17, 1.21, 1.33, 0.23 |
| Label | Label57 | Propagule Harvest by Lot Checklist by Lot ID |  |  |  | 2.14, 0.58, 3.59, 0.23 |
| TextBox | Text68 |  | ="As of " & Date() |  |  | 2.54, 0.81, 2.83, 0.20 |
| Line | Line56 |  |  |  |  | 0.02, 1.46, 7.66, 0.00 |
| Label | Label89 | Bed Feet |  |  |  | 6.42, 1.21, 0.68, 0.23 |
| Label | Label90 | Acres |  |  |  | 7.20, 1.21, 0.46, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | Propagule_Harvest_Priorities_Subform |  | Report.Propagule_Harvest_Priorities_Subform (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 1.55, 0.27, 6.12, 0.21 |
| TextBox | Lot ID |  | ID |  |  | 0.75, 0.00, 1.37, 0.26 |
| TextBox | HARVEST_DATE |  | HD |  |  | 2.18, 0.04, 4.24, 0.22 |
| Line | Line72 |  |  |  |  | 1.55, 0.25, 6.12, 0.00 |
| TextBox | Lot_Bed_Feet |  | =[Propagule_Harvest_Priorities_Subform].[Report]![Sum_SumOfTotal_Activity_Units] |  |  | 6.44, 0.03, 0.61, 0.23 |
| TextBox | Lot_Acres |  | =[Propagule_Harvest_Priorities_Subform].[Report]![Sum_SumOfTotal_Activity_Units]/[Forms]![Propagule_Harvest_Priorties]![NMIS_ACCESS_USER_NURSERY subform1].[Form]![Default4N] |  |  | 7.06, 0.03, 0.61, 0.23 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line71 |  |  |  |  | 0.00, 0.03, 7.67, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.00, 0.08, 1.96, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.69, 0.08, 2.00, 0.21 |
| Line | Line46 |  |  |  |  | 0.00, 0.02, 7.72, 0.00 |
