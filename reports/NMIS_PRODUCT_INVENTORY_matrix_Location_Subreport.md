# Report: NMIS_PRODUCT_INVENTORY_matrix_Location_Subreport

**Record source:**

```sql
SELECT [**NMIS_PRODUCT_INVENTORY_REPORT_LOCATIONS].AGREEMENT_LOT_CN, [**NMIS_PRODUCT_INVENTORY_REPORT_LOCATIONS].Location FROM [**NMIS_PRODUCT_INVENTORY_REPORT_LOCATIONS] GROUP BY [**NMIS_PRODUCT_INVENTORY_REPORT_LOCATIONS].AGREEMENT_LOT_CN, [**NMIS_PRODUCT_INVENTORY_REPORT_LOCATIONS].Location;
```

**Grouping/sorting:** `AGREEMENT_LOT_CN`, `Location`  
**Embedded in:** `Report:Plant_inventory_Rpt_Size_Matrix`, `Report:Plant_inventory_Rpt_Size_Matrix_Group`, `Report:Plant_inventory_Rpt_Size_Matrix_Group_pct_only`, `Report:Plant_inventory_Rpt_Size_Matrix_Group_pct_only_new`, `Report:Plant_inventory_Rpt_Size_Matrix_PCT_Only_Group`, `Report:Plant_inventory_Rpt_Size_Matrix_pct_only`  

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label2 | Location(s) |  |  |  | 0.00, 0.01, 1.21, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Location |  | Location |  |  | 0.00, 0.00, 1.75, 0.20 |
