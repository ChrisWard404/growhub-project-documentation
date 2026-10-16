# Form: NMIS_FACTORS_Duplicate subform

**Caption:** NMIS_FACTORS subform  
**Record source:**

```sql
NMIS_FACTORS
```

**Backend tables referenced:** `NMIS_FACTORS`  
**Embedded in:** `Form:NMIS_SPECIES_PRODUCTS_Duplicate Form`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | LIKE_ASSOCIATE_Label | Like Associate |  |  |  | 0.10, 0.48, 0.67, 0.42 |
| Label | ELEVATION_MIN_Label | Min |  |  |  | 0.82, 0.70, 0.31, 0.20 |
| Label | ELEVATION_MAX_Label | Max |  |  |  | 1.15, 0.70, 0.31, 0.20 |
| Label | GERM_MIN_Label | Min |  |  |  | 1.51, 0.71, 0.31, 0.20 |
| Label | GERM_MAX_Label | Max |  |  |  | 1.84, 0.71, 0.31, 0.20 |
| Label | HARVEST_FACTOR_1_Label | F1 |  |  |  | 2.20, 0.71, 0.29, 0.20 |
| Label | HARVEST_FACTOR_2_Label | F2 |  |  |  | 2.53, 0.71, 0.29, 0.20 |
| Label | HARVEST_FACTOR_3_Label | F 3 |  |  |  | 2.87, 0.71, 0.29, 0.20 |
| Label | HARVEST_FACTOR_4_Label | F4 |  |  |  | 3.20, 0.71, 0.29, 0.20 |
| Label | HARVEST_FACTOR_Label | Fac |  |  |  | 3.53, 0.71, 0.29, 0.20 |
| Label | CONTAINER_FACTOR_1_Label | F1 |  |  |  | 3.88, 0.71, 0.29, 0.20 |
| Label | CONTAINER_FACTOR_2_Label | F2 |  |  |  | 4.20, 0.71, 0.29, 0.20 |
| Label | CONTAINER_FACTOR_3_Label | F3 |  |  |  | 4.53, 0.71, 0.29, 0.20 |
| Label | CONTAINER_FACTOR_Label | Fac  |  |  |  | 4.85, 0.71, 0.29, 0.20 |
| Label | DESIRED_DENSITY_Label | Desired Density |  |  |  | 5.19, 0.49, 0.57, 0.42 |
| Label | MAXIMUM_DENSITY_Label | Maximum Density |  |  |  | 5.81, 0.49, 0.73, 0.42 |
| Label | SOURCE_PER_AGREEMENT_UNIT_Label | Source/ Agree. Unit |  |  |  | 6.58, 0.49, 0.78, 0.42 |
| Label | GROSS_PER_CONTAINER_Label | Gross/ Container |  |  |  | 7.41, 0.49, 0.68, 0.42 |
| Label | Label40 | Harvest Factors |  |  |  | 2.21, 0.49, 1.62, 0.20 |
| Label | Label41 | Germ |  |  |  | 1.50, 0.49, 0.65, 0.20 |
| Label | Label42 | Elev |  |  |  | 0.82, 0.48, 0.64, 0.20 |
| Label | Label43 | Container Factors |  |  |  | 3.88, 0.49, 1.27, 0.20 |
| TextBox | CN |  | CN |  |  | 1.92, 0.08, 0.00, 0.16 |
| TextBox | Index |  | Index |  |  | 4.62, 0.08, 0.00, 0.16 |
| TextBox | SPECIES_PRODUCT_CN |  | SPECIES_PRODUCT_CN |  |  | 0.12, 0.08, 1.75, 0.00 |
| Label | Label44 | Sowing Factors |  |  |  | 3.21, 0.06, 1.76, 0.31 |
| Line | Line49 |  |  |  |  | 0.08, 0.42, 8.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ELEVATION_MIN |  | ELEVATION_MIN |  |  | 0.83, 0.04, 0.30, 0.20 |
| TextBox | ELEVATION_MAX |  | ELEVATION_MAX |  |  | 1.17, 0.04, 0.30, 0.20 |
| TextBox | GERM_MIN |  | GERM_MIN |  |  | 1.51, 0.04, 0.30, 0.20 |
| TextBox | GERM_MAX |  | GERM_MAX |  |  | 1.84, 0.04, 0.30, 0.20 |
| TextBox | HARVEST_FACTOR_1 |  | HARVEST_FACTOR_1 |  |  | 2.21, 0.04, 0.31, 0.20 |
| TextBox | HARVEST_FACTOR_2 |  | HARVEST_FACTOR_2 |  |  | 2.54, 0.04, 0.31, 0.20 |
| TextBox | HARVEST_FACTOR_3 |  | HARVEST_FACTOR_3 |  |  | 2.88, 0.04, 0.31, 0.20 |
| TextBox | HARVEST_FACTOR_4 |  | HARVEST_FACTOR_4 |  |  | 3.21, 0.04, 0.31, 0.20 |
| TextBox | HARVEST_FACTOR |  | HARVEST_FACTOR |  |  | 3.54, 0.04, 0.31, 0.20 |
| TextBox | CONTAINER_FACTOR_1 |  | CONTAINER_FACTOR_1 |  |  | 3.88, 0.04, 0.29, 0.20 |
| TextBox | CONTAINER_FACTOR_2 |  | CONTAINER_FACTOR_2 |  |  | 4.21, 0.04, 0.29, 0.20 |
| TextBox | CONTAINER_FACTOR_3 |  | CONTAINER_FACTOR_3 |  |  | 4.53, 0.04, 0.29, 0.20 |
| TextBox | CONTAINER_FACTOR |  | CONTAINER_FACTOR |  |  | 4.86, 0.04, 0.29, 0.20 |
| TextBox | DESIRED_DENSITY |  | DESIRED_DENSITY |  |  | 5.20, 0.04, 0.57, 0.20 |
| TextBox | MAXIMUM_DENSITY |  | MAXIMUM_DENSITY |  |  | 5.81, 0.04, 0.73, 0.20 |
| TextBox | SOURCE_PER_AGREEMENT_UNIT |  | SOURCE_PER_AGREEMENT_UNIT |  |  | 6.58, 0.04, 0.78, 0.20 |
| TextBox | GROSS_PER_CONTAINER |  | GROSS_PER_CONTAINER |  |  | 7.41, 0.04, 0.68, 0.20 |
| TextBox | LIKE_ASSOCIATE |  | LIKE_ASSOCIATE |  |  | 0.07, 0.04, 0.71, 0.20 |
