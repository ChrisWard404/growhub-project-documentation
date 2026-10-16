# Report: NMIS_PRODUCTS_Non_Product_Grade_Price_CHECKLIST_BU

**Caption:** Product Charges  
**Grouping/sorting:** `CATEGORY_CODE`, `PRODUCT_DESC`, `NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC`, `NMIS_PRODUCT_TYPES_1.PRODUCT_TYPE_DESC`, `AC_Sort`, `ACTIVITY_CODE`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_CATEGORIES`, `NMIS_PRODUCT_TYPES`, `NMIS_UNITS`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | PRODUCT_CLASS_CONDENSED_Label | Activity  |  |  |  | 1.00, 1.11, 0.53, 0.18 |
| Label | Label43 | Product Grade |  |  |  | 4.11, 1.11, 1.30, 0.18 |
| Label | Label44 | Charge Per Unit |  |  |  | 5.97, 0.96, 0.53, 0.33 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.44, 0.16, 3.25, 0.19 |
| Label | Label33 | Product Pack or Destroy Charges |  |  |  | 2.41, 0.56, 3.30, 0.23 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.44, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 2.44, 0.00, 3.25, 0.16 |
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, [CATEGORY_DESC] & " FY " & [Forms]![Switchboard]![FY_For_Reports] AS Expr1 FROM NMIS_CATEGORIES; |  | 2.46, 0.79, 3.26, 0.23 |
| Label | Label69 | Charge Per Amt |  |  |  | 7.04, 0.96, 0.53, 0.33 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_DESC |  | PC_Display |  |  | 0.04, 0.00, 2.62, 0.21 |
| TextBox | PRODUCT_CLASS |  | PRODUCT_CLASS |  |  | 3.20, 0.00, 0.99, 0.21 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS;  |  | 7.11, 0.01, 0.83, 0.20 |
| TextBox | Text60 |  | PRODUCT_CLASS_CONDENSED |  |  | 5.56, 0.00, 0.82, 0.21 |
| Label | Label65 | Class Condensed: |  |  |  | 4.31, 0.01, 1.26, 0.20 |
| Label | Label64 | Class: |  |  |  | 2.74, 0.01, 0.47, 0.20 |
| Label | Label68 | Unit: |  |  |  | 6.61, 0.01, 0.47, 0.20 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | BEGIN_PRODUCT_TYPE |  | NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC |  |  | 1.49, 0.00, 1.22, 0.21 |
| TextBox | Combo45 |  | NMIS_PRODUCT_TYPES_1.PRODUCT_TYPE_DESC |  |  | 4.18, 0.00, 1.30, 0.21 |
| Label | Label66 | Begin Product Type: |  |  |  | 0.06, 0.01, 1.41, 0.20 |
| Label | Label67 | End Product Type: |  |  |  | 2.85, 0.01, 1.28, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NOTE |  | PRODUCT_GRADE |  |  | 4.09, 0.00, 1.43, 0.21 |
| TextBox | CHARGE_PER_AMT |  | CHARGE_PER_UNIT |  |  | 5.76, 0.00, 0.77, 0.21 |
| ComboBox | PRODUCT_CLASS_CONDENSED |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES; |  | 1.23, 0.00, 2.79, 0.21 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 0.18, 0.00, 0.00, 0.21 |
| TextBox | Text70 |  | CHARGE_PER_AMT |  |  | 6.81, 0.00, 0.77, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text25 |  | =Now() |  |  | 0.00, 0.07, 1.77, 0.18 |
| TextBox | Text26 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.33, 0.07, 3.38, 0.18 |
| Line | Line52 |  |  |  |  | 0.00, 0.00, 7.93, 0.00 |
