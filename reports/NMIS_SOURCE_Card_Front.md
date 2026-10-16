# Report: NMIS_SOURCE_Card_Front

**Caption:** NMIS_SOURCE_LOTS  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`  
**Opened from (VBA):** `Form_NMIS_SOURCE_LOTS_INPUT`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line62 |  |  |  |  | 0.15, 1.33, 7.62, 0.00 |
| Line | Line63 |  |  |  |  | 0.15, 1.35, 7.62, 0.00 |
| Line | Line64 |  |  |  |  | 7.77, 1.33, 0.00, 3.39 |
| Line | Line65 |  |  |  |  | 0.15, 1.33, 0.00, 3.39 |
| Line | Line66 |  |  |  |  | 0.15, 1.53, 7.62, 0.00 |
| Label | Label67 | Weights |  |  |  | 0.88, 1.35, 0.49, 0.18 |
| Line | Line68 |  |  |  |  | 2.15, 1.33, 0.00, 3.39 |
| Line | Line69 |  |  |  |  | 2.17, 1.33, 0.00, 3.39 |
| Line | Line70 |  |  |  |  | 0.65, 1.53, 0.00, 3.19 |
| Line | Line71 |  |  |  |  | 1.34, 1.54, 0.00, 3.18 |
| Line | Line73 |  |  |  |  | 2.91, 1.54, 0.00, 3.18 |
| Line | Line74 |  |  |  |  | 0.15, 1.71, 7.62, 0.00 |
| Label | Label75 | Bag/Box |  |  |  | 0.16, 1.52, 0.49, 0.18 |
| Label | Label76 | Wt. |  |  |  | 0.85, 1.52, 0.25, 0.18 |
| Label | Label77 | Cert. No. |  |  |  | 1.47, 1.52, 0.54, 0.18 |
| Label | Label78 | Date |  |  |  | 2.36, 1.52, 0.30, 0.18 |
| Line | Line79 |  |  |  |  | 3.67, 1.54, 0.00, 3.18 |
| Line | Line80 |  |  |  |  | 4.44, 1.54, 0.00, 3.18 |
| Line | Line81 |  |  |  |  | 5.21, 1.54, 0.00, 3.18 |
| Label | Label82 | Inventory |  |  |  | 4.60, 1.35, 0.57, 0.18 |
| Label | Label83 | Lb Rec'd |  |  |  | 3.07, 1.52, 0.51, 0.18 |
| Label | Label84 | Lb Issued |  |  |  | 3.79, 1.52, 0.55, 0.18 |
| Label | Label85 | Lb Bal. |  |  |  | 4.59, 1.52, 0.43, 0.18 |
| Label | Label86 | Activity |  |  |  | 6.14, 1.53, 0.47, 0.18 |
| Line | Line87 |  |  |  |  | 0.15, 2.04, 7.62, 0.00 |
| Line | Line100 |  |  |  |  | 0.15, 2.38, 7.62, 0.00 |
| Line | Line101 |  |  |  |  | 0.15, 2.71, 7.62, 0.00 |
| Line | Line102 |  |  |  |  | 0.15, 3.04, 7.62, 0.00 |
| Line | Line103 |  |  |  |  | 0.15, 3.38, 7.62, 0.00 |
| Line | Line104 |  |  |  |  | 0.15, 3.71, 7.62, 0.00 |
| Line | Line105 |  |  |  |  | 0.15, 4.04, 7.62, 0.00 |
| Line | Line106 |  |  |  |  | 0.15, 4.38, 7.62, 0.00 |
| Line | Line107 |  |  |  |  | 0.15, 4.71, 7.62, 0.00 |
| TextBox | SOURCE | Source: | SOURCE |  |  | 1.92, 0.27, 3.62, 0.21 |
| TextBox | ID | ID: | ID |  |  | 6.18, 0.18, 1.60, 0.26 |
| ComboBox | STORED_FOR_ASSOCIATE | Client: | STORED_FOR_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [nmis_associates].[ASSOCIATE] & ") " & [nmis_associates].[ASSOCIATE_NAME] & IIf([nmis_associate_parent Query.associate]<>[nmis_associates].[ASSOCIATE] And [nmis_associates].[ASSOCIATE] Not Like "00*"," - " & [nmis_associate_parent Query.associate_name]) AS ASSOCIATE_ASSOCIATE_NAME FROM NMIS_ASSOCIATES INNER JOIN [NMIS_ASSOCIATE_PARENT Query] ON NMIS_ASSOCIATES.PARENT_ASSOCIATE = [NMIS_ASSOCIATE_PARENT Query].ASSOCIATE; |  | 0.77, 0.84, 4.92, 0.23 |
| TextBox | GROSS_SOURCE_PER_UNIT | Seed Count/LB: | GROSS_SOURCE_PER_UNIT |  |  | 4.04, 1.09, 1.19, 0.23 |
| TextBox | PURITY_PCT | Purity %: | PURITY_PCT |  |  | 6.02, 1.09, 0.38, 0.23 |
| TextBox | MOISTURE_PCT | Moisture %: | MOISTURE_PCT |  |  | 7.30, 1.09, 0.44, 0.23 |
| Label | Label69 | Loc: |  |  |  | 0.15, 0.25, 0.29, 0.23 |
| Line | Line72 |  |  |  |  | 0.46, 0.48, 0.82, 0.00 |
| Label | Label73 | Date: |  |  |  | 5.89, 0.64, 0.35, 0.20 |
| Line | Line75 |  |  |  |  | 6.30, 0.83, 1.48, 0.00 |
| TextBox | GERM_PCT | Germ %: | GERM_PCT |  |  | 0.81, 1.09, 0.42, 0.23 |
| ComboBox | PLNTMSTR_SYMBOL | Species: | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Vernacular_With_Code FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 0.77, 0.55, 4.79, 0.23 |
| Line | Line82 |  |  |  |  | 1.94, 0.48, 3.60, 0.00 |
| Line | Line83 |  |  |  |  | 6.20, 0.44, 1.58, 0.00 |
| Line | Line84 |  |  |  |  | 0.77, 0.77, 4.77, 0.00 |
| Line | Line85 |  |  |  |  | 0.78, 1.06, 4.76, 0.00 |
| Line | Line86 |  |  |  |  | 4.08, 1.30, 1.18, 0.00 |
| Line | Line88 |  |  |  |  | 6.03, 1.30, 0.38, 0.00 |
| Line | Line89 |  |  |  |  | 7.36, 1.30, 0.40, 0.00 |
| Line | Line90 |  |  |  |  | 0.81, 1.30, 0.42, 0.00 |
| ComboBox | CATEGORY_CODE | Category: | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES;  |  | 6.45, 0.84, 1.33, 0.23 |
| Line | Line93 |  |  |  |  | 6.45, 1.06, 1.33, 0.00 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 2.19, 1.81, 0.71, 0.23 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  |  | 2.90, 1.81, 0.77, 0.23 |
| TextBox | Text96 |  | ACTIVITY_UNITS |  |  | 4.43, 1.81, 0.78, 0.23 |
| TextBox | NOTE |  | NOTE |  |  | 5.23, 1.70, 2.53, 0.34 |
| TextBox | ID2 |  | ID2 |  |  | 6.17, 0.44, 1.61, 0.20 |
| TextBox | Text109 |  | =IIf(Not IsNull([ID2]),"Old ID:",Null) |  |  | 5.56, 0.43, 0.58, 0.20 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 2.20, 1.71, 0.69, 0.00 |
| TextBox | FILLED_PCT | X-Ray Filled %: | FILLED_PCT |  |  | 2.41, 1.09, 0.42, 0.23 |
| Line | Line114 |  |  |  |  | 2.41, 1.30, 0.42, 0.00 |
| TextBox | Text115 |  | =[Forms]![NMIS_SOURCE_LOTS_INPUT]![INSERTED_DATE] & " " & [Forms]![NMIS_SOURCE_LOTS_INPUT]![INSERTED_BY] |  |  | 6.26, 0.64, 1.52, 0.20 |
| TextBox | Duplicate |  | =IIf([Forms]![NMIS_SOURCE_LOTS_INPUT]![Duplicate],"D u p l i c a t e  " & Date()) |  |  | 0.12, 0.00, 7.66, 0.19 |
