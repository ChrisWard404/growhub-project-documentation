# Report: ORDER_FORM_FLD_CNTNR_Totals  mt subrep

**Record source:**

```sql
**Lot_Lift_CNTNR
```

**Embedded in:** `Report:ORDER_FORM_LIFT mt Subrep`  

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | C_CN |  | C_CN |  |  | 2.38, 0.00, 0.54, 0.00 |
| TextBox | Sum_Gross_Lifted |  | =Sum([NO_FLD_CONT]*[AMT_PER_UNIT_INV_GROSS]/[UNIT_MULTIPLIER]) |  |  | 0.94, 0.00, 0.64, 0.00 |
| TextBox | Sum_Net_Lifted |  | =Sum([NO_FLD_CONT]*[AMT_PER_UNIT]/[UNIT_MULTIPLIER]) |  |  | 1.93, 0.00, 0.60, 0.00 |
| TextBox | Sum_Field_Containers |  | =Sum([NO_FLD_CONT]) |  |  | 0.03, 0.00, 0.34, 0.00 |
| Label | Label41 | Gross: |  |  |  | 0.47, 0.00, 0.44, 0.17 |
| Label | Label42 | Net: |  |  |  | 1.66, 0.00, 0.27, 0.17 |
