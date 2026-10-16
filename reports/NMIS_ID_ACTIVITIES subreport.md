# Report: NMIS_ID_ACTIVITIES subreport

**Grouping/sorting:** `SOURCE_LOT_CN`, `ACTIVITY_DATE`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_TICKETS`  
**Embedded in:** `Report:NMIS_SOURCE_LOTS_REPORT_All_Tests`, `Report:NMIS_SOURCE_LOTS_REPORT_All_Tests_bu`, `Report:NMIS_SOURCE_LOTS_REPORT_Last_Test_Only`, `Report:NMIS_SOURCE_LOTS_REPORT_Last_Test_Only_old`, `Report:NMIS_SOURCE_LOTS_REPORT_w_LastTestData_Only`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ACTIVITY_DATE_Label | Date |  |  |  | 0.20, 0.00, 0.32, 0.19 |
| Label | ACTIVITY_CODE_Label | Act Code |  |  |  | 0.66, 0.00, 0.64, 0.19 |
| Label | ACTIVITY_UNITS_Label | Units |  |  |  | 3.59, 0.00, 0.61, 0.19 |
| Label | UNIT_CODE_Label | U Code |  |  |  | 4.33, 0.00, 0.50, 0.19 |
| Label | Label15 | Activity Description |  |  |  | 1.36, 0.00, 2.08, 0.19 |
| Label | Label21 | Comments |  |  |  | 5.58, 0.00, 1.45, 0.19 |
| Label | Label22 | Tkt |  |  |  | 5.06, 0.00, 0.26, 0.19 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line12 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SOURCE_LOT_CN |  | SOURCE_LOT_CN |  |  | 0.54, 0.00, 0.68, 0.10 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 0.01, 0.00, 0.66, 0.17 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  |  | 3.61, 0.00, 0.64, 0.17 |
| ComboBox | Combo14 |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES;  |  | 1.36, 0.00, 2.23, 0.17 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 0.73, 0.00, 0.57, 0.17 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 4.43, 0.00, 0.36, 0.17 |
| TextBox | NOTE |  | AL_ID_NOTE |  |  | 5.61, 0.00, 1.86, 0.17 |
| ComboBox | Text23 |  | TICKET_CN | SELECT NMIS_TICKETS.CN, NMIS_TICKETS.TKT_NO FROM NMIS_TICKETS; |  | 4.81, 0.00, 0.75, 0.00 |
| TextBox | No_Effect |  | No_Effect |  |  | 4.24, 0.00, 0.18, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text16 |  | =[Balance] |  |  | 3.49, 0.05, 0.76, 0.19 |
| Line | Line17 |  |  |  |  | 3.50, 0.02, 0.75, 0.00 |
| TextBox | Text18 |  | ="LB" |  |  | 4.27, 0.04, 0.52, 0.19 |
| Label | Label19 | Balance: |  |  |  | 2.78, 0.04, 0.56, 0.19 |
| TextBox | Text27 |  | Balance_G |  |  | 3.33, 0.25, 0.92, 0.19 |
| TextBox | Text28 |  | ="G" |  |  | 4.27, 0.25, 0.52, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line13 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
