# Report: NMIS_SOURCE_Inventory_Report

**Grouping/sorting:** `ASSOCIATE`, `Diversity`, `PLNTMSTR_SYMBOL`, `SOURCE_CODE`, `ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_TEST_TYPES`  
**Opened from (VBA):** `Form_Seed_Inventory_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.57, 0.16, 2.81, 0.19 |
| Label | Label33 | CLIENT SOURCE INVENTORY REPORT |  |  |  | 2.78, 0.57, 2.38, 0.17 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.35, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.35, 0.00, 3.24, 0.16 |
| Label | ID_Label | ID |  |  |  | 0.29, 1.19, 0.46, 0.17 |
| Label | SOURCE_CODE_Label | Source  |  |  |  | 1.42, 1.19, 0.50, 0.17 |
| Label | TEST_DATE_Label | Test Date |  |  |  | 3.85, 1.04, 0.53, 0.33 |
| Label | GROSS_SOURCE_PER_UNIT_Label | Gross Source/U |  |  |  | 4.42, 1.04, 0.66, 0.33 |
| Label | PURITY_PCT_Label | Pur % |  |  |  | 5.11, 1.03, 0.32, 0.34 |
| Label | GERM_PCT_Label | Ger % |  |  |  | 5.77, 1.03, 0.29, 0.34 |
| Label | Sum Of ACTIVITY_UNITS_Label | Balance |  |  |  | 6.92, 1.19, 0.50, 0.17 |
| Label | CATEGORY_CODE_Label | Fund |  |  |  | 7.48, 1.19, 0.42, 0.17 |
| Label | Label24 | Mst% |  |  |  | 5.46, 1.04, 0.28, 0.33 |
| Label | Label26 | Test Type |  |  |  | 6.07, 1.04, 0.39, 0.33 |
| Line | Line21 |  |  |  |  | 0.00, 1.42, 7.97, 0.01 |
| ComboBox | Text43 |  | ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES; |  | 1.10, 0.75, 5.75, 0.19 |
| Label | Label28 | DN |  |  |  | 3.58, 1.19, 0.22, 0.17 |
| Label | Label39 |    Strat |  |  |  | 6.50, 1.03, 0.33, 0.34 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Diversity |  | Diversity |  |  | 0.29, 0.03, 2.79, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID_SOURCEB |  |  | 0.29, 0.01, 3.30, 0.00 |
| TextBox | TEST_DATE |  | TEST_DATE |  |  | 3.81, 0.01, 0.57, 0.00 |
| TextBox | GROSS_SOURCE_PER_UNIT |  | GROSS_SOURCE_PER_UNIT |  |  | 4.39, 0.01, 0.72, 0.00 |
| TextBox | PURITY_PCT |  | PURITY_PCT |  |  | 5.11, 0.01, 0.28, 0.00 |
| TextBox | GERM_PCT |  | GERM_PCT |  |  | 5.74, 0.01, 0.27, 0.00 |
| TextBox | Sum Of ACTIVITY_UNITS |  | Balance |  |  | 6.76, 0.01, 0.69, 0.00 |
| TextBox | CATEGORY_CODE |  | CATEGORY_CODE |  |  | 7.50, 0.01, 0.45, 0.00 |
| TextBox | MOISTURE_PCT |  | MOISTURE_PCT |  |  | 5.42, 0.01, 0.30, 0.00 |
| ComboBox | TYPE_OF_TEST |  | TYPE_OF_TEST | SELECT NMIS_TEST_TYPES.TYPE_OF_TEST, NMIS_TEST_TYPES.TYPE_OF_TEST_DESC FROM NMIS_TEST_TYPES;  |  | 6.04, 0.01, 0.47, 0.00 |
| TextBox | DN |  | DN |  |  | 3.60, 0.02, 0.24, 0.16 |
| CheckBox | STRATIFIED |  | STRATIFIED |  |  | 6.61, 0.03, 0.00, 0.16 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text48 |  | ="Total For: " & [Diversity] |  |  | 0.32, 0.02, 3.38, 0.19 |
| TextBox | Text49 |  | =Sum([Balance]) |  |  | 6.65, 0.03, 0.81, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.33, 0.17, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.33, 0.17, 3.50, 0.18 |
| Line | Line22 |  |  |  |  | 0.29, 0.14, 7.54, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text41 |  | ="Grand Total" |  |  | 0.32, 0.00, 3.38, 0.19 |
| TextBox | Text42 |  | =Sum([Balance]) |  |  | 6.65, 0.00, 0.81, 0.18 |
