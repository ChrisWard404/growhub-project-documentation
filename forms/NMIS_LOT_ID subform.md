# Form: NMIS_LOT_ID subform

**Caption:** NMIS_LOT_ID  
**Record source:**

```sql
NURSERY_ID Query
```

**Backend tables referenced:** `NMIS_SPECIES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | AGR_LOT_CN_Label | AGR_LOT_CN |  |  |  | 0.04, 0.04, 0.62, 0.19 |
| Label | ID_Label | ID |  |  |  | 0.71, 0.04, 0.29, 0.19 |
| Label | SOURCE_CODE_Label | Source Code |  |  |  | 1.04, 0.04, 0.71, 0.19 |
| Label | PROD_CN_Label | PROD_CN |  |  |  | 1.79, 0.04, 0.62, 0.19 |
| Label | PRODUCT_DESC_Label | Product Description |  |  |  | 2.46, 0.04, 0.54, 0.19 |
| Label | SP_PROD_CN_Label | SP_PROD_CN |  |  |  | 3.04, 0.04, 0.62, 0.19 |
| Label | SPECIES_PRODUCT_DESC_Label | Species Product Description |  |  |  | 3.71, 0.04, 0.58, 0.19 |
| Label | PLNTMSTR_SYMBOL_Label | Species Symbol |  |  |  | 4.33, 0.04, 0.54, 0.19 |
| Label | LIFE_SPAN_Label | LIFE_SPAN |  |  |  | 4.92, 0.04, 0.54, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | AGR_LOT_CN |  | AGR_LOT_CN |  |  | 0.04, 0.04, 0.62, 0.19 |
| TextBox | ID |  | ID |  |  | 0.71, 0.04, 0.29, 0.19 |
| TextBox | SOURCE_CODE |  | SOURCE_CODE |  |  | 1.04, 0.04, 0.71, 0.19 |
| TextBox | PROD_CN |  | PROD_CN |  |  | 1.79, 0.04, 0.62, 0.19 |
| TextBox | PRODUCT_DESC |  | PRODUCT_DESC |  |  | 2.46, 0.04, 0.54, 0.19 |
| TextBox | SP_PROD_CN |  | SP_PROD_CN |  |  | 3.04, 0.04, 0.62, 0.19 |
| TextBox | SPECIES_PRODUCT_DESC |  | SPECIES_PRODUCT_DESC |  |  | 3.71, 0.04, 0.58, 0.19 |
| ComboBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL | SELECT [NMIS_SPECIES].[PLNTMSTR_SYMBOL], [NMIS_SPECIES].[VERNACULAR] FROM NMIS_SPECIES;  |  | 4.33, 0.04, 0.54, 0.19 |
| TextBox | LIFE_SPAN |  | LIFE_SPAN |  |  | 4.92, 0.04, 0.54, 0.19 |
