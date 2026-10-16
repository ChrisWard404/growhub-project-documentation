# Report: Lifting_Priorities_detailed

**Grouping/sorting:** `ShowNote`, `Priority`, `Location`, `BED_SORT_ORDER`, `Lot ID`  
**Backend tables referenced:** `Lifting_Priorties`  
**Subforms/subreports:** `Report.TOLIFT_ORDER_Lift_Priority subrep`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.57, 0.38, 2.83, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.71, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.58, 0.17, 2.78, 0.20 |
| Label | Label51 | Location |  |  |  | 0.04, 1.07, 0.68, 0.23 |
| Label | Label52 | Lot ID |  |  |  | 1.17, 1.07, 0.68, 0.23 |
| Label | Label53 | Species/Age Class |  |  |  | 2.33, 1.07, 1.33, 0.23 |
| Label | Label54 | To Lift |  |  |  | 4.80, 1.07, 0.59, 0.23 |
| Label | Label55 | Net Amt(M) |  |  |  | 6.20, 1.07, 0.92, 0.23 |
| Line | Line56 |  |  |  |  | 0.00, 1.32, 7.99, 0.00 |
| Label | Label57 | Lifting Priorities |  |  |  | 2.58, 0.58, 2.83, 0.23 |
| TextBox | Text68 |  | =[Forms]![Lifting_Priorties]![Report_Date] |  |  | 2.58, 0.81, 2.83, 0.20 |
| Label | Label69 |  Ft in Field |  |  |  | 3.79, 1.07, 0.81, 0.23 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Comments |  | =[Forms]![Lifting_Priorties]![Comments] |  |  | 0.00, 0.00, 8.01, 0.02 |
| Line | Line91 |  |  |  |  | 0.00, 0.04, 7.99, 0.00 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Priority | Priority: | Priority |  |  | 0.83, 0.02, 0.71, 0.26 |
| TextBox | Text93 |  | Comment |  |  | 1.58, 0.02, 6.29, 0.27 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box42 |  |  |  |  | 0.00, 0.00, 8.01, 0.22 |
| TextBox | Feet To Lift |  | FTL |  |  | 4.79, 0.00, 0.59, 0.21 |
| TextBox | Ft Note |  | Ft_to_Lift_Note |  |  | 5.39, 0.00, 0.00, 0.21 |
| TextBox | Location |  | Loc2 |  |  | 0.00, 0.00, 1.16, 0.21 |
| TextBox | Net Order |  | NO |  |  | 6.40, 0.00, 0.75, 0.21 |
| TextBox | Lot ID |  | Lot ID |  |  | 1.17, 0.00, 1.16, 0.21 |
| TextBox | Species/Age Class |  | Species_Age_Class_Over_12 |  |  | 2.33, 0.00, 1.46, 0.21 |
| TextBox | Net Note |  | Net Note |  |  | 7.16, 0.00, 0.85, 0.21 |
| TextBox | Text70 |  | Bed_Bal |  |  | 3.83, 0.00, 0.76, 0.21 |
| Line | Line96 |  |  |  |  | 0.00, 0.30, 8.00, 0.00 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 1.92, 0.04, 0.42, 0.12 |
| Subform | NMIS_TOLIFT_ORDER subrep |  | Report.TOLIFT_ORDER_Lift_Priority subrep (master: CN;fy → child: AGREEMENT_LOT_CN;FISCAL_YEAR) |  |  | 1.33, 0.25, 6.66, 0.01 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text58 |  | =Sum([FTL]) |  |  | 4.74, 0.01, 0.65, 0.21 |
| TextBox | Text59 |  | =Sum([NO]) |  |  | 6.26, 0.01, 0.89, 0.21 |
| TextBox | Text71 |  | =Sum([Bed_Bal]) |  |  | 3.73, 0.01, 0.86, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.04, 0.08, 1.96, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.98, 0.08, 2.00, 0.21 |
| Line | Line46 |  |  |  |  | 0.00, 0.02, 7.97, 0.00 |
| TextBox | Text94 |  | ="% of tops over " & IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="050357","30.5 cm","12 Inches") |  |  | 2.62, 0.06, 2.83, 0.23 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text63 |  | =Sum([FTL]) |  |  | 4.61, 0.03, 0.77, 0.21 |
| TextBox | Text64 |  | =Sum([NO]) |  |  | 6.26, 0.03, 0.89, 0.21 |
| Line | Line65 |  |  |  |  | 4.71, 0.04, 0.68, 0.00 |
| Line | Line66 |  |  |  |  | 6.27, 0.04, 0.88, 0.00 |
| TextBox | Text73 |  | =Sum([Bed_Bal]) |  |  | 3.60, 0.03, 0.99, 0.21 |
| Line | Line74 |  |  |  |  | 3.70, 0.04, 0.90, 0.00 |
