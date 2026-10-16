# Report: NMIS_SOURCE_Location_by_ID_Report3b

**Caption:** NMIS_SOURCE_Inventory  
**Grouping/sorting:** `DIVERSE`, `Sort`, `ID`, `LOCATION`  
**Opened from (VBA):** `Form_Reports_Menu_Source Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_Label |  Lot ID |  |  |  | 0.00, 0.22, 0.47, 0.18 |
| Label | GROSS_SOURCE_PER_UNIT_Label | Client |  |  |  | 0.70, 0.22, 0.59, 0.18 |
| Label | Sum Of ACTIVITY_UNITS_Label | Balance |  |  |  | 1.91, 0.22, 0.50, 0.17 |
| Line | Line41 |  |  |  |  | 0.00, 0.39, 7.72, 0.00 |
| Label | Label44 |  Lot ID |  |  |  | 2.64, 0.22, 0.47, 0.18 |
| Label | Label45 | Client |  |  |  | 3.32, 0.22, 0.59, 0.18 |
| Label | Label46 | Balance |  |  |  | 4.54, 0.22, 0.50, 0.17 |
| Label | Label47 |  Lot ID |  |  |  | 5.31, 0.22, 0.47, 0.18 |
| Label | Label48 | Client |  |  |  | 6.00, 0.22, 0.59, 0.18 |
| Label | Label49 | Balance |  |  |  | 7.22, 0.22, 0.50, 0.17 |
| TextBox | Text19 |  | =Date() |  |  | 0.00, 0.00, 2.08, 0.18 |
| TextBox | Text20 |  | =[Page] & " of " & [Pages] |  |  | 6.17, 0.00, 1.56, 0.18 |
| TextBox | LOCATION |  | LOCATION |  |  | 2.62, 0.00, 2.80, 0.00 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Sort |  | Sort |  |  | 0.00, 0.00, 2.42, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 1.33, 0.01, 0.43, 0.00 |
| TextBox | Sum Of ACTIVITY_UNITS |  | Sum Of ACTIVITY_UNITS |  |  | 1.74, 0.01, 0.68, 0.00 |
| TextBox | CATEGORY_CODE |  | ID |  |  | 0.00, 0.00, 0.76, 0.18 |
| TextBox | STORED_FOR_ASSOCIATE |  | STORED_FOR_ASSOCIATE |  |  | 0.75, 0.00, 0.58, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line42 |  |  |  |  | 0.00, 0.00, 7.71, 0.00 |
