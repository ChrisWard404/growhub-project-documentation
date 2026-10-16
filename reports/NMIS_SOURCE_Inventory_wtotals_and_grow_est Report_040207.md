# Report: NMIS_SOURCE_Inventory_wtotals_and_grow_est Report_040207

**Caption:** NMIS_SOURCE_Inventory  
**Grouping/sorting:** `ASSOCIATE`, `Diversity`, `PLNTMSTR_SYMBOL`, `SOURCE_CODE`, `ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_SPECIES`  
**Opened from (VBA):** `Form_Seed_Inventory_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.27, 0.16, 2.81, 0.19 |
| Label | Label33 | CLIENT SOURCE INVENTORY REPORT |  |  |  | 2.49, 0.57, 2.38, 0.17 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.06, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.06, 0.00, 3.24, 0.16 |
| Label | ID_Label | ID |  |  |  | 0.00, 1.32, 0.50, 0.17 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 1.04, 1.32, 0.47, 0.17 |
| Label | GROSS_SOURCE_PER_UNIT_Label | Gross Source/U |  |  |  | 4.30, 1.18, 0.66, 0.33 |
| Label | PURITY_PCT_Label | Purity % |  |  |  | 4.98, 1.18, 0.42, 0.33 |
| Label | GERM_PCT_Label | Germ % |  |  |  | 5.45, 1.18, 0.39, 0.33 |
| Label | Sum Of ACTIVITY_UNITS_Label | Balance |  |  |  | 3.73, 1.32, 0.50, 0.17 |
| Label | CATEGORY_CODE_Label | Fund |  |  |  | 7.17, 1.32, 0.42, 0.17 |
| Line | Line47 |  |  |  |  | 0.00, 1.02, 7.67, 0.00 |
| Line | Line21 |  |  |  |  | 0.00, 1.53, 7.67, 0.00 |
| ComboBox | Text43 |  | ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 0.73, 0.75, 5.91, 0.19 |
| Label | Label28 | DN |  |  |  | 3.30, 1.32, 0.22, 0.17 |
| Label | Label38 | Estimate of Shippable Plants (M) |  |  |  | 5.85, 1.02, 1.29, 0.33 |
| Label | Label39 | Total |  |  |  | 6.55, 1.32, 0.59, 0.18 |
| Label | Label53 | Per Lb |  |  |  | 5.92, 1.32, 0.68, 0.18 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box51 |  |  |  |  | 0.00, 0.00, 7.67, 0.29 |
| TextBox | Diversity |  | Diversity |  |  | 0.01, 0.04, 2.79, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID_SOURCEB |  |  | 0.00, 0.00, 3.29, 0.00 |
| TextBox | GROSS_SOURCE_PER_UNIT |  | GROSS_SOURCE_PER_UNIT |  |  | 4.28, 0.00, 0.71, 0.00 |
| TextBox | PURITY_PCT |  | PURITY_PCT |  |  | 4.98, 0.00, 0.33, 0.00 |
| TextBox | GERM_PCT |  | GERM_PCT |  |  | 5.42, 0.00, 0.33, 0.00 |
| TextBox | Sum Of ACTIVITY_UNITS |  | Balance |  |  | 3.58, 0.00, 0.69, 0.00 |
| TextBox | CATEGORY_CODE |  | CATEGORY_CODE |  |  | 7.17, 0.00, 0.48, 0.00 |
| TextBox | DN |  | DN |  |  | 3.32, 0.01, 0.24, 0.16 |
| TextBox | Harvest_Factor_One_Oh |  | Est_Total |  |  | 6.53, 0.00, 0.55, 0.00 |
| TextBox | Text54 |  | Est_Per_Lb |  |  | 5.99, 0.00, 0.55, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label29 | Total For: |  |  |  | 0.00, 0.03, 0.65, 0.19 |
| TextBox | Text31 |  | =Sum([Balance]) |  |  | 3.46, 0.04, 0.81, 0.18 |
| ComboBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.VERNACULAR FROM NMIS_SPECIES;  |  | 0.68, 0.04, 2.66, 0.18 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text48 |  | ="Total For: " & [Diversity] |  |  | 0.00, 0.03, 3.38, 0.19 |
| TextBox | Text49 |  | =Sum([Balance]) |  |  | 3.46, 0.04, 0.81, 0.18 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label35 | Total For: |  |  |  | 0.00, 0.05, 0.65, 0.19 |
| TextBox | Text36 |  | =Sum([Balance]) |  |  | 3.46, 0.06, 0.81, 0.18 |
| ComboBox | Combo37 |  | ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 0.68, 0.06, 2.61, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.21, 0.17, 3.44, 0.18 |
| Line | Line22 |  |  |  |  | 0.00, 0.14, 7.67, 0.00 |
