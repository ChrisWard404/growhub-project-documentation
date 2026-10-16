# Report: NMIS_SOURCE_Location_by_ID_Report2

**Caption:** NMIS_SOURCE_Inventory  
**Grouping/sorting:** `Reporting_Parent`, `DIVERSE`, `Sort`, `ID`, `LOCATION`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opened from (VBA):** `Form_Reports_Menu_Source Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.59, 0.33, 2.81, 0.19 |
| Label | Label33 | Source Location Report by Lot ID |  |  |  | 2.77, 0.74, 2.45, 0.18 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.38, 0.53, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.38, 0.17, 3.24, 0.16 |
| Label | ID_Label |  Lot ID |  |  |  | 0.00, 0.96, 0.47, 0.18 |
| Label | GROSS_SOURCE_PER_UNIT_Label | Location |  |  |  | 0.83, 0.96, 0.57, 0.18 |
| Label | Sum Of ACTIVITY_UNITS_Label | Balance |  |  |  | 1.91, 0.96, 0.50, 0.17 |
| Line | Line41 |  |  |  |  | 0.00, 1.12, 7.72, 0.00 |
| Label | Label44 |  Lot ID |  |  |  | 2.64, 0.96, 0.47, 0.18 |
| Label | Label45 | Location |  |  |  | 3.46, 0.96, 0.57, 0.18 |
| Label | Label46 | Balance |  |  |  | 4.54, 0.96, 0.50, 0.17 |
| Label | Label47 |  Lot ID |  |  |  | 5.31, 0.96, 0.47, 0.18 |
| Label | Label48 | Location |  |  |  | 6.14, 0.96, 0.57, 0.18 |
| Label | Label49 | Balance |  |  |  | 7.22, 0.96, 0.50, 0.17 |
| ComboBox | Combo50 |  | Reporting_Parent | SELECT NMIS_ASSOCIATES.ASSOCIATE, [associate] & " - " & [ASSOCIATE_NAME] AS RP FROM NMIS_ASSOCIATES; |  | 3.92, 0.00, 3.79, 0.19 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Sort |  | Sort |  |  | 0.00, 0.00, 2.42, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | LOCATION |  | LOCATION |  |  | 0.75, 0.01, 0.58, 0.00 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 1.33, 0.01, 0.43, 0.00 |
| TextBox | Sum Of ACTIVITY_UNITS |  | Sum Of ACTIVITY_UNITS |  |  | 1.74, 0.01, 0.68, 0.00 |
| TextBox | CATEGORY_CODE |  | ID |  |  | 0.00, 0.00, 0.76, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.04, 0.01, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.23, 0.01, 3.50, 0.18 |
| Line | Line42 |  |  |  |  | 0.00, 0.00, 7.71, 0.00 |
