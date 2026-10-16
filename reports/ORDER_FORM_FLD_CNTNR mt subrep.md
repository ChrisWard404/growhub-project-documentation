# Report: ORDER_FORM_FLD_CNTNR mt subrep

**Record source:**

```sql
SELECT [**Lot_Lift_CNTNR].*, Round([NO_FLD_CONT]*[AMT_PER_UNIT_INV_GROSS]/1000,2) AS Gross, Round([NO_FLD_CONT]*[AMT_PER_UNIT]/1000,2) AS Net FROM [**Lot_Lift_CNTNR];
```

**Embedded in:** `Report:ORDER_FORM_LIFT mt Subrep`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NO_FLD_CONT |  | NO_FLD_CONT |  |  | 0.00, 0.00, 0.34, 0.00 |
| TextBox | FLD_CONT |  | FLD_CONT |  |  | 0.35, 0.00, 0.38, 0.00 |
| TextBox | C_CN |  | C_CN |  |  | 3.18, 0.00, 0.54, 0.00 |
| TextBox | AMT_PER_UNIT |  | AMT_PER_UNIT |  |  | 1.21, 0.00, 0.45, 0.00 |
| TextBox | AMT_PER_UNIT_INV_GROSS |  | AMT_PER_UNIT_INV_GROSS |  |  | 0.75, 0.00, 0.42, 0.00 |
| TextBox | Gross |  | Gross |  |  | 1.67, 0.00, 0.51, 0.00 |
| TextBox | Net |  | Net |  |  | 2.18, 0.00, 0.47, 0.00 |
