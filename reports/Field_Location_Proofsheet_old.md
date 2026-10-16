# Report: Field_Location_Proofsheet_old

**Caption:** Field Map  
**Record source:**

```sql
SELECT NMIS_LOCATIONS.LOCATION, NMIS_AGREEMENT_LOTS.ID, Abs([Begin_Counter]-[End_Counter]) AS Ft_In_Lot, NMIS_ID_LOCATIONS.BEGIN_INDEX, NMIS_ID_LOCATIONS.END_INDEX, NMIS_ID_LOCATIONS.DIST_FROM_BED_BEG, Left$([location],1) AS Field, NMIS_LOCATIONS.INDEX_MAX, NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL FROM NMIS_SOURCE_LOTS INNER JOIN ((NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN) INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ID_LOCATIONS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN GROUP BY NMIS_LOCATIONS.LOCATION, NMIS_AGREEMENT_LOTS.ID, Abs([Begin_Counter]-[End_Counter]), NMIS_ID_LOCATIONS.BEGIN_INDEX, NMIS_ID_LOCATIONS.END_INDEX, NMIS_ID_LOCATIONS.DIST_FROM_BED_BEG, Left$([location],1), NMIS_LOCATIONS.INDEX_MAX, NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, NMIS_LOCATIONS.LOCATION_TYPE HAVING (((NMIS_LOCATIONS.LOCATION) Like [Forms]![Field_Map Form]![Field] & "*") AND ((NMIS_LOCATIONS.LOCATION_TYPE)="Field")) ORDER BY NMIS_LOCATIONS.LOCATION;
```

**Grouping/sorting:** `Field`, `Location`, `DIST_FROM_BED_BEG`  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ID_LOCATIONS`, `NMIS_LOCATIONS`, `NMIS_SOURCE_LOTS`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.64, 0.16, 2.81, 0.19 |
| Label | Label33 | Field Location Proofsheet |  |  |  | 2.25, 0.57, 3.67, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.25, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.39, 0.00, 3.24, 0.16 |
| TextBox | Text12 |  | ="Field " & [Field] |  |  | 2.25, 0.78, 3.67, 0.23 |
| Line | Line29 |  |  |  |  | 0.03, 1.08, 8.03, 0.00 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Field |  | Field |  |  | 0.00, 0.00, 0.00, 0.04 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Location |  | Location |  |  | 0.12, 0.01, 0.39, 0.00 |
| TextBox | Text28 |  | =Sum([Ft_In_Lot]) |  |  | 1.57, 0.01, 0.31, 0.00 |
| Line | Line30 |  |  |  |  | 0.03, 0.00, 1.86, 0.00 |
| Line | Line31 |  |  |  |  | 0.03, 0.17, 1.86, 0.00 |
| TextBox | INDEX_MAX |  | INDEX_MAX |  |  | 1.03, 0.02, 0.30, 0.15 |
| Label | Label38 | (Max: |  |  |  | 0.71, 0.02, 0.31, 0.15 |
| Label | Label39 | ) |  |  |  | 1.35, 0.02, 0.07, 0.15 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 0.17, 0.00, 0.40, 0.00 |
| TextBox | Ft_In_Lot |  | Ft_In_Lot |  |  | 1.57, 0.00, 0.31, 0.00 |
| TextBox | Riser_Beg |  | BEGIN_INDEX |  |  | 1.27, 0.00, 0.23, 0.00 |
| TextBox | Riser_End |  | END_INDEX |  |  | 1.02, 0.00, 0.23, 0.00 |
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 0.59, 0.00, 0.38, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text10 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.97, 0.03, 0.00, 0.00 |
| TextBox | Text41 |  | =Now() |  |  | 0.00, 0.03, 0.00, 0.00 |
