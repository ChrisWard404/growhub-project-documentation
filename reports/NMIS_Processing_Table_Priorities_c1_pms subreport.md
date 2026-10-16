# Report: NMIS_Processing_Table_Priorities_c1_pms subreport

**Caption:** NMIS_Processing_Table_Priorities_PMS subreport  
**Grouping/sorting:** `PROCESSING_PRIORITY`, `Order_ID`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`  
**Embedded in:** `Report:Plant_Processing_Table_Priorities_pms`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | TABLE |  | [T2] |  |  | 0.50, 0.00, 0.00, 0.19 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  |  |  |  | 0.89, 0.02, 1.04, 0.00 |
| TextBox | ID |  | ID_Order |  |  | 0.04, 0.02, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ASSOCIATE_NAME |  | ASSOCIATE_NAME |  |  | 0.00, 0.00, 1.46, 0.18 |
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, "**" & [ACTIVITY_NAME] & "**" AS ac FROM NMIS_ACTIVITY_CODES; |  | 0.00, 0.19, 1.98, 0.01 |
| TextBox | NOTE |  | NOTE |  |  | 0.00, 0.21, 2.00, 0.01 |
| TextBox | TOTAL_ORDER |  | =IIf(IsNull([amt_override]),IIf(NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)=0 And [OVERRUN_ALL]=True,"ALL",NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)),[amt_override]) |  |  | 1.44, 0.01, 0.44, 0.16 |
| TextBox | All_Plus |  | =IIf([OVERRUN_ALL]=True,"+","") |  |  | 1.88, 0.01, 0.12, 0.00 |
