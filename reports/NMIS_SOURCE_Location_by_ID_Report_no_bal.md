# Report: NMIS_SOURCE_Location_by_ID_Report_no_bal

**Caption:** NMIS_SOURCE_Inventory  
**Grouping/sorting:** `ID`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.65, 0.16, 2.81, 0.19 |
| Label | Label33 | Source Location Report by Lot ID |  |  |  | 2.83, 0.56, 2.45, 0.18 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.44, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.44, 0.00, 3.24, 0.16 |
| Label | ID_Label |  Lot ID |  |  |  | 0.00, 0.90, 0.47, 0.18 |
| Label | SOURCE_CODE_Label | Source  |  |  |  | 1.35, 0.90, 0.50, 0.17 |
| Label | GROSS_SOURCE_PER_UNIT_Label | Location |  |  |  | 2.83, 0.90, 0.57, 0.18 |
| Line | Line41 |  |  |  |  | 0.00, 1.08, 7.72, 0.00 |
| Label | Label43 |  Lot ID |  |  |  | 3.95, 0.90, 0.47, 0.18 |
| Label | Label44 | Source  |  |  |  | 5.30, 0.90, 0.50, 0.17 |
| Label | Label45 | Location |  |  |  | 6.78, 0.90, 0.57, 0.18 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | SOURCE |  |  | 0.83, 0.01, 2.00, 0.00 |
| TextBox | LOCATION |  | LOCATION |  |  | 2.85, 0.01, 0.45, 0.00 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 3.31, 0.01, 0.43, 0.00 |
| TextBox | CATEGORY_CODE |  | ID |  |  | 0.00, 0.01, 0.84, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.26, 0.17, 3.50, 0.18 |
| Line | Line42 |  |  |  |  | 0.00, 0.00, 7.71, 0.00 |
