# Report: NMIS_SOURCE_Card_Front_id_activities

**Caption:** NMIS_SOURCE_LOTS  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line62 |  |  |  |  | 0.25, 1.33, 7.62, 0.00 |
| Line | Line63 |  |  |  |  | 0.25, 1.35, 7.62, 0.00 |
| Line | Line64 |  |  |  |  | 7.88, 1.33, 0.00, 3.39 |
| Line | Line65 |  |  |  |  | 0.25, 1.33, 0.00, 3.39 |
| Line | Line66 |  |  |  |  | 0.25, 1.53, 7.62, 0.00 |
| Label | Label67 | Weights |  |  |  | 0.98, 1.35, 0.49, 0.18 |
| Line | Line68 |  |  |  |  | 2.25, 1.33, 0.00, 3.39 |
| Line | Line69 |  |  |  |  | 2.27, 1.33, 0.00, 3.39 |
| Line | Line70 |  |  |  |  | 0.75, 1.53, 0.00, 3.19 |
| Line | Line71 |  |  |  |  | 1.45, 1.54, 0.00, 3.18 |
| Line | Line73 |  |  |  |  | 3.01, 1.54, 0.00, 3.18 |
| Line | Line74 |  |  |  |  | 0.25, 1.71, 7.62, 0.00 |
| Label | Label75 | Bag/Box |  |  |  | 0.26, 1.52, 0.49, 0.18 |
| Label | Label76 | Wt. |  |  |  | 0.96, 1.52, 0.25, 0.18 |
| Label | Label77 | Cert. No. |  |  |  | 1.57, 1.52, 0.54, 0.18 |
| Label | Label78 | Date |  |  |  | 2.47, 1.52, 0.30, 0.18 |
| Line | Line79 |  |  |  |  | 3.77, 1.54, 0.00, 3.18 |
| Line | Line80 |  |  |  |  | 4.54, 1.54, 0.00, 3.18 |
| Line | Line81 |  |  |  |  | 5.31, 1.54, 0.00, 3.18 |
| Label | Label82 | Inventory |  |  |  | 4.71, 1.35, 0.57, 0.18 |
| Label | Label83 | Lb Rec'd |  |  |  | 3.18, 1.52, 0.51, 0.18 |
| Label | Label84 | Lb Issued |  |  |  | 3.90, 1.52, 0.55, 0.18 |
| Label | Label85 | Lb Bal. |  |  |  | 4.70, 1.52, 0.43, 0.18 |
| Label | Label86 | Activity |  |  |  | 6.24, 1.53, 0.47, 0.18 |
| Line | Line87 |  |  |  |  | 0.25, 2.04, 7.62, 0.00 |
| Line | Line100 |  |  |  |  | 0.25, 2.38, 7.62, 0.00 |
| Line | Line101 |  |  |  |  | 0.25, 2.71, 7.62, 0.00 |
| Line | Line102 |  |  |  |  | 0.25, 3.04, 7.62, 0.00 |
| Line | Line103 |  |  |  |  | 0.25, 3.38, 7.62, 0.00 |
| Line | Line104 |  |  |  |  | 0.25, 3.71, 7.62, 0.00 |
| Line | Line105 |  |  |  |  | 0.25, 4.04, 7.62, 0.00 |
| Line | Line106 |  |  |  |  | 0.25, 4.38, 7.62, 0.00 |
| Line | Line107 |  |  |  |  | 0.25, 4.71, 7.62, 0.00 |
| TextBox | SOURCE | Source: | SOURCE |  |  | 2.16, 0.05, 3.62, 0.21 |
| TextBox | ID | ID: | ID |  |  | 6.28, 0.00, 1.60, 0.26 |
| ComboBox | STORED_FOR_ASSOCIATE | Client: | STORED_FOR_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS ASSOCIATE_ASSOCIATE_NAME FROM NMIS_ASSOCIATES; |  | 0.88, 0.75, 4.58, 0.23 |
| TextBox | GROSS_SOURCE_PER_UNIT | Seed Count/LB: | GROSS_SOURCE_PER_UNIT |  |  | 4.15, 1.07, 1.19, 0.23 |
| TextBox | PURITY_PCT | Purity %: | PURITY_PCT |  |  | 6.12, 1.07, 0.38, 0.23 |
| TextBox | MOISTURE_PCT | Moisture %: | MOISTURE_PCT |  |  | 7.41, 1.07, 0.44, 0.23 |
| Label | Label69 | Loc: |  |  |  | 0.25, 0.03, 0.29, 0.23 |
| Line | Line72 |  |  |  |  | 0.56, 0.26, 0.96, 0.00 |
| Label | Label73 | Date: |  |  |  | 6.16, 0.50, 0.35, 0.20 |
| Line | Line75 |  |  |  |  | 6.59, 0.70, 1.29, 0.00 |
| TextBox | GERM_PCT | Germ %: | GERM_PCT |  |  | 0.92, 1.07, 0.42, 0.23 |
| ComboBox | PLNTMSTR_SYMBOL | Species: | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Vernacular_With_Code FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 0.88, 0.42, 4.58, 0.23 |
| Line | Line82 |  |  |  |  | 2.18, 0.26, 3.60, 0.00 |
| Line | Line83 |  |  |  |  | 6.30, 0.26, 1.58, 0.00 |
| Line | Line84 |  |  |  |  | 0.88, 0.65, 4.58, 0.00 |
| Line | Line85 |  |  |  |  | 0.89, 0.98, 4.57, 0.00 |
| Line | Line86 |  |  |  |  | 4.19, 1.30, 1.18, 0.00 |
| Line | Line88 |  |  |  |  | 6.14, 1.30, 0.38, 0.00 |
| Line | Line89 |  |  |  |  | 7.47, 1.30, 0.40, 0.00 |
| Line | Line90 |  |  |  |  | 0.92, 1.30, 0.42, 0.00 |
| ComboBox | CATEGORY_CODE | Category: | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES;  |  | 6.55, 0.75, 1.33, 0.23 |
| Line | Line93 |  |  |  |  | 6.55, 0.98, 1.33, 0.00 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 2.29, 1.81, 0.71, 0.23 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  |  | 3.02, 1.81, 0.73, 0.23 |
| TextBox | Text96 |  | ACTIVITY_UNITS |  |  | 4.54, 1.81, 0.75, 0.23 |
| TextBox | NOTE |  | NOTE |  |  | 5.33, 1.70, 2.53, 0.34 |
| TextBox | ID2 |  | ID2 |  |  | 6.27, 0.26, 1.61, 0.23 |
| TextBox | Text109 |  | =IIf(Not IsNull([ID2]),"Old ID:",Null) |  |  | 5.67, 0.25, 0.58, 0.23 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 2.30, 1.71, 0.69, 0.00 |
| TextBox | FILLED_PCT | X-Ray Filled %: | FILLED_PCT |  |  | 2.51, 1.07, 0.42, 0.23 |
| Line | Line114 |  |  |  |  | 2.51, 1.30, 0.42, 0.00 |
| TextBox | Text115 |  | =Date() |  |  | 6.55, 0.50, 1.33, 0.20 |
