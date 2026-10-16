# Report: ORDER_FORM_LEN Subrep

**Caption:** ORDER_FORM_STATS Subrep  
**Record source:**

```sql
ORDER_FORM_LOT_LEN Query
```

**Subforms/subreports:** `Report.ORDER_FORM_LOC Subrep`, `Report.ORDER_FORM_INV Subrep`  
**Embedded in:** `Report:ORDER_FORM`, `Report:ORDER_FORM_BY_LIFT_DATE`, `Report:ORDER_FORM_FROM_ORDERS`, `Report:ORDER_FORM_FROM_ORDER_INPUT_FORM_BU`, `Report:ORDER_FORM_FROM_ORDER_REVIEW_FORM`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | LOT_LENGTH |  | Lot_Total_Ft |  |  | 0.58, 0.04, 0.67, 0.16 |
| Label | LENGTH_Label | Length: |  |  |  | 0.04, 0.04, 0.46, 0.16 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 0.29, 0.00, 0.50, 0.00 |
| Subform | ORDER_FORM_LOC Subrep |  | Report.ORDER_FORM_LOC Subrep (master: AGREEMENT_LOT_CN → child: CN) |  |  | 2.00, 0.04, 1.63, 0.17 |
| Subform | ORDER_FORM_INV Subrep |  | Report.ORDER_FORM_INV Subrep (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 0.00, 0.25, 3.64, 0.46 |
| Label | LOCATION_Label | Locations: |  |  |  | 1.33, 0.04, 0.62, 0.16 |
