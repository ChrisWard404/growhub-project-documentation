# Form: NMIS_UNIT_DRILL_ROWS subform

**Caption:** NMIS_UNIT_DRILL_ROWS subform  
**Record source:**

```sql
SELECT [NMIS_UNIT_DRILL_ROWS].[UNIT_CODE], [NMIS_UNIT_DRILL_ROWS].[DRILL_ROWS] FROM [NMIS_UNIT_DRILL_ROWS]
```

**Backend tables referenced:** `NMIS_UNIT_DRILL_ROWS`  
**Embedded in:** `Form:Field_Form_Plants_For_Inventory_Sizing`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label4 | Unit Code |  |  |  | 0.12, 0.05, 0.61, 0.19 |
| Label | Label5 | Drill Rows |  |  |  | 0.83, 0.05, 0.64, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 0.12, 0.03, 0.62, 0.19 |
| TextBox | DRILL_ROWS |  | DRILL_ROWS |  |  | 0.83, 0.03, 0.66, 0.19 |
