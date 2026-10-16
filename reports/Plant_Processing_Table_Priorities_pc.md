# Report: Plant_Processing_Table_Priorities_pc

**Caption:** Processing Table Assigments - Precooler  
**Subforms/subreports:** `Report.NMIS_Processing_Table_Priorities_c1_pc subreport`, `Report.NMIS_Processing_Table_Priorities_c2_pc subreport`, `Report.NMIS_Processing_Table_Priorities_c3_pc subreport`, `Report.NMIS_Processing_Table_Priorities_c4_pc subreport`  
**Opened from (VBA):** `Form_Plant_Processing_Table_Priorties`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.74, 0.38, 2.83, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.88, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.75, 0.17, 2.78, 0.20 |
| Label | Label57 | Processing Table Assignments for  |  |  |  | 2.33, 0.58, 2.82, 0.23 |
| TextBox | Processing_Date |  | =[Forms]![Plant_Processing_Table_Priorties]![Processing_Date] |  |  | 5.17, 0.58, 1.24, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_Processing_Table_Priorities subreport |  | Report.NMIS_Processing_Table_Priorities_c1_pc subreport |  |  | 0.00, 0.00, 1.98, 1.05 |
| Subform | Child75 |  | Report.NMIS_Processing_Table_Priorities_c2_pc subreport |  |  | 2.02, 0.00, 1.99, 1.05 |
| Subform | Child77 |  | Report.NMIS_Processing_Table_Priorities_c3_pc subreport |  |  | 4.05, 0.00, 1.99, 1.05 |
| Subform | Child79 |  | Report.NMIS_Processing_Table_Priorities_c4_pc subreport |  |  | 6.08, 0.00, 2.02, 1.05 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.00, 0.08, 1.96, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.04, 0.08, 2.00, 0.21 |
| Line | Line46 |  |  |  |  | 0.00, 0.01, 8.08, 0.00 |
| TextBox | Note |  | =[Forms]![Plant_Processing_Table_Priorties]![General_Comments] |  |  | 0.00, 0.02, 8.00, 0.05 |
