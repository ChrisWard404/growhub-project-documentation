# Report: Propagule_Harvest_Priorities_Subform_bu

**Caption:** Field Form  
**Record source:**

```sql
SELECT [*Propagule_Harvest_Priorities_Lot_Table].* FROM [*Propagule_Harvest_Priorities_Lot_Table];
```

**Grouping/sorting:** `MinOfLOCATION`, `SUBLOT_NO`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Client_Label | Client |  |  |  | 0.67, 0.00, 0.44, 0.20 |
| Label | Source_Location_Label | Source |  |  |  | 1.69, 0.00, 0.52, 0.20 |
| Label | Date_Sown_Label | Sown |  |  |  | 3.38, 0.00, 0.42, 0.20 |
| Label | Bed_Feet_Label | Feet |  |  |  | 3.89, 0.00, 0.33, 0.20 |
| Line | Line21 |  |  |  |  | 0.06, 0.21, 7.73, 0.00 |
| Label | Label26 | From... ...To |  |  |  | 4.33, 0.03, 0.69, 0.17 |
| Label | Label29 | Lot ID |  |  |  | 0.02, 0.00, 0.45, 0.20 |
| Line | Line28 |  |  |  |  | 0.10, 45.50, 7.69, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Client |  | Major_Client |  |  | 0.68, 0.01, 0.46, 0.18 |
| TextBox | Source_Location |  | SOURCE |  |  | 1.15, 0.01, 2.13, 0.18 |
| TextBox | Date_Sown |  | MinOfACTIVITY_DATE |  |  | 3.30, 0.01, 0.54, 0.18 |
| TextBox | Bed_Feet |  | SumOfTotal_Activity_Units |  |  | 3.88, 0.01, 0.41, 0.18 |
| TextBox | Bed_Start |  | MinOfLOCATION |  |  | 4.31, 0.01, 0.39, 0.18 |
| TextBox | Bed_End |  | MaxOfLOCATION |  |  | 4.70, 0.01, 0.41, 0.18 |
| TextBox | CN |  | ID |  |  | 0.04, 0.01, 0.42, 0.18 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 0.48, 0.01, 0.17, 0.18 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line32 |  |  |  |  | 0.08, 0.01, 7.73, 0.00 |
