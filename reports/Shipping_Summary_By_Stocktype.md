# Report: Shipping_Summary_By_Stocktype

**Grouping/sorting:** `PRODUCT_GROUP`, `Cat`, `PRODUCT_CLASS`, `PLNTMSTR_SYMBOL`  
**Opened from (VBA):** `Form_Reports_Menu_Shipping Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 3.49, 1.01, 0.00, 0.23 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.56, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.34, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.34, 0.00, 3.24, 0.16 |
| Label | Label42 | Shipping Summary |  |  |  | 3.28, 0.55, 1.44, 0.23 |
| Label | Label11 | Request |  |  |  | 4.16, 1.28, 0.71, 0.23 |
| Label | Label12 | Shipped |  |  |  | 5.74, 1.28, 0.71, 0.23 |
| TextBox | PRODUCT_GROUP |  | PG |  |  | 2.95, 0.78, 2.09, 0.23 |
| Line | Line36 |  |  |  |  | 0.00, 1.51, 7.65, 0.00 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Category |  | Cat |  |  | 0.00, 0.00, 2.09, 0.26 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text6 |  | =Sum([SumOfTOTAL_REQUEST]) |  |  | 3.86, 0.00, 0.00, 0.20 |
| TextBox | Text7 |  | =Sum([SumOfShip]) |  |  | 5.46, 0.00, 0.00, 0.20 |
| TextBox | Now |  | PRODUCT_CLASS |  |  | 0.12, 0.00, 2.50, 0.20 |
| TextBox | Text26 |  | UC |  |  | 4.90, 0.00, 0.40, 0.20 |
| TextBox | Text27 |  | UC |  |  | 6.49, 0.00, 0.40, 0.20 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text41 |  | ="Totals for " & [Cat] |  |  | 0.29, 0.00, 2.46, 0.23 |
| TextBox | Text42 |  | =Sum([SumOfTOTAL_REQUEST]) |  |  | 3.85, 0.00, 0.00, 0.20 |
| TextBox | Text43 |  | =Sum([SumOfShip]) |  |  | 5.45, 0.00, 0.00, 0.20 |
| Line | Line44 |  |  |  |  | 3.90, 0.00, 0.96, 0.00 |
| Line | Line45 |  |  |  |  | 5.45, 0.00, 0.00, 0.00 |
| TextBox | Text46 |  | UC |  |  | 4.89, 0.00, 0.40, 0.20 |
| TextBox | Text47 |  | UC |  |  | 6.48, 0.00, 0.40, 0.20 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text22 |  | ="Totals for " & [PRODUCT_GROUP] |  |  | 0.34, 0.00, 3.32, 0.20 |
| TextBox | Text30 |  | =Sum([SumOfTOTAL_REQUEST]) |  |  | 3.86, 0.00, 0.00, 0.20 |
| TextBox | Text31 |  | =Sum([SumOfShip]) |  |  | 5.46, 0.00, 0.00, 0.20 |
| Line | Line32 |  |  |  |  | 3.91, 0.00, 0.96, 0.00 |
| Line | Line33 |  |  |  |  | 5.46, 0.00, 0.00, 0.00 |
| TextBox | Text34 |  | UC |  |  | 4.90, 0.00, 0.40, 0.20 |
| TextBox | Text35 |  | UC |  |  | 6.49, 0.00, 0.40, 0.20 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line37 |  |  |  |  | 0.16, 0.00, 7.43, 0.00 |
| TextBox | Text38 |  | =Now() |  |  | 0.16, 0.00, 3.24, 0.20 |
