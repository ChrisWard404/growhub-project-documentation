# Report: Lifting_Priorities_Precooler

**Caption:** NMIS_TOLIFT  
**Grouping/sorting:** `Priority`, `Location`, `BED_SORT_ORDER`, `Lot ID`  
**Backend tables referenced:** `Lifting_Priorties`  
**Opened from (VBA):** `Form_Lifting_Priorties`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.57, 0.38, 2.83, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.71, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.58, 0.17, 2.78, 0.20 |
| Label | Label51 | Location |  |  |  | 0.04, 1.12, 0.68, 0.23 |
| Label | Label52 | Lot ID |  |  |  | 1.17, 1.12, 0.53, 0.23 |
| Label | Label53 | Species/Age Class |  |  |  | 6.38, 1.12, 1.62, 0.23 |
| Label | Label54 | To Lift |  |  |  | 4.97, 1.12, 0.59, 0.23 |
| Label | Label55 | Net (M) |  |  |  | 5.72, 1.12, 0.60, 0.23 |
| Line | Line56 |  |  |  |  | 0.00, 1.38, 7.97, 0.00 |
| Label | Label57 | Lifting Priorities for Precooler Storage |  |  |  | 2.48, 0.58, 3.03, 0.23 |
| TextBox | Text68 |  | =[Forms]![Lifting_Priorties]![Report_Date] |  |  | 2.58, 0.81, 2.83, 0.20 |
| Label | Label69 |  Total Ft |  |  |  | 4.22, 1.12, 0.67, 0.23 |
| Label | Label89 | Client |  |  |  | 3.48, 1.12, 0.49, 0.23 |
| Label | Label92 | Bin/TubTally |  |  |  | 2.15, 1.12, 1.02, 0.23 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Priority | Priority: | Priority |  |  | 0.83, 0.01, 0.80, 0.26 |
| TextBox | Text93 |  | Comment |  |  | 1.68, 0.00, 6.29, 0.27 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Feet To Lift |  | Feet To Lift |  |  | 4.91, 0.05, 0.59, 0.21 |
| TextBox | Net Order |  | Net Order |  |  | 5.70, 0.05, 0.64, 0.21 |
| TextBox | Location |  | Location |  |  | 0.00, 0.05, 1.16, 0.21 |
| TextBox | Lot ID |  | Lot ID |  |  | 1.18, 0.05, 1.16, 0.21 |
| TextBox | Species/Age Class |  | Species_Age_Class_Over_12 |  |  | 6.38, 0.05, 1.62, 0.21 |
| TextBox | Text70 |  | Bed_Bal |  |  | 4.21, 0.05, 0.69, 0.21 |
| TextBox | Text90 |  | Major_Client |  |  | 3.48, 0.05, 0.70, 0.21 |
| Line | Line93 |  |  |  |  | 0.04, 0.31, 7.96, 0.00 |
| CheckBox | Partial_Lift |  | Partial_Lift |  |  | 5.50, 0.08, 0.00, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.04, 0.03, 1.96, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.98, 0.03, 2.00, 0.21 |
| Line | Line46 |  |  |  |  | 0.00, 0.02, 7.97, 0.00 |
| Label | Label96 | Partial Lift |  |  |  | 4.78, 0.04, 0.85, 0.23 |
| TextBox | Text94 |  | ="% of tops over " & IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="050357","30.5 cm","12 Inches") |  |  | 2.17, 0.04, 2.54, 0.23 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Comments |  | =[Forms]![Lifting_Priorties]![Comments] |  |  | 0.00, 0.03, 7.83, 0.35 |
