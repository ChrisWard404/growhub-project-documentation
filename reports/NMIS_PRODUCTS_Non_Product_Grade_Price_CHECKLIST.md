# Report: NMIS_PRODUCTS_Non_Product_Grade_Price_CHECKLIST

**Grouping/sorting:** `CATEGORY_CODE`, `PRODUCT_DESC`, `NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC`, `NMIS_PRODUCT_TYPES_1.PRODUCT_TYPE_DESC`, `PARENT_ACTIVITY_SORT_ORDER`, `AC_Sort`, `ACTIVITY_CODE`, `PRODUCT_GRADE`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_CATEGORIES`, `NMIS_PRODUCT_TYPES`, `NMIS_UNITS`  
**Subforms/subreports:** `Report.NMIS_PRODUCT_MGMT_CODES subreport`  
**Opened from (VBA):** `Form_Products_Price_Reports`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.44, 0.16, 3.25, 0.19 |
| Label | Label33 | Product Non-Pack or Destroy Charges |  |  |  | 2.44, 0.56, 3.26, 0.23 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.44, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 2.44, 0.00, 3.25, 0.16 |
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, [CATEGORY_DESC] & " FY " & [Forms]![Switchboard]![FY_For_Reports] AS Expr1 FROM NMIS_CATEGORIES; |  | 2.45, 0.79, 3.27, 0.23 |
| Label | PRODUCT_CLASS_CONDENSED_Label | Activity or Service  |  |  |  | 0.23, 1.18, 1.14, 0.18 |
| Label | Label43 | Product Grade |  |  |  | 2.81, 1.18, 1.18, 0.18 |
| Label | Label44 | Charge Per Unit |  |  |  | 3.93, 1.02, 0.53, 0.33 |
| Label | Label69 | Charge Per Amt |  |  |  | 4.64, 1.02, 0.53, 0.33 |
| Label | Label76 | Jobcode |  |  |  | 5.28, 1.18, 0.54, 0.18 |
| Label | Label77 | Jobcode $/Unit |  |  |  | 6.33, 1.02, 0.58, 0.33 |
| Label | Label78 | Jobcode $/Amt |  |  |  | 7.05, 1.02, 0.58, 0.33 |
| Label | Label79 | % |  |  |  | 5.94, 1.18, 0.16, 0.18 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_CLASS |  | PRODUCT_CLASS |  |  | 3.22, 0.05, 1.19, 0.26 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS;  |  | 6.88, 0.05, 1.08, 0.26 |
| TextBox | Text60 |  | PRODUCT_CLASS_CONDENSED |  |  | 5.55, 0.05, 0.93, 0.26 |
| Label | Label65 | Class Cond: |  |  |  | 4.33, 0.04, 1.18, 0.26 |
| Label | Label64 | Class: |  |  |  | 2.64, 0.04, 0.54, 0.26 |
| Label | Label68 | Unit: |  |  |  | 6.46, 0.04, 0.40, 0.26 |
| TextBox | PRODUCT_DESC |  | PC_Display |  |  | 0.00, 0.02, 2.64, 0.29 |
| TextBox | Text87 |  | NOTE |  |  | 0.00, 0.27, 7.71, 0.02 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | BEGIN_PRODUCT_TYPE |  | NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC |  |  | 1.44, 0.02, 1.22, 0.21 |
| TextBox | Combo45 |  | NMIS_PRODUCT_TYPES_1.PRODUCT_TYPE_DESC |  |  | 4.06, 0.02, 1.30, 0.21 |
| Label | Label66 | Begin Product Type: |  |  |  | 0.00, 0.03, 1.41, 0.20 |
| Label | Label67 | End Product Type: |  |  |  | 2.74, 0.03, 1.28, 0.20 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | PARENT_ACTIVITY_CODE |  | PARENT_ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE, "(" & [NMIS_ACTIVITY_CODES].[PARENT_ACTIVITY_CODE] & ") " & [NMIS_ACTIVITY_CODES_1].[ACTIVITY_NAME] AS Display FROM NMIS_ACTIVITY_CODES INNER JOIN NMIS_ACTIVITY_CODES AS NMIS_ACTIVITY_CODES_1 ON NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE = NMIS_ACTIVITY_CODES_1.ACTIVITY_CODE GROUP BY NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE, "(" & [NMIS_ACTIVITY_CODES].[PARENT_ACTIVITY_CODE] & ") " & [NMIS_ACTIVITY_CODES_1].[ACTIVITY_NAME]; |  | 0.01, 0.02, 3.58, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NOTE |  | PRODUCT_GRADE |  |  | 2.79, 0.00, 1.04, 0.18 |
| ComboBox | PRODUCT_CLASS_CONDENSED |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES; |  | 0.68, 0.00, 2.11, 0.18 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 0.02, 0.00, 0.65, 0.18 |
| TextBox | CHARGE_PER_AMT |  | CHARGE_PER_UNIT |  |  | 3.85, 0.00, 0.65, 0.18 |
| Subform | NMIS_PRODUCT_MGMT_CODES subreport |  | Report.NMIS_PRODUCT_MGMT_CODES subreport (master: PMC_LINK → child: PMC_LINK) |  |  | 5.04, 0.00, 2.68, 0.17 |
| Line | Line75 |  |  |  |  | 2.79, 0.19, 4.92, 0.00 |
| TextBox | Text70 |  | CHARGE_PER_AMT |  |  | 4.51, 0.00, 0.72, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text25 |  | =Now() |  |  | 0.00, 0.07, 2.54, 0.18 |
| TextBox | Text26 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.33, 0.07, 3.38, 0.18 |
| Line | Line52 |  |  |  |  | 0.00, 0.00, 7.72, 0.00 |
