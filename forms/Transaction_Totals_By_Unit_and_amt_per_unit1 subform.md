# Form: Transaction_Totals_By_Unit_and_amt_per_unit1 subform

**Caption:** Transaction_Totals_By_Location_and_amt_per_unit1 subform  
**Record source:**

```sql
Transaction_Totals_By_Unit_Code_and_amt_per_unit
```

**Backend tables referenced:** `NMIS_UNITS`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Sum_of_Activity_Units_Label | Units |  |  |  | 1.93, 0.04, 0.60, 0.17 |
| Label | Net_Density_Label | Net Density |  |  |  | 2.59, 0.04, 0.68, 0.17 |
| Label | Gross_Density_Label | Gross Density |  |  |  | 3.33, 0.04, 0.83, 0.17 |
| Label | Label14 | Net M |  |  |  | 4.24, 0.04, 0.54, 0.17 |
| Label | Label19 | Gross M |  |  |  | 4.97, 0.04, 0.55, 0.17 |
| Label | Label18 | Unit |  |  |  | 0.02, 0.04, 1.86, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Sum_of_Activity_Units |  | Total_Activity_Units |  |  | 1.93, 0.04, 0.60, 0.20 |
| TextBox | Net_Density |  | Net_Density_R |  |  | 2.60, 0.04, 0.67, 0.20 |
| TextBox | Gross_Density |  | Gross_Density_R |  |  | 3.33, 0.04, 0.83, 0.20 |
| TextBox | Text12 |  | =Round([Total_Activity_Units]*[Net_Density_R]/1000,3) |  |  | 4.22, 0.04, 0.57, 0.20 |
| TextBox | Text20 |  | =Round([Total_Activity_Units]*[Gross_Density_R]/1000,3) |  |  | 4.96, 0.04, 0.57, 0.20 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC FROM NMIS_UNITS; |  | 0.03, 0.04, 1.85, 0.20 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text15 |  | =Sum(Round([Total_Activity_Units]*[Net_Density_R]/1000,3)) |  |  | 4.17, 0.03, 0.62, 0.20 |
| Label | Label16 | Total on Inventory (M): |  |  |  | 2.82, 0.04, 1.23, 0.17 |
| TextBox | Text21 |  | =Sum(Round([Total_Activity_Units]*[Gross_Density_R]/1000,3)) |  |  | 4.88, 0.03, 0.65, 0.20 |
