# Report: Processing_QI_Summary_By_Table_and_Date_Range_preFY06

**Caption:** NMIS_Processing_QI_Table_Summary  
**Record source:**

```sql
Processing_QI_Samples_Table_Summary_by_Date_Range3
```

**Grouping/sorting:** `SAMPLE_STATION`  
**Subforms/subreports:** `Report.Processing_QI_Summary_By_Table_and_Date_Range_Subreport`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | TOTAL_REQUEST_Label | #Incidentals |  |  |  | 6.22, 1.58, 0.80, 0.19 |
| Label | GROSS_INV_Label | Marginal Short |  |  |  | 7.40, 1.42, 0.66, 0.36 |
| Label | NET_INV_Label | Marginal Long |  |  |  | 8.09, 1.40, 0.62, 0.38 |
| Label | Label23 | #Table Sorting Quality |  |  |  | 0.95, 1.25, 0.76, 0.53 |
| Label | Label25 | Table # |  |  |  | 0.12, 1.33, 0.75, 0.44 |
| Label | Label26 | Short |  |  |  | 7.04, 1.58, 0.38, 0.19 |
| Label | Label27 | Long |  |  |  | 8.78, 1.58, 0.35, 0.19 |
| Label | Label32 | Nursery Management Information System |  |  |  | 3.76, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.54, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 3.54, 0.00, 3.24, 0.16 |
| Label | Label24 | Processing Quality Inspection Table Summary |  |  |  | 3.62, 0.55, 3.11, 0.19 |
| TextBox | ACTIVITY_DATE |  | ="Processing " & Forms!Processing_QI_Daily_Checklist!Begin_Date & " to " & Forms!Processing_QI_Daily_Checklist!End_Date |  |  | 4.05, 0.78, 2.24, 0.19 |
| Label | Label60 | Floor Sorting Quality |  |  |  | 9.36, 1.25, 0.79, 0.53 |
| Label | Label61 | Root Pruning Quality |  |  |  | 5.56, 1.25, 0.70, 0.53 |
| Label | Label62 | #Height Within 1/2" |  |  |  | 3.35, 1.26, 0.55, 0.52 |
| Label | Label63 | ---------------------- Pruning Categories ------------------- |  |  |  | 6.23, 1.10, 2.89, 0.17 |
| Label | Label64 | ------------------------------- Sorting Categories ------------------------------ |  |  |  | 1.69, 1.10, 3.64, 0.17 |
| Line | Line65 |  |  |  |  | 0.17, 1.83, 10.00, 0.00 |
| Label | Label76 | Note: All values reported as percents |  |  |  | 7.92, 0.46, 2.12, 0.17 |
| Label | Label77 | Caliper  |  |  |  | 1.71, 1.57, 0.54, 0.21 |
| Label | Label78 | #Caliper Within 1/2mm |  |  |  | 2.26, 1.28, 0.59, 0.52 |
| Label | Label81 | Height  |  |  |  | 2.85, 1.58, 0.48, 0.19 |
| Label | Label87 | *Top Other |  |  |  | 3.90, 1.42, 0.48, 0.36 |
| Label | Label89 | *Root Other |  |  |  | 4.47, 1.42, 0.42, 0.36 |
| Label | Label90 | *All Other  |  |  |  | 4.99, 1.42, 0.43, 0.36 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Agreement_Lot_ID |  | SAMPLE_STATION |  |  | 0.17, 0.03, 0.62, 0.23 |
| TextBox | SumOfSAMPLE_SIZE |  | Table_Sorting_Quality |  |  | 1.07, 0.03, 0.50, 0.23 |
| TextBox | Floor_Sample |  | =IIf(IsNull([Floor_Sorting_Quality]),"No Sample",[Floor_Sorting_Quality]) |  |  | 9.31, 0.03, 0.77, 0.23 |
| TextBox | Root_Pruning_Quality |  | Root_Pruning_Quality |  |  | 5.62, 0.03, 0.50, 0.23 |
| TextBox | Incidentals |  | Incidentals |  |  | 6.23, 0.03, 0.50, 0.23 |
| TextBox | Short |  | Short |  |  | 6.84, 0.03, 0.50, 0.23 |
| TextBox | Marginal_Short |  | Marginal_Short |  |  | 7.41, 0.03, 0.50, 0.23 |
| TextBox | Marginal_Long |  | Marginal_Long |  |  | 8.09, 0.03, 0.50, 0.23 |
| TextBox | Long |  | Long |  |  | 8.62, 0.03, 0.50, 0.23 |
| TextBox | Caliper_Half |  | Caliper_Half |  |  | 2.20, 0.03, 0.50, 0.23 |
| TextBox | Height_Half |  | Height_Half |  |  | 3.28, 0.03, 0.50, 0.23 |
| TextBox | Caliper |  | Caliper |  |  | 1.67, 0.03, 0.50, 0.23 |
| TextBox | Height |  | Height |  |  | 2.76, 0.03, 0.50, 0.23 |
| TextBox | Top_Other |  | Top_Other |  |  | 3.83, 0.03, 0.50, 0.23 |
| TextBox | Root_Other |  | Root_Other |  |  | 4.37, 0.03, 0.50, 0.23 |
| TextBox | Other |  | Other |  |  | 4.90, 0.03, 0.50, 0.23 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text13 |  | =Now() |  |  | 0.04, 0.39, 2.00, 0.00 |
| TextBox | Text14 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 7.26, 0.39, 2.98, 0.00 |
| Line | Line16 |  |  |  |  | 0.04, 0.01, 10.19, 0.00 |
| Label | Label93 | *Top Other = Bottle Brush+Diseased+Multiple Top+Insect Damage+Mechanical Damage+Burnt Needles |  |  |  | 0.14, 0.03, 5.88, 0.17 |
| Label | Label94 | *Root Other = Diseased+Insect Damage+Mechanical Damage+Naturally Short+Swept |  |  |  | 0.14, 0.20, 5.88, 0.17 |
| Label | Label95 | *All Other = Poor Development+Other Defect |  |  |  | 6.17, 0.03, 2.48, 0.17 |
| Label | Label96 | #Within 1/2 and Pruning Incidentals not included in Quality Percents |  |  |  | 6.17, 0.20, 4.01, 0.17 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | Processing_QI_Summary_By_Table_and_Date_Range_Subreport |  | Report.Processing_QI_Summary_By_Table_and_Date_Range_Subreport |  |  | 0.00, 0.08, 10.25, 0.67 |
