# Report: NMIS_Processing_Table_Priorities_c3_pc subreport

**Caption:** NMIS_Processing_Table_Priorities subreport  
**Grouping/sorting:** `TABLE`, `FirstOfPROCESSING_PRIORITY`, `ID`  
**Subforms/subreports:** `Report.Table_assignment_Precool mt Subrep`  
**Embedded in:** `Report:Plant_Processing_Table_Priorities_pc`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | TABLE |  | [T2] |  |  | 0.50, 0.00, 0.00, 0.19 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 0.00, 0.00, 0.73, 0.00 |
| Subform | Child23 |  | Report.Table_assignment_Precool mt Subrep (master: AGREEMENT_LOT_CN → child: AGR_LOT_CN) |  |  | 0.75, 0.00, 1.23, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ASSOCIATE_NAME |  | ASSOCIATE_NAME |  |  | 0.00, 0.00, 1.96, 0.18 |
