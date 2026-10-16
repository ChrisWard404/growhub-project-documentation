# Report: Agreement_Lot_Grow_Locations_Subreport

**Record source:**

```sql
**Trans_Totals_By_Loc_and_amt_per_unit_Grow_sublot2
```

**Grouping/sorting:** `LOCATION`, `BeginIndex`, `Sublot`  
**Embedded in:** `Report:NMIS_AGREEMENTS_Holdover_Report`, `Report:NMIS_AGREEMENTS_Holdover_Report_by_product`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label7 | Location |  |  |  | 0.00, 0.00, 0.62, 0.21 |
| Label | Label8 | Sublot |  |  |  | 1.60, 0.00, 0.48, 0.21 |
| Label | Label9 | Unit Code |  |  |  | 0.77, 0.00, 0.72, 0.21 |
| Label | Label10 | Units |  |  |  | 3.75, 0.00, 0.40, 0.21 |
| Label | Label11 | Beg Index |  |  |  | 2.17, 0.00, 0.71, 0.21 |
| Label | Label12 | End Index |  |  |  | 2.93, 0.00, 0.73, 0.21 |
| Label | Label13 | Gross Density |  |  |  | 4.22, 0.00, 0.97, 0.21 |
| Label | Label14 | Net Density |  |  |  | 5.27, 0.00, 0.81, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | LOCATION |  | LOCATION |  |  | 0.04, 0.01, 0.67, 0.18 |
| TextBox | Sublot |  | Sublot |  |  | 1.66, 0.01, 0.33, 0.18 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 0.77, 0.01, 0.67, 0.18 |
| TextBox | Total_Activity_Units |  | Total_Activity_Units |  |  | 3.62, 0.01, 0.50, 0.18 |
| TextBox | Net_Density |  | Net_Density |  |  | 5.25, 0.01, 0.67, 0.18 |
| TextBox | Gross_Density |  | Gross_Density |  |  | 4.39, 0.01, 0.62, 0.18 |
| TextBox | BeginIndex |  | BeginIndex |  |  | 2.24, 0.01, 0.42, 0.18 |
| TextBox | EndIndex |  | EndIndex |  |  | 3.10, 0.01, 0.42, 0.18 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line17 |  |  |  |  | 0.00, 0.04, 6.12, 0.00 |
