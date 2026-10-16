# Form: NMIS_FACTORS_FOR_NEW_AGREEMENT_LOTS subform

**Caption:** NMIS_FACTORS subform  
**Record source:**

```sql
SELECT NMIS_FACTORS.SPECIES_PRODUCT_CN, NMIS_FACTORS.LIKE_ASSOCIATE, NMIS_FACTORS.HARVEST_FACTOR_1, NMIS_FACTORS.HARVEST_FACTOR_2, NMIS_FACTORS.HARVEST_FACTOR_3, NMIS_FACTORS.HARVEST_FACTOR_4, NMIS_FACTORS.HARVEST_FACTOR, NMIS_FACTORS.CONTAINER_FACTOR_1, NMIS_FACTORS.CONTAINER_FACTOR_2, NMIS_FACTORS.CONTAINER_FACTOR_3, NMIS_FACTORS.CONTAINER_FACTOR, NMIS_FACTORS.DESIRED_DENSITY, NMIS_FACTORS.MAXIMUM_DENSITY, NMIS_FACTORS.SOURCE_PER_AGREEMENT_UNIT, NMIS_FACTORS.GROSS_PER_CONTAINER, [Forms]![NMIS_AGREEMENTS]![CLIENT_ASSOCIATE] AS Associate FROM NMIS_FACTORS WHERE (((NMIS_FACTORS.SPECIES_PRODUCT_CN)=[Forms]![NMIS_AGREEMENT_LOTS_NEW]![SPECIES_PRODUCT_CN]) AND (([Forms]![NMIS_AGREEMENTS]![CLIENT_ASSOCIATE]) Like IIf([like_associate] Is Not Null,[like_associate] & "*",[like_associate]))) OR (((NMIS_FACTORS.SPECIES_PRODUCT_CN)=[Forms]![NMIS_AGREEMENT_LOTS_NEW]![SPECIES_PRODUCT_CN]) AND ((NMIS_FACTORS.LIKE_ASSOCIATE) Is Null)) ORDER BY NMIS_FACTORS.LIKE_ASSOCIATE DESC;
```

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_ASSOCIATES`, `NMIS_FACTORS`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | LIKE_ASSOCIATE_Label | Like Associate |  |  |  | 0.04, 0.04, 2.03, 0.20 |
| Label | HARVEST_FACTOR_1_Label | Harvest Factor 1 |  |  |  | 2.12, 0.04, 1.14, 0.20 |
| Label | HARVEST_FACTOR_2_Label | Harvest Factor 2 |  |  |  | 3.30, 0.04, 1.14, 0.20 |
| Label | HARVEST_FACTOR_3_Label | Harvest Factor 3 |  |  |  | 4.48, 0.04, 1.14, 0.20 |
| Label | HARVEST_FACTOR_4_Label | Harvest Factor 4 |  |  |  | 5.67, 0.04, 1.14, 0.20 |
| Label | HARVEST_FACTOR_Label | Harvest Factor |  |  |  | 6.85, 0.04, 1.02, 0.20 |
| Label | CONTAINER_FACTOR_1_Label | Container Factor 1 |  |  |  | 7.92, 0.04, 1.27, 0.20 |
| Label | CONTAINER_FACTOR_2_Label | Container Factor 2 |  |  |  | 9.23, 0.04, 1.27, 0.20 |
| Label | CONTAINER_FACTOR_3_Label | Container Factor 3 |  |  |  | 10.55, 0.04, 1.27, 0.20 |
| Label | CONTAINER_FACTOR_Label | Container Factor |  |  |  | 11.87, 0.04, 1.16, 0.20 |
| Label | DESIRED_DENSITY_Label | Desired Density |  |  |  | 13.07, 0.04, 1.08, 0.20 |
| Label | MAXIMUM_DENSITY_Label | Maximum Density |  |  |  | 14.19, 0.04, 1.19, 0.20 |
| Label | SOURCE_PER_AGREEMENT_UNIT_Label | Source/Agreement Unit |  |  |  | 15.43, 0.04, 1.57, 0.20 |
| Label | GROSS_PER_CONTAINER_Label | Gross/Container |  |  |  | 17.04, 0.04, 1.13, 0.20 |
| Label | SPECIES_PRODUCT_CN_Label | SPECIES_PRODUCT_CN |  |  |  | 18.22, 0.04, 2.30, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | LIKE_ASSOCIATE |  | LIKE_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 0.04, 0.04, 2.03, 0.20 |
| TextBox | HARVEST_FACTOR_1 |  | HARVEST_FACTOR_1 |  |  | 2.12, 0.04, 1.14, 0.20 |
| TextBox | HARVEST_FACTOR_2 |  | HARVEST_FACTOR_2 |  |  | 3.30, 0.04, 1.14, 0.20 |
| TextBox | HARVEST_FACTOR_3 |  | HARVEST_FACTOR_3 |  |  | 4.48, 0.04, 1.14, 0.20 |
| TextBox | HARVEST_FACTOR_4 |  | HARVEST_FACTOR_4 |  |  | 5.67, 0.04, 1.14, 0.20 |
| TextBox | HARVEST_FACTOR |  | HARVEST_FACTOR |  |  | 6.85, 0.04, 1.02, 0.20 |
| TextBox | CONTAINER_FACTOR_1 |  | CONTAINER_FACTOR_1 |  |  | 7.92, 0.04, 1.27, 0.20 |
| TextBox | CONTAINER_FACTOR_2 |  | CONTAINER_FACTOR_2 |  |  | 9.23, 0.04, 1.27, 0.20 |
| TextBox | CONTAINER_FACTOR_3 |  | CONTAINER_FACTOR_3 |  |  | 10.55, 0.04, 1.27, 0.20 |
| TextBox | CONTAINER_FACTOR |  | CONTAINER_FACTOR |  |  | 11.87, 0.04, 1.16, 0.20 |
| TextBox | DESIRED_DENSITY |  | DESIRED_DENSITY |  |  | 13.07, 0.04, 1.08, 0.20 |
| TextBox | MAXIMUM_DENSITY |  | MAXIMUM_DENSITY |  |  | 14.19, 0.04, 1.19, 0.20 |
| TextBox | SOURCE_PER_AGREEMENT_UNIT |  | SOURCE_PER_AGREEMENT_UNIT |  |  | 15.43, 0.04, 1.57, 0.20 |
| TextBox | GROSS_PER_CONTAINER |  | GROSS_PER_CONTAINER |  |  | 17.04, 0.04, 1.13, 0.20 |
| TextBox | SPECIES_PRODUCT_CN |  | SPECIES_PRODUCT_CN |  |  | 18.22, 0.04, 2.30, 0.20 |
