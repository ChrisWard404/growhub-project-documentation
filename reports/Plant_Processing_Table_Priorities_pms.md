# Report: Plant_Processing_Table_Priorities_pms

**Caption:** Processing Table Assgnments  
**Subforms/subreports:** `Report.NMIS_Processing_Table_Priorities_c1_pms subreport`, `Report.NMIS_Processing_Table_Priorities_c2_pms subreport`, `Report.NMIS_Processing_Table_Priorities_c3_pms subreport`, `Report.NMIS_Processing_Table_Priorities_c4_pms subreport`  
**Opened from (VBA):** `Form_Plant_Processing_Table_Priorties`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.53, 0.38, 2.83, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.67, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.54, 0.17, 2.78, 0.20 |
| Label | Label57 | Plant Moisture Stress Monitoring  for  |  |  |  | 1.98, 0.58, 3.03, 0.24 |
| TextBox | Processing_Date |  | =[Forms]![Plant_Processing_Table_Priorties]![Processing_Date] |  |  | 5.02, 0.58, 1.24, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_Processing_Table_Priorities_pms subreport |  | Report.NMIS_Processing_Table_Priorities_c1_pms subreport |  |  | 0.00, 0.00, 1.95, 1.05 |
| Subform | Child75 |  | Report.NMIS_Processing_Table_Priorities_c2_pms subreport |  |  | 1.99, 0.00, 1.96, 1.05 |
| Subform | Child77 |  | Report.NMIS_Processing_Table_Priorities_c3_pms subreport |  |  | 3.99, 0.00, 1.95, 1.05 |
| Subform | Child79 |  | Report.NMIS_Processing_Table_Priorities_c4_pms subreport |  |  | 5.99, 0.00, 1.99, 1.05 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.00, 0.05, 2.17, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.04, 0.05, 1.96, 0.21 |
| Line | Line46 |  |  |  |  | 0.00, 0.01, 7.97, 0.00 |
| TextBox | Note |  | =[Forms]![Plant_Processing_Table_Priorties]![General_Comments] |  |  | 0.00, 0.01, 7.97, 0.04 |
