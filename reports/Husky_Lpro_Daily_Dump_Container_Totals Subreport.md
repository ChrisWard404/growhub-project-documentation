# Report: Husky_Lpro_Daily_Dump_Container_Totals Subreport

**Caption:** **Husky_lpro_xfer_hlift_table2 subreport  
**Record source:**

```sql
SELECT [**Husky_lpro_xfer_hlift_table2].Date, [**Husky_lpro_xfer_hlift_table2].Field_Container, Sum([**Husky_lpro_xfer_hlift_table2].Containers) AS SumOfContainers FROM [**Husky_lpro_xfer_hlift_table2] GROUP BY [**Husky_lpro_xfer_hlift_table2].Date, [**Husky_lpro_xfer_hlift_table2].Field_Container;
```

**Embedded in:** `Report:Husky_Lpro_Daily_Dump_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line6 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Field_Container |  | Field_Container |  |  | 0.05, 0.02, 0.97, 0.19 |
| TextBox | Containers |  | SumOfContainers |  |  | 1.21, 0.02, 0.63, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line7 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
