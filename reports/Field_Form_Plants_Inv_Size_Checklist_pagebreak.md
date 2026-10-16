# Report: Field_Form_Plants_Inv_Size_Checklist_pagebreak

**Grouping/sorting:** `Field`, `MinOfMinOfMinOfLOCATION`, `MaxOfMaxOfSOW_DIRECTION_SORT`, `ID`, `SUBLOT_NO`  
**Opened from (VBA):** `Form_Field_Form_Plants_For_Inventory_Sizing`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Source_Location_Label | Source |  |  |  | 5.61, 1.24, 0.41, 0.21 |
| Label | Bed_Feet_Label | Bed Feet |  |  |  | 7.51, 1.07, 0.41, 0.38 |
| Label | Bed_Start_Label | Location |  |  |  | 3.92, 1.25, 0.57, 0.20 |
| Label | Notes_Label | Gross (M) |  |  |  | 6.96, 1.24, 0.55, 0.21 |
| Line | Line21 |  |  |  |  | 0.00, 1.48, 7.94, 0.00 |
| Label | Label29 | Lot ID |  |  |  | 0.10, 1.24, 0.33, 0.21 |
| Line | Line28 |  |  |  |  | 0.00, 1.05, 7.94, 0.00 |
| Label | Label38 | Count |  |  |  | 1.32, 1.24, 0.34, 0.21 |
| Label | Label39 | To Size |  |  |  | 2.73, 1.07, 0.26, 0.38 |
| Label | Label41 | Plots |  |  |  | 1.85, 1.24, 0.30, 0.21 |
| Label | Label43 | Dist Between |  |  |  | 2.18, 1.07, 0.55, 0.38 |
| Label | Label45 | Size/Plot |  |  |  | 3.01, 1.07, 0.32, 0.38 |
| Label | Label18 | Field Inventory Sizing Checklist |  |  |  | 2.67, 0.55, 2.58, 0.23 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.66, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.27, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.41, 0.00, 3.24, 0.16 |
| TextBox | Field |  | Field |  |  | 0.54, 0.78, 7.04, 0.26 |
| ComboBox | Text179 |  | =[Forms]![Field_Form_Plants_For_Inventory_Sizing]![Diverse] | 0;Traditional Species Only;-1;Non-Traditional Species only;*;" " |  | 0.00, 0.58, 2.58, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Source_Location |  | SOURCE |  |  | 4.99, 0.01, 2.02, 0.18 |
| TextBox | Bed_Feet |  | SumOfTotal_Activity_Units |  |  | 7.47, 0.01, 0.41, 0.18 |
| TextBox | From_To |  | From_To |  |  | 3.53, 0.01, 1.44, 0.18 |
| TextBox | CN |  | =[ID] & IIf(Not IsNull([Sublot_no])," Split Lot") |  |  | 0.04, 0.01, 1.05, 0.18 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 1.09, 0.01, 0.17, 0.18 |
| TextBox | Gross |  | Gross |  |  | 7.02, 0.01, 0.44, 0.18 |
| TextBox | Density |  | GD |  |  | 1.27, 0.01, 0.39, 0.18 |
| TextBox | Text40 |  | SIZE |  |  | 2.71, 0.01, 0.26, 0.18 |
| TextBox | Text42 |  | Plots_Int |  |  | 1.85, 0.01, 0.26, 0.18 |
| TextBox | Text44 |  | Dist_Between |  |  | 2.14, 0.01, 0.30, 0.18 |
| TextBox | Text46 |  | Size_per_Plot |  |  | 3.02, 0.01, 0.30, 0.18 |
| TextBox | Dist_Between_Code |  | Dist_Between_Code |  |  | 2.45, 0.01, 0.19, 0.18 |
| TextBox | sb |  | sb |  |  | 3.33, 0.01, 0.18, 0.18 |
| TextBox | Text51 |  | adj_gross_by_cy_inv |  |  | 1.66, 0.01, 0.19, 0.18 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line32 |  |  |  |  | 0.08, 0.02, 7.85, 0.00 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text50 |  | =Sum([Plots_Int]) |  |  | 1.66, 0.00, 0.46, 0.18 |
| Label | Label51 | Totals |  |  |  | 0.04, 0.00, 0.69, 0.18 |
| TextBox | Text53 |  | =Sum([SumOfTotal_Activity_Units]) |  |  | 7.21, 0.00, 0.67, 0.18 |
| TextBox | Text48 |  | =Sum([Size]) |  |  | 2.41, 0.00, 0.56, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.04, 0.05, 1.75, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 7.12, 0.05, 0.80, 0.15 |
| Line | Line22 |  |  |  |  | 0.10, 0.03, 7.82, 0.00 |
| TextBox | Text49 |  | Field |  |  | 5.92, 0.02, 1.21, 0.23 |
| TextBox | Text52 | = Sown Reversed | ="j" |  |  | 1.84, 0.06, 0.25, 0.19 |
| TextBox | Text56 |  | ="Prev Yr Count Reduced by " & [Forms]![Field_Form_Plants_For_Inventory_Sizing]![Reduce_Prev_Yr_Counts] & "%" |  |  | 3.88, 0.05, 1.96, 0.18 |
| TextBox | Text54 |  | ="k" |  |  | 3.58, 0.06, 0.25, 0.19 |
