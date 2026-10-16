# Form: NMIS_AGREEMENT_LOTS subform

**Caption:** NMIS_AGREEMENT_LOTS subform  
**Record source:**

```sql
SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN, NMIS_SPECIES_PRODUCTS.SPEC_MIN, NMIS_SPECIES_PRODUCTS.SPEC_MAX, NMIS_SPECIES_PRODUCTS.CALIPER_MIN, NMIS_AGREEMENT_LOTS.TOTAL_REQUEST, NMIS_SPECIES_PRODUCTS.SPEC_MIN_ALT, NMIS_SPECIES_PRODUCTS.SPEC_MAX_ALT, NMIS_SPECIES_PRODUCTS.CALIPER_MIN_ALT FROM NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN;
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_SPECIES_PRODUCTS`  
**Embedded in:** `Form:**********dbdNMIS_PRODUCT_INVENTORIES`, `Form:NMIS_PRODUCT_INVENTORIES`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CN |  | CN |  |  | 0.12, 0.32, 0.67, 0.19 |
| TextBox | SPEC_MIN | Spec Min: | SPEC_MIN |  |  | 1.25, 0.32, 0.38, 0.21 |
| TextBox | SPEC_MAX | Spec Max: | SPEC_MAX |  |  | 1.25, 0.57, 0.38, 0.21 |
| TextBox | CALIPER_MIN | Caliper Min: | CALIPER_MIN |  |  | 1.25, 0.82, 0.39, 0.21 |
| TextBox | TOTAL_REQUEST | Total Request: | TOTAL_REQUEST |  |  | 1.25, 1.09, 0.50, 0.00 |
| Label | Label11 | Std. |  |  |  | 1.27, 0.08, 0.38, 0.19 |
| TextBox | SPEC_MIN_ALT |  | SPEC_MIN_ALT |  |  | 1.75, 0.32, 0.38, 0.21 |
| TextBox | SPEC_MAX_ALT |  | SPEC_MAX_ALT |  |  | 1.75, 0.57, 0.38, 0.21 |
| TextBox | CALIPER_MIN_ALT |  | CALIPER_MIN_ALT |  |  | 1.75, 0.82, 0.39, 0.21 |
| Label | Label18 | Alt. |  |  |  | 1.77, 0.08, 0.38, 0.19 |
