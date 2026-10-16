# Form: NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform

**Caption:** NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform  
**Record source:**

```sql
SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE FROM NMIS_ACTIVITY_CODES;
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`  
**Embedded in:** `Form:**********dbdNMIS_PRODUCT_INVENTORIES`, `Form:NMIS_PRODUCT_INVENTORIES`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_CODE | Activity Code | ACTIVITY_CODE |  |  | 1.38, 0.08, 0.57, 0.19 |
| TextBox | PARENT_ACTIVITY_CODE | Parent Activity Code | PARENT_ACTIVITY_CODE |  |  | 1.38, 0.33, 0.61, 0.19 |
