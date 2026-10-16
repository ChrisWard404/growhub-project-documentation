# Form: NMIS_SPECIES_PRODUCT_CYCLES Subform

**Caption:** NMIS_SPECIES_PRODUCT_CYCLES  
**Record source:**

```sql
NMIS_SPECIES_PRODUCT_CYCLES
```

**Backend tables referenced:** `NMIS_SPECIES_PRODUCT_CYCLES`  
**Embedded in:** `Form:NMIS_SPECIES_PRODUCTS Subform2`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | SPECIES_PRODUCT_CN_Label | Species Product CN |  |  |  | 0.04, 0.04, 0.62, 0.68 |
| Label | NUMBER_OF_FY_MIN_Label |  Min |  |  |  | 0.71, 0.46, 0.50, 0.25 |
| Label | NUMBER_OF_FY_MAX_Label | Max |  |  |  | 1.25, 0.46, 0.50, 0.25 |
| Label | CURRENT_SPECIES_PRODUCT_CN_Label | Current Species Product CN |  |  |  | 1.79, 0.04, 0.67, 0.68 |
| Label | CYCLE_REQUIRES_PROCESSING_Label | Cycle Requires Processing |  |  |  | 2.50, 0.04, 0.79, 0.67 |
| Label | INV_TARGET_PCT_Label | Target % |  |  |  | 3.33, 0.38, 0.50, 0.33 |
| Label | INV_FACTOR_1_Label | Factor 1 |  |  |  | 3.88, 0.38, 0.46, 0.33 |
| Label | INV_FACTOR_2_Label | Factor 2 |  |  |  | 4.38, 0.38, 0.46, 0.33 |
| Label | INV_FACTOR_3_Label | Factor 3 |  |  |  | 4.88, 0.38, 0.46, 0.33 |
| Label | INV_SIZE_SAMPLE_Label | Sample Size |  |  |  | 5.38, 0.38, 0.58, 0.33 |
| Label | INV_MAX_CV_Label | Max CV |  |  |  | 6.00, 0.38, 0.54, 0.33 |
| Label | N_of_FISCAL_YEARS | No. of Fiscal Years |  |  |  | 0.71, 0.04, 1.04, 0.38 |
| Label | Label23 | Inventory |  |  |  | 3.33, 0.04, 3.21, 0.29 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SPECIES_PRODUCT_CN |  | SPECIES_PRODUCT_CN |  |  | 0.04, 0.04, 0.62, 0.20 |
| TextBox | NUMBER_OF_FY_MIN |  | NUMBER_OF_FY_MIN |  |  | 0.71, 0.04, 0.50, 0.20 |
| TextBox | NUMBER_OF_FY_MAX |  | NUMBER_OF_FY_MAX |  |  | 1.25, 0.04, 0.50, 0.20 |
| TextBox | CURRENT_SPECIES_PRODUCT_CN |  | CURRENT_PRODUCT_CN |  |  | 1.79, 0.04, 0.67, 0.20 |
| CheckBox | CYCLE_REQUIRES_PROCESSING |  | CYCLE_REQUIRES_PROCESSING |  |  | 2.79, 0.04, 0.00, 0.00 |
| TextBox | INV_TARGET_PCT |  | INV_TARGET_PCT |  |  | 3.33, 0.04, 0.50, 0.20 |
| TextBox | INV_FACTOR_1 |  | INV_FACTOR_1 |  |  | 3.88, 0.04, 0.46, 0.20 |
| TextBox | INV_FACTOR_2 |  | INV_FACTOR_2 |  |  | 4.38, 0.04, 0.46, 0.20 |
| TextBox | INV_FACTOR_3 |  | INV_FACTOR_3 |  |  | 4.88, 0.04, 0.46, 0.20 |
| TextBox | INV_SIZE_SAMPLE |  | INV_SIZE_SAMPLE |  |  | 5.38, 0.04, 0.58, 0.20 |
| TextBox | INV_MAX_CV |  | INV_MAX_CV |  |  | 6.00, 0.04, 0.54, 0.20 |
