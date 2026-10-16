# Report: Field_Form_Plants_Inv_Count_Checklist_pagebreak

**Grouping/sorting:** `Field`, `MinOfMinOfMinOfLOCATION`, `MaxOfMaxOfSOW_DIRECTION_SORT`, `ID`, `SUBLOT_NO`  
**Opened from (VBA):** `Form_Field_Form_Plants_For_Inventory_Sizing`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Source_Location_Label | Source |  |  |  | 5.45, 1.25, 0.41, 0.21 |
| Label | Bed_Feet_Label | Bed Feet |  |  |  | 7.51, 1.08, 0.41, 0.38 |
| Label | Bed_Start_Label | Location |  |  |  | 3.76, 1.26, 0.57, 0.20 |
| Label | Notes_Label | Gross (M) |  |  |  | 6.96, 1.25, 0.55, 0.21 |
| Line | Line21 |  |  |  |  | 0.00, 1.49, 7.94, 0.00 |
| Label | Label29 | Lot ID |  |  |  | 0.10, 1.25, 0.33, 0.21 |
| Line | Line28 |  |  |  |  | 0.00, 1.06, 7.94, 0.00 |
| Label | Label41 | Plots |  |  |  | 1.70, 1.25, 0.30, 0.21 |
| Label | Label43 | Dist Between |  |  |  | 2.02, 1.08, 0.55, 0.38 |
| Label | Label18 | Field Inventory Count Checklist |  |  |  | 2.58, 0.56, 2.92, 0.23 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.57, 0.16, 2.91, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.25, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.39, 0.00, 3.24, 0.16 |
| TextBox | Field |  | Field |  |  | 0.50, 0.79, 7.08, 0.26 |
| Label | Label55 | Inv Type |  |  |  | 2.62, 1.08, 0.41, 0.38 |
| ComboBox | Text179 |  | =[Forms]![Field_Form_Plants_For_Inventory_Sizing]![Diverse] | 0;Traditional Species Only;-1;Non-Traditional Species only;*;" " |  | 0.00, 0.58, 2.58, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Source_Location |  | SOURCE |  |  | 4.83, 0.01, 2.13, 0.18 |
| TextBox | Bed_Feet |  | SumOfTotal_Activity_Units |  |  | 7.47, 0.01, 0.41, 0.18 |
| TextBox | From_To |  | From_To |  |  | 3.31, 0.01, 1.50, 0.18 |
| TextBox | CN |  | ID_SPLIT_LOT |  |  | 0.09, 0.01, 1.13, 0.18 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 1.23, 0.01, 0.17, 0.18 |
| TextBox | Gross |  | Gross |  |  | 6.96, 0.01, 0.51, 0.18 |
| TextBox | Text42 |  | Plots_Int |  |  | 1.70, 0.01, 0.26, 0.18 |
| TextBox | Text44 |  | Dist_Between |  |  | 1.98, 0.01, 0.30, 0.18 |
| TextBox | Dist_Between_Code |  | Dist_Between_Code |  |  | 2.29, 0.01, 0.19, 0.18 |
| TextBox | sb |  | sb |  |  | 3.00, 0.01, 0.29, 0.18 |
| TextBox | Inv_Type |  | Inv_Type |  |  | 2.73, 0.02, 0.22, 0.00 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line32 |  |  |  |  | 0.08, 0.02, 7.85, 0.00 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text50 |  | =Sum([Plots_Int]) |  |  | 1.50, 0.00, 0.46, 0.18 |
| Label | Label51 | Totals |  |  |  | 0.04, 0.00, 0.69, 0.18 |
| TextBox | Text53 |  | =Sum([SumOfTotal_Activity_Units]) |  |  | 7.21, 0.00, 0.67, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.10, 0.05, 1.87, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.91, 0.05, 2.01, 0.15 |
| Line | Line22 |  |  |  |  | 0.10, 0.03, 7.82, 0.00 |
| TextBox | Text49 |  | Field |  |  | 3.54, 0.04, 2.39, 0.23 |
| TextBox | Text52 | = Sown Reversed | ="j" |  |  | 1.99, 0.06, 0.25, 0.19 |
