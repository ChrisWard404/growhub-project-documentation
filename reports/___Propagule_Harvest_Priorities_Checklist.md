# Report: ***Propagule_Harvest_Priorities_Checklist

**Caption:** Propagule Harvest Accomplishment Report  
**Grouping/sorting:** `Cutoff_Date`, `SPECIES_GROUP`, `HARVEST_DATE`, `ID`  
**Subforms/subreports:** `Report.Propagule_Harvest_Priorities_Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.53, 0.38, 2.83, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.67, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.54, 0.17, 2.78, 0.20 |
| Label | Label52 | Lot ID |  |  |  | 0.34, 1.21, 0.68, 0.23 |
| Label | Label53 | Harvest Date |  |  |  | 1.77, 1.21, 1.33, 0.23 |
| Label | Label57 | Propagule Harvest by Lot Checklist |  |  |  | 2.19, 0.58, 3.49, 0.23 |
| Line | Line56 |  |  |  |  | 0.02, 1.46, 7.66, 0.00 |
| Label | Label89 | Bed Feet |  |  |  | 6.43, 1.21, 0.68, 0.23 |
| Label | Label90 | Acres |  |  |  | 7.21, 1.21, 0.46, 0.23 |
| TextBox | HD |  | Cutoff_Date |  |  | 2.46, 0.81, 3.17, 0.29 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SPECIES_GROUP |  | SPECIES_GROUP |  |  | 0.27, 0.00, 4.02, 0.29 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | Propagule_Harvest_Priorities_Subform |  | Report.Propagule_Harvest_Priorities_Subform (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 1.55, 0.27, 6.12, 0.21 |
| TextBox | Lot ID |  | ID |  |  | 0.35, 0.00, 1.37, 0.26 |
| TextBox | HARVEST_DATE |  | HD |  |  | 1.78, 0.04, 4.64, 0.22 |
| Line | Line72 |  |  |  |  | 1.55, 0.25, 6.12, 0.00 |
| TextBox | Lot_Bed_Feet |  | Lot_Total_Ft |  |  | 6.46, 0.02, 0.61, 0.23 |
| TextBox | Lot_Acres |  | =[Lot_Total_Ft]/6857 |  |  | 7.08, 0.02, 0.61, 0.23 |
| TextBox | Text100 |  | HARVEST_DATE |  |  | 0.29, 0.29, 0.00, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line71 |  |  |  |  | 0.05, 0.00, 7.67, 0.00 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text91 |  | =Sum([Lot_Total_Ft]) |  |  | 6.25, 0.00, 0.82, 0.23 |
| TextBox | Text92 |  | =Sum([Lot_Total_Ft]/6857) |  |  | 7.08, 0.00, 0.61, 0.23 |
| TextBox | Text97 |  | =[SPECIES_GROUP] & " Totals" |  |  | 0.34, 0.00, 3.17, 0.23 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text93 |  | =Sum([Lot_Total_Ft]) |  |  | 6.25, 0.00, 0.82, 0.23 |
| TextBox | Text94 |  | =Sum([Lot_Total_Ft]/6857) |  |  | 7.08, 0.00, 0.61, 0.23 |
| TextBox | Text98 |  | =[Cutoff_Date] & " Totals" |  |  | 0.24, 0.00, 3.17, 0.23 |
| Line | Line105 |  |  |  |  | 7.11, 0.00, 0.58, 0.00 |
| Line | Line107 |  |  |  |  | 6.48, 0.00, 0.58, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.00, 0.03, 1.96, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.69, 0.03, 2.00, 0.21 |
| Line | Line46 |  |  |  |  | 0.00, 0.02, 7.72, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text95 |  | =Sum([Lot_Total_Ft]) |  |  | 6.17, 0.00, 0.88, 0.23 |
| TextBox | Text96 |  | =Sum([Lot_Total_Ft]/6857) |  |  | 7.08, 0.00, 0.61, 0.23 |
| Label | Label99 | Grand Totals |  |  |  | 0.12, 0.00, 1.08, 0.23 |
| Line | Line106 |  |  |  |  | 7.11, 0.00, 0.58, 0.00 |
| Line | Line108 |  |  |  |  | 6.35, 0.00, 0.69, 0.00 |
