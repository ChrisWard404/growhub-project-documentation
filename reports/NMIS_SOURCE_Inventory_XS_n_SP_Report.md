# Report: NMIS_SOURCE_Inventory_XS_n_SP_Report

**Caption:** NMIS_SOURCE_Inventory  
**Grouping/sorting:** `ASSOCIATE`, `Diversity`, `PLNTMSTR_SYMBOL`, `SOURCE_CODE`, `ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_TEST_TYPES`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.57, 0.16, 2.81, 0.19 |
| Label | Label33 | CLIENT SOURCE EXCESS and SURPLUS INVENTORY REPORT |  |  |  | 2.18, 0.56, 3.59, 0.18 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.35, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.35, 0.00, 3.24, 0.16 |
| Label | ID_Label | ID |  |  |  | 0.29, 1.20, 0.46, 0.17 |
| Label | SOURCE_CODE_Label | Source  |  |  |  | 1.42, 1.20, 0.50, 0.17 |
| Label | TEST_DATE_Label | Test Date |  |  |  | 4.30, 1.05, 0.53, 0.33 |
| Label | GROSS_SOURCE_PER_UNIT_Label | Gross Source/U |  |  |  | 4.87, 1.05, 0.66, 0.33 |
| Label | PURITY_PCT_Label | Pur % |  |  |  | 5.55, 1.05, 0.32, 0.34 |
| Label | GERM_PCT_Label | Ger % |  |  |  | 6.21, 1.05, 0.29, 0.34 |
| Label | Sum Of ACTIVITY_UNITS_Label | Balance |  |  |  | 6.92, 1.20, 0.50, 0.17 |
| Label | CATEGORY_CODE_Label | Fund |  |  |  | 7.48, 1.20, 0.42, 0.17 |
| Label | Label24 | Mst% |  |  |  | 5.91, 1.05, 0.28, 0.33 |
| Label | Label26 | Test Type |  |  |  | 3.83, 1.05, 0.39, 0.33 |
| Line | Line21 |  |  |  |  | 0.29, 1.42, 7.68, 0.01 |
| ComboBox | Text43 | Client: | ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES; |  | 3.62, 0.75, 1.72, 0.19 |
| Label | Label28 | DN |  |  |  | 3.58, 1.20, 0.22, 0.17 |
| Label | Label39 |    Strat |  |  |  | 6.50, 1.05, 0.33, 0.34 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Diversity |  | Diversity |  |  | 0.29, 0.03, 2.79, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID_SOURCEB |  |  | 0.29, 0.01, 3.30, 0.00 |
| TextBox | TEST_DATE |  | TEST_DATE |  |  | 4.26, 0.01, 0.57, 0.00 |
| TextBox | GROSS_SOURCE_PER_UNIT |  | GROSS_SOURCE_PER_UNIT |  |  | 4.85, 0.01, 0.65, 0.00 |
| TextBox | PURITY_PCT |  | PURITY_PCT |  |  | 5.55, 0.01, 0.28, 0.00 |
| TextBox | GERM_PCT |  | GERM_PCT |  |  | 6.19, 0.01, 0.27, 0.00 |
| TextBox | Sum Of ACTIVITY_UNITS |  | Sum Of ACTIVITY_UNITS |  |  | 6.76, 0.01, 0.69, 0.00 |
| TextBox | CATEGORY_CODE |  | CATEGORY_CODE |  |  | 7.50, 0.01, 0.45, 0.00 |
| TextBox | MOISTURE_PCT |  | MOISTURE_PCT |  |  | 5.86, 0.01, 0.30, 0.00 |
| ComboBox | TYPE_OF_TEST |  | TYPE_OF_TEST | SELECT NMIS_TEST_TYPES.TYPE_OF_TEST, NMIS_TEST_TYPES.TYPE_OF_TEST_DESC FROM NMIS_TEST_TYPES;  |  | 3.87, 0.01, 0.40, 0.00 |
| TextBox | DN |  | DN |  |  | 3.60, 0.02, 0.24, 0.16 |
| CheckBox | STRATIFIED |  | STRATIFIED |  |  | 6.61, 0.03, 0.00, 0.16 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text48 |  | ="Total For: " & [Diversity] |  |  | 0.32, 0.02, 3.38, 0.19 |
| TextBox | Text49 |  | =Sum([Sum Of ACTIVITY_UNITS]) |  |  | 6.65, 0.03, 0.81, 0.18 |

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
| TextBox | Text42 |  | =Sum([Sum Of ACTIVITY_UNITS]) |  |  | 6.65, 0.00, 0.81, 0.18 |
