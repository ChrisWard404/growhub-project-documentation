# Report: Agreement_Lot_Associate_Subform

**Caption:** Field_tag_agreements subreport  
**Record source:**

```sql
SELECT NMIS_AGREEMENTS.AGREEMENT_LOT_CN, [ASSOCIATE_NAME] & " - " & [CLIENT_ASSOCIATE] & " " & [AMOUNT_REQUESTED] & NMIS_PRODUCTS.UNIT_CODE AS CLIENT_ASSOCIATE_STRING FROM (NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON NMIS_PRODUCTS.CN=NMIS_SPECIES_PRODUCTS.PRODUCT_CN) INNER JOIN (NMIS_ASSOCIATES INNER JOIN NMIS_AGREEMENTS ON (NMIS_ASSOCIATES.ASSOCIATE=NMIS_AGREEMENTS.CLIENT_ASSOCIATE) AND (NMIS_ASSOCIATES.ASSOCIATE=NMIS_AGREEMENTS.CLIENT_ASSOCIATE)) ON NMIS_SPECIES_PRODUCTS.CN=NMIS_AGREEMENTS.SPECIES_PRODUCT_CN;
```

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_ASSOCIATES`, `NMIS_PRODUCTS`, `NMIS_SPECIES_PRODUCTS`  
**Embedded in:** `Report:NMIS_AGREEMENT_LOT_Transaction_Balance`, `Report:NMIS_AGREEMENT_LOT_Transaction_Balance_by_order`, `Report:NMIS_AGREEMENT_Lots_Activities_and_Transactions`, `Report:NMIS_AGREEMENT_Lots_Activities_wo_Transactions`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line6 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE_STRING |  |  | 0.01, 0.00, 3.82, 0.23 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line7 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
