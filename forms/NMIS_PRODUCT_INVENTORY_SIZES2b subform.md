# Form: NMIS_PRODUCT_INVENTORY_SIZES2b subform

**Caption:** NMIS_PRODUCT_INVENTORY_SIZES subform  
**Record source:**

```sql
SELECT NMIS_PRODUCT_INVENTORY_SIZES.SAMPLE_NO, NMIS_PRODUCT_INVENTORY_SIZES.HEIGHT, NMIS_PRODUCT_INVENTORY_SIZES.CALIPER, NMIS_PRODUCT_INVENTORY_SIZES.COUNT, NMIS_PRODUCT_INVENTORY_SIZES.ID_ACTIVITY_CN FROM NMIS_PRODUCT_INVENTORY_SIZES ORDER BY NMIS_PRODUCT_INVENTORY_SIZES.SAMPLE_NO, NMIS_PRODUCT_INVENTORY_SIZES.HEIGHT, NMIS_PRODUCT_INVENTORY_SIZES.CALIPER;
```

**Backend tables referenced:** `NMIS_PRODUCT_INVENTORY_SIZES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | SAMPLE_NO_Label | Sample # |  |  |  | 0.04, 0.05, 0.75, 0.20 |
| Label | HEIGHT_Label | Height |  |  |  | 0.86, 0.05, 0.60, 0.20 |
| Label | CALIPER_Label | Caliper |  |  |  | 1.56, 0.05, 0.60, 0.20 |
| TextBox | ID_ACTIVITY_CN |  | ID_ACTIVITY_CN |  |  | 1.17, 0.05, 0.62, 0.16 |
| Label | COUNT_label | Count |  |  |  | 2.25, 0.04, 0.62, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SAMPLE_NO |  | SAMPLE_NO |  |  | 0.04, 0.03, 0.75, 0.20 |
| TextBox | HEIGHT |  | HEIGHT |  |  | 0.86, 0.03, 0.60, 0.20 |
| TextBox | CALIPER |  | CALIPER |  |  | 1.56, 0.03, 0.60, 0.20 |
| TextBox | COUNT |  | COUNT |  |  | 2.26, 0.03, 0.60, 0.20 |
