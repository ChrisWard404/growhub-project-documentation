# Report: Current_Inventory_By_Unit

**Caption:** Current_Inventory_By_Unit  
**Record source:**

```sql
SELECT Transaction_Totals_By_Unit_Code_and_amt_per_unit.AGREEMENT_LOT_CN, Transaction_Totals_By_Unit_Code_and_amt_per_unit.UNIT_CODE, Transaction_Totals_By_Unit_Code_and_amt_per_unit.Total_Activity_Units, Transaction_Totals_By_Unit_Code_and_amt_per_unit.Net_Density_R, Transaction_Totals_By_Unit_Code_and_amt_per_unit.Gross_Density_R, Sum([Total_Activity_Units]*[Net_Density_R]/[UNIT_MULTIPLIER]) AS Net, Sum([Total_Activity_Units]*[Gross_Density_R]/[UNIT_MULTIPLIER]) AS Gross FROM Transaction_Totals_By_Unit_Code_and_amt_per_unit GROUP BY Transaction_Totals_By_Unit_Code_and_amt_per_unit.AGREEMENT_LOT_CN, Transaction_Totals_By_Unit_Code_and_amt_per_unit.UNIT_CODE, Transaction_Totals_By_Unit_Code_and_amt_per_unit.Total_Activity_Units, Transaction_Totals_By_Unit_Code_and_amt_per_unit.Net_Density_R, Transaction_Totals_By_Unit_Code_and_amt_per_unit.Gross_Density_R;
```

**Grouping/sorting:** `UNIT_CODE`  
**Backend tables referenced:** `NMIS_UNITS`  
**Embedded in:** `Report:Inventory_of_All_summary`, `Report:NMIS_AGREEMENT_LOT_Transaction_Balance`, `Report:NMIS_AGREEMENT_LOT_Transaction_Balance_by_order`, `Report:NMIS_AGREEMENT_Lots_Activities_and_Transactions`, `Report:NMIS_AGREEMENT_Lots_Activities_wo_Transactions`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | UNIT_CODE_Label | Unit |  |  |  | 0.10, 0.28, 0.98, 0.19 |
| Label | Net_Density_R_Label | Gross |  |  |  | 4.59, 0.27, 0.48, 0.19 |
| Label | Total_Activity_Units_Label | Est. Net |  |  |  | 5.31, 0.27, 0.59, 0.20 |
| Label | Label22 | Gross Density |  |  |  | 2.64, 0.27, 0.87, 0.19 |
| Label | Label23 | Est. Net Density |  |  |  | 3.53, 0.27, 0.96, 0.20 |
| Label | Label24 | No. of Units |  |  |  | 1.82, 0.28, 0.79, 0.19 |
| Label | Current_Inventory_By_Unit Label | Current Inventory by Unit |  |  |  | 2.00, 0.04, 1.87, 0.17 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line10 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Total_Activity_Units |  | Net |  |  | 5.24, 0.02, 0.66, 0.19 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC FROM NMIS_UNITS;  |  | 0.10, 0.02, 1.65, 0.19 |
| TextBox | Text13 |  | Gross |  |  | 4.44, 0.02, 0.62, 0.19 |
| TextBox | Text18 |  | Total_Activity_Units |  |  | 1.77, 0.02, 0.85, 0.19 |
| TextBox | Net_Density_R |  | Net_Density_R |  |  | 3.60, 0.02, 0.71, 0.19 |
| TextBox | Gross_Density_R |  | Gross_Density_R |  |  | 2.78, 0.02, 0.67, 0.19 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text25 |  | =Sum([Net]) |  |  | 5.24, 0.04, 0.66, 0.19 |
| TextBox | Text26 |  | =Sum([Gross]) |  |  | 4.40, 0.04, 0.67, 0.19 |
| Label | Label27 | Subtotals |  |  |  | 3.71, 0.04, 0.60, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line11 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text15 |  | =Sum([Net]) |  |  | 5.24, 0.04, 0.66, 0.19 |
| TextBox | Text16 |  | =Sum([Gross]) |  |  | 4.40, 0.04, 0.67, 0.19 |
| Label | Label17 | Totals |  |  |  | 3.87, 0.04, 0.44, 0.19 |
