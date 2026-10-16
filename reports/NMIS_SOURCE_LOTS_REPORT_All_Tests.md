# Report: NMIS_SOURCE_LOTS_REPORT_All_Tests

**Grouping/sorting:** `ID_SOURCEB`, `TEST_DATE`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`, `NMIS_SOURCE_LOTS`  
**Subforms/subreports:** `Report.NMIS_ID_LOCATIONS subreport1`, `Report.NMIS_SOURCE_LOTS_GERM_TEST_RESULTS Subreport`, `Report.NMIS_ID_ACTIVITIES subreport`  
**Opened from (VBA):** `Form_NMIS_SOURCE_LOT_SELECT`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.53, 0.16, 3.25, 0.19 |
| Label | Label33 | Source Lot History Report |  |  |  | 2.52, 0.55, 3.26, 0.29 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.53, 0.35, 3.25, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.53, 0.00, 3.25, 0.16 |
| Subform | NMIS_ID_LOCATIONS subreport1 |  | Report.NMIS_ID_LOCATIONS subreport1 (master: CN → child: SOURCE_LOT_CN) |  |  | 6.16, 0.04, 1.80, 0.96 |
| TextBox | Text71 |  | ID |  |  | 0.04, 0.05, 3.04, 0.35 |
| Label | Label72 | All Tests |  |  |  | 0.46, 0.58, 0.78, 0.19 |

## Section: GroupHeader4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line38 |  |  |  |  | 0.44, 1.74, 7.46, 0.00 |
| Label | GERM_PCT_Label | Germ % |  |  |  | 4.20, 1.29, 0.37, 0.46 |
| Label | Label13 | Test Date |  |  |  | 0.46, 1.29, 0.46, 0.46 |
| Label | Label15 | Stratified |  |  |  | 4.97, 1.52, 0.63, 0.23 |
| Label | Label25 | Borderline Strat |  |  |  | 5.60, 1.27, 0.71, 0.48 |
| Line | Line39 |  |  |  |  | 0.44, 1.27, 7.47, 0.00 |
| Label | Label42 | Moisture % |  |  |  | 3.54, 1.30, 0.64, 0.46 |
| Label | Label43 | Seeds /Lb |  |  |  | 2.41, 1.29, 0.58, 0.46 |
| Label | Label45 | Purity % |  |  |  | 3.10, 1.30, 0.43, 0.46 |
| Label | Label59 | Filled % |  |  |  | 4.60, 1.29, 0.37, 0.46 |
| Label | ID_Label | Lot ID |  |  |  | 0.48, 0.23, 0.53, 0.23 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 2.26, 0.23, 0.59, 0.23 |
| Line | Line11 |  |  |  |  | 0.48, 0.47, 7.48, 0.00 |
| TextBox | ID |  | ID_SOURCEB |  |  | 0.46, 0.50, 6.29, 0.23 |
| ComboBox | CN |  | CN | SELECT NMIS_SOURCE_LOTS.CN, [Scientific_Name_With_Code] & " - " & [Vernacular] AS Display FROM NMIS_SOURCE_LOTS INNER JOIN NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query ON NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL = NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL; |  | 0.46, 0.75, 7.42, 0.23 |
| ComboBox | CATEGORY_CODE | Category: | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES;  |  | 6.25, 0.00, 1.67, 0.22 |
| ComboBox | STORED_FOR_ASSOCIATE | Stored For: | STORED_FOR_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS Expr1 FROM NMIS_ASSOCIATES; |  | 1.08, 0.00, 4.14, 0.22 |
| Line | Line10 |  |  |  |  | 0.48, 0.24, 7.48, 0.00 |
| TextBox | GEOGRAPHIC_LOCATION | Geographic Location: | GEOGRAPHIC_LOCATION |  |  | 4.88, 1.01, 1.33, 0.20 |
| TextBox | BREEDING_ZONE | Breeding Zone: | BREEDING_ZONE |  |  | 7.09, 1.01, 0.79, 0.20 |
| Label | Label65 | Test Doc |  |  |  | 1.20, 1.29, 0.45, 0.46 |
| Label | Label67 | Test Type |  |  |  | 1.79, 1.30, 0.43, 0.46 |
| TextBox | TREE_NUMBER | Tree No.(s): | TREE_NUMBER |  |  | 1.15, 1.01, 2.58, 0.20 |
| TextBox | Text75 |  | Source_Lot_Note |  |  | 0.46, 1.24, 7.46, 0.01 |
| CheckBox | COMBINED | Combined Lots | COMBINED |  |  | 7.75, 0.56, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | GERM_PCT |  | GERM_PCT |  |  | 4.15, 0.01, 0.35, 0.15 |
| TextBox | TEST_DATE |  | TEST_DATE |  |  | 0.45, 0.01, 0.63, 0.17 |
| CheckBox | STRATIFIED |  | STRATIFIED |  |  | 5.25, 0.01, 0.00, 0.00 |
| CheckBox | CHECK_STRAT |  | CHECK_STRAT |  |  | 5.91, 0.01, 0.12, 0.12 |
| Subform | NMIS_SOURCE_TEST_RESULTS Report |  | Report.NMIS_SOURCE_LOTS_GERM_TEST_RESULTS Subreport (master: Source_Test_CN → child: SOURCE_TEST_CN) |  |  | 6.19, 0.01, 1.69, 0.18 |
| TextBox | NMIS_SOURCE_TESTS.CN |  | Source_Test_CN |  |  | 1.61, 0.01, 0.00, 0.10 |
| Line | Line37 |  |  |  |  | 0.44, 0.20, 7.50, 0.00 |
| TextBox | GROSS_SOURCE_PER_UNIT |  | GROSS_SOURCE_PER_UNIT |  |  | 2.23, 0.01, 0.85, 0.17 |
| TextBox | MOISTURE_PCT |  | MOISTURE_PCT |  |  | 3.71, 0.01, 0.31, 0.17 |
| TextBox | PURITY_PCT |  | PURITY_PCT |  |  | 3.16, 0.01, 0.31, 0.17 |
| TextBox | FILLED_PCT |  | FILLED_PCT |  |  | 4.51, 0.01, 0.38, 0.15 |
| TextBox | TEST_DOCUMENT |  | TEST_DOCUMENT |  |  | 1.11, 0.01, 0.59, 0.17 |
| TextBox | TYPE_OF_TEST |  | TYPE_OF_TEST |  |  | 1.78, 0.01, 0.44, 0.17 |
| TextBox | NMIS_SOURCE_LastTestData4 Query.NOTE |  | Source_Test_Note |  |  | 0.45, 0.18, 5.53, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_ID_ACTIVITIES subreport | ACTIVITIES | Report.NMIS_ID_ACTIVITIES subreport (master: CN → child: SOURCE_LOT_CN) |  |  | 0.44, 0.26, 7.51, 0.18 |
| Line | Line50 |  |  |  |  | 0.45, 0.03, 7.49, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text7 |  | =Now() |  |  | 0.48, 0.26, 2.81, 0.00 |
| TextBox | Text8 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.12, 0.26, 2.12, 0.00 |
| Line | Line21 |  |  |  |  | 0.44, 0.04, 7.48, 0.00 |
| TextBox | Text53 |  | ID |  |  | 5.38, 0.07, 2.54, 0.35 |
| Label | Label77 | No Effect on Balance |  |  |  | 3.31, 0.08, 1.32, 0.19 |
| Label | Label78 | j |  |  |  | 4.65, 0.08, 0.18, 0.18 |
