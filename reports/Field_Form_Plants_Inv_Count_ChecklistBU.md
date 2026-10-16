# Report: Field_Form_Plants_Inv_Count_ChecklistBU

**Caption:** Field Form  
**Grouping/sorting:** `MinOfLOCATION`, `MaxOfLOCATION`, `ID`, `Sublot`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label18 | Field Inventory Count Checklist |  |  |  | 0.48, 0.62, 7.15, 0.23 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.62, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.23, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.37, 0.00, 3.24, 0.16 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Client_Label | Client |  |  |  | 1.34, 0.21, 0.33, 0.21 |
| Label | Source_Location_Label | Source |  |  |  | 2.38, 0.21, 0.41, 0.21 |
| Label | Bed_Feet_Label | Bed Feet |  |  |  | 5.41, 0.04, 0.41, 0.38 |
| Label | Bed_Start_Label | Location |  |  |  | 4.16, 0.04, 0.57, 0.20 |
| Label | Notes_Label | Gross (M) |  |  |  | 4.85, 0.21, 0.55, 0.21 |
| Line | Line21 |  |  |  |  | 0.08, 0.45, 7.85, 0.00 |
| Label | Label26 | From - To |  |  |  | 4.02, 0.22, 0.82, 0.20 |
| Label | Label29 | Lot ID |  |  |  | 0.10, 0.21, 0.33, 0.21 |
| Line | Line28 |  |  |  |  | 0.12, 0.00, 7.81, 0.00 |
| Label | Label38 | Count |  |  |  | 6.59, 0.21, 0.34, 0.21 |
| Label | Label39 | To Size |  |  |  | 5.83, 0.04, 0.26, 0.38 |
| Label | Label41 | Plots |  |  |  | 7.04, 0.21, 0.30, 0.21 |
| Label | Label43 | Dist Between |  |  |  | 7.38, 0.04, 0.55, 0.38 |
| Label | Label45 | Size/Plot |  |  |  | 6.09, 0.04, 0.32, 0.38 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Client |  | Major_Client |  |  | 1.28, 0.01, 0.46, 0.18 |
| TextBox | Source_Location |  | SOURCE |  |  | 1.75, 0.01, 2.33, 0.18 |
| TextBox | Bed_Feet |  | SumOfTotal_Activity_Units |  |  | 5.36, 0.01, 0.41, 0.18 |
| TextBox | From_To |  | From_To |  |  | 4.09, 0.01, 0.83, 0.18 |
| TextBox | CN |  | ID |  |  | 0.04, 0.01, 1.05, 0.18 |
| TextBox | SUBLOT_NO |  | Sublot |  |  | 1.10, 0.01, 0.17, 0.18 |
| TextBox | Gross |  | Gross |  |  | 4.92, 0.01, 0.44, 0.18 |
| TextBox | Density |  | Gross_Density |  |  | 6.43, 0.01, 0.46, 0.18 |
| TextBox | Text40 |  | SIZE |  |  | 5.77, 0.01, 0.30, 0.18 |
| TextBox | Text42 |  | Plots_Int |  |  | 7.00, 0.01, 0.30, 0.18 |
| TextBox | Text44 |  | Dist_Between |  |  | 7.41, 0.01, 0.30, 0.18 |
| TextBox | Text46 |  | Size_per_Plot |  |  | 6.10, 0.01, 0.30, 0.18 |
| TextBox | Dist_Between_Code |  | Dist_Between_Code |  |  | 7.72, 0.01, 0.19, 0.18 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line32 |  |  |  |  | 0.08, 0.02, 7.85, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.23, 0.05, 1.87, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 2.17, 0.05, 5.75, 0.15 |
| Line | Line22 |  |  |  |  | 0.12, 0.03, 7.81, 0.00 |
