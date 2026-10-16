# Form: Transaction_Totals_By_Location_and_amt_per_unit1 subform

**Caption:** Transaction_Totals_By_Location_and_amt_per_unit1 subform  
**Record source:**

```sql
Transaction_Totals_By_Location_and_amt_per_unit2
```

**Backend tables referenced:** `NMIS_UNITS`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | LOCATION_CN_Label | Location |  |  |  | 0.04, 0.04, 1.65, 0.17 |
| Label | Sum_of_Activity_Units_Label | Units |  |  |  | 1.76, 0.04, 0.60, 0.17 |
| Label | Net_Density_Label | Net Density |  |  |  | 4.33, 0.04, 0.66, 0.17 |
| Label | Gross_Density_Label | Gross Density |  |  |  | 5.07, 0.04, 0.81, 0.17 |
| Label | Label14 | Net M |  |  |  | 5.98, 0.04, 0.52, 0.17 |
| Label | Label18 | Unit |  |  |  | 2.40, 0.04, 1.86, 0.17 |
| Label | Label19 | Gross M |  |  |  | 6.71, 0.04, 0.53, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Sum_of_Activity_Units |  | Total_Activity_Units |  |  | 1.76, 0.04, 0.60, 0.20 |
| TextBox | Net_Density |  | Net_Density |  |  | 4.34, 0.04, 0.64, 0.20 |
| TextBox | Gross_Density |  | Gross_Density |  |  | 5.07, 0.04, 0.81, 0.20 |
| TextBox | Text12 |  | =Round([Total_Activity_Units]*Round([Net_Density],3)/1000,3) |  |  | 5.97, 0.04, 0.55, 0.20 |
| TextBox | LOCATION_CN |  | LOCATION2 |  |  | 0.05, 0.04, 1.64, 0.20 |
| TextBox | Text20 |  | =Round([Total_Activity_Units]*Round([Gross_Density],3)/1000,3) |  |  | 6.70, 0.04, 0.55, 0.20 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC FROM NMIS_UNITS;  |  | 2.41, 0.04, 1.85, 0.20 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text15 |  | =Sum(Round([Total_Activity_Units]*Round([Net_Density],3)/1000,3)) |  |  | 5.91, 0.03, 0.59, 0.20 |
| Label | Label16 | Total on Inventory (M): |  |  |  | 4.56, 0.04, 1.21, 0.17 |
| TextBox | Text21 |  | =Sum(Round([Total_Activity_Units]*Round([Gross_Density],3)/1000,3)) |  |  | 6.62, 0.03, 0.62, 0.20 |
