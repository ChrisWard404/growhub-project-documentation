# Report: Processing_QI_Summary_By_Table_and_Date_Range_Subreport_pre_fy06

**Caption:** NMIS_Processing_QI_Shed_Summary  
**Record source:**

```sql
Processing_QI_Samples_Table_Summary_by_Date_Range4
```


## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SumOfSAMPLE_SIZE |  | Table_Sorting_Quality |  |  | 1.07, 0.03, 0.50, 0.23 |
| TextBox | Floor_Sample |  | =IIf(IsNull([Floor_Sorting_Quality]),"No Sample",[Floor_Sorting_Quality]) |  |  | 9.31, 0.03, 0.77, 0.23 |
| TextBox | Root_Pruning_Quality |  | Root_Pruning_Quality |  |  | 5.62, 0.03, 0.50, 0.23 |
| TextBox | Incidentals |  | Incidentals |  |  | 6.21, 0.03, 0.50, 0.23 |
| TextBox | Short |  | Short |  |  | 6.80, 0.03, 0.50, 0.23 |
| TextBox | Marginal_Short |  | Marginal_Short |  |  | 7.41, 0.03, 0.50, 0.23 |
| TextBox | Marginal_Long |  | Marginal_Long |  |  | 8.09, 0.03, 0.50, 0.23 |
| TextBox | Long |  | Long |  |  | 8.62, 0.03, 0.50, 0.23 |
| TextBox | Caliper_Half |  | Caliper_Half |  |  | 2.20, 0.03, 0.50, 0.23 |
| TextBox | Height_Half |  | Height_Half |  |  | 3.28, 0.03, 0.50, 0.23 |
| TextBox | Caliper |  | Caliper |  |  | 1.67, 0.03, 0.50, 0.23 |
| TextBox | Height |  | Height |  |  | 2.76, 0.03, 0.50, 0.23 |
| TextBox | Top_Other |  | Top_Other |  |  | 3.83, 0.03, 0.50, 0.23 |
| TextBox | Root_Other |  | Root_Other |  |  | 4.37, 0.03, 0.50, 0.23 |
| TextBox | Other |  | Other |  |  | 4.90, 0.03, 0.50, 0.23 |
| Label | Label128 | Shed Averages |  |  |  | 0.10, 0.07, 0.86, 0.17 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line16 |  |  |  |  | 0.04, 0.01, 10.19, 0.00 |
