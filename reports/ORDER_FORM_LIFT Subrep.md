# Report: ORDER_FORM_LIFT Subrep

**Caption:** ORDER_FORM Subrep  
**Record source:**

```sql
LOT_LIFT_FT Query
```

**Grouping/sorting:** `ACTIVITY_DATE`  
**Subforms/subreports:** `Report.ORDER_FORM_FLD_CNTNR subrep`  
**Embedded in:** `Report:ORDER_FORM`, `Report:ORDER_FORM_BY_LIFT_DATE`, `Report:ORDER_FORM_FROM_ORDERS`, `Report:ORDER_FORM_FROM_ORDER_INPUT_FORM_BU`, `Report:ORDER_FORM_FROM_ORDER_REVIEW_FORM`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ACTIVITY_DATE_Label | Activity Date |  |  |  | 0.04, 0.04, 0.67, 0.29 |
| Label | NO_FLD_CONT_Label | Fld Cont |  |  |  | 1.29, 0.04, 0.38, 0.29 |
| Label | FLD_CONT_Label | Cont Type |  |  |  | 1.75, 0.04, 0.42, 0.31 |
| Label | FEET_Label | Feet |  |  |  | 0.79, 0.04, 0.42, 0.29 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 0.04, 0.04, 0.38, 0.21 |
| Line | Line28 |  |  |  |  | 0.04, 0.38, 2.12, 0.00 |
| TextBox | Text29 |  | C_CN |  |  | 2.25, 0.08, 0.38, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 0.04, 0.00, 0.67, 0.00 |
| TextBox | FEET |  | FEET |  |  | 0.79, 0.00, 0.42, 0.00 |
| Subform | ORDER_FORM_FLD_CNTNR subrep |  | Report.ORDER_FORM_FLD_CNTNR subrep (master: C_CN → child: C_CN) |  |  | 1.29, 0.00, 0.88, 0.17 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line16 |  |  |  |  | 0.08, 0.12, 0.62, 0.00 |
| Line | Line17 |  |  |  |  | 0.81, 0.12, 0.40, 0.00 |
| Line | Line18 |  |  |  |  | 1.25, 0.12, 0.42, 0.00 |
| Line | Line19 |  |  |  |  | 1.71, 0.12, 0.46, 0.00 |
