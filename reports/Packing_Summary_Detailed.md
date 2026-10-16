# Report: Packing_Summary_Detailed

**Grouping/sorting:** `CATEGORY_CODE`, `PRODUCT_CLASS`  
**Backend tables referenced:** `NMIS_CATEGORIES`, `NMIS_ID_LOCATIONS`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.47, 0.16, 2.81, 0.19 |
| Label | Label33 | Packing Summary |  |  |  | 3.31, 0.57, 1.12, 0.17 |
| TextBox | Text37 |  | =[Forms]![BeginDate_EndDate_Input]!BeginDate |  |  | 2.78, 0.74, 0.99, 0.21 |
| TextBox | Text41 |  | =[Forms]![BeginDate_EndDate_Input]!EndDate |  |  | 3.99, 0.74, 0.99, 0.21 |
| Label | Label42 | - |  |  |  | 3.83, 0.74, 0.12, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.25, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.25, 0.00, 3.24, 0.16 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT [NMIS_CATEGORIES].[CATEGORY_CODE], [NMIS_CATEGORIES].[CATEGORY_DESC] FROM NMIS_CATEGORIES;  |  | 0.56, 0.03, 3.50, 0.22 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_CLASS |  | PRODUCT_CLASS |  |  | 0.63, 0.03, 3.12, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Packed |  | Packed |  |  | 3.70, 0.01, 0.00, 0.19 |
| TextBox | SP |  | SP |  |  | 0.90, 0.01, 2.67, 0.19 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text3 |  | =Sum([Packed]) |  |  | 3.70, 0.04, 0.00, 0.19 |
| TextBox | Text8 |  | ="Subtotal for " & [PRODUCT_CLASS] |  |  | 0.87, 0.04, 2.72, 0.19 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text5 |  | =Sum([Packed]) |  |  | 3.70, 0.04, 0.00, 0.19 |
| TextBox | Text9 |  | ="Subtotal for " & [CATEGORY_CODE] |  |  | 0.79, 0.04, 2.72, 0.19 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text10 |  | =Sum([Packed]) |  |  | 3.70, 0.03, 0.00, 0.19 |
| TextBox | Text11 |  | ="Subtotal for " & [CATEGORY_CODE] |  |  | 0.56, 0.03, 2.53, 0.19 |
