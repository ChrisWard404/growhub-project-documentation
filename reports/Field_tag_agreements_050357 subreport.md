# Report: Field_tag_agreements_050357 subreport

**Caption:** Field_tag_agreements subreport  
**Record source:**

```sql
SELECT NMIS_AGREEMENTS.AGREEMENT_LOT_CN, [CLIENT_ASSOCIATE] & " " & [ASSOCIATE_NAME] AS CA, NMIS_AGREEMENTS.AMOUNT_REQUESTED, NMIS_PRODUCTS.UNIT_CODE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_PRODUCTS INNER JOIN (NMIS_ASSOCIATES INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENTS.SPECIES_PRODUCT_CN) ON (NMIS_ASSOCIATES.ASSOCIATE = NMIS_AGREEMENTS.CLIENT_ASSOCIATE) AND (NMIS_ASSOCIATES.ASSOCIATE = NMIS_AGREEMENTS.CLIENT_ASSOCIATE)) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN;
```

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_ASSOCIATES`, `NMIS_PRODUCTS`, `NMIS_SPECIES_PRODUCTS`  
**Embedded in:** `Report:Field_tag_pairs_w_NIds_Intermec_050357`, `Report:Field_tag_pairs_w_NIds_Intermec_050357_split_lot`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line6 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | AMOUNT_REQUESTED |  | AMOUNT_REQUESTED |  |  | 3.69, 0.00, 0.36, 0.14 |
| TextBox | CLIENT_ASSOCIATE |  | ASSOCIATE_NAME |  |  | 0.00, 0.00, 3.37, 0.14 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 4.06, 0.00, 0.17, 0.14 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line7 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
