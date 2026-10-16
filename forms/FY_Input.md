# Form: FY_Input

**Caption:** Report Input  
**Backend tables referenced:** `NMIS_FISCAL_YEARS`  
**Opened from (VBA):** `Report_Agreement_Lot_Begin_FY_Summary`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 |  Report Input  |  |  |  | 1.96, 0.08, 1.30, 0.27 |
| CommandButton | Preview_Report | Click to Preview Report |  |  | Click | 1.88, 3.00, 1.71, 0.75 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.12, 1.12, 4.88, 1.29 |
| ComboBox | FY | Fiscal Year: |  | SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR] FROM NMIS_FISCAL_YEARS;  |  | 2.45, 1.58, 0.97, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Preview_Report_Click()

    Me.Visible = False

End Sub
```
