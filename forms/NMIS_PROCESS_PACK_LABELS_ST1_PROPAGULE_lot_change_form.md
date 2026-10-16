# Form: NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change_form

**Caption:** Report Input  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ORDERS`, `NMIS_PRODUCTS`, `NMIS_PRODUCT_TYPES`, `NMIS_SPECIES_PRODUCTS`  
**Opens:** `Report:NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change`  
**Opened from (VBA):** `Form_NMIS_PROCESS_LABELS_ST1`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Select an Lot ID |  |  |  | 1.58, 0.08, 2.04, 0.28 |
| CommandButton | Preview_Report |        Click to review       Lot Change Labels |  |  | Click | 1.88, 3.00, 1.71, 0.75 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.12, 1.12, 4.88, 1.29 |
| ComboBox | Like_Lot_ID | Lot ID: |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID AS Nursery_ID FROM (NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE = NMIS_PRODUCTS.END_PRODUCT_TYPE) INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((NMIS_PRODUCT_TYPES.PRODUCT_GROUP)="PROPAGULE") AND ((NMIS_ORDERS.FISCAL_YEAR)=[Forms]![Switchboard]![FY_For_Reports])) GROUP BY NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID ORDER BY NMIS_AGREEMENT_LOTS.ID; |  | 2.25, 1.58, 1.75, 0.28 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Preview_Report_Click()

    DoCmd.OpenReport "NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change", acPreview

End Sub
```
