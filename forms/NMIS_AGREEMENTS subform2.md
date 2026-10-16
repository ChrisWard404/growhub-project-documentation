# Form: NMIS_AGREEMENTS subform2

**Caption:** NMIS_SPECIES_PRODUCTS subform3  
**Record source:**

```sql
SELECT NMIS_SPECIES_PRODUCTS.CN, NMIS_SPECIES_PRODUCTS.SPECIES_PRODUCT_DESC, NMIS_SPECIES_PRODUCTS.TOTAL_NUMBER_OF_FY, NMIS_SPECIES_PRODUCTS.SPEC_MIN, NMIS_SPECIES_PRODUCTS.SPEC_MAX, NMIS_SPECIES_PRODUCTS.CALIPER_MIN, NMIS_SPECIES_PRODUCTS.BEGIN_SEASON_CODE, NMIS_SPECIES_PRODUCTS.END_SEASON_CODE, NMIS_SPECIES_PRODUCTS.UNIT_CODE, NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL, NMIS_PRODUCTS.PRODUCT_DESC FROM NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON NMIS_PRODUCTS.CN=NMIS_SPECIES_PRODUCTS.PRODUCT_CN;
```

**Backend tables referenced:** `NMIS_PRODUCTS`, `NMIS_SEASONS`, `NMIS_SPECIES_PRODUCTS`, `NMIS_UNITS`  
**Embedded in:** `Form:NMIS_AGREEMENTS_bu`, `Form:NMIS_AGREEMENTS_old Subform`, `Form:NMIS_AGREEMENTS_w_lot_lookup`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CN |  | CN |  |  | 0.83, 0.04, 0.67, 0.00 |
| TextBox | SPECIES_PRODUCT_DESC |  | SPECIES_PRODUCT_DESC |  |  | 0.74, 0.75, 3.63, 0.20 |
| TextBox | TOTAL_NUMBER_OF_FY |  | TOTAL_NUMBER_OF_FY |  |  | 0.12, 1.48, 0.45, 0.20 |
| TextBox | SPEC_MIN |  | SPEC_MIN |  |  | 2.67, 1.48, 0.51, 0.20 |
| TextBox | SPEC_MAX |  | SPEC_MAX |  |  | 3.23, 1.48, 0.53, 0.20 |
| TextBox | CALIPER_MIN |  | CALIPER_MIN |  |  | 3.81, 1.48, 0.59, 0.20 |
| ComboBox | BEGIN_SEASON_CODE |  | BEGIN_SEASON_CODE | SELECT NMIS_SEASONS.SEASON_CODE, NMIS_SEASONS.SEASON_DESC FROM NMIS_SEASONS;  |  | 1.52, 1.48, 0.55, 0.20 |
| ComboBox | END_SEASON_CODE |  | END_SEASON_CODE | SELECT NMIS_SEASONS.SEASON_CODE, NMIS_SEASONS.SEASON_DESC FROM NMIS_SEASONS;  |  | 2.12, 1.48, 0.52, 0.20 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="AMT"));  |  | 0.65, 1.48, 0.80, 0.20 |
| Label | SPECIES_PRODUCT_DESC_Label | Species Product Description |  |  |  | 0.10, 0.53, 4.27, 0.20 |
| Label | BEGIN_SEASON_CODE_Label | Begin |  |  |  | 1.52, 1.23, 0.55, 0.20 |
| Label | END_SEASON_CODE_Label | End |  |  |  | 2.12, 1.23, 0.52, 0.20 |
| Label | Label20 | Season |  |  |  | 1.52, 1.02, 1.11, 0.20 |
| Label | Label28 | Fiscal Years |  |  |  | 0.12, 1.02, 0.47, 0.43 |
| Label | SPEC_MIN_Label | Ht. Min |  |  |  | 2.67, 1.23, 0.51, 0.20 |
| Label | SPEC_MAX_Label |  Ht.Max |  |  |  | 3.23, 1.23, 0.54, 0.20 |
| Label | CALIPER_MIN_Label | Cal. Min  |  |  |  | 3.81, 1.23, 0.61, 0.20 |
| Label | Label21 | Specifiations |  |  |  | 2.67, 1.02, 1.74, 0.20 |
| Label | UNIT_CODE_Label | Unit |  |  |  | 0.65, 1.02, 0.82, 0.42 |
| TextBox | SPECIES_PRODUCT_CN |  | SPECIES_PRODUCT_CN |  |  | 3.62, 0.08, 0.78, 0.00 |
| TextBox | PRODUCT_DESC | Product Description | PRODUCT_DESC |  |  | 0.10, 0.25, 4.27, 0.20 |
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 0.10, 0.75, 0.58, 0.20 |
