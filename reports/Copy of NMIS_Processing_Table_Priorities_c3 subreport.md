# Report: Copy of NMIS_Processing_Table_Priorities_c3 subreport

**Caption:** NMIS_Processing_Table_Priorities subreport  
**Grouping/sorting:** `PROCESSING_PRIORITY`, `Order_ID`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`  
**Subforms/subreports:** `Report.Table_assignment_Precool mt Subrep`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | TABLE |  | [TABLE] |  |  | 0.49, 0.00, 0.00, 0.19 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID_Order |  |  | 0.00, 0.00, 0.75, 0.00 |
| Subform | Child23 |  | Report.Table_assignment_Precool mt Subrep (master: AGREEMENT_LOT_CN → child: AGR_LOT_CN) |  |  | 0.75, 0.00, 1.24, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ASSOCIATE_NAME |  | ASSOCIATE_NAME |  |  | 0.00, 0.00, 1.46, 0.18 |
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, "**" & [ACTIVITY_NAME] & "**" AS ac FROM NMIS_ACTIVITY_CODES; |  | 0.00, 0.19, 1.98, 0.01 |
| TextBox | NOTE |  | NOTE |  |  | 0.00, 0.21, 2.00, 0.01 |
| TextBox | TOTAL_ORDER |  | =IIf(IsNull([amt_override]),IIf(NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)=0 And [OVERRUN_ALL]=True,"ALL",NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)),[amt_override]) |  |  | 1.47, 0.01, 0.41, 0.16 |
| TextBox | All_Plus |  | =IIf([OVERRUN_ALL]=True,"+","") |  |  | 1.88, 0.00, 0.12, 0.18 |
