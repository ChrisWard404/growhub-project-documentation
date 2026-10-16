# Form: NMIS_UNIT_MULTIPLIER

**Caption:** NMIS_UNIT_MULTIPLIER  
**Record source:**

```sql
SELECT [NMIS_ID_LOCATIONS].[CN], [NMIS_UNITS].[UNIT_MULTIPLIER] FROM NMIS_UNITS INNER JOIN NMIS_ID_LOCATIONS ON [NMIS_UNITS].[UNIT_CODE]=[NMIS_ID_LOCATIONS].[UNIT_CODE];
```

**Backend tables referenced:** `NMIS_ID_LOCATIONS`, `NMIS_UNITS`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CN_Label | CN |  |  |  | 0.04, 0.04, 2.02, 0.19 |
| Label | UNIT_MULTIPLIER_Label | Unit Multiplier |  |  |  | 2.10, 0.04, 1.02, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CN |  | CN |  |  | 0.04, 0.04, 0.54, 0.17 |
| TextBox | UNIT_MULTIPLIER |  | UNIT_MULTIPLIER |  |  | 0.79, 0.04, 0.38, 0.17 |
