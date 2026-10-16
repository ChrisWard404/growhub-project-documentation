# Report: NMIS_PRODUCTS_CHECKLIST

**Caption:** NMIS_PRODUCTS  
**Grouping/sorting:** `CATEGORY_CODE`, `PRODUCT_DESC`, `Begin_Product`, `End_Product`  
**Backend tables referenced:** `NMIS_CATEGORIES`, `NMIS_UNITS`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | PRODUCT_CLASS_Label | Product Class |  |  |  | 0.04, 1.24, 0.90, 0.18 |
| Label | PRODUCT_CLASS_CONDENSED_Label | Product Class Condensed |  |  |  | 1.14, 1.10, 1.16, 0.32 |
| Label | Label43 | Begin Product Type |  |  |  | 2.26, 1.08, 0.94, 0.33 |
| Label | Label44 | End Product Type |  |  |  | 3.68, 1.08, 0.83, 0.33 |
| Label | Label47 | Unit |  |  |  | 5.21, 1.24, 0.79, 0.17 |
| Label | Label49 | Note |  |  |  | 7.07, 1.25, 0.32, 0.17 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.44, 0.16, 3.25, 0.19 |
| Label | Label33 | Products |  |  |  | 2.44, 0.57, 3.25, 0.23 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.44, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 2.44, 0.00, 3.25, 0.16 |
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES;  |  | 2.46, 0.79, 3.26, 0.23 |
| Line | Line52 |  |  |  |  | 0.04, 1.42, 7.67, 0.00 |
| Label | Label62 | # of Species Products |  |  |  | 5.98, 1.05, 0.90, 0.36 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_DESC |  | PRODUCT_DESC |  |  | 0.00, 0.00, 3.83, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_CLASS |  | PRODUCT_CLASS |  |  | 0.10, 0.00, 1.33, 0.21 |
| TextBox | PRODUCT_CLASS_CONDENSED |  | PRODUCT_CLASS_CONDENSED |  |  | 1.43, 0.00, 0.85, 0.21 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS;  |  | 5.24, 0.00, 0.83, 0.21 |
| TextBox | NOTE |  | NOTE |  |  | 6.56, 0.00, 1.43, 0.21 |
| TextBox | Text60 |  | Number_of_Species_Products |  |  | 6.14, 0.00, 0.43, 0.21 |
| TextBox | BEGIN_PRODUCT_TYPE |  | Begin_Product |  |  | 2.33, 0.00, 1.44, 0.21 |
| TextBox | Combo45 |  | End_Product |  |  | 3.78, 0.00, 1.45, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text25 |  | =Now() |  |  | 0.03, 0.07, 1.77, 0.18 |
| TextBox | Text26 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.35, 0.07, 3.38, 0.18 |
