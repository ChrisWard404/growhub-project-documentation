# Form: Agreement_Lot_Total_Containers subform

**Caption:** Agreement_Lot_Total_Containers subform  
**Record source:**

```sql
SELECT Agreement_Lot_Total_Containers_Grow.Agreement_Lot_CN, Agreement_Lot_Total_Containers_Grow.Total_Containers FROM Agreement_Lot_Total_Containers_Grow WHERE (((Agreement_Lot_Total_Containers_Grow.Agreement_Lot_CN)=[Forms]![NMIS_PRODUCT_INVENTORIES]![CN]));
```

**Backend tables referenced:** `NMIS_PRODUCT_INVENTORIES`  
**Embedded in:** `Form:**********dbdNMIS_PRODUCT_INVENTORIES`, `Form:NMIS_PRODUCT_INVENTORIES`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Total_Containers |  | Total_Containers |  |  | 1.71, 0.03, 0.62, 0.21 |
| Label | Label56 | Total Grow Containers: |  |  |  | 0.06, 0.03, 1.58, 0.21 |
