# Report: NMIS_SOURCE_Location_by_ID_Report_2col

**Caption:** NMIS_SOURCE_Inventory  
**Record source:**

```sql
SELECT NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE, [Seed_Balance Query].[Sum Of ACTIVITY_UNITS], NMIS_LOCATIONS.LOCATION, NMIS_ID_LOCATIONS.SUBLOT_NO
FROM (NMIS_LOCATIONS RIGHT JOIN (([Seed_Balance Query] INNER JOIN NMIS_SOURCE_LOTS ON [Seed_Balance Query].SOURCE_LOT_CN = NMIS_SOURCE_LOTS.CN) LEFT JOIN NMIS_ID_LOCATIONS ON NMIS_SOURCE_LOTS.CN = NMIS_ID_LOCATIONS.SOURCE_LOT_CN) ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN) INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN
WHERE ((([Seed_Balance Query].[Sum Of ACTIVITY_UNITS])>0.0001))
ORDER BY NMIS_SOURCE_LOTS.ID;
```

**Grouping/sorting:** `ID`  
**Backend tables referenced:** `NMIS_ID_LOCATIONS`, `NMIS_LOCATIONS`, `NMIS_SOURCE_LOTS`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.82, 0.16, 2.81, 0.19 |
| Label | Label33 | Source Loction  Report by Lot ID |  |  |  | 3.01, 0.56, 2.43, 0.18 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.60, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.60, 0.00, 3.24, 0.16 |
| Label | ID_Label | Lot ID |  |  |  | 0.00, 0.91, 0.45, 0.18 |
| Label | SOURCE_CODE_Label | Source  |  |  |  | 1.17, 0.91, 0.50, 0.17 |
| Label | GROSS_SOURCE_PER_UNIT_Label | Location |  |  |  | 2.54, 0.91, 0.57, 0.18 |
| Label | Sum Of ACTIVITY_UNITS_Label | Balance |  |  |  | 3.34, 0.91, 0.50, 0.17 |
| Line | Line41 |  |  |  |  | 0.00, 1.08, 7.90, 0.00 |
| Label | Label43 |  Lot ID |  |  |  | 4.05, 0.91, 0.47, 0.18 |
| Label | Label44 | Source  |  |  |  | 5.22, 0.91, 0.50, 0.17 |
| Label | Label45 | Location |  |  |  | 6.59, 0.91, 0.57, 0.18 |
| Label | Label46 | Balance |  |  |  | 7.40, 0.91, 0.50, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | SOURCE |  |  | 0.65, 0.01, 1.85, 0.00 |
| TextBox | LOCATION |  | LOCATION |  |  | 2.52, 0.01, 0.40, 0.00 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 2.94, 0.01, 0.34, 0.00 |
| TextBox | Sum Of ACTIVITY_UNITS |  | Sum Of ACTIVITY_UNITS |  |  | 3.29, 0.01, 0.67, 0.00 |
| TextBox | CATEGORY_CODE |  | ID |  |  | 0.00, 0.01, 0.64, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.02, 0.17, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.36, 0.17, 3.50, 0.18 |
| Line | Line42 |  |  |  |  | 0.49, 0.00, 7.39, 0.00 |
