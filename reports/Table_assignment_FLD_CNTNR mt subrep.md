# Report: Table_assignment_FLD_CNTNR mt subrep

**Record source:**

```sql
SELECT [**Lot_Lift_CNTNR].*, Round([NO_FLD_CONT]*[AMT_PER_UNIT_INV_GROSS]/1000,2) AS Gross, Round([NO_FLD_CONT]*[AMT_PER_UNIT]/1000,2) AS Net FROM [**Lot_Lift_CNTNR];
```

**Embedded in:** `Report:Table_assignment_Precool mt Subrep`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NO_FLD_CONT |  | NO_FLD_CONT |  |  | 0.00, 0.00, 0.30, 0.18 |
| TextBox | FLD_CONT |  | FLD_CONT |  |  | 0.26, 0.00, 0.34, 0.18 |
| TextBox | C_CN |  | C_CN |  |  | 0.75, 0.00, 0.54, 0.00 |
