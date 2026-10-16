# Report: ORDER_FORM_LEN mt Subrep

**Subforms/subreports:** `Report.ORDER_FORM_INV mt Subrep`, `Report.NMIS_PRODUCT_INVENTORY_daily_checklist_Location_Subreport`  
**Embedded in:** `Report:ORDER_FORM mt`, `Report:ORDER_FORM mt_040207`, `Report:ORDER_FORM mt_040207_edit`, `Report:ORDER_FORM mt_040207_input`, `Report:ORDER_FORM mt_050357`, `Report:ORDER_FORM mt_050357_edit`, `Report:ORDER_FORM mt_050357_input`, `Report:ORDER_FORM mt_050357_ld`, `Report:ORDER_FORM mt_050357_pre_fy06`, `Report:ORDER_FORM mt_edit`, `Report:ORDER_FORM_FROM_ORDER_INPUT_FORM`, `Report:order_form mt_Long`, `Report:order_form_from_Order_Print mt`, `Report:order_form_from_order_edit mt`, `Report:order_form_from_order_edit mt_bu2`, `Report:order_form_from_order_input mt`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | LOT_LENGTH |  | Lot_Total_Ft |  |  | 0.57, 0.02, 0.33, 0.16 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 2.87, 0.06, 0.50, 0.00 |
| Subform | ORDER_FORM_INV Subrep |  | Report.ORDER_FORM_INV mt Subrep (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 0.00, 0.21, 3.64, 0.46 |
| Label | LOCATION_Label | Locations: |  |  |  | 1.20, 0.02, 0.62, 0.16 |
| TextBox | Text38 |  | Unit |  |  | 0.05, 0.02, 0.48, 0.16 |
| Subform | *******dbd map |  | Report.NMIS_PRODUCT_INVENTORY_daily_checklist_Location_Subreport (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 1.89, 0.00, 1.14, 0.19 |
