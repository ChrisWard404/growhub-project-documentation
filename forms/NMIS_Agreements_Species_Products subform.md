# Form: NMIS_Agreements_Species_Products subform

**Caption:** NMIS_Agreements_Species_Products subform  
**Record source:**

```sql
NMIS_AGREEMENTS
```

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_SPECIES_PRODUCTS`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | SPECIES_PRODUCT_CN_Label | SPECIES_PRODUCT_CN |  |  |  | 0.04, 0.04, 2.03, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | SPECIES_PRODUCT_CN |  | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES_PRODUCTS].[SPECIES_PRODUCT_DESC] FROM NMIS_SPECIES_PRODUCTS;  |  | 0.04, 0.04, 2.03, 0.20 |
