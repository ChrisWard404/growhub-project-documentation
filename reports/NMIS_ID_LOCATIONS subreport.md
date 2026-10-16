# Report: NMIS_ID_LOCATIONS subreport

**Caption:** NMIS_ID_LOCATIONS subreport  
**Record source:**

```sql
**Transaction_Total_Bed_Ft
```

**Embedded in:** `Report:Container_Location_Index`, `Report:Container_Location_Index_Inv_Stat`, `Report:Container_Location_Index_fs_vs_non`, `Report:Field_Location_Index`, `Report:Field_Location_Index_Inv_Stat`, `Report:Field_Location_Index_fs_vs_non`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line6 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 0.04, 0.04, 0.88, 0.21 |
| TextBox | Ft_In_Lot |  | SumOfTotal_Activity_Units |  |  | 1.08, 0.04, 0.54, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line7 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
