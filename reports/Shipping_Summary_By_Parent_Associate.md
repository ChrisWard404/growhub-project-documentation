# Report: Shipping_Summary_By_Parent_Associate

**Record source:**

```sql
SELECT Agreement_Lot_Ship_Totals.FISCAL_YEAR, Agreement_Lot_Ship_Totals.PRODUCT_GROUP, Agreement_Lot_Ship_Totals.PARENT_ASSOCIATE, Agreement_Lot_Ship_Totals.PRODUCT_CLASS, Agreement_Lot_Ship_Totals.PLNTMSTR_SYMBOL, Sum(NMIS_AGREEMENT_LOTS.TOTAL_REQUEST) AS SumOfTOTAL_REQUEST, Sum(Agreement_Lot_Ship_Totals.Ship) AS SumOfShip, Agreement_Lot_Ship_Totals.PG, Agreement_Lot_Ship_Totals.UC, IIf(Left$([CATEGORY_CODE],1)="B","Bareroot",IIf(Left$([CATEGORY_CODE],1)="C","Container","")) AS Cat FROM NMIS_AGREEMENT_LOTS INNER JOIN Agreement_Lot_Ship_Totals ON NMIS_AGREEMENT_LOTS.CN = Agreement_Lot_Ship_Totals.AGREEMENT_LOT_CN GROUP BY Agreement_Lot_Ship_Totals.FISCAL_YEAR, Agreement_Lot_Ship_Totals.PRODUCT_GROUP, Agreement_Lot_Ship_Totals.PARENT_ASSOCIATE, Agreement_Lot_Ship_Totals.PRODUCT_CLASS, Agreement_Lot_Ship_Totals.PLNTMSTR_SYMBOL, Agreement_Lot_Ship_Totals.PG, Agreement_Lot_Ship_Totals.UC, IIf(Left$([CATEGORY_CODE],1)="B","Bareroot",IIf(Left$([CATEGORY_CODE],1)="C","Container","")) HAVING (((Agreement_Lot_Ship_Totals.PARENT_ASSOCIATE) Like [like Parent (Leave blank for all)] & "*"));
```

**Grouping/sorting:** `PARENT_ASSOCIATE`, `PRODUCT_GROUP`, `Cat`, `PRODUCT_CLASS`  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_SPECIES`  
**Opened from (VBA):** `Form_Reports_Menu_Shipping Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 3.54, 0.79, 0.00, 0.26 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.56, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.34, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.34, 0.00, 3.24, 0.16 |
| Label | Label42 | Shipping Summary |  |  |  | 3.28, 0.55, 1.44, 0.23 |
| ComboBox | PARENT_ASSOCIATE |  | PARENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS Expr1 FROM NMIS_ASSOCIATES; |  | 1.00, 1.05, 6.08, 0.26 |
| Label | Label11 | Request |  |  |  | 4.16, 1.38, 0.71, 0.23 |
| Label | Label12 | Shipped |  |  |  | 5.74, 1.38, 0.71, 0.23 |
| Line | Line36 |  |  |  |  | 0.00, 1.61, 7.60, 0.00 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_GROUP |  | PG |  |  | 0.00, 0.00, 2.09, 0.23 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Category |  | Cat |  |  | 0.14, 0.00, 2.09, 0.23 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_CLASS |  | PRODUCT_CLASS |  |  | 0.26, 0.00, 2.50, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, [PLNTMSTR_SYMBOL] & " - " & [VERNACULAR] AS Expr1 FROM NMIS_SPECIES; |  | 0.36, 0.00, 3.21, 0.20 |
| TextBox | SumOfTOTAL_REQUEST |  | SumOfTOTAL_REQUEST |  |  | 3.86, 0.00, 0.00, 0.20 |
| TextBox | Ship |  | SumOfShip |  |  | 5.46, 0.00, 0.00, 0.20 |
| TextBox | UNIT_CODE |  | UC |  |  | 4.90, 0.00, 0.40, 0.20 |
| TextBox | Text25 |  | UC |  |  | 6.49, 0.00, 0.40, 0.20 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text6 |  | =Sum([SumOfTOTAL_REQUEST]) |  |  | 3.86, 0.00, 0.00, 0.20 |
| TextBox | Text7 |  | =Sum([SumOfShip]) |  |  | 5.46, 0.00, 0.00, 0.20 |
| TextBox | Now |  | ="Totals for " & [PRODUCT_CLASS] |  |  | 0.40, 0.00, 2.50, 0.20 |
| Line | Line16 |  |  |  |  | 3.91, 0.00, 0.96, 0.00 |
| Line | Line17 |  |  |  |  | 5.46, 0.00, 0.00, 0.00 |
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
| TextBox | Text22 |  | ="Totals for " & [Parent_Associate] & " " & [PRODUCT_GROUP] |  |  | 0.34, 0.00, 2.72, 0.20 |
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
