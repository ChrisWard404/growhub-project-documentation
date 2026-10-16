# Form: NMIS_FISCAL_YEAR_Current

**Caption:** Current Fiscal Year  
**Record source:**

```sql
NMIS_FISCAL_YEAR Query
```

**Embedded in:** `Form:Switchboard`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | FISCAL_YEAR_TEXT | Fiscal Year Text: | FISCAL_YEAR |  |  | 1.63, 0.79, 0.67, 0.20 |
| TextBox | FISCAL_YEAR_NUMBER | Fiscal Year Number: | FISCAL_YEAR_NUMBER |  |  | 1.62, 1.04, 0.68, 0.20 |
| Label | Label4 | Current Fiscal Year |  |  |  | 0.58, 0.08, 1.31, 0.20 |
| TextBox | Text5 | Today's Date: | =Now() |  |  | 1.63, 0.52, 0.67, 0.20 |
| Line | Line7 |  |  |  |  | 0.08, 0.38, 2.33, 0.00 |
| TextBox | BEGIN_DATE | FY Begin Date: | BEGIN_DATE |  |  | 1.62, 1.29, 0.69, 0.20 |
| TextBox | END_DATE | FY End Date: | END_DATE |  |  | 1.62, 1.54, 0.69, 0.20 |
