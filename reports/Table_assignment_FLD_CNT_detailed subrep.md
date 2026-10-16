# Report: Table_assignment_FLD_CNT_detailed subrep

**Record source:**

```sql
SELECT [**Lot_Lift_CNTNR].*, Round([NO_FLD_CONT]*[AMT_PER_UNIT_INV_GROSS]/1000,2) AS Gross, Round([NO_FLD_CONT]*[AMT_PER_UNIT]/1000,2) AS Net FROM [**Lot_Lift_CNTNR];
```

**Embedded in:** `Report:Table_assignment_Precool_detailed Subrep`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NO_FLD_CONT |  | NO_FLD_CONT |  |  | 0.00, 0.00, 0.43, 0.18 |
| TextBox | FLD_CONT |  | FLD_CONT |  |  | 0.43, 0.00, 0.48, 0.18 |
| TextBox | C_CN |  | C_CN |  |  | 0.75, 0.00, 0.54, 0.00 |
