# Report: NMIS_SOURCE_LOTS_REPORT_from_Ag_Lot

**Caption:** NMIS_SOURCE_LOTS  
**Record source:**

```sql
NMIS_SOURCE_LOTS_GERM_from_Ag_Lot Query
```

**Grouping/sorting:** `ID_SOURCEB`, `TEST_DATE`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`  
**Subforms/subreports:** `Report.NMIS_ID_LOCATIONS subreport1`, `Report.NMIS_SOURCE_LOTS_GERM_TEST_RESULTS Subreport`, `Report.NMIS_ID_ACTIVITIES_source subreport`  
**Opened from (VBA):** `Form_NMIS_AGREEMENT_LOTS`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.49, 0.16, 3.25, 0.19 |
| Label | Label33 | Source Lot Report |  |  |  | 2.49, 0.58, 3.25, 0.29 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.49, 0.35, 3.25, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.49, 0.00, 3.25, 0.16 |
| Subform | NMIS_ID_LOCATIONS subreport1 |  | Report.NMIS_ID_LOCATIONS subreport1 (master: CN → child: SOURCE_LOT_CN) |  |  | 5.96, 0.08, 1.82, 0.42 |
| ComboBox | CATEGORY_CODE | Category Code: | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES;  |  | 6.23, 1.04, 1.67, 0.22 |
| ComboBox | STORED_FOR_ASSOCIATE | Stored For: | STORED_FOR_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS Expr1 FROM NMIS_ASSOCIATES; |  | 1.06, 1.04, 4.14, 0.22 |
| TextBox | Text64 |  | ID |  |  | 0.33, 0.08, 1.95, 0.26 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_Label | Lot ID |  |  |  | 0.44, 0.03, 0.53, 0.23 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 2.22, 0.03, 0.59, 0.23 |
| Line | Line10 |  |  |  |  | 0.44, 0.00, 7.48, 0.00 |
| Line | Line11 |  |  |  |  | 0.44, 0.31, 7.48, 0.00 |
| Label | Label49 | Common Name |  |  |  | 5.58, 0.03, 0.89, 0.23 |
| TextBox | ID |  | ID_SOURCEB |  |  | 0.42, 0.36, 5.11, 0.23 |
| ComboBox | CN |  | CN | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SPECIES.VERNACULAR FROM NMIS_SOURCE_LOTS INNER JOIN NMIS_SPECIES ON NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL=NMIS_SPECIES.PLNTMSTR_SYMBOL;  |  | 5.55, 0.36, 2.33, 0.23 |

## Section: GroupHeader4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line38 |  |  |  |  | 0.44, 0.47, 7.46, 0.00 |
| Label | GERM_PCT_Label | Germ % |  |  |  | 3.49, 0.22, 0.47, 0.23 |
| Label | Label13 | Test Date |  |  |  | 0.53, 0.22, 0.62, 0.23 |
| Label | Label15 | Stratified |  |  |  | 4.68, 0.22, 0.63, 0.23 |
| Label | Label25 | Borderline Strat |  |  |  | 5.36, 0.04, 0.71, 0.42 |
| Line | Line39 |  |  |  |  | 0.44, 0.02, 7.47, 0.00 |
| Label | Label42 | Moisture % |  |  |  | 2.68, 0.22, 0.71, 0.24 |
| Label | Label43 | Seeds/Lb |  |  |  | 1.35, 0.22, 0.59, 0.23 |
| Label | Label45 | Purity % |  |  |  | 2.07, 0.22, 0.53, 0.23 |
| Label | Label59 | Filled % |  |  |  | 4.10, 0.22, 0.47, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | GERM_PCT |  | GERM_PCT |  |  | 3.43, 0.06, 0.43, 0.17 |
| TextBox | TEST_DATE |  | TEST_DATE |  |  | 0.45, 0.04, 0.76, 0.19 |
| CheckBox | STRATIFIED |  | STRATIFIED |  |  | 4.96, 0.08, 0.00, 0.00 |
| CheckBox | CHECK_STRAT |  | CHECK_STRAT |  |  | 5.68, 0.08, 0.12, 0.12 |
| Subform | NMIS_SOURCE_TEST_RESULTS Report |  | Report.NMIS_SOURCE_LOTS_GERM_TEST_RESULTS Subreport (master: Source_Test_CN → child: SOURCE_TEST_CN) |  |  | 6.19, 0.01, 1.69, 0.20 |
| TextBox | NMIS_SOURCE_TESTS.CN |  | Source_Test_CN |  |  | 0.65, 0.11, 0.00, 0.12 |
| Line | Line37 |  |  |  |  | 0.44, 0.25, 7.50, 0.00 |
| TextBox | GROSS_SOURCE_PER_UNIT |  | GROSS_SOURCE_PER_UNIT |  |  | 1.23, 0.04, 0.73, 0.19 |
| TextBox | MOISTURE_PCT |  | MOISTURE_PCT |  |  | 2.81, 0.04, 0.38, 0.19 |
| TextBox | PURITY_PCT |  | PURITY_PCT |  |  | 2.06, 0.04, 0.38, 0.19 |
| TextBox | FILLED_PCT |  | FILLED_PCT |  |  | 4.04, 0.06, 0.43, 0.17 |
| TextBox | NOTE |  | NOTE |  |  | 0.46, 0.27, 5.67, 0.03 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_ID_ACTIVITIES subreport | ACTIVITIES | Report.NMIS_ID_ACTIVITIES_source subreport (master: CN → child: SOURCE_LOT_CN) |  |  | 0.44, 0.32, 7.51, 0.18 |
| Line | Line50 |  |  |  |  | 0.46, 0.09, 7.49, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text7 |  | =Now() |  |  | 0.48, 0.20, 2.81, 0.00 |
| TextBox | Text8 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.12, 0.20, 2.12, 0.00 |
| Line | Line21 |  |  |  |  | 0.44, 0.01, 7.48, 0.00 |
| TextBox | Text53 |  | ID |  |  | 6.41, 0.10, 1.50, 0.26 |
| Label | Label77 | No Effect on Balance |  |  |  | 3.39, 0.02, 1.32, 0.19 |
| Label | Label78 | j |  |  |  | 4.69, 0.02, 0.18, 0.18 |
