# Report: NMIS_SOURCE_Zero_Bal_by_Col_Yr_Stor_For_Report

**Caption:** NMIS_SOURCE_Inventory  
**Grouping/sorting:** `cy`, `For`, `ID`  
**Opened from (VBA):** `Form_Reports_Menu_Source Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.82, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.60, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.60, 0.00, 3.24, 0.16 |
| Label | ID_Label |  Lot ID |  |  |  | 0.52, 0.90, 0.47, 0.18 |
| Label | SOURCE_CODE_Label | Source  |  |  |  | 1.88, 0.90, 0.50, 0.17 |
| Label | Sum Of ACTIVITY_UNITS_Label | Balance |  |  |  | 7.16, 0.90, 0.50, 0.17 |
| Line | Line41 |  |  |  |  | 0.49, 1.08, 7.17, 0.00 |
| Label | Label43 | Zero Date |  |  |  | 6.34, 0.90, 0.61, 0.18 |
| TextBox | Text45 |  | ="Source Lot Zero Balance Report for FY " & [Forms]![Switchboard]![FY_For_Reports] |  |  | 2.60, 0.54, 3.24, 0.23 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | cy | Collection Year: | cy |  |  | 1.33, 0.00, 0.79, 0.21 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | For | Storred For: | For |  |  | 1.21, 0.00, 0.00, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | SOURCE |  |  | 1.35, 0.01, 4.06, 0.00 |
| TextBox | Sum Of ACTIVITY_UNITS |  | Sum Of ACTIVITY_UNITS |  |  | 7.00, 0.01, 0.69, 0.00 |
| TextBox | CATEGORY_CODE |  | ID |  |  | 0.52, 0.01, 0.84, 0.00 |
| TextBox | Text44 |  | MaxOfACTIVITY_DATE |  |  | 6.25, 0.01, 0.69, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.53, 0.06, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.22, 0.05, 3.50, 0.18 |
| Line | Line42 |  |  |  |  | 0.49, 0.01, 7.17, 0.00 |
