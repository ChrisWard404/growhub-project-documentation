# Report: Field_tag_Agreements subreport

**Caption:** Field_tag_agreements subreport  
**Record source:**

```sql
SELECT NMIS_AGREEMENTS.AGREEMENT_LOT_CN, NMIS_AGREEMENTS.CLIENT_ASSOCIATE, NMIS_AGREEMENTS.AMOUNT_REQUESTED, NMIS_PRODUCTS.UNIT_CODE FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENTS ON NMIS_SPECIES_PRODUCTS.CN=NMIS_AGREEMENTS.SPECIES_PRODUCT_CN) ON NMIS_PRODUCTS.CN=NMIS_SPECIES_PRODUCTS.PRODUCT_CN;
```

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_PRODUCTS`, `NMIS_SPECIES_PRODUCTS`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line6 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | AMOUNT_REQUESTED |  | AMOUNT_REQUESTED |  |  | 0.41, 0.00, 0.46, 0.13 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 0.01, 0.00, 0.40, 0.13 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 0.86, 0.00, 0.17, 0.13 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line7 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
