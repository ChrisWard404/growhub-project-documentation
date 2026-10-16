# Report: NMIS_ID_ACTIVITIES_source subreportBU

**Grouping/sorting:** `SOURCE_LOT_CN`, `ACTIVITY_DATE`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_TICKETS`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ACTIVITY_DATE_Label | Date |  |  |  | 0.18, 0.00, 0.32, 0.19 |
| Label | ACTIVITY_CODE_Label | Act Code |  |  |  | 0.62, 0.00, 0.72, 0.19 |
| Label | ACTIVITY_UNITS_Label | Units |  |  |  | 3.55, 0.00, 0.67, 0.19 |
| Label | UNIT_CODE_Label | Unit Code |  |  |  | 4.39, 0.00, 0.68, 0.19 |
| Label | Label15 | Activity Description |  |  |  | 1.40, 0.00, 2.15, 0.19 |
| Label | Label21 | Comments |  |  |  | 5.47, 0.00, 1.45, 0.19 |
| Label | Label22 | Tkt |  |  |  | 5.12, 0.00, 0.26, 0.19 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line12 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SOURCE_LOT_CN |  | SOURCE_LOT_CN |  |  | 0.54, 0.00, 0.68, 0.10 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 0.00, 0.00, 0.62, 0.17 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  |  | 3.57, 0.00, 0.70, 0.17 |
| ComboBox | Combo14 |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES;  |  | 1.40, 0.00, 2.15, 0.17 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 0.64, 0.00, 0.72, 0.17 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 4.45, 0.00, 0.42, 0.17 |
| TextBox | NOTE |  | NOTE |  |  | 5.50, 0.00, 2.00, 0.17 |
| ComboBox | Text23 |  | TICKET_CN | SELECT NMIS_TICKETS.CN, NMIS_TICKETS.TKT_NO FROM NMIS_TICKETS; |  | 4.91, 0.00, 0.57, 0.00 |
| TextBox | No_Effect |  | No_Effect |  |  | 4.26, 0.00, 0.19, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text16 |  | Balamce |  |  | 3.51, 0.05, 0.76, 0.19 |
| Line | Line17 |  |  |  |  | 3.52, 0.02, 0.75, 0.00 |
| TextBox | Text18 |  | ="LB" |  |  | 4.45, 0.05, 0.42, 0.19 |
| Label | Label19 | Balance: |  |  |  | 2.78, 0.04, 0.56, 0.19 |
| TextBox | Text27 |  | Balance_G |  |  | 3.39, 0.25, 0.89, 0.19 |
| TextBox | Text28 |  | ="G" |  |  | 4.45, 0.25, 0.42, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line13 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
