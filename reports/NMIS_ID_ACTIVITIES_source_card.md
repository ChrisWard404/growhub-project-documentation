# Report: NMIS_ID_ACTIVITIES_source_card

**Caption:** NMIS_ID_ACTIVITIES subreport  
**Record source:**

```sql
SELECT NMIS_ID_ACTIVITIES.CN, NMIS_ID_ACTIVITIES.SOURCE_LOT_CN, NMIS_ID_ACTIVITIES.ACTIVITY_DATE, NMIS_ID_ACTIVITIES.ACTIVITY_CODE, NMIS_ID_ACTIVITIES.ACTIVITY_UNITS, NMIS_ID_ACTIVITIES.UNIT_CODE, IIf(Not IsNull([NMIS_AGREEMENT_LOTS].[id]),[NMIS_ID_ACTIVITIES].[Note] & " " & "Agreement Lot: " & [NMIS_AGREEMENT_LOTS].[id],[NMIS_ID_ACTIVITIES].[NOTE]) AS AL_ID_NOTE, NMIS_ID_ACTIVITIES.TICKET_CN, IIf([balance_effect]<>"NOEFFECT",[activity_Units]) AS Balance, IIf([Balance_Effect]="NOEFFECT","j") AS No_Effect, NMIS_ID_ACTIVITIES.NOTE FROM NMIS_AGREEMENT_LOTS RIGHT JOIN (NMIS_ACTIVITY_CODES INNER JOIN NMIS_ID_ACTIVITIES ON (NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ID_ACTIVITIES.ACTIVITY_CODE) AND (NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ID_ACTIVITIES.ACTIVITY_CODE)) ON NMIS_AGREEMENT_LOTS.CN = NMIS_ID_ACTIVITIES.AGREEMENT_LOT_CN WHERE (((NMIS_ID_ACTIVITIES.SOURCE_LOT_CN) Is Not Null));
```

**Grouping/sorting:** `SOURCE_LOT_CN`, `ACTIVITY_DATE`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_AGREEMENT_LOTS`, `NMIS_ID_ACTIVITIES`, `NMIS_TICKETS`  
**Embedded in:** `Report:NMIS_SOURCE_Card_Activities`  

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
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 4.45, 0.00, 0.30, 0.17 |
| TextBox | NOTE |  | NOTE |  |  | 5.50, 0.00, 2.00, 0.17 |
| ComboBox | Text23 |  | TICKET_CN | SELECT NMIS_TICKETS.CN, NMIS_TICKETS.TKT_NO FROM NMIS_TICKETS; |  | 4.76, 0.00, 0.73, 0.00 |
| TextBox | No_Effect |  | No_Effect |  |  | 4.26, 0.00, 0.19, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text16 |  | =Sum([Balance]) |  |  | 3.51, 0.05, 0.76, 0.19 |
| Line | Line17 |  |  |  |  | 3.52, 0.02, 0.75, 0.00 |
| TextBox | Text18 |  | =[UNIT_CODE] |  |  | 4.45, 0.05, 0.31, 0.19 |
| Label | Label19 | Balance: |  |  |  | 2.78, 0.04, 0.56, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line13 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
