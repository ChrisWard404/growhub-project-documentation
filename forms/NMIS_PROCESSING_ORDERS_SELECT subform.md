# Form: NMIS_PROCESSING_ORDERS_SELECT subform

**Caption:** NMIS_ORDERS_SELECTION subform  
**Record source:**

```sql
NMIS_PROCESSING_ORDERS_SELECTION
```

**Embedded in:** `Form:NMIS_PROCESSING_ORDERS_BY_CLIENT`, `Form:NMIS_PROCESSING_ORDERS_BY_ID`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_Label | Agreement Lot ID |  |  |  | 0.04, 0.04, 1.29, 0.19 |
| Label | ASSOCIATE_Label | Associate |  |  |  | 1.79, 0.04, 0.60, 0.19 |
| Label | ORDER ID_Label | Order ID |  |  |  | 2.41, 0.04, 0.57, 0.19 |
| Label | ORDER CODE_Label | Order Code |  |  |  | 3.01, 0.04, 0.65, 0.19 |
| Label | ORDER AMT_Label | Order Amt |  |  |  | 3.68, 0.04, 0.60, 0.19 |
| TextBox | LOT_CN |  | LOT_CN |  |  | 4.98, 0.04, 0.62, 0.21 |
| TextBox | ORDER_CN |  | ORDER_CN |  |  | 4.31, 0.04, 0.62, 0.21 |
| Label | Label15 | FY |  |  |  | 1.42, 0.04, 0.35, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 0.04, 0.00, 1.29, 0.20 |
| TextBox | ASSOCIATE |  | ASSOCIATE |  |  | 1.79, 0.00, 0.60, 0.20 |
| TextBox | ORDER ID |  | ORDER ID |  |  | 2.41, 0.00, 0.57, 0.20 |
| TextBox | ORDER CODE |  | ORDER CODE |  |  | 3.01, 0.00, 0.65, 0.20 |
| TextBox | ORDER AMT |  | ORDER AMT |  |  | 3.68, 0.00, 0.60, 0.20 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 1.42, 0.00, 0.35, 0.20 |
