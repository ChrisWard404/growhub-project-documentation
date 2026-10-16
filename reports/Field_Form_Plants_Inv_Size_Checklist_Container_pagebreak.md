# Report: Field_Form_Plants_Inv_Size_Checklist_Container_pagebreak

**Grouping/sorting:** `Field`, `MinOfMinOfMinOfLOCATION`, `MaxOfMaxOfSOW_DIRECTION_SORT`, `ID`, `SUBLOT_NO`  
**Opened from (VBA):** `Form_Field_Form_Plants_For_Inventory_Sizing`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Source_Location_Label | Source |  |  |  | 5.13, 1.24, 0.41, 0.21 |
| Label | Bed_Feet_Label | Units |  |  |  | 7.06, 1.25, 0.39, 0.21 |
| Label | Bed_Start_Label | Location |  |  |  | 3.67, 1.25, 0.57, 0.20 |
| Label | Notes_Label | Gross (M) |  |  |  | 6.48, 1.24, 0.55, 0.21 |
| Line | Line21 |  |  |  |  | 0.00, 1.48, 7.94, 0.00 |
| Label | Label29 | Lot ID |  |  |  | 0.10, 1.24, 0.33, 0.21 |
| Line | Line28 |  |  |  |  | 0.00, 1.05, 7.94, 0.00 |
| Label | Label38 | Count |  |  |  | 1.32, 1.24, 0.34, 0.21 |
| Label | Label41 | Plots |  |  |  | 1.85, 1.24, 0.30, 0.21 |
| Label | Label43 | Distance Between |  |  |  | 2.18, 1.07, 0.55, 0.38 |
| Label | Label45 | Size/Plot |  |  |  | 2.75, 1.07, 0.32, 0.38 |
| Label | Label18 | Container Inventory Sizing Checklist |  |  |  | 2.60, 0.55, 2.70, 0.23 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.66, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.27, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.41, 0.00, 3.24, 0.16 |
| TextBox | Field |  | Field |  |  | 0.54, 0.78, 7.04, 0.26 |
| ComboBox | Text179 |  | =[Forms]![Field_Form_Plants_For_Inventory_Sizing]![Diverse] | 0;Traditional Species Only;-1;Non-Traditional Species only;*;" " |  | 0.00, 0.58, 2.58, 0.19 |
| Label | Label60 | Unit Code |  |  |  | 7.57, 1.08, 0.35, 0.36 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Source_Location |  | SOURCE |  |  | 4.51, 0.01, 2.02, 0.18 |
| TextBox | Bed_Feet |  | SumOfTotal_Activity_Units |  |  | 6.99, 0.01, 0.41, 0.18 |
| TextBox | From_To |  | From_To |  |  | 3.28, 0.01, 1.22, 0.18 |
| TextBox | CN |  | =[ID] & IIf(Not IsNull([Sublot_no])," Split Lot") |  |  | 0.04, 0.01, 1.05, 0.18 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 1.09, 0.01, 0.17, 0.18 |
| TextBox | Gross |  | Gross |  |  | 6.54, 0.01, 0.44, 0.18 |
| TextBox | Density |  | GD |  |  | 1.27, 0.01, 0.39, 0.18 |
| TextBox | Text42 |  | Plots_Int |  |  | 1.85, 0.01, 0.26, 0.18 |
| TextBox | Text44 |  | DistBetween |  |  | 2.29, 0.01, 0.30, 0.18 |
| TextBox | Text46 |  | INV_SIZE_SAMPLE |  |  | 2.76, 0.01, 0.30, 0.18 |
| TextBox | sb |  | sb |  |  | 3.08, 0.01, 0.18, 0.18 |
| TextBox | Text51 |  | adj_gross_by_cy_inv |  |  | 1.66, 0.01, 0.19, 0.18 |
| TextBox | Text61 |  | CycleGrowContainer |  |  | 7.42, 0.00, 0.50, 0.18 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line32 |  |  |  |  | 0.08, 0.02, 7.85, 0.00 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text50 |  | =Sum([Plots_Int]) |  |  | 1.66, 0.00, 0.46, 0.18 |
| Label | Label51 | Totals |  |  |  | 0.04, 0.00, 0.69, 0.18 |
| TextBox | Text53 |  | =Sum([SumOfTotal_Activity_Units]) |  |  | 6.73, 0.00, 0.67, 0.18 |
| TextBox | Text48 |  | =Sum([INV_SIZE_SAMPLE]) |  |  | 2.50, 0.00, 0.56, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.11, 0.05, 1.51, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.67, 0.05, 0.80, 0.00 |
| Line | Line22 |  |  |  |  | 0.10, 0.03, 7.82, 0.00 |
| TextBox | Text49 |  | Field |  |  | 6.46, 0.02, 1.48, 0.23 |
| TextBox | Text52 | = Sown Reversed | ="j" |  |  | 1.70, 0.07, 0.25, 0.19 |
| TextBox | Text56 |  | ="Prev Yr Count Reduced by " & [Forms]![Field_Form_Plants_For_Inventory_Sizing]![Reduce_Prev_Yr_Counts] & "%" |  |  | 3.09, 0.04, 1.54, 0.18 |
| TextBox | Text54 |  | ="k" |  |  | 2.84, 0.07, 0.25, 0.19 |
| TextBox | Text62 | = No Prev Inv | ="l" |  |  | 5.53, 0.07, 0.25, 0.19 |
