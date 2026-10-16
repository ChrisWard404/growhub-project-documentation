# Report: NMIS_SOURCE_Inventory_wtotals_Report

**Grouping/sorting:** `ASSOCIATE`, `Diversity`, `PLNTMSTR_SYMBOL`, `SOURCE_CODE`, `ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_SPECIES`, `NMIS_TEST_TYPES`  
**Opened from (VBA):** `Form_Seed_Inventory_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.57, 0.16, 2.81, 0.19 |
| Label | Label33 | CLIENT SOURCE INVENTORY REPORT |  |  |  | 2.78, 0.57, 2.38, 0.17 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.35, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.35, 0.00, 3.24, 0.16 |
| Label | ID_Label | ID |  |  |  | 0.29, 1.19, 0.59, 0.17 |
| Label | SOURCE_CODE_Label | Source  |  |  |  | 1.94, 1.19, 0.50, 0.17 |
| Label | TEST_DATE_Label | Test Date |  |  |  | 3.91, 1.04, 0.53, 0.33 |
| Label | GROSS_SOURCE_PER_UNIT_Label | Gross Source/U |  |  |  | 4.48, 1.04, 0.66, 0.33 |
| Label | PURITY_PCT_Label | Pur % |  |  |  | 5.16, 1.03, 0.27, 0.34 |
| Label | GERM_PCT_Label | Ger % |  |  |  | 5.82, 1.03, 0.29, 0.34 |
| Label | Sum Of ACTIVITY_UNITS_Label | Balance |  |  |  | 6.92, 1.19, 0.50, 0.17 |
| Label | CATEGORY_CODE_Label | Fund |  |  |  | 7.48, 1.19, 0.42, 0.17 |
| Label | Label24 | Mst % |  |  |  | 5.51, 1.04, 0.29, 0.33 |
| Label | Label26 | Test Type |  |  |  | 6.10, 1.04, 0.39, 0.33 |
| Line | Line21 |  |  |  |  | 0.00, 1.42, 7.94, 0.01 |
| ComboBox | Text43 |  | ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES; |  | 1.00, 0.75, 5.91, 0.19 |
| Label | Label28 | DN |  |  |  | 3.58, 1.19, 0.22, 0.17 |
| Label | Label39 |    Strat |  |  |  | 6.50, 1.03, 0.33, 0.34 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Diversity |  | Diversity |  |  | 0.29, 0.03, 2.79, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID_SOURCE |  |  | 0.29, 0.02, 3.29, 0.00 |
| TextBox | TEST_DATE |  | TEST_DATE |  |  | 3.86, 0.02, 0.57, 0.00 |
| TextBox | GROSS_SOURCE_PER_UNIT |  | GROSS_SOURCE_PER_UNIT |  |  | 4.44, 0.02, 0.71, 0.00 |
| TextBox | PURITY_PCT |  | PURITY_PCT |  |  | 5.16, 0.02, 0.28, 0.00 |
| TextBox | GERM_PCT |  | GERM_PCT |  |  | 5.80, 0.02, 0.27, 0.00 |
| TextBox | Sum Of ACTIVITY_UNITS |  | Balance |  |  | 6.76, 0.02, 0.69, 0.00 |
| TextBox | CATEGORY_CODE |  | CATEGORY_CODE |  |  | 7.50, 0.02, 0.45, 0.00 |
| TextBox | MOISTURE_PCT |  | MOISTURE_PCT |  |  | 5.47, 0.02, 0.30, 0.00 |
| ComboBox | TYPE_OF_TEST |  | TYPE_OF_TEST | SELECT NMIS_TEST_TYPES.TYPE_OF_TEST, NMIS_TEST_TYPES.TYPE_OF_TEST_DESC FROM NMIS_TEST_TYPES;  |  | 6.10, 0.02, 0.47, 0.00 |
| TextBox | DN |  | DN |  |  | 3.60, 0.03, 0.24, 0.16 |
| CheckBox | STRATIFIED |  | STRATIFIED |  |  | 6.61, 0.03, 0.00, 0.16 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label29 | Total For: |  |  |  | 0.29, 0.03, 0.65, 0.19 |
| TextBox | Text31 |  | =Sum([Balance]) |  |  | 6.65, 0.04, 0.81, 0.18 |
| ComboBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.VERNACULAR FROM NMIS_SPECIES;  |  | 0.97, 0.04, 2.86, 0.18 |
| Line | Line41 |  |  |  |  | 0.29, 0.26, 7.67, 0.00 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text48 |  | ="Total For: " & [Diversity] |  |  | 0.31, 0.00, 3.38, 0.19 |
| TextBox | Text49 |  | =Sum([Balance]) |  |  | 6.65, 0.00, 0.81, 0.18 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label35 | Total For: |  |  |  | 0.29, 0.05, 0.65, 0.19 |
| TextBox | Text36 |  | =Sum([Balance]) |  |  | 6.65, 0.06, 0.81, 0.18 |
| ComboBox | Combo37 |  | ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 0.97, 0.06, 2.82, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.33, 0.17, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.33, 0.17, 3.50, 0.18 |
| Line | Line22 |  |  |  |  | 0.29, 0.14, 7.54, 0.00 |
