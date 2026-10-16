# Report: Lifting_Priorities_Checklist

**Grouping/sorting:** `Sort_By`, `Location`, `BED_SORT_ORDER`, `Lot ID`  
**Backend tables referenced:** `Lifting_Priorties`  
**Opened from (VBA):** `Form_Lifting_Priorties`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.57, 0.38, 2.83, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.71, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.58, 0.17, 2.78, 0.20 |
| Label | Label51 | Location |  |  |  | 0.31, 1.27, 0.68, 0.23 |
| Label | Label52 | Lot ID |  |  |  | 1.27, 1.27, 0.68, 0.23 |
| Label | Label53 | Species/Age Class |  |  |  | 2.40, 1.27, 1.33, 0.23 |
| Label | Label57 | Lifting Priorities Checklist |  |  |  | 2.57, 0.58, 2.84, 0.23 |
| Label | Label68 | Pr |  |  |  | 0.04, 1.27, 0.21, 0.23 |
| TextBox | Text68 |  | =Date() |  |  | 2.58, 0.81, 2.83, 0.20 |
| Label | Label54 | To Lift |  |  |  | 4.64, 1.27, 0.51, 0.23 |
| Label | Label55 | Net Amt(M) |  |  |  | 5.97, 1.05, 0.64, 0.45 |
| Label | Label69 | Ft in Field |  |  |  | 4.01, 1.05, 0.44, 0.45 |
| TextBox | Text71 | Sorted By: | =[Forms]![Lifting_Priorties]![Sort_By] |  |  | 0.62, 0.42, 1.54, 0.22 |
| Label | Label73 | Max RP |  |  |  | 6.69, 1.04, 0.43, 0.46 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Location |  | Loc2 |  |  | 0.27, 0.00, 1.00, 0.21 |
| TextBox | Lot ID |  | Lot ID |  |  | 1.27, 0.00, 1.11, 0.21 |
| TextBox | Species/Age Class |  | Species_Age_Class_Over_12 |  |  | 2.40, 0.00, 1.33, 0.21 |
| TextBox | Priority |  | Priority |  |  | 0.00, 0.00, 0.23, 0.21 |
| TextBox | Feet To Lift |  | Feet To Lift |  |  | 4.62, 0.00, 0.51, 0.21 |
| TextBox | Ft Note |  | Ft_to_Lift_Note |  |  | 5.15, 0.00, 0.92, 0.21 |
| TextBox | Net Order |  | Net Order |  |  | 6.07, 0.00, 0.49, 0.21 |
| TextBox | Net Note |  | Net Note |  |  | 7.15, 0.00, 0.85, 0.21 |
| TextBox | Text70 |  | Bed_Bal |  |  | 3.73, 0.00, 0.72, 0.21 |
| TextBox | MaxOfROOT_PRUNE_TARGET |  | MaxOfROOT_PRUNE_TARGET |  |  | 6.59, 0.00, 0.43, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.04, 0.08, 1.96, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.73, 0.08, 2.00, 0.21 |
| Line | Line46 |  |  |  |  | 0.00, 0.02, 7.97, 0.00 |
| TextBox | Text94 |  | ="% of tops over " & IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="050357","30.5 cm","12 Inches") |  |  | 2.77, 0.03, 2.83, 0.23 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text63 |  | =Sum([Feet To Lift]) |  |  | 4.45, 0.14, 0.69, 0.21 |
| TextBox | Text64 |  | =Sum([Net Order]) |  |  | 5.94, 0.14, 0.62, 0.21 |
| Line | Line65 |  |  |  |  | 4.54, 0.15, 0.59, 0.00 |
| Line | Line66 |  |  |  |  | 5.95, 0.15, 0.61, 0.00 |
| TextBox | Text73 |  | =Sum([Bed_Bal]) |  |  | 3.55, 0.14, 0.90, 0.21 |
| Line | Line74 |  |  |  |  | 3.65, 0.15, 0.80, 0.00 |
