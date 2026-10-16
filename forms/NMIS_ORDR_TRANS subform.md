# Form: NMIS_ORDR_TRANS subform

**Caption:** NMIS_ORDR_TRANS subform  
**Record source:**

```sql
NMIS_TRANSACTIONS
```

**Backend tables referenced:** `NMIS_TRANSACTIONS`  
**Embedded in:** `Form:NMIS_ORDER_ACT-TRANS-LOC`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_LOCATION_CN_Label | ID Location CN |  |  |  | 0.04, 0.04, 0.90, 0.16 |
| Label | ID_ACTIVITY_CN_Label | ID Activity CN |  |  |  | 1.00, 0.04, 0.90, 0.16 |
| Label | NUMBER_OF_ACTIVITY_UNITS_Label | # Units |  |  |  | 1.96, 0.04, 0.54, 0.16 |
| Label | AMT_PER_UNIT_Label | Net Density |  |  |  | 2.54, 0.04, 0.75, 0.16 |
| Label | AMT_PER_UNIT_INV_GROSS_Label | Gross Dens. |  |  |  | 3.33, 0.04, 0.75, 0.16 |
| Label | CONTRACT_ITEM_Label | C Item |  |  |  | 4.12, 0.04, 0.42, 0.16 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 3.08, 0.00, 0.46, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID_LOCATION_CN |  | ID_LOCATION_CN |  |  | 0.04, 0.04, 0.90, 0.19 |
| TextBox | ID_ACTIVITY_CN |  | ID_ACTIVITY_CN |  |  | 1.00, 0.04, 0.90, 0.19 |
| TextBox | NUMBER_OF_ACTIVITY_UNITS |  | NUMBER_OF_ACTIVITY_UNITS |  |  | 1.96, 0.04, 0.54, 0.19 |
| TextBox | AMT_PER_UNIT |  | AMT_PER_UNIT |  |  | 2.54, 0.04, 0.75, 0.19 |
| TextBox | AMT_PER_UNIT_INV_GROSS |  | AMT_PER_UNIT_INV_GROSS |  |  | 3.33, 0.04, 0.75, 0.19 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 4.12, 0.04, 0.42, 0.19 |
