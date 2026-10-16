# Report: Field_Form_Plants_Inv_Size_Checklist

**Grouping/sorting:** `Field`, `MinOfMinOfMinOfLOCATION`, `MaxOfMaxOfSOW_DIRECTION_SORT`, `ID`, `SUBLOT_NO`  
**Opened from (VBA):** `Form_Field_Form_Plants`, `Form_Field_Form_Plants_For_Inventory_Sizing`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Source_Location_Label | Source |  |  |  | 5.45, 1.02, 0.41, 0.21 |
| Label | Bed_Feet_Label | Bed Feet |  |  |  | 7.51, 0.85, 0.41, 0.38 |
| Label | Bed_Start_Label | Location |  |  |  | 3.94, 1.03, 0.57, 0.20 |
| Label | Notes_Label | Gross (M) |  |  |  | 6.96, 1.02, 0.55, 0.21 |
| Line | Line21 |  |  |  |  | 0.00, 1.26, 7.94, 0.00 |
| Label | Label29 | Lot ID |  |  |  | 0.10, 1.02, 0.33, 0.21 |
| Line | Line28 |  |  |  |  | 0.00, 0.83, 7.94, 0.00 |
| Label | Label38 | Count |  |  |  | 1.35, 1.02, 0.34, 0.21 |
| Label | Label39 | To Size |  |  |  | 2.75, 0.85, 0.26, 0.38 |
| Label | Label41 | Plots |  |  |  | 1.89, 1.02, 0.30, 0.21 |
| Label | Label43 | Dist Between |  |  |  | 2.20, 0.85, 0.55, 0.38 |
| Label | Label45 | Size/Plot |  |  |  | 3.03, 0.85, 0.32, 0.38 |
| Label | Label18 | Field Inventory Sizing Checklist |  |  |  | 2.89, 0.57, 2.34, 0.23 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.66, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.27, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.41, 0.00, 3.24, 0.16 |
| ComboBox | Text179 |  | =[Forms]![Field_Form_Plants_For_Inventory_Sizing]![Diverse] | 0;Traditional Species Only;-1;Non-Traditional Species only;*;" " |  | 0.00, 0.58, 2.58, 0.19 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Field |  | Field |  |  | 0.04, 0.00, 2.96, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Bed_Feet |  | SumOfTotal_Activity_Units |  |  | 7.47, 0.01, 0.41, 0.18 |
| TextBox | From_To |  | From_To |  |  | 3.55, 0.01, 1.44, 0.18 |
| TextBox | CN |  | =[ID] & IIf(Not IsNull([Sublot_no])," Split Lot") |  |  | 0.04, 0.01, 1.05, 0.18 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 1.10, 0.01, 0.17, 0.18 |
| TextBox | Gross |  | Gross |  |  | 7.02, 0.01, 0.44, 0.18 |
| TextBox | Density |  | GD |  |  | 1.29, 0.01, 0.39, 0.18 |
| TextBox | Text40 |  | SIZE |  |  | 2.73, 0.01, 0.26, 0.18 |
| TextBox | Text42 |  | Plots_Int |  |  | 1.89, 0.01, 0.26, 0.18 |
| TextBox | Text44 |  | Dist_Between |  |  | 2.16, 0.01, 0.30, 0.18 |
| TextBox | Text46 |  | Size_per_Plot |  |  | 3.04, 0.01, 0.30, 0.18 |
| TextBox | Dist_Between_Code |  | Dist_Between_Code |  |  | 2.47, 0.01, 0.19, 0.18 |
| TextBox | sb |  | sb |  |  | 3.35, 0.01, 0.18, 0.18 |
| TextBox | Source_Location |  | SOURCE |  |  | 4.99, 0.00, 2.02, 0.18 |
| TextBox | Text51 |  | adj_gross_by_cy_inv |  |  | 1.68, 0.00, 0.19, 0.18 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line32 |  |  |  |  | 0.08, 0.02, 7.85, 0.00 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text50 |  | =Sum([Plots_Int]) |  |  | 1.69, 0.00, 0.46, 0.18 |
| Label | Label51 | Totals |  |  |  | 0.04, 0.00, 0.69, 0.18 |
| TextBox | Text53 |  | =Sum([SumOfTotal_Activity_Units]) |  |  | 7.21, 0.00, 0.67, 0.18 |
| TextBox | Text48 |  | =Sum([Size]) |  |  | 2.43, 0.00, 0.56, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line22 |  |  |  |  | 0.10, 0.03, 7.82, 0.00 |
| TextBox | Text19 |  | =Now() |  |  | 0.12, 0.07, 1.68, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 7.13, 0.07, 0.80, 0.15 |
| TextBox | Text49 |  | Field |  |  | 5.93, 0.04, 1.21, 0.23 |
| TextBox | Text52 | = Sown Reversed | ="j" |  |  | 1.85, 0.08, 0.25, 0.19 |
| TextBox | Text56 |  | ="Prev Yr Count Reduced by " & [Forms]![Field_Form_Plants_For_Inventory_Sizing]![Reduce_Prev_Yr_Counts] & "%" |  |  | 3.89, 0.07, 1.96, 0.18 |
| TextBox | Text54 |  | ="k" |  |  | 3.59, 0.08, 0.25, 0.19 |
