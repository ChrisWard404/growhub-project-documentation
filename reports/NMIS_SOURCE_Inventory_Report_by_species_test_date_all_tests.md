# Report: NMIS_SOURCE_Inventory_Report_by_species_test_date_all_tests

**Grouping/sorting:** `PLNTMSTR_SYMBOL`, `Below_Min_Bal`, `Last_Test_Date`, `ASSOCIATE`, `SOURCE_CODE`, `ID`, `TEST_DATE`  
**Backend tables referenced:** `NMIS_SPECIES`, `NMIS_TEST_TYPES`  
**Opened from (VBA):** `Form_Seed_Inventory_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.27, 0.16, 2.81, 0.19 |
| Label | Label33 | SPECIES SOURCE INVENTORY REPORT |  |  |  | 2.06, 0.56, 3.24, 0.18 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.06, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.06, 0.00, 3.24, 0.16 |
| Label | ID_Label | ID |  |  |  | 0.00, 1.19, 0.46, 0.17 |
| Label | SOURCE_CODE_Label | Source  |  |  |  | 1.12, 1.19, 0.50, 0.17 |
| Label | TEST_DATE_Label | Test Date |  |  |  | 3.60, 1.04, 0.53, 0.33 |
| Label | GROSS_SOURCE_PER_UNIT_Label | Gross Source/U |  |  |  | 4.17, 1.04, 0.66, 0.33 |
| Label | PURITY_PCT_Label | Pur % |  |  |  | 4.86, 1.03, 0.32, 0.34 |
| Label | GERM_PCT_Label | Ger % |  |  |  | 5.52, 1.03, 0.29, 0.34 |
| Label | Sum Of ACTIVITY_UNITS_Label | Balance |  |  |  | 6.63, 1.19, 0.50, 0.17 |
| Label | CATEGORY_CODE_Label | Fund |  |  |  | 7.19, 1.19, 0.42, 0.17 |
| Label | Label24 | Mst% |  |  |  | 5.21, 1.04, 0.28, 0.33 |
| Label | Label26 | Test Type |  |  |  | 5.80, 1.04, 0.39, 0.33 |
| Line | Line21 |  |  |  |  | 0.00, 1.42, 7.68, 0.01 |
| ComboBox | Text43 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.VERNACULAR FROM NMIS_SPECIES; |  | 2.08, 0.75, 3.21, 0.19 |
| Label | Label28 | DN |  |  |  | 3.29, 1.19, 0.22, 0.17 |
| Label | Label39 |    Strat |  |  |  | 6.21, 1.03, 0.33, 0.34 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Below_Min_Bal |  | Below_Min_Bal | Y;Below Minimum Balance;N;Above Minimum Balance |  | 0.00, 0.02, 2.46, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID_SOURCEB |  |  | 0.00, 0.00, 3.30, 0.00 |
| TextBox | TEST_DATE |  | TEST_DATE |  |  | 3.56, 0.00, 0.57, 0.00 |
| TextBox | GROSS_SOURCE_PER_UNIT |  | GROSS_SOURCE_PER_UNIT |  |  | 4.12, 0.00, 0.73, 0.00 |
| TextBox | PURITY_PCT |  | PURITY_PCT |  |  | 4.86, 0.00, 0.28, 0.00 |
| TextBox | GERM_PCT |  | GERM_PCT |  |  | 5.49, 0.00, 0.27, 0.00 |
| TextBox | Sum Of ACTIVITY_UNITS |  | Sum Of ACTIVITY_UNITS |  |  | 6.47, 0.00, 0.69, 0.00 |
| TextBox | CATEGORY_CODE |  | CATEGORY_CODE |  |  | 7.20, 0.00, 0.45, 0.00 |
| TextBox | MOISTURE_PCT |  | MOISTURE_PCT |  |  | 5.17, 0.00, 0.30, 0.00 |
| ComboBox | TYPE_OF_TEST |  | TYPE_OF_TEST | SELECT NMIS_TEST_TYPES.TYPE_OF_TEST, NMIS_TEST_TYPES.TYPE_OF_TEST_DESC FROM NMIS_TEST_TYPES;  |  | 5.80, 0.00, 0.47, 0.00 |
| TextBox | DN |  | DN |  |  | 3.31, 0.01, 0.24, 0.16 |
| CheckBox | STRATIFIED |  | STRATIFIED |  |  | 6.32, 0.02, 0.00, 0.16 |
| TextBox | Next_Test |  | Next_Test |  |  | 2.50, 0.00, 0.65, 0.00 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line43 |  |  |  |  | 0.00, 0.02, 7.68, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.04, 0.17, 3.50, 0.18 |
| Line | Line22 |  |  |  |  | 0.00, 0.14, 7.54, 0.00 |
