# Report: NMIS_SPECIES_PRODUCTS_AND_CYCLES_Current_Crop

**Grouping/sorting:** `CATEGORY_CODE`, `PRODUCT_DESC`, `SORT`, `DIV`, `PLNTMSTR_SYMBOL`, `SPEC_MIN`, `SPEC_MAX`, `CALIPER_MIN`, `CN`, `NUMBER_OF_FY_MIN`  
**Backend tables referenced:** `NMIS_CATEGORIES`, `NMIS_PRODUCTS`, `NMIS_PRODUCT_TYPES`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Report.NMIS_AGREEMENT_LOTS_current subreport`  
**Opened from (VBA):** `Form_Species_Products_Reports`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | SPECIES_PRODUCT_DESC_Label | No. FY's Min |  |  |  | 0.50, 1.08, 0.47, 0.30 |
| Label | HARVEST_FACTOR_1_Label | Inv Target % |  |  |  | 4.44, 1.08, 0.47, 0.30 |
| Label | HARVEST_FACTOR_2_Label | Inv Fac 1 |  |  |  | 4.93, 1.08, 0.42, 0.30 |
| Label | HARVEST_FACTOR_3_Label | Inv Fac 2 |  |  |  | 5.43, 1.08, 0.42, 0.30 |
| Label | HARVEST_FACTOR_4_Label | Inv Fac 3 |  |  |  | 5.93, 1.08, 0.42, 0.30 |
| Label | HARVEST_FACTOR_Label | Inv Samp Size |  |  |  | 6.34, 1.08, 0.54, 0.30 |
| Label | CONTAINER_FACTOR_1_Label | Inv Max CV |  |  |  | 6.89, 1.08, 0.51, 0.30 |
| Label | CONTAINER_FACTOR_2_Label | Cycle Unit |  |  |  | 7.44, 1.06, 0.52, 0.32 |
| Label | DESIRED_DENSITY_Label | Requires Processing |  |  |  | 3.84, 1.08, 0.58, 0.30 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.39, 0.16, 3.25, 0.19 |
| Label | Label33 | Species Products and Cycles - Current Crop Only |  |  |  | 2.03, 0.56, 3.96, 0.23 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.39, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 2.39, 0.00, 3.25, 0.16 |
| Label | Label49 | Cycle Product |  |  |  | 1.94, 1.20, 0.75, 0.18 |
| Label | Label51 | No. FY's Max |  |  |  | 1.02, 1.08, 0.48, 0.30 |
| ComboBox | Combo57 |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES;  |  | 2.42, 0.79, 3.25, 0.21 |
| Label | Label59 | (lots) |  |  |  | 0.05, 1.22, 0.30, 0.16 |

## Section: GroupHeader4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_DESC | Product : | PRODUCT_DESC |  |  | 1.12, 0.00, 3.42, 0.21 |
| TextBox | NOTE |  | NOTE |  |  | 4.60, 0.00, 3.38, 0.21 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_CLASS | Prod Class: | PRODUCT_CLASS |  |  | 0.88, 0.01, 1.46, 0.21 |
| ComboBox | BEGIN_PRODUCT_TYPE | Begin ProdType: | BEGIN_PRODUCT_TYPE | SELECT NMIS_PRODUCT_TYPES.PRODUCT_TYPE, NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC FROM NMIS_PRODUCT_TYPES;  |  | 4.44, 0.01, 1.12, 0.20 |
| ComboBox | END_PRODUCT_TYPE | End Prod Type: | END_PRODUCT_TYPE | SELECT NMIS_PRODUCT_TYPES.PRODUCT_TYPE, NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC FROM NMIS_PRODUCT_TYPES;  |  | 6.69, 0.01, 1.29, 0.20 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text45 |  | =IIf([DIV]="U","No Species Products",IIf([DIV]="D","Non-Traditonal Species","Traditional Species")) |  |  | 0.42, 0.02, 5.29, 0.21 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SPECIES_PRODUCT_DESC |  | Species_Products_String |  |  | 0.38, 0.00, 3.00, 0.21 |
| Line | Line38 |  |  |  |  | 0.00, 0.00, 8.00, 0.00 |
| ComboBox | CN |  | CN | SELECT Species_Products_with_Agreement_Lots_Currently_in_Grow_Container.NMIS_SPECIES_PRODUCTS.CN AS Expr1, "(" & [CountOfCN] & ")" AS [Count] FROM Species_Products_with_Agreement_Lots_Currently_in_Grow_Container; |  | 0.02, 0.03, 0.34, 0.17 |
| TextBox | Text59 |  | INV_1_FACTOR_CODE |  |  | 4.96, 0.24, 0.38, 0.15 |
| TextBox | Text60 |  | INV_2_FACTOR_CODE |  |  | 5.46, 0.24, 0.38, 0.15 |
| TextBox | Text61 |  | INV_3_FACTOR_CODE |  |  | 5.96, 0.24, 0.38, 0.15 |
| TextBox | CELLS_PER_CONTAINER |  | CELLS_PER_CONTAINER |  |  | 5.74, 0.00, 0.31, 0.21 |
| Label | UNIT_CODE_Label | Final Unit Code: |  |  |  | 3.40, 0.00, 1.05, 0.21 |
| Label | Label35 | Cells/Cont: |  |  |  | 5.02, 0.00, 0.71, 0.21 |
| TextBox | BEGIN_SEASON_CODE | Season Beg/End: | Season_Begin_End |  |  | 7.11, 0.00, 0.33, 0.21 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 4.45, 0.00, 0.57, 0.21 |
| TextBox | TOTAL_NUMBER_OF_FY | FYs: | TOTAL_NUMBER_OF_FY |  |  | 7.77, 0.00, 0.21, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | HARVEST_FACTOR_1 |  | INV_TARGET_PCT |  |  | 4.43, 0.00, 0.38, 0.21 |
| TextBox | HARVEST_FACTOR_2 |  | INV_FACTOR_1 |  |  | 4.93, 0.00, 0.38, 0.21 |
| TextBox | HARVEST_FACTOR_3 |  | INV_FACTOR_2 |  |  | 5.43, 0.00, 0.38, 0.21 |
| TextBox | HARVEST_FACTOR_4 |  | INV_FACTOR_3 |  |  | 5.93, 0.00, 0.38, 0.21 |
| TextBox | HARVEST_FACTOR |  | INV_SIZE_SAMPLE |  |  | 6.43, 0.00, 0.33, 0.21 |
| TextBox | CONTAINER_FACTOR_1 |  | INV_MAX_CV |  |  | 6.89, 0.00, 0.46, 0.21 |
| TextBox | CONTAINER_FACTOR_2 |  | UNIT |  |  | 7.40, 0.00, 0.56, 0.21 |
| TextBox | NUMBER_OF_FY_MIN |  | NUMBER_OF_FY_MIN |  |  | 0.61, 0.00, 0.28, 0.21 |
| TextBox | NUMBER_OF_FY_MAX |  | NUMBER_OF_FY_MAX |  |  | 1.07, 0.00, 0.28, 0.21 |
| ComboBox | CURRENT_PRODUCT_CN |  | CURRENT_PRODUCT_CN | SELECT NMIS_PRODUCTS.CN, NMIS_PRODUCTS.PRODUCT_DESC FROM NMIS_PRODUCTS;  |  | 1.53, 0.00, 2.47, 0.21 |
| CheckBox | Check52 |  | CYCLE_REQUIRES_PROCESSING |  |  | 4.14, 0.04, 0.17, 0.12 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_AGREEMENT_LOTS subreport |  | Report.NMIS_AGREEMENT_LOTS_current subreport (master: cn → child: species_product_cn) |  |  | 0.45, 0.01, 7.49, 0.01 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text29 |  | =Now() |  |  | 0.30, 0.02, 3.50, 0.18 |
| TextBox | Text30 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.49, 0.02, 3.50, 0.18 |
