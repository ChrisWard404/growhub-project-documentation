# Report: NMIS_SOURCE_Zero_Balance_Report

**Caption:** NMIS_SOURCE_Inventory  
**Grouping/sorting:** `ID`  
**Opened from (VBA):** `Form_Reports_Menu_Source Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.33, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.11, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.11, 0.00, 3.24, 0.16 |
| Label | ID_Label |  Lot ID |  |  |  | 0.03, 0.90, 0.47, 0.18 |
| Label | SOURCE_CODE_Label | Source  |  |  |  | 1.39, 0.90, 0.50, 0.17 |
| Label | Sum Of ACTIVITY_UNITS_Label | Balance |  |  |  | 6.64, 0.90, 0.50, 0.17 |
| Line | Line41 |  |  |  |  | 0.00, 1.08, 7.17, 0.00 |
| Label | Label43 | Zero Date |  |  |  | 5.75, 0.90, 0.61, 0.18 |
| TextBox | Text45 |  | ="Source Lot Zero Balance Report for FY " & [Forms]![Switchboard]![FY_For_Reports] |  |  | 2.11, 0.54, 3.24, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | SOURCE |  |  | 0.86, 0.01, 3.59, 0.00 |
| TextBox | Sum Of ACTIVITY_UNITS |  | Sum Of ACTIVITY_UNITS |  |  | 6.41, 0.01, 0.81, 0.00 |
| TextBox | CATEGORY_CODE |  | ID |  |  | 0.03, 0.01, 0.84, 0.00 |
| TextBox | Text44 |  | MaxOfACTIVITY_DATE |  |  | 5.66, 0.01, 0.69, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.04, 0.06, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.73, 0.05, 3.50, 0.18 |
| Line | Line42 |  |  |  |  | 0.00, 0.01, 7.17, 0.00 |
