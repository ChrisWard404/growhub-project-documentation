# Form: Agreement_Lot_Inventory_Factors_For_Cycle subform

**Caption:** Agreement_Lot_Inventory_Factors_For_Cycle subform  
**Record source:**

```sql
SELECT Agreement_Lot_Inventory_Factors_For_Cycle_Table.CN, Agreement_Lot_Inventory_Factors_For_Cycle_Table.INV_SIZE_SAMPLE, Agreement_Lot_Inventory_Factors_For_Cycle_Table.UNIT, NMIS_UNITS.CELLS_PER_CONTAINER, NMIS_UNITS.INV_SAMPLES_PER_CONTAINER FROM Agreement_Lot_Inventory_Factors_For_Cycle_Table LEFT JOIN NMIS_UNITS ON Agreement_Lot_Inventory_Factors_For_Cycle_Table.UNIT = NMIS_UNITS.UNIT_CODE WHERE (((Agreement_Lot_Inventory_Factors_For_Cycle_Table.CN)=[Forms]![NMIS_PRODUCT_INVENTORIES]![CN]));
```

**Backend tables referenced:** `NMIS_PRODUCT_INVENTORIES`, `NMIS_UNITS`  
**Embedded in:** `Form:NMIS_PRODUCT_INVENTORIES`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | INV_SIZE_SAMPLE |  |  | 0.61, 0.04, 0.33, 0.19 |
| Label | Gross_Density_Label | To Size: |  |  |  | 0.04, 0.04, 0.51, 0.19 |
| TextBox | INV_SAMPLES_PER_CONTAINER |  | INV_SAMPLES_PER_CONTAINER |  |  | 1.75, 0.04, 0.33, 0.19 |
| TextBox | CELLS_PER_CONTAINER |  | CELLS_PER_CONTAINER |  |  | 1.38, 0.04, 0.33, 0.19 |
| TextBox | UNIT |  | UNIT |  |  | 1.00, 0.04, 0.33, 0.19 |
