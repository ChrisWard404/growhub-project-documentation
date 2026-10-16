# Report: NMIS_SPECIES_PRODUCTS_AND_FACTORS

**Grouping/sorting:** `CATEGORY_CODE`, `PRODUCT_DESC`, `SORT`, `DIV`, `PLNTMSTR_SYMBOL_SPEC_MIN`, `SPEC_MAX`, `CALIPER_MIN`, `CN`, `LIKE_ASSOCIATE`, `GERM_MIN`  
**Backend tables referenced:** `NMIS_CATEGORIES`, `NMIS_PRODUCT_TYPES`  
**Subforms/subreports:** `Report.NMIS_AGREEMENT_LOTS subreport2`  
**Opened from (VBA):** `Form_Species_Products_Reports`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | LIKE_ASSOCIATE_Label | Like Associate |  |  |  | 0.47, 1.10, 0.62, 0.28 |
| Label | HARVEST_FACTOR_1_Label | Harvest Factor 1 |  |  |  | 3.34, 1.10, 0.45, 0.28 |
| Label | HARVEST_FACTOR_2_Label | Harvest Factor 2 |  |  |  | 3.84, 1.10, 0.45, 0.28 |
| Label | HARVEST_FACTOR_3_Label | Harvest Factor 3 |  |  |  | 4.34, 1.10, 0.45, 0.28 |
| Label | HARVEST_FACTOR_4_Label | Harvest Factor 4 |  |  |  | 4.84, 1.10, 0.45, 0.28 |
| Label | HARVEST_FACTOR_Label | Harvest Factor |  |  |  | 5.34, 1.10, 0.44, 0.28 |
| Label | CONTAINER_FACTOR_1_Label | Container Factor 1 |  |  |  | 5.80, 1.10, 0.53, 0.28 |
| Label | CONTAINER_FACTOR_2_Label | Container Factor 2 |  |  |  | 6.35, 1.10, 0.53, 0.28 |
| Label | CONTAINER_FACTOR_3_Label | Container Factor 3 |  |  |  | 6.89, 1.10, 0.53, 0.28 |
| Label | CONTAINER_FACTOR_Label | Container Factor |  |  |  | 7.45, 1.10, 0.52, 0.28 |
| Label | DESIRED_DENSITY_Label | Desired Density |  |  |  | 2.77, 1.10, 0.52, 0.28 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.35, 0.16, 3.25, 0.19 |
| Label | Label33 | Species Products and Sowing Factors |  |  |  | 2.43, 0.57, 3.08, 0.23 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.35, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 2.35, 0.00, 3.25, 0.16 |
| Label | Label52 | Germ Min |  |  |  | 1.91, 1.09, 0.45, 0.28 |
| Label | Label53 | Germ Max |  |  |  | 2.35, 1.09, 0.45, 0.28 |
| Line | Line56 |  |  |  |  | 0.00, 1.38, 7.96, 0.00 |
| Label | Label57 | Elev Min |  |  |  | 1.09, 1.09, 0.41, 0.28 |
| Label | Label58 | Elev Max |  |  |  | 1.50, 1.09, 0.41, 0.28 |
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES;  |  | 2.33, 0.79, 3.33, 0.21 |
| Label | Label59 | (lots) |  |  |  | 0.04, 1.22, 0.30, 0.16 |

## Section: GroupHeader4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_DESC | Product: | PRODUCT_DESC |  |  | 0.91, 0.02, 3.58, 0.21 |
| TextBox | NOTE |  | NOTE |  |  | 4.58, 0.02, 3.38, 0.21 |

## Section: GroupHeader5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_CLASS | Product Class: | PRODUCT_CLASS |  |  | 1.33, 0.00, 1.31, 0.21 |
| ComboBox | BEGIN_PRODUCT_TYPE | Begin Product Type: | BEGIN_PRODUCT_TYPE | SELECT NMIS_PRODUCT_TYPES.PRODUCT_TYPE, NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC FROM NMIS_PRODUCT_TYPES;  |  | 4.14, 0.00, 1.12, 0.20 |
| ComboBox | END_PRODUCT_TYPE | End Product Type: | END_PRODUCT_TYPE | SELECT NMIS_PRODUCT_TYPES.PRODUCT_TYPE, NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC FROM NMIS_PRODUCT_TYPES;  |  | 6.56, 0.00, 1.29, 0.20 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text45 |  | =IIf([DIV]="U","No Species Products",IIf([DIV]="D","Non-Traditonal Species","Traditional Species")) |  |  | 0.25, 0.02, 5.29, 0.21 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SPECIES_PRODUCT_DESC |  | Species_Products_String |  |  | 0.38, 0.00, 2.89, 0.20 |
| TextBox | CELLS_PER_CONTAINER |  | CELLS_PER_CONTAINER |  |  | 5.99, 0.00, 0.29, 0.20 |
| Label | UNIT_CODE_Label | Unit Code: |  |  |  | 3.29, 0.00, 0.72, 0.20 |
| Label | Label35 | Cells/Container: |  |  |  | 4.92, 0.00, 1.03, 0.20 |
| TextBox | BEGIN_SEASON_CODE | Season Begin/End: | Season_Begin_End |  |  | 7.54, 0.00, 0.44, 0.21 |
| ComboBox | CN |  | sp_w_al | SELECT Species_Products_with_Agreement_Lots.CN, "(" & [CountOfCN] & ")" AS [Count] FROM Species_Products_with_Agreement_Lots;  |  | 0.00, 0.01, 0.39, 0.17 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 4.05, 0.00, 0.82, 0.20 |
| TextBox | Text72 |  | HARVEST_1_FACTOR_CODE |  |  | 3.39, 0.19, 0.41, 0.15 |
| TextBox | Text73 |  | HARVEST_2_FACTOR_CODE |  |  | 3.92, 0.19, 0.38, 0.15 |
| TextBox | Text74 |  | HARVEST_3_FACTOR_CODE |  |  | 4.39, 0.19, 0.41, 0.15 |
| TextBox | Text75 |  | HARVEST_4_FACTOR_CODE |  |  | 4.90, 0.19, 0.41, 0.15 |
| TextBox | Text77 |  | CONTAINER_1_FACTOR_CODE |  |  | 5.86, 0.19, 0.46, 0.15 |
| TextBox | Text78 |  | CONTAINER_2_FACTOR_CODE |  |  | 6.43, 0.19, 0.46, 0.15 |
| TextBox | Text79 |  | CONTAINER_3_FACTOR_CODE |  |  | 6.99, 0.19, 0.46, 0.15 |
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 0.38, 0.21, 2.89, 0.11 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | HARVEST_FACTOR_1 |  | HARVEST_FACTOR_1 |  |  | 3.34, 0.00, 0.38, 0.02 |
| TextBox | HARVEST_FACTOR_2 |  | HARVEST_FACTOR_2 |  |  | 3.84, 0.00, 0.38, 0.02 |
| TextBox | HARVEST_FACTOR_3 |  | HARVEST_FACTOR_3 |  |  | 4.34, 0.00, 0.38, 0.02 |
| TextBox | HARVEST_FACTOR_4 |  | HARVEST_FACTOR_4 |  |  | 4.84, 0.00, 0.38, 0.02 |
| TextBox | HARVEST_FACTOR |  | HARVEST_FACTOR |  |  | 5.34, 0.00, 0.33, 0.02 |
| TextBox | CONTAINER_FACTOR_1 |  | CONTAINER_FACTOR_1 |  |  | 5.80, 0.00, 0.46, 0.02 |
| TextBox | CONTAINER_FACTOR_2 |  | CONTAINER_FACTOR_2 |  |  | 6.38, 0.00, 0.46, 0.02 |
| TextBox | CONTAINER_FACTOR_3 |  | CONTAINER_FACTOR_3 |  |  | 6.97, 0.00, 0.46, 0.02 |
| TextBox | CONTAINER_FACTOR |  | CONTAINER_FACTOR |  |  | 7.55, 0.00, 0.42, 0.02 |
| TextBox | DESIRED_DENSITY |  | DESIRED_DENSITY |  |  | 2.77, 0.00, 0.47, 0.02 |
| TextBox | GERM_MIN |  | GERM_MIN |  |  | 1.91, 0.00, 0.38, 0.02 |
| TextBox | GERM_MAX |  | GERM_MAX |  |  | 2.35, 0.00, 0.38, 0.02 |
| TextBox | ELEVATION_MIN |  | ELEVATION_MIN |  |  | 1.17, 0.00, 0.33, 0.02 |
| TextBox | ELEVATION_MAX |  | ELEVATION_MAX |  |  | 1.54, 0.00, 0.36, 0.02 |
| TextBox | LIKE_ASSOCIATE |  | LIKE_ASSOCIATE |  |  | 0.43, 0.00, 0.75, 0.02 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_AGREEMENT_LOTS subreport |  | Report.NMIS_AGREEMENT_LOTS subreport2 (master: cn → child: species_product_cn) |  |  | 0.12, 0.00, 7.84, 0.01 |
| Line | Line82 |  |  |  |  | 0.04, 0.01, 7.91, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text29 |  | =Now() |  |  | 0.26, 0.17, 3.50, 0.18 |
| TextBox | Text30 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.47, 0.17, 3.50, 0.18 |
