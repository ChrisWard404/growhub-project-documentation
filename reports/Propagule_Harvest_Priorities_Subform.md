# Report: Propagule_Harvest_Priorities_Subform

**Caption:** Field Form  
**Record source:**

```sql
SELECT [*Propagule_Harvest_Priorities_Lot_Table].* FROM [*Propagule_Harvest_Priorities_Lot_Table];
```

**Grouping/sorting:** `ID`, `MinOfMinOfLOCATION`, `SUBLOT_NO`  
**Embedded in:** `Report:***Propagule_Harvest_Priorities_Checklist`, `Report:Propagule_Destroy_Priorities`, `Report:Propagule_Harvest_Priorities`, `Report:Propagule_Harvest_Priorities_Checklist`, `Report:Propagule_Harvest_Priorities_Harvested`, `Report:Propagule_Harvest_Priorities_Harvested_by_Date`, `Report:Propagule_Harvest_Priorities_by_Client_loc_Checklist`, `Report:Propagule_Harvest_Priorities_by_loc_Checklist`, `Report:Propagule_Harvest_Priorities_no_Harvest`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line28 |  |  |  |  | 0.10, 45.50, 7.69, 0.00 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line21 |  |  |  |  | 0.00, 0.00, 7.73, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Client |  | Major_Client |  |  | 0.00, 0.01, 0.46, 0.18 |
| TextBox | Source_Location |  | SOURCE |  |  | 0.47, 0.01, 2.13, 0.18 |
| TextBox | Date_Sown |  | MinOfACTIVITY_DATE |  |  | 2.62, 0.01, 0.54, 0.18 |
| TextBox | Bed_Feet |  | SumOfTotal_Activity_Units |  |  | 3.18, 0.01, 0.45, 0.18 |
| TextBox | Bed_Start |  | MinOfMinOfLOCATION |  |  | 3.64, 0.01, 0.39, 0.18 |
| TextBox | Bed_End |  | MaxOfMaxOfLOCATION |  |  | 4.02, 0.01, 0.41, 0.18 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Sum_SumOfTotal_Activity_Units |  | =Sum([SumOfTotal_Activity_Units]) |  |  | 2.92, 0.02, 0.69, 0.00 |
