# Report: ORDER_FORM_LIFT mt Subrep

**Caption:** ORDER_FORM Subrep  
**Record source:**

```sql
**Lot_Lift_Ft
```

**Grouping/sorting:** `ACTIVITY_DATE`  
**Subforms/subreports:** `Report.ORDER_FORM_FLD_CNTNR mt subrep`, `Report.ORDER_FORM_FLD_CNTNR_Totals  mt subrep`  
**Embedded in:** `Report:ORDER_FORM mt`, `Report:ORDER_FORM mt_040207`, `Report:ORDER_FORM mt_040207_edit`, `Report:ORDER_FORM mt_040207_input`, `Report:ORDER_FORM mt_050357`, `Report:ORDER_FORM mt_050357_edit`, `Report:ORDER_FORM mt_050357_input`, `Report:ORDER_FORM mt_050357_ld`, `Report:ORDER_FORM mt_050357_pre_fy06`, `Report:ORDER_FORM mt_edit`, `Report:ORDER_FORM_FROM_ORDER_INPUT_FORM`, `Report:order_form mt_Long`, `Report:order_form_from_Order_Print mt`, `Report:order_form_from_order_edit mt`, `Report:order_form_from_order_edit mt_bu2`, `Report:order_form_from_order_input mt`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ACTIVITY_DATE_Label | Lift Date |  |  |  | 0.12, 0.00, 0.29, 0.30 |
| Label | NO_FLD_CONT_Label | Fld Cont |  |  |  | 1.08, 0.00, 0.29, 0.30 |
| Label | FLD_CONT_Label | Cont Type |  |  |  | 1.41, 0.00, 0.32, 0.30 |
| Label | FEET_Label | Feet |  |  |  | 0.66, 0.15, 0.28, 0.16 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 0.42, 0.00, 0.38, 0.16 |
| Line | Line28 |  |  |  |  | 0.00, 0.29, 3.60, 0.00 |
| TextBox | Text29 |  | C_CN |  |  | 2.23, 0.17, 0.38, 0.14 |
| Label | Label32 | Gross/ Cont |  |  |  | 1.80, 0.01, 0.43, 0.29 |
| Label | Label33 |   Net/   Cont  |  |  |  | 2.32, 0.00, 0.43, 0.30 |
| Label | Label47 | Gross |  |  |  | 2.78, 0.15, 0.36, 0.16 |
| Label | Label48 |   Net |  |  |  | 3.27, 0.15, 0.29, 0.16 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 0.00, 0.00, 0.54, 0.00 |
| TextBox | FEET |  | FEET |  |  | 0.55, 0.00, 0.42, 0.00 |
| Subform | ORDER_FORM_FLD_CNTNR subrep |  | Report.ORDER_FORM_FLD_CNTNR mt subrep (master: C_CN → child: C_CN) |  |  | 1.01, 0.00, 2.65, 0.17 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line16 |  |  |  |  | 0.61, 0.00, 0.32, 0.00 |
| Line | Line35 |  |  |  |  | 1.07, 0.00, 0.22, 0.00 |
| TextBox | Text34 |  | =Sum([FEET]) |  |  | 0.42, 0.01, 0.54, 0.00 |
| Line | Line43 |  |  |  |  | 1.38, 0.00, 2.26, 0.00 |
| Subform | ORDER_FORM_LIFT Subrep |  | Report.ORDER_FORM_FLD_CNTNR_Totals  mt subrep (master: AGR_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 0.98, 0.02, 2.66, 0.16 |
| Label | Label46 | Totals: |  |  |  | 0.00, 0.01, 0.43, 0.18 |
