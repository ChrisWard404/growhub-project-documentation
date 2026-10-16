# Form: Transaction_Totals_By_Unit_and_amt_per_unit1a subform

**Caption:** Transaction_Totals_By_Location_and_amt_per_unit1 subform  
**Record source:**

```sql
Transaction_Totals_By_Unit_Code_and_amt_per_unit
```

**Backend tables referenced:** `NMIS_UNITS`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Sum_of_Activity_Units_Label | Units |  |  |  | 2.44, 0.04, 0.60, 0.17 |
| Label | Net_Density_Label | Net/Unit |  |  |  | 3.10, 0.04, 0.53, 0.17 |
| Label | Gross_Density_Label | Gross Unit |  |  |  | 3.69, 0.04, 0.61, 0.17 |
| Label | Label14 | Net M |  |  |  | 5.04, 0.04, 0.54, 0.17 |
| Label | Label19 | Gross M |  |  |  | 4.35, 0.04, 0.55, 0.17 |
| Label | Label18 | Unit |  |  |  | 0.54, 0.04, 1.86, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Sum_of_Activity_Units |  | Total_Activity_Units |  |  | 2.46, 0.04, 0.60, 0.20 |
| TextBox | Net_Density |  | Net_Density_R |  |  | 3.12, 0.04, 0.50, 0.20 |
| TextBox | Gross_Density |  | Gross_Density_R |  |  | 3.70, 0.04, 0.59, 0.20 |
| TextBox | Text12 |  | =Round([Total_Activity_Units]*[Net_Density_R]/1000,3) |  |  | 5.03, 0.04, 0.57, 0.20 |
| TextBox | Text20 |  | =Round([Total_Activity_Units]*[Gross_Density_R]/1000,3) |  |  | 4.34, 0.04, 0.57, 0.20 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC FROM NMIS_UNITS;  |  | 0.55, 0.04, 1.85, 0.20 |
| CommandButton | Zero | Zero |  |  | Click | 0.08, 0.05, 0.38, 0.20 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text15 |  | =Sum(Round([Total_Activity_Units]*[Net_Density_R]/1000,3)) |  |  | 4.97, 0.03, 0.62, 0.20 |
| Label | Label16 | Totals(M): |  |  |  | 3.63, 0.04, 0.56, 0.17 |
| TextBox | Text21 |  | =Sum(Round([Total_Activity_Units]*[Gross_Density_R]/1000,3)) |  |  | 4.27, 0.03, 0.65, 0.20 |
| TextBox | Text22 |  | =Sum([Total_Activity_Units]) |  |  | 2.42, 0.03, 0.60, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Zero_Click()

MsgBox "not Yet"

End Sub
```
