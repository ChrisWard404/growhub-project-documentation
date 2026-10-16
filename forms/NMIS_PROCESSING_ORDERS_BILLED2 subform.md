# Form: NMIS_PROCESSING_ORDERS_BILLED2 subform

**Caption:** NMIS_PROCESSING_ORDERS_BILLED2 subform  
**Record source:**

```sql
NMIS_ORDERS_BILLED
```

**Backend tables referenced:** `NMIS_ORDERS_BILLED`  
**Embedded in:** `Form:NMIS_PROCESSING_ORDERS_BILLED`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | BILLED_Label | Billed |  |  |  | 0.04, 0.04, 0.43, 0.17 |
| Label | ORDER_CN_Label | Order CN |  |  |  | 0.52, 0.04, 0.98, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| CheckBox | BILLED |  | BILLED |  |  | 0.21, 0.04, 0.00, 0.00 |
| TextBox | ORDER_CN |  | ORDER_CN |  |  | 0.52, 0.04, 0.98, 0.00 |
