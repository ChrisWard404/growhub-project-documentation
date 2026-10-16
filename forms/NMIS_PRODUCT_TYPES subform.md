# Form: NMIS_PRODUCT_TYPES subform

**Caption:** NMIS_PRODUCT_TYPES subform  
**Record source:**

```sql
NMIS_PRODUCT_TYPES
```

**Backend tables referenced:** `NMIS_PRODUCT_TYPES`  
**Embedded in:** `Form:NMIS_PRODUCTS`, `Form:NMIS_PRODUCTS_Unlocked`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | PRODUCT_TYPE_Label | Type |  |  |  | 0.04, 0.04, 0.58, 0.20 |
| Label | PRODUCT_TYPE_DESC_Label | Description |  |  |  | 0.71, 0.04, 1.76, 0.20 |
| Label | Label5 | Group |  |  |  | 2.51, 0.04, 0.78, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_TYPE |  | PRODUCT_TYPE |  |  | 0.04, 0.03, 0.58, 0.21 |
| TextBox | PRODUCT_TYPE_DESC |  | PRODUCT_TYPE_DESC |  |  | 0.71, 0.03, 1.76, 0.21 |
| TextBox | PRODUCT_GROUP |  | PRODUCT_GROUP |  |  | 2.51, 0.03, 0.77, 0.21 |
