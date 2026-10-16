# Report: NMIS_SOURCE_Card_Activities

**Caption:** NMIS_SOURCE_LOTS  
**Record source:**

```sql
SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, NMIS_SOURCE_TESTS.TEST_DATE, NMIS_SOURCE_TESTS.GERM_PCT, NMIS_SOURCE_TESTS.STRATIFIED, NMIS_SOURCE_TESTS.CHECK_STRAT, NMIS_SOURCE_TESTS.GROSS_SOURCE_PER_UNIT, NMIS_SOURCE_TESTS.PURITY_PCT, NMIS_SOURCE_TESTS.MOISTURE_PCT, NMIS_SOURCE_TESTS.CN AS Source_Test_CN, Source_Lot_ID_and_Source_string.ID_SOURCEB, NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_TESTS.FILLED_PCT, NMIS_SOURCE_LOTS.CATEGORY_CODE, NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE, NMIS_SOURCE_TESTS.NOTE FROM (NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN) LEFT JOIN NMIS_SOURCE_TESTS ON NMIS_SOURCE_LOTS.CN = NMIS_SOURCE_TESTS.SOURCE_LOT_CN WHERE (((NMIS_SOURCE_LOTS.CN)=[Forms]![NMIS_SOURCE_LOTS_INPUT]![CN]));
```

**Grouping/sorting:** `ID_SOURCEB`, `TEST_DATE`  
**Backend tables referenced:** `NMIS_SOURCE_LOTS`, `NMIS_SOURCE_TESTS`  
**Subforms/subreports:** `Report.NMIS_ID_ACTIVITIES_source_card`  
**Opened from (VBA):** `Form_NMIS_SOURCE_LOTS_INPUT`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text64 |  | ID |  |  | 0.00, 0.00, 3.45, 0.20 |
| Label | ACTIVITY_DATE_Label | Date |  |  |  | 0.20, 0.21, 0.32, 0.19 |
| Label | ACTIVITY_CODE_Label | Act Code |  |  |  | 0.65, 0.21, 0.72, 0.19 |
| Label | ACTIVITY_UNITS_Label | Units |  |  |  | 3.57, 0.21, 0.67, 0.19 |
| Label | UNIT_CODE_Label | Unit Code |  |  |  | 4.41, 0.04, 0.38, 0.36 |
| Label | Label15 | Activity Description |  |  |  | 1.42, 0.21, 2.15, 0.19 |
| Label | Label21 | Comments |  |  |  | 5.49, 0.21, 1.45, 0.19 |
| Label | Label22 | Tkt |  |  |  | 5.05, 0.21, 0.26, 0.19 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_ID_ACTIVITIES subreport |  | Report.NMIS_ID_ACTIVITIES_source_card (master: CN → child: SOURCE_LOT_CN) |  |  | 0.00, 0.00, 7.51, 0.18 |
