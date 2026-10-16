# Form: NMIS_PACK_ACTIVITIES subform

**Caption:** NMIS_PACK_Activities subform  
**Record source:**

```sql
NMIS_PACK_Q
```

**Embedded in:** `Form:NMIS_PROCESSING_ORDERS_CLI subform`, `Form:NMIS_PROCESSING_ORDERS_ID subform`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | AMOUNT_Label | Amount |  |  |  | 3.01, 0.03, 0.55, 0.20 |
| Label | UNIT_CODE_Label | Unit |  |  |  | 3.62, 0.03, 0.40, 0.20 |
| Label | CONTRACT_ITEM_Label | C Item |  |  |  | 1.27, 0.03, 0.50, 0.20 |
| Label | ACTIVITY_CODE_Label | Activity |  |  |  | 0.62, 0.03, 0.61, 0.20 |
| Label | ACTIVITY_DATE_Label | Date |  |  |  | 0.04, 0.03, 0.56, 0.20 |
| Label | ACTIVITY_UNIT_Label | # Units |  |  |  | 1.79, 0.03, 0.50, 0.20 |
| Label | AMT_PER_UNIT_Label | Amt/Unit |  |  |  | 2.35, 0.03, 0.62, 0.20 |
| TextBox | CN |  | ORDERS_CN |  |  | 2.53, 0.00, 0.62, 0.00 |
| Label | CONTAINER_Label | Container |  |  |  | 4.04, 0.04, 0.71, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date |  | ACTIVITY_DATE |  |  | 0.04, 0.03, 0.56, 0.20 |
| TextBox | Unit |  | AGR_UNIT |  |  | 3.62, 0.03, 0.40, 0.20 |
| TextBox | AMOUNT |  | AMOUNT |  |  | 3.01, 0.03, 0.55, 0.20 |
| TextBox | ACTIVITY_UNITS |  | NO_UNITS |  |  | 1.79, 0.03, 0.51, 0.20 |
| TextBox | AMT_PER_UNIT |  | PER_UNIT |  |  | 2.35, 0.03, 0.62, 0.20 |
| TextBox | ACT_CODE |  | ACT_CODE |  |  | 0.62, 0.03, 0.61, 0.20 |
| TextBox | Cntr Item |  | CONTRACT_ITEM |  |  | 1.28, 0.03, 0.50, 0.20 |
| TextBox | CONTAINER |  | CONTAINER |  |  | 4.04, 0.03, 0.71, 0.20 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | TOTAL | Total: | =Sum([AMOUNT]) |  |  | 3.01, 0.03, 0.55, 0.20 |
| TextBox | Index |  | Index |  |  | 0.54, 0.03, 0.50, 0.00 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 0.08, 0.03, 0.42, 0.00 |
