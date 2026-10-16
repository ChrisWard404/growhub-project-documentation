# Report: Processing_QI_Summary_By_Table_and_Date_Range

**Grouping/sorting:** `SAMPLE_STATION`  
**Subforms/subreports:** `Report.Processing_QI_Summary_By_Table_and_Date_Range_Subreport`  
**Opened from (VBA):** `Form_Processing_QI_Daily_Checklist`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label23 | #Table Sorting Quality |  |  |  | 1.22, 1.26, 0.76, 0.53 |
| Label | Label25 | Table # |  |  |  | 0.52, 1.59, 0.50, 0.20 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.64, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.43, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.43, 0.00, 3.24, 0.16 |
| Label | Label24 | Processing Quality Inspection Table Summary |  |  |  | 2.50, 0.55, 3.11, 0.19 |
| TextBox | ACTIVITY_DATE |  | ="Processing " & Forms!Processing_QI_Daily_Checklist!Begin_Date & IIf(Forms!Processing_QI_Daily_Checklist!End_Date<>Forms!Processing_QI_Daily_Checklist!Begin_Date," to " & Forms!Processing_QI_Daily_Checklist!End_Date) |  |  | 2.94, 0.78, 2.24, 0.19 |
| Label | Label76 | Note: All values reported as percents |  |  |  | 5.72, 1.00, 2.26, 0.17 |
| Label | Label62 | Caliper |  |  |  | 3.80, 1.58, 0.49, 0.20 |
| Label | Label77 | Count  |  |  |  | 2.07, 1.59, 0.46, 0.20 |
| Label | Label78 | Height |  |  |  | 2.66, 1.59, 0.46, 0.20 |
| Label | Label81 | Roots |  |  |  | 3.32, 1.59, 0.40, 0.20 |
| Label | Label87 | Multiple Top |  |  |  | 4.38, 1.43, 0.56, 0.35 |
| Label | Label89 | Mechanical Damage |  |  |  | 4.99, 1.43, 0.74, 0.36 |
| Line | Line65 |  |  |  |  | 0.31, 1.80, 7.64, 0.00 |
| Label | Label130 | Averages not weighted for lot Size |  |  |  | 6.06, 1.19, 1.93, 0.18 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Agreement_Lot_ID |  | SAMPLE_STATION |  |  | 0.44, 0.03, 0.62, 0.23 |
| TextBox | SumOfSAMPLE_SIZE |  | Table_Sorting_Quality |  |  | 1.35, 0.03, 0.50, 0.23 |
| TextBox | Caliper_Half |  | Top_Size |  |  | 2.57, 0.03, 0.50, 0.23 |
| TextBox | Height_Half |  | Vigor |  |  | 3.79, 0.02, 0.50, 0.23 |
| TextBox | Caliper |  | Count |  |  | 1.99, 0.03, 0.50, 0.23 |
| TextBox | Height |  | Roots |  |  | 3.21, 0.02, 0.50, 0.23 |
| TextBox | Top_Other |  | Pest_Damage |  |  | 4.36, 0.03, 0.50, 0.23 |
| TextBox | Root_Other |  | Mechanical_Damage |  |  | 5.07, 0.02, 0.50, 0.23 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text13 |  | =Now() |  |  | 0.31, 0.05, 2.00, 0.00 |
| TextBox | Text14 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.00, 0.06, 2.98, 0.00 |
| Line | Line16 |  |  |  |  | 0.31, 0.01, 7.61, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | Processing_QI_Summary_By_Table_and_Date_Range_Subreport |  | Report.Processing_QI_Summary_By_Table_and_Date_Range_Subreport |  |  | 0.00, 0.08, 8.00, 0.17 |
