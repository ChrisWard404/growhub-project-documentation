# Report: LIFT_FIELD_CONTAINER_DENSITY_PACK

**Caption:** LIFT_FIELD_CONTAINER_DENSITY  
**Record source:**

```sql
LIFT_CONTAINER_DENSITY_PACK Query
```

**Grouping/sorting:** `ACTIVITY_DATE`, `ID`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label10 | Field Container Density |  |  |  | 2.96, 0.58, 1.71, 0.18 |
| TextBox | NURSERY |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.04, 0.38, 3.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.54, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.42, 0.17, 2.78, 0.20 |
| Label | ID_Label | ID |  |  |  | 0.42, 1.12, 0.96, 0.17 |
| Label | UNIT_CODE_Label | Unit Code |  |  |  | 1.38, 1.12, 0.82, 0.17 |
| Label | NUMBER_OF_ACTIVITY_UNITS_Label | # Of Activity Units |  |  |  | 2.25, 1.12, 1.53, 0.17 |
| Label | AMT_PER_UNIT_Label | Amt/Unit Net |  |  |  | 3.79, 1.12, 1.65, 0.17 |
| Label | AMT_PER_UNIT_INV_GROSS_Label | Amt/Unit Gross |  |  |  | 5.44, 1.12, 1.60, 0.17 |
| Line | Line15 |  |  |  |  | 0.38, 1.33, 6.75, 0.00 |
| TextBox | ACTIVITY_DATE | Packing Date: | ACTIVITY_DATE |  |  | 3.96, 0.79, 0.71, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 0.38, 0.00, 0.92, 0.00 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 1.29, 0.00, 0.82, 0.00 |
| TextBox | NUMBER_OF_ACTIVITY_UNITS |  | NUMBER_OF_ACTIVITY_UNITS |  |  | 2.17, 0.00, 1.53, 0.00 |
| TextBox | AMT_PER_UNIT |  | AMT_PER_UNIT |  |  | 3.71, 0.00, 1.65, 0.00 |
| TextBox | AMT_PER_UNIT_INV_GROSS |  | AMT_PER_UNIT_INV_GROSS |  |  | 5.36, 0.00, 1.60, 0.00 |
| Line | Line17 |  |  |  |  | 0.35, 0.21, 6.75, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text11 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.18 |
| TextBox | Text12 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.96, 0.17, 3.50, 0.18 |
