# Report: NMIS_SOURCE_Card_Front_bu

**Caption:** NMIS_SOURCE_LOTS  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line62 |  |  |  |  | 0.55, 1.33, 7.62, 0.00 |
| Line | Line63 |  |  |  |  | 0.55, 1.35, 7.62, 0.00 |
| Line | Line64 |  |  |  |  | 8.18, 1.33, 0.00, 3.39 |
| Line | Line65 |  |  |  |  | 0.55, 1.33, 0.00, 3.39 |
| Line | Line66 |  |  |  |  | 0.55, 1.53, 7.62, 0.00 |
| Label | Label67 | Weights |  |  |  | 1.28, 1.35, 0.49, 0.18 |
| Line | Line68 |  |  |  |  | 2.55, 1.33, 0.00, 3.39 |
| Line | Line69 |  |  |  |  | 2.57, 1.33, 0.00, 3.39 |
| Line | Line70 |  |  |  |  | 1.05, 1.53, 0.00, 3.19 |
| Line | Line71 |  |  |  |  | 1.75, 1.54, 0.00, 3.18 |
| Line | Line73 |  |  |  |  | 3.31, 1.54, 0.00, 3.18 |
| Line | Line74 |  |  |  |  | 0.55, 1.71, 7.62, 0.00 |
| Label | Label75 | Bag |  |  |  | 0.66, 1.52, 0.26, 0.18 |
| Label | Label76 | Wt. |  |  |  | 1.26, 1.52, 0.25, 0.18 |
| Label | Label77 | Cert. No. |  |  |  | 1.88, 1.52, 0.54, 0.18 |
| Label | Label78 | Date |  |  |  | 2.77, 1.52, 0.30, 0.18 |
| Line | Line79 |  |  |  |  | 4.07, 1.54, 0.00, 3.18 |
| Line | Line80 |  |  |  |  | 4.84, 1.54, 0.00, 3.18 |
| Line | Line81 |  |  |  |  | 5.61, 1.54, 0.00, 3.18 |
| Label | Label82 | Inventory |  |  |  | 5.01, 1.35, 0.57, 0.18 |
| Label | Label83 | Lb Rec'd |  |  |  | 3.48, 1.52, 0.51, 0.18 |
| Label | Label84 | Lb Issued |  |  |  | 4.20, 1.52, 0.55, 0.18 |
| Label | Label85 | Lb Bal. |  |  |  | 5.00, 1.52, 0.43, 0.18 |
| Label | Label86 | Activity |  |  |  | 6.54, 1.53, 0.47, 0.18 |
| Line | Line87 |  |  |  |  | 0.55, 2.04, 7.62, 0.00 |
| Line | Line100 |  |  |  |  | 0.55, 2.38, 7.62, 0.00 |
| Line | Line101 |  |  |  |  | 0.55, 2.71, 7.62, 0.00 |
| Line | Line102 |  |  |  |  | 0.55, 3.04, 7.62, 0.00 |
| Line | Line103 |  |  |  |  | 0.55, 3.38, 7.62, 0.00 |
| Line | Line104 |  |  |  |  | 0.55, 3.71, 7.62, 0.00 |
| Line | Line105 |  |  |  |  | 0.55, 4.04, 7.62, 0.00 |
| Line | Line106 |  |  |  |  | 0.55, 4.38, 7.62, 0.00 |
| Line | Line107 |  |  |  |  | 0.55, 4.71, 7.62, 0.00 |
| TextBox | SOURCE | Source: | SOURCE |  |  | 2.46, 0.10, 3.62, 0.21 |
| TextBox | ID | Lot ID: | ID |  |  | 6.62, 0.05, 1.54, 0.26 |
| ComboBox | STORED_FOR_ASSOCIATE | Client: | STORED_FOR_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS ASSOCIATE_ASSOCIATE_NAME FROM NMIS_ASSOCIATES; |  | 4.59, 0.42, 3.58, 0.23 |
| TextBox | GROSS_SOURCE_PER_UNIT | Seed Count/LB: | GROSS_SOURCE_PER_UNIT |  |  | 4.76, 0.76, 0.79, 0.23 |
| TextBox | PURITY_PCT | Purity %: | PURITY_PCT |  |  | 6.41, 0.76, 0.38, 0.23 |
| TextBox | MOISTURE_PCT | Moisture %: | MOISTURE_PCT |  |  | 7.73, 0.76, 0.44, 0.23 |
| Label | Label69 | Loc: |  |  |  | 0.55, 0.08, 0.29, 0.23 |
| Line | Line72 |  |  |  |  | 0.86, 0.31, 0.96, 0.00 |
| Label | Label73 | Date: |  |  |  | 0.55, 0.76, 0.39, 0.23 |
| Line | Line75 |  |  |  |  | 0.98, 0.99, 1.25, 0.00 |
| TextBox | GERM_PCT | Germ %: | GERM_PCT |  |  | 1.22, 1.07, 0.42, 0.23 |
| ComboBox | PLNTMSTR_SYMBOL | Species: | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Vernacular_With_Code FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 1.18, 0.42, 2.85, 0.23 |
| Line | Line82 |  |  |  |  | 2.48, 0.31, 3.60, 0.00 |
| Line | Line83 |  |  |  |  | 6.64, 0.31, 1.54, 0.00 |
| Line | Line84 |  |  |  |  | 1.18, 0.65, 2.88, 0.00 |
| Line | Line85 |  |  |  |  | 4.59, 0.65, 3.58, 0.00 |
| Line | Line86 |  |  |  |  | 4.76, 0.99, 0.79, 0.00 |
| Line | Line88 |  |  |  |  | 6.43, 0.99, 0.38, 0.00 |
| Line | Line89 |  |  |  |  | 7.72, 0.99, 0.46, 0.00 |
| Line | Line90 |  |  |  |  | 1.22, 1.30, 0.42, 0.00 |
| ComboBox | CATEGORY_CODE | Category Code: | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES;  |  | 6.84, 1.07, 1.33, 0.23 |
| Line | Line93 |  |  |  |  | 6.84, 1.30, 1.33, 0.00 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 2.59, 1.81, 0.71, 0.23 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  |  | 3.32, 1.81, 0.73, 0.23 |
| TextBox | Text96 |  | ACTIVITY_UNITS |  |  | 4.84, 1.81, 0.75, 0.23 |
| ComboBox | ACTIVITY |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, [ACTIVITY_CODE] & " " & [ACTIVITY_NAME] AS ACTIVITY_NOTE FROM NMIS_ACTIVITY_CODES; |  | 5.64, 1.85, 2.54, 0.19 |
| TextBox | NOTE |  | NOTE |  |  | 5.64, 1.71, 2.53, 0.20 |
