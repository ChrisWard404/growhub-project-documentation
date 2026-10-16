# Report: NMIS_SOURCE_Location_by_ID_Report

**Caption:** NMIS_SOURCE_Inventory  
**Record source:**

```sql
SELECT NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE, [Seed_Balance Query].[Sum Of ACTIVITY_UNITS], NMIS_LOCATIONS.LOCATION, NMIS_ID_LOCATIONS.SUBLOT_NO, NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE FROM (NMIS_LOCATIONS RIGHT JOIN (([Seed_Balance Query] INNER JOIN NMIS_SOURCE_LOTS ON [Seed_Balance Query].SOURCE_LOT_CN = NMIS_SOURCE_LOTS.CN) LEFT JOIN NMIS_ID_LOCATIONS ON NMIS_SOURCE_LOTS.CN = NMIS_ID_LOCATIONS.SOURCE_LOT_CN) ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN) INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN WHERE ((([Seed_Balance Query].[Sum Of ACTIVITY_UNITS])>0.0001) AND ((NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) Like [Species Code (Blank for all)] & "*") AND ((NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) Like [Client (Blank for all)] & "*")) ORDER BY NMIS_SOURCE_LOTS.ID;
```

**Grouping/sorting:** `ID`  
**Backend tables referenced:** `NMIS_ID_LOCATIONS`, `NMIS_LOCATIONS`, `NMIS_SOURCE_LOTS`  
**Opened from (VBA):** `Form_Reports_Menu_Source Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.33, 0.16, 2.81, 0.19 |
| Label | Label33 | Source Location Report by Lot ID |  |  |  | 2.51, 0.56, 2.45, 0.18 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.11, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.11, 0.00, 3.24, 0.16 |
| Label | ID_Label |  Lot ID |  |  |  | 0.00, 0.90, 0.47, 0.18 |
| Label | SOURCE_CODE_Label | Source  |  |  |  | 1.35, 0.90, 0.50, 0.17 |
| Label | GROSS_SOURCE_PER_UNIT_Label | Location |  |  |  | 4.62, 0.90, 0.57, 0.18 |
| Label | Sum Of ACTIVITY_UNITS_Label | Balance |  |  |  | 6.67, 0.90, 0.50, 0.17 |
| Line | Line41 |  |  |  |  | 0.00, 1.08, 7.17, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | SOURCE |  |  | 0.83, 0.01, 2.54, 0.00 |
| TextBox | LOCATION |  | LOCATION |  |  | 4.60, 0.01, 0.58, 0.00 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 5.19, 0.01, 0.53, 0.00 |
| TextBox | Sum Of ACTIVITY_UNITS |  | Sum Of ACTIVITY_UNITS |  |  | 6.51, 0.01, 0.69, 0.00 |
| TextBox | CATEGORY_CODE |  | ID |  |  | 0.00, 0.00, 0.84, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.73, 0.17, 3.50, 0.18 |
| Line | Line42 |  |  |  |  | 0.00, 0.00, 7.17, 0.00 |
