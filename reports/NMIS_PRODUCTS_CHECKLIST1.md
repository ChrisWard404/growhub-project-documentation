# Report: NMIS_PRODUCTS_CHECKLIST1

**Grouping/sorting:** `CATEGORY_CODE`, `PRODUCT_DESC`, `Begin_Product`, `End_Product`  
**Backend tables referenced:** `NMIS_CATEGORIES`, `NMIS_UNITS`  
**Opened from (VBA):** `Form_NMIS_PRODUCTS`, `Form_NMIS_PRODUCTS_Unlocked`, `Form_NMIS_Product_Charges_add_activity_codes_and_MCs Form`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | PRODUCT_CLASS_Label | Product Class |  |  |  | 0.04, 1.24, 0.90, 0.18 |
| Label | PRODUCT_CLASS_CONDENSED_Label | Product Class Condensed |  |  |  | 1.14, 1.10, 1.16, 0.32 |
| Label | Label43 | Begin Product Type |  |  |  | 2.26, 1.09, 0.94, 0.33 |
| Label | Label44 | End Product Type |  |  |  | 3.20, 1.09, 0.83, 0.33 |
| Label | Label47 | Unit |  |  |  | 4.09, 1.25, 0.38, 0.17 |
| Label | Label32 | Nursery Management Information System |  |  |  | 3.79, 0.16, 3.25, 0.19 |
| Label | Label33 | Products |  |  |  | 3.79, 0.57, 3.25, 0.23 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.79, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 3.79, 0.00, 3.25, 0.16 |
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES;  |  | 3.81, 0.79, 3.26, 0.23 |
| Line | Line52 |  |  |  |  | 0.00, 1.42, 10.38, 0.00 |
| Label | Label62 | # of Species Products |  |  |  | 9.78, 0.96, 0.62, 0.48 |
| Label | HARVEST_FACTOR_1_Label | Harvest Factor 1 |  |  |  | 4.55, 1.15, 0.45, 0.28 |
| Label | HARVEST_FACTOR_2_Label | Harvest Factor 2 |  |  |  | 5.05, 1.15, 0.45, 0.28 |
| Label | HARVEST_FACTOR_3_Label | Harvest Factor 3 |  |  |  | 5.55, 1.15, 0.45, 0.28 |
| Label | HARVEST_FACTOR_4_Label | Harvest Factor 4 |  |  |  | 6.05, 1.15, 0.45, 0.28 |
| Label | CONTAINER_FACTOR_1_Label | Container Factor 1 |  |  |  | 8.06, 1.15, 0.53, 0.28 |
| Label | CONTAINER_FACTOR_2_Label | Container Factor 2 |  |  |  | 8.65, 1.15, 0.53, 0.28 |
| Label | CONTAINER_FACTOR_3_Label | Container Factor 3 |  |  |  | 9.21, 1.15, 0.53, 0.28 |
| Label | Label65 | Inv Fac 1 |  |  |  | 6.56, 1.12, 0.42, 0.30 |
| Label | Label66 | Inv Fac 2 |  |  |  | 7.06, 1.12, 0.42, 0.30 |
| Label | Label67 | Inv Fac 3 |  |  |  | 7.56, 1.12, 0.42, 0.30 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_DESC |  | PRODUCT_DESC |  |  | 0.00, 0.00, 3.83, 0.21 |
| CheckBox | HISTORICAL | Historical | HISTORICAL |  |  | 5.79, 0.02, 0.00, 0.00 |
| TextBox | NOTE |  | NOTE |  |  | 3.92, 0.00, 6.50, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_CLASS |  | PRODUCT_CLASS |  |  | 0.04, 0.00, 1.40, 0.21 |
| TextBox | PRODUCT_CLASS_CONDENSED |  | PRODUCT_CLASS_CONDENSED |  |  | 1.43, 0.00, 0.85, 0.21 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS; |  | 4.12, 0.00, 0.42, 0.21 |
| TextBox | Text60 |  | Number_of_Species_Products |  |  | 9.91, 0.00, 0.31, 0.21 |
| TextBox | BEGIN_PRODUCT_TYPE |  | Begin_Product |  |  | 2.29, 0.00, 0.92, 0.21 |
| TextBox | Combo45 |  | End_Product |  |  | 3.23, 0.00, 0.89, 0.21 |
| TextBox | Text72 |  | HARVEST_1_FACTOR_CODE |  |  | 4.56, 0.00, 0.51, 0.21 |
| TextBox | Text73 |  | HARVEST_2_FACTOR_CODE |  |  | 5.09, 0.00, 0.48, 0.21 |
| TextBox | Text74 |  | HARVEST_3_FACTOR_CODE |  |  | 5.56, 0.00, 0.51, 0.21 |
| TextBox | Text75 |  | HARVEST_4_FACTOR_CODE |  |  | 6.07, 0.00, 0.51, 0.21 |
| TextBox | Text77 |  | CONTAINER_1_FACTOR_CODE |  |  | 8.11, 0.00, 0.56, 0.21 |
| TextBox | Text78 |  | CONTAINER_2_FACTOR_CODE |  |  | 8.70, 0.00, 0.56, 0.21 |
| TextBox | Text79 |  | CONTAINER_3_FACTOR_CODE |  |  | 9.27, 0.00, 0.56, 0.21 |
| TextBox | Text59 |  | INV_1_FACTOR_CODE |  |  | 6.60, 0.00, 0.48, 0.21 |
| TextBox | Text68 |  | INV_2_FACTOR_CODE |  |  | 7.10, 0.00, 0.48, 0.21 |
| TextBox | Text61 |  | INV_3_FACTOR_CODE |  |  | 7.60, 0.00, 0.48, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text25 |  | =Now() |  |  | 0.02, 0.01, 3.19, 0.18 |
| TextBox | Text26 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 7.01, 0.00, 3.38, 0.18 |
