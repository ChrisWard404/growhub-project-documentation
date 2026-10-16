# Form: Agreement_Lot_Default_Factors_For_Cycle subform

**Caption:** Agreement_Lot_Default_Factorsr_For_Cycle subform  
**Record source:**

```sql
SELECT Agreement_Lot_Default_Container_For_Cycle.CN, Agreement_Lot_Default_Container_For_Cycle.Current_Cycle, Agreement_Lot_Default_Container_For_Cycle.AGE_STRING, Agreement_Lot_Default_Container_For_Cycle.INV_FACTOR_1, Agreement_Lot_Default_Container_For_Cycle.INV_FACTOR_2, Agreement_Lot_Default_Container_For_Cycle.INV_FACTOR_3, Agreement_Lot_Default_Container_For_Cycle.INV_SIZE_SAMPLE, Agreement_Lot_Default_Container_For_Cycle.INV_MAX_CV, Agreement_Lot_Default_Container_For_Cycle.INV_TARGET_PCT, NMIS_UNITS.CELLS_PER_CONTAINER, NMIS_UNITS.INV_SAMPLES_PER_CONTAINER, Agreement_Lot_Default_Container_For_Cycle.INV_1_FACTOR_CODE, Agreement_Lot_Default_Container_For_Cycle.INV_2_FACTOR_CODE, Agreement_Lot_Default_Container_For_Cycle.INV_3_FACTOR_CODE, IIf([unit]="SB" Or [UNIT] Like "TB?" Or [UNIT]="TB",Round(12/[INV_SAMPLES_PER_CONTAINER],0) & '" X 4' & "'",[INV_SAMPLES_PER_CONTAINER] & ' ' & [UNIT]) AS Plot_Size FROM Agreement_Lot_Default_Container_For_Cycle LEFT JOIN NMIS_UNITS ON Agreement_Lot_Default_Container_For_Cycle.UNIT = NMIS_UNITS.UNIT_CODE;
```

**Backend tables referenced:** `NMIS_UNITS`  
**Embedded in:** `Form:**********dbdNMIS_PRODUCT_INVENTORIES`, `Form:NMIS_PRODUCT_INVENTORIES`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Current_Cycle | Current_Cycle | Current_Cycle |  |  | 1.21, 0.09, 0.67, 0.18 |
| TextBox | AGE_STRING | AGE_STRING | AGE_STRING |  |  | 1.21, 0.34, 1.29, 0.18 |
| TextBox | INV_FACTOR_1 | Inv Factor 1 | INV_FACTOR_1 |  |  | 1.21, 0.59, 0.82, 0.19 |
| TextBox | INV_FACTOR_2 | Inv Factor 2 | INV_FACTOR_2 |  |  | 1.21, 0.84, 0.82, 0.19 |
| TextBox | INV_FACTOR_3 | Inv Factor 3 | INV_FACTOR_3 |  |  | 1.21, 1.09, 0.82, 0.19 |
| TextBox | INV_SIZE_SAMPLE | Inv Sample Size | INV_SIZE_SAMPLE |  |  | 1.21, 1.34, 0.82, 0.19 |
| TextBox | INV_MAX_CV | Inv Max CV | INV_MAX_CV |  |  | 1.21, 1.60, 0.83, 0.21 |
| TextBox | INV_TARGET_PCT | Inv Target % | INV_TARGET_PCT |  |  | 1.21, 1.84, 0.82, 0.19 |
| TextBox | INV_SAMPLES_PER_CONTAINER | Inv Samples/Container: | INV_SAMPLES_PER_CONTAINER |  |  | 1.67, 2.10, 0.54, 0.00 |
| TextBox | INV_1_FACTOR_CODE |  | INV_1_FACTOR_CODE |  |  | 2.09, 0.59, 0.62, 0.19 |
| TextBox | INV_2_FACTOR_CODE |  | INV_2_FACTOR_CODE |  |  | 2.09, 0.84, 0.62, 0.19 |
| TextBox | Text23 |  | INV_3_FACTOR_CODE |  |  | 2.09, 1.09, 0.62, 0.19 |
| TextBox | Plot_Size | Plot Size | Plot_Size |  |  | 1.21, 2.33, 0.82, 0.19 |
