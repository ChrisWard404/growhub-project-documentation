# Form: NMIS_SPECIES_PRODUCTS Subform2

**Caption:** NMIS_SPECIES_PRODUCTS1  
**Record source:**

```sql
NMIS_SPECIES_PRODUCTS
```

**Backend tables referenced:** `NMIS_SEASONS`, `NMIS_SPECIES`, `NMIS_SPECIES_PRODUCTS`, `NMIS_UNITS`  
**Subforms/subreports:** `Form.NMIS_SPECIES_PRODUCT_CYCLES Subform`  
**Embedded in:** `Form:NMIS_SPECIES_PRODUCTS`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CN | CN | CN |  |  | 0.54, 0.08, 0.50, 0.20 |
| TextBox | SPECIES_PRODUCT_DESC | Description | SPECIES_PRODUCT_DESC |  |  | 5.04, 0.08, 1.96, 0.20 |
| TextBox | TOTAL_NUMBER_OF_FY | # of Fiscal Years | TOTAL_NUMBER_OF_FY |  |  | 1.46, 0.46, 0.54, 0.20 |
| TextBox | SPEC_MIN | Hgt Min | SPEC_MIN |  |  | 0.80, 1.38, 0.50, 0.20 |
| TextBox | SPEC_MAX | Hgt Max | SPEC_MAX |  |  | 1.34, 1.38, 0.50, 0.20 |
| TextBox | CALIPER_MIN | Cal Min | CALIPER_MIN |  |  | 1.88, 1.38, 0.50, 0.20 |
| TextBox | DRILL_FUNNEL_SETTING | FunnelSetting | DRILL_FUNNEL_SETTING |  |  | 2.88, 1.38, 0.50, 0.20 |
| TextBox | DRILL_MIN_REV_UNITS | Min Rev Units | DRILL_MIN_REV_UNITS |  |  | 3.42, 1.38, 0.50, 0.20 |
| TextBox | DRILL_MAX_REV_UNITS | Max Rev Units | DRILL_MAX_REV_UNITS |  |  | 3.97, 1.38, 0.50, 0.20 |
| ComboBox | PLNTMSTR_SYMBOL | Species Symbol | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.VERNACULAR FROM NMIS_SPECIES;  |  | 5.21, 0.46, 0.79, 0.20 |
| ComboBox | BEGIN_SEASON_CODE | Begin | BEGIN_SEASON_CODE | SELECT NMIS_SEASONS.SEASON_CODE, NMIS_SEASONS.SEASON_DESC FROM NMIS_SEASONS;  |  | 4.96, 1.38, 0.50, 0.20 |
| ComboBox | END_SEASON_CODE | End | END_SEASON_CODE | SELECT NMIS_SEASONS.SEASON_CODE, NMIS_SEASONS.SEASON_DESC FROM NMIS_SEASONS;  |  | 5.50, 1.38, 0.50, 0.20 |
| ComboBox | UNIT_CODE | Unit Code | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS;  |  | 3.21, 0.46, 0.50, 0.20 |
| TextBox | PRODUCT_CN | Product CN | PRODUCT_CN |  |  | 2.17, 0.08, 0.50, 0.20 |
| Label | Label30 | Specifications |  |  |  | 0.25, 0.79, 2.14, 0.17 |
| Label | Label31 | Drill |  |  |  | 2.88, 0.79, 1.60, 0.17 |
| Label | Label32 | Seasons |  |  |  | 4.96, 0.79, 1.04, 0.29 |
| Subform | NMIS_SPECIES_PRODUCT_CYCLES | Species Product Cycles | Form.NMIS_SPECIES_PRODUCT_CYCLES Subform (master: CN;CN → child: CURRENT_PRODUCT_CN;SPECIES_PRODUCT_CN) |  |  | 0.12, 2.00, 6.97, 2.00 |
| ComboBox | SPECS_UNIT_CODE | Unit Code | SPECS_UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS;  |  | 0.25, 1.38, 0.50, 0.20 |
