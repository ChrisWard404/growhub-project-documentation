# Report: NMIS_UNITS_Checklist

**Caption:** NMIS_UNITS_Checklist  
**Record source:**

```sql
NMIS_UNITS
```

**Grouping/sorting:** `UNIT_TYPE`, `UNIT_CODE`  
**Backend tables referenced:** `NMIS_UNITS`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.22, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.00, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.00, 0.00, 3.24, 0.16 |
| Label | Label24 | NMIS Units Checklist |  |  |  | 2.77, 0.57, 1.71, 0.23 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | UNIT_CODE_Label | Unit Code |  |  |  | 0.03, 0.21, 0.67, 0.23 |
| Label | UNIT_MULTIPLIER_Label | Multiplier |  |  |  | 6.45, 0.22, 0.72, 0.23 |
| Label | UNIT_DESC_Label | Unit Description |  |  |  | 0.79, 0.21, 1.57, 0.23 |
| Label | CELL_DIMENSIONS_Label | Cell Dimensions |  |  |  | 3.05, 0.22, 1.47, 0.23 |
| Label | CELLS_PER_CONTAINER_Label | Cells/ Container |  |  |  | 4.78, 0.01, 0.70, 0.43 |
| Line | Line16 |  |  |  |  | 0.03, 0.00, 7.30, 0.00 |
| Line | Line17 |  |  |  |  | 0.02, 0.46, 7.30, 0.00 |
| Label | Label20 | Sq Ft/ Container |  |  |  | 5.59, 0.01, 0.71, 0.43 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box20 |  |  |  |  | 0.00, 0.00, 7.33, 0.21 |
| TextBox | UNIT_TYPE |  | UNIT_TYPE |  |  | 0.05, 0.02, 0.72, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 0.05, 0.00, 0.61, 0.17 |
| TextBox | UNIT_MULTIPLIER |  | UNIT_MULTIPLIER |  |  | 6.53, 0.00, 0.48, 0.17 |
| TextBox | UNIT_DESC |  | UNIT_DESC |  |  | 0.90, 0.00, 2.16, 0.17 |
| TextBox | CELL_DIMENSIONS |  | CELL_DIMENSIONS |  |  | 3.11, 0.00, 1.77, 0.17 |
| TextBox | CELLS_PER_CONTAINER |  | CELLS_PER_CONTAINER |  |  | 4.91, 0.00, 0.50, 0.17 |
| TextBox | Text21 |  | AREA_PER_CONTAINER |  |  | 5.58, 0.00, 0.62, 0.17 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text13 |  | =Now() |  |  | 0.07, 0.17, 3.17, 0.00 |
| TextBox | Text14 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.10, 0.17, 3.17, 0.00 |
