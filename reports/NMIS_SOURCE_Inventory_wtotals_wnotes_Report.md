# Report: NMIS_SOURCE_Inventory_wtotals_wnotes_Report

**Grouping/sorting:** `ASSOCIATE`, `Diversity`, `PLNTMSTR_SYMBOL`, `SOURCE_CODE`, `ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_SPECIES`, `NMIS_TEST_TYPES`  
**Opened from (VBA):** `Form_Seed_Inventory_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 3.96, 0.16, 2.81, 0.19 |
| Label | Label33 | CLIENT SOURCE INVENTORY REPORT |  |  |  | 4.17, 0.57, 2.38, 0.17 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.74, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 3.74, 0.00, 3.24, 0.16 |
| Label | ID_Label | ID |  |  |  | 0.29, 1.19, 0.59, 0.17 |
| Label | SOURCE_CODE_Label | Source  |  |  |  | 1.94, 1.19, 0.50, 0.17 |
| Label | TEST_DATE_Label | Test Date |  |  |  | 3.90, 1.04, 0.53, 0.33 |
| Label | GROSS_SOURCE_PER_UNIT_Label | Gross Source/U |  |  |  | 4.47, 1.04, 0.66, 0.33 |
| Label | PURITY_PCT_Label | Pur % |  |  |  | 5.15, 1.03, 0.32, 0.34 |
| Label | GERM_PCT_Label | Ger % |  |  |  | 5.81, 1.03, 0.29, 0.34 |
| Label | Sum Of ACTIVITY_UNITS_Label | Balance |  |  |  | 6.92, 1.19, 0.50, 0.17 |
| Label | CATEGORY_CODE_Label | Fund |  |  |  | 7.48, 1.19, 0.42, 0.17 |
| Label | Label24 | Mst% |  |  |  | 5.50, 1.04, 0.28, 0.33 |
| Label | Label26 | Test Type |  |  |  | 6.09, 1.04, 0.39, 0.33 |
| Line | Line21 |  |  |  |  | 0.00, 1.42, 10.59, 0.00 |
| ComboBox | Text43 | Client: | ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 5.01, 0.75, 1.72, 0.19 |
| Label | Label28 | DN |  |  |  | 3.58, 1.19, 0.22, 0.17 |
| Label | Label39 |    Strat |  |  |  | 6.50, 1.03, 0.33, 0.34 |
| Label | Label43 | Notes |  |  |  | 7.95, 1.19, 0.68, 0.18 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Diversity |  | Diversity |  |  | 0.29, 0.03, 2.79, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NOTE |  | NOTE |  |  | 8.00, 0.00, 2.58, 0.18 |
| TextBox | ID |  | ID_SOURCE |  |  | 0.29, 0.01, 3.30, 0.00 |
| TextBox | TEST_DATE |  | TEST_DATE |  |  | 3.85, 0.01, 0.57, 0.00 |
| TextBox | GROSS_SOURCE_PER_UNIT |  | GROSS_SOURCE_PER_UNIT |  |  | 4.43, 0.01, 0.71, 0.00 |
| TextBox | PURITY_PCT |  | PURITY_PCT |  |  | 5.15, 0.01, 0.28, 0.00 |
| TextBox | GERM_PCT |  | GERM_PCT |  |  | 5.79, 0.01, 0.27, 0.00 |
| TextBox | Sum Of ACTIVITY_UNITS |  | Balance |  |  | 6.76, 0.01, 0.69, 0.00 |
| TextBox | CATEGORY_CODE |  | CATEGORY_CODE |  |  | 7.50, 0.01, 0.45, 0.00 |
| TextBox | MOISTURE_PCT |  | MOISTURE_PCT |  |  | 5.46, 0.01, 0.30, 0.00 |
| ComboBox | TYPE_OF_TEST |  | TYPE_OF_TEST | SELECT NMIS_TEST_TYPES.TYPE_OF_TEST, NMIS_TEST_TYPES.TYPE_OF_TEST_DESC FROM NMIS_TEST_TYPES;  |  | 6.08, 0.01, 0.51, 0.00 |
| TextBox | DN |  | DN |  |  | 3.60, 0.02, 0.24, 0.16 |
| CheckBox | STRATIFIED |  | STRATIFIED |  |  | 6.61, 0.03, 0.00, 0.16 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label29 | Total For: |  |  |  | 0.29, 0.03, 0.65, 0.19 |
| TextBox | Text31 |  | =Sum([Balance]) |  |  | 6.65, 0.04, 0.81, 0.18 |
| ComboBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.VERNACULAR FROM NMIS_SPECIES;  |  | 0.97, 0.04, 2.86, 0.18 |
| Line | Line41 |  |  |  |  | 0.29, 0.25, 10.29, 0.00 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text48 |  | ="Total For: " & [Diversity] |  |  | 0.34, 0.03, 3.38, 0.19 |
| TextBox | Text49 |  | =Sum([Balance]) |  |  | 6.65, 0.04, 0.81, 0.18 |

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
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 7.26, 0.17, 3.35, 0.18 |
| Line | Line22 |  |  |  |  | 0.29, 0.12, 10.29, 0.00 |
