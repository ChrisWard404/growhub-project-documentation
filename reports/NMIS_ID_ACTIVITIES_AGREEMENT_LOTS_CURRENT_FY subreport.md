# Report: NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY subreport

**Caption:** NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY subreport  
**Record source:**

```sql
SELECT NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY.AGREEMENT_LOT_CN, NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY.ACTIVITY_DATE, IIf(Not ([Forms]![Field_Form_Plants]![Hide_Monitoring_Notes]),IIf(Not IsNull([NOTE]),[ACTIVITY_DATE] & " Monitoring Note: " & [note],"")) AS NOTE_PLUS, NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY.ACTIVITY_CODE FROM NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY WHERE (((NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY.ACTIVITY_CODE)="MONFCO") AND ((NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY.NOTE) Is Not Null)) ORDER BY NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY.ACTIVITY_DATE;
```

**Embedded in:** `Report:Field_Form_Plants`, `Report:Field_Form_Plants_bu`, `Report:Field_Form_Plants_new`, `Report:Field_Form_Plants_w_specs`, `Report:Field_Form_Plants_w_specs_ByLotID`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line8 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NOTE |  | NOTE_PLUS |  |  | 0.00, 0.00, 7.60, 0.04 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line9 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
