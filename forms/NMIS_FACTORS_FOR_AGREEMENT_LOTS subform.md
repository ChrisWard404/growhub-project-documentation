# Form: NMIS_FACTORS_FOR_AGREEMENT_LOTS subform

**Caption:** NMIS_FACTORS subform  
**Record source:**

```sql
SELECT NMIS_FACTORS.SPECIES_PRODUCT_CN, NMIS_FACTORS.LIKE_ASSOCIATE, NMIS_FACTORS.GERM_MIN, NMIS_FACTORS.GERM_MAX, NMIS_FACTORS.HARVEST_FACTOR_1, NMIS_FACTORS.HARVEST_FACTOR_2, NMIS_FACTORS.HARVEST_FACTOR_3, NMIS_FACTORS.HARVEST_FACTOR_4, NMIS_FACTORS.HARVEST_FACTOR, NMIS_FACTORS.CONTAINER_FACTOR_1, NMIS_FACTORS.CONTAINER_FACTOR_2, NMIS_FACTORS.CONTAINER_FACTOR_3, NMIS_FACTORS.CONTAINER_FACTOR, NMIS_FACTORS.DESIRED_DENSITY, NMIS_FACTORS.MAXIMUM_DENSITY, NMIS_FACTORS.SOURCE_PER_AGREEMENT_UNIT, NMIS_FACTORS.GROSS_PER_CONTAINER, [Forms]![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].[Form]![CLIENT_ASSOCIATE] AS Associate, NMIS_FACTORS.ELEVATION_MIN, NMIS_FACTORS.ELEVATION_MAX FROM NMIS_FACTORS WHERE (((NMIS_FACTORS.SPECIES_PRODUCT_CN)=[Forms]![NMIS_AGREEMENT_LOTS]![SPECIES_PRODUCT_CN]) AND (([Forms]![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].[Form]![CLIENT_ASSOCIATE]) Like IIf([like_associate] Is Not Null,[like_associate] & "*",[like_associate]))) OR (((NMIS_FACTORS.SPECIES_PRODUCT_CN)=[Forms]![NMIS_AGREEMENT_LOTS]![SPECIES_PRODUCT_CN]) AND ((NMIS_FACTORS.LIKE_ASSOCIATE) Is Null) AND ((NMIS_FACTORS.GERM_MIN)<=Nz([Forms]![NMIS_AGREEMENT_LOTS]![SOURCE_GERM_PCT],0)) AND ((NMIS_FACTORS.GERM_MAX)>=Nz([Forms]![NMIS_AGREEMENT_LOTS]![SOURCE_GERM_PCT],100))) ORDER BY NMIS_FACTORS.LIKE_ASSOCIATE DESC;
```

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_FACTORS`  
**Embedded in:** `Form:NMIS_AGREEMENT_LOTS`, `Form:NMIS_AGREEMENT_LOTS2`, `Form:NMIS_AGREEMENT_LOTS_Review_Only`, `Form:NMIS_AGREEMENT_LOTS_old2`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | LIKE_ASSOCIATE_Label | Like Associate |  |  |  | 0.00, 0.03, 0.85, 0.36 |
| Label | HARVEST_FACTOR_1_Label |     HF1 |  |  |  | 2.68, 0.03, 0.35, 0.36 |
| Label | HARVEST_FACTOR_2_Label |     HF2 |  |  |  | 3.05, 0.03, 0.35, 0.36 |
| Label | HARVEST_FACTOR_3_Label |     HF3 |  |  |  | 3.43, 0.03, 0.35, 0.36 |
| Label | HARVEST_FACTOR_4_Label |     HF4 |  |  |  | 3.80, 0.03, 0.35, 0.36 |
| Label | HARVEST_FACTOR_Label |      HF |  |  |  | 4.18, 0.03, 0.35, 0.36 |
| Label | CONTAINER_FACTOR_1_Label |     CF1 |  |  |  | 4.55, 0.03, 0.35, 0.35 |
| Label | CONTAINER_FACTOR_2_Label |     CF2 |  |  |  | 4.93, 0.03, 0.35, 0.36 |
| Label | CONTAINER_FACTOR_3_Label |     CF3 |  |  |  | 5.30, 0.03, 0.35, 0.35 |
| Label | CONTAINER_FACTOR_Label |         CF  |  |  |  | 5.68, 0.03, 0.35, 0.35 |
| Label | DESIRED_DENSITY_Label | Desired Density |  |  |  | 6.05, 0.03, 0.67, 0.36 |
| Label | MAXIMUM_DENSITY_Label | Maximum Density |  |  |  | 6.75, 0.03, 0.78, 0.36 |
| Label | SPECIES_PRODUCT_CN_Label | SPECIES_PRODUCT_CN |  |  |  | 6.72, 0.08, 1.69, 0.20 |
| Label | Label58 | Germ Min |  |  |  | 0.89, 0.03, 0.42, 0.36 |
| Label | Label59 | Germ Max |  |  |  | 1.33, 0.03, 0.42, 0.36 |
| Label | Label62 | ElevMin |  |  |  | 1.78, 0.03, 0.42, 0.36 |
| Label | Label63 | Elev Max |  |  |  | 2.23, 0.03, 0.42, 0.36 |
| Label | GROSS_PER_CONTAINER_Label | Gross/ Container |  |  |  | 7.55, 0.03, 0.72, 0.36 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | LIKE_ASSOCIATE |  | LIKE_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 0.00, 0.03, 0.85, 0.20 |
| TextBox | HARVEST_FACTOR_1 |  | HARVEST_FACTOR_1 |  |  | 2.68, 0.03, 0.35, 0.20 |
| TextBox | HARVEST_FACTOR_2 |  | HARVEST_FACTOR_2 |  |  | 3.05, 0.03, 0.35, 0.20 |
| TextBox | HARVEST_FACTOR_3 |  | HARVEST_FACTOR_3 |  |  | 3.43, 0.03, 0.35, 0.20 |
| TextBox | HARVEST_FACTOR_4 |  | HARVEST_FACTOR_4 |  |  | 3.80, 0.03, 0.35, 0.20 |
| TextBox | HARVEST_FACTOR |  | HARVEST_FACTOR |  |  | 4.18, 0.03, 0.35, 0.20 |
| TextBox | CONTAINER_FACTOR_1 |  | CONTAINER_FACTOR_1 |  |  | 4.55, 0.03, 0.35, 0.20 |
| TextBox | CONTAINER_FACTOR_2 |  | CONTAINER_FACTOR_2 |  |  | 4.93, 0.03, 0.35, 0.20 |
| TextBox | CONTAINER_FACTOR_3 |  | CONTAINER_FACTOR_3 |  |  | 5.30, 0.03, 0.35, 0.20 |
| TextBox | CONTAINER_FACTOR |  | CONTAINER_FACTOR |  |  | 5.68, 0.03, 0.35, 0.20 |
| TextBox | DESIRED_DENSITY |  | DESIRED_DENSITY |  |  | 6.05, 0.03, 0.67, 0.20 |
| TextBox | MAXIMUM_DENSITY |  | MAXIMUM_DENSITY |  |  | 6.75, 0.03, 0.78, 0.20 |
| TextBox | SPECIES_PRODUCT_CN |  | SPECIES_PRODUCT_CN |  |  | 6.72, 0.03, 1.69, 0.20 |
| TextBox | GERM_MIN |  | GERM_MIN |  |  | 0.89, 0.03, 0.42, 0.20 |
| TextBox | GERM_MAX |  | GERM_MAX |  |  | 1.33, 0.03, 0.42, 0.20 |
| TextBox | ELEVATION_MIN |  | ELEVATION_MIN |  |  | 1.78, 0.03, 0.42, 0.20 |
| TextBox | ELEVATION_MAX |  | ELEVATION_MAX |  |  | 2.23, 0.03, 0.42, 0.20 |
| TextBox | GROSS_PER_CONTAINER |  | GROSS_PER_CONTAINER |  |  | 7.55, 0.03, 0.72, 0.20 |
