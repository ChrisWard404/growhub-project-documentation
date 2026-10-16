# Report: Plant_Inventory_Worksheet_Field_Location_Index Subform_bu

**Caption:** Field Index  
**Grouping/sorting:** `ID`, `LOCATION`, `DIST_FROM_BED_BEG`  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Ft_In_Lot |  | Ft_In_Lot |  |  | 1.25, 0.00, 0.33, 0.13 |
| TextBox | Begin_Riser |  | =IIf([BEGIN_INDEX]<[END_INDEX],[BEGIN_INDEX],[END_INDEX]) |  |  | 0.60, 0.00, 0.27, 0.13 |
| TextBox | Location |  | Location |  |  | 0.00, 0.00, 0.36, 0.13 |
| Line | Line43 |  |  |  |  | 0.00, 0.14, 1.58, 0.00 |
| TextBox | End_Riser |  | =[Begin_Riser]+([Ft_In_Lot]/30) |  |  | 0.94, 0.00, 0.29, 0.13 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 0.37, 0.00, 0.12, 0.14 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text70 |  | =Sum([Ft_In_Lot]) |  |  | 1.11, 0.00, 0.49, 0.15 |
| Label | Label48 | Total Containers: |  |  |  | 0.06, 0.00, 0.94, 0.16 |
