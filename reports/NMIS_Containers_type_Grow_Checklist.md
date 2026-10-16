# Report: NMIS_Containers_type_Grow_Checklist

**Caption:** NMIS_Grow_Containers_Checklist  
**Record source:**

```sql
SELECT NMIS_UNITS.* FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="g"));
```

**Grouping/sorting:** `UNIT_CODE`  
**Backend tables referenced:** `NMIS_UNITS`  
**Opened from (VBA):** `Form_Reports_Menu_Maintenance Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | UNIT_CODE_Label | Unit Code |  |  |  | 0.02, 1.04, 0.67, 0.23 |
| Label | UNIT_MULTIPLIER_Label | Multiplier |  |  |  | 6.55, 1.05, 0.72, 0.23 |
| Label | UNIT_DESC_Label | Unit Description |  |  |  | 0.72, 1.04, 1.73, 0.23 |
| Label | CELL_DIMENSIONS_Label | Cell Dimensions |  |  |  | 2.86, 1.04, 1.57, 0.23 |
| Label | CELLS_PER_CONTAINER_Label | Cells/ Container |  |  |  | 4.80, 0.84, 0.71, 0.43 |
| Line | Line16 |  |  |  |  | 0.00, 0.83, 7.30, 0.00 |
| Line | Line17 |  |  |  |  | 0.00, 1.28, 7.30, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.20, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 1.98, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 1.98, 0.00, 3.24, 0.16 |
| Label | Label24 | NMIS Grow Containers |  |  |  | 2.67, 0.57, 1.86, 0.23 |
| Label | Label20 | Sq Ft/ Container |  |  |  | 5.56, 0.84, 0.71, 0.43 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 0.10, 0.00, 0.56, 0.17 |
| TextBox | UNIT_MULTIPLIER |  | UNIT_MULTIPLIER |  |  | 6.59, 0.00, 0.48, 0.17 |
| TextBox | UNIT_DESC |  | UNIT_DESC |  |  | 0.97, 0.00, 1.88, 0.17 |
| TextBox | CELL_DIMENSIONS |  | CELL_DIMENSIONS |  |  | 2.88, 0.00, 1.90, 0.17 |
| TextBox | CELLS_PER_CONTAINER |  | CELLS_PER_CONTAINER |  |  | 4.80, 0.00, 0.60, 0.17 |
| TextBox | Text21 |  | AREA_PER_CONTAINER |  |  | 5.55, 0.00, 0.62, 0.17 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text13 |  | =Now() |  |  | 0.05, 0.17, 3.17, 0.00 |
| TextBox | Text14 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.08, 0.17, 3.17, 0.00 |
