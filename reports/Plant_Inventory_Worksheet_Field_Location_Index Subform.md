# Report: Plant_Inventory_Worksheet_Field_Location_Index Subform

**Grouping/sorting:** `AGREEMENT_LOT_CN`, `LOCATION`  
**Embedded in:** `Report:PROPAGULE_HARVEST_DRYING_BIN`, `Report:PROPAGULE_HARVEST_DRYING_BIN_LABEL2`, `Report:PROPAGULE_HARVEST_DRYING_BIN_Single_Tray`, `Report:Plant_Inventory_Worksheet`, `Report:Plant_Inventory_Worksheet_bu`, `Report:Plant_Inventory_Worksheet_w_matrix`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Ft_In_Lot |  | Ft_In_Lot |  |  | 1.33, 0.00, 0.33, 0.13 |
| TextBox | Location |  | Location |  |  | 0.00, 0.00, 0.42, 0.13 |
| Line | Line43 |  |  |  |  | 0.00, 0.14, 1.66, 0.00 |
| TextBox | End_Riser |  | END_INDEX |  |  | 0.96, 0.00, 0.37, 0.13 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 0.43, 0.00, 0.12, 0.14 |
| TextBox | Begin_Riser |  | BEGIN_INDEX |  |  | 0.56, 0.00, 0.38, 0.12 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text70 |  | =Sum([Ft_In_Lot]) |  |  | 1.21, 0.00, 0.49, 0.15 |
| Label | Label48 | Total Containers: |  |  |  | 0.06, 0.00, 0.94, 0.16 |
