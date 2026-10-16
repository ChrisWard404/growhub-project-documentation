# Form: Transaction_Totals_By_Location_and_amt_per_unit2 subform

**Caption:** Transaction_Totals_By_Location_and_amt_per_unit2 subform  
**Record source:**

```sql
SELECT [Transaction_Totals_By_Location_and_amt_per_unit2].[ID], [Transaction_Totals_By_Location_and_amt_per_unit2].[LOCATION], [Transaction_Totals_By_Location_and_amt_per_unit2].[Sublot], [Transaction_Totals_By_Location_and_amt_per_unit2].[UNIT_CODE], [Transaction_Totals_By_Location_and_amt_per_unit2].[Total_Activity_Units], [Transaction_Totals_By_Location_and_amt_per_unit2].[Net_Density], [Transaction_Totals_By_Location_and_amt_per_unit2].[Gross_Density], [Transaction_Totals_By_Location_and_amt_per_unit2].[ID_LOCATION_CN] FROM [Transaction_Totals_By_Location_and_amt_per_unit2]
```


## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_Label | ID |  |  |  | 0.04, 0.04, 0.38, 0.17 |
| Label | LOCATION_Label | Location |  |  |  | 0.46, 0.04, 0.42, 0.17 |
| Label | Sublot_Label | Sublot |  |  |  | 0.92, 0.04, 0.79, 0.17 |
| Label | UNIT_CODE_Label | Unit Code |  |  |  | 1.75, 0.04, 0.42, 0.17 |
| Label | Total_Activity_Units_Label | Total_Activity_Units |  |  |  | 2.21, 0.04, 0.79, 0.17 |
| Label | Net_Density_Label | Net_Density |  |  |  | 3.04, 0.04, 0.79, 0.17 |
| Label | Gross_Density_Label | Gross_Density |  |  |  | 3.88, 0.04, 0.79, 0.17 |
| Label | ID_LOCATION_CN_Label | ID_LOCATION_CN |  |  |  | 4.71, 0.04, 0.75, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 0.04, 0.04, 0.38, 0.00 |
| TextBox | LOCATION |  | LOCATION |  |  | 0.46, 0.04, 0.42, 0.00 |
| TextBox | Sublot |  | Sublot |  |  | 0.92, 0.04, 0.79, 0.00 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 1.75, 0.04, 0.42, 0.00 |
| TextBox | Total_Activity_Units |  | Total_Activity_Units |  |  | 2.21, 0.04, 0.79, 0.00 |
| TextBox | Net_Density |  | Net_Density |  |  | 3.04, 0.04, 0.79, 0.00 |
| TextBox | Gross_Density |  | Gross_Density |  |  | 3.88, 0.04, 0.79, 0.00 |
| TextBox | ID_LOCATION_CN |  | ID_LOCATION_CN |  |  | 4.71, 0.04, 0.75, 0.00 |
