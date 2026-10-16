# Report: NMIS_ID_LOCATIONS subreport1

**Caption:** NMIS_ID_LOCATIONS subreport1  
**Record source:**

```sql
SELECT NMIS_ID_LOCATIONS.SOURCE_LOT_CN, NMIS_LOCATIONS.LOCATION, NMIS_ID_LOCATIONS.UNIT_CODE, NMIS_ID_LOCATIONS.SUBLOT_NO FROM NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN WHERE (((NMIS_ID_LOCATIONS.SOURCE_LOT_CN) Is Not Null));
```

**Backend tables referenced:** `NMIS_ID_LOCATIONS`, `NMIS_LOCATIONS`  
**Embedded in:** `Report:NMIS_SOURCE_LOTS_REPORT2`, `Report:NMIS_SOURCE_LOTS_REPORT_All_Tests`, `Report:NMIS_SOURCE_LOTS_REPORT_All_Tests_bu`, `Report:NMIS_SOURCE_LOTS_REPORT_Last_Test_Only`, `Report:NMIS_SOURCE_LOTS_REPORT_Last_Test_Only_old`, `Report:NMIS_SOURCE_LOTS_REPORT_from_Ag_Lot`, `Report:NMIS_SOURCE_LOTS_REPORT_w_LastTestData_Only`, `Report:Seed_Bank_Work_Order`, `Report:Seed_Bank_Work_Order_by_ID_Range`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | LOCATION_CN_Label | Location |  |  |  | 0.02, 0.02, 0.57, 0.19 |
| Label | UNIT_CODE_Label | Unit |  |  |  | 1.06, 0.02, 0.44, 0.19 |
| Label | SUBLOT_NO_Label | Sublot |  |  |  | 0.62, 0.02, 0.45, 0.19 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line8 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | LOCATION_CN |  | LOCATION |  |  | 0.02, 0.00, 0.57, 0.00 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 1.06, 0.00, 0.44, 0.00 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 0.62, 0.00, 0.42, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line9 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
