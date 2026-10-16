# Report: DISTRIBUTION_SUMMARY ct

**Caption:** DISTRIBUTION_SUMMARY ct  
**Record source:**

```sql
DISTRIBUTION_SUMMARY ct
```

**Grouping/sorting:** `CATEGORY_CODE`, `PRODUCT_CLASS`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CATEGORY_CODE_Label | Category Code |  |  |  | 0.00, 1.25, 0.92, 0.18 |
| Label | PRODUCT_CLASS_Label | Product Class |  |  |  | 0.96, 1.25, 1.75, 0.18 |
| Label | PICKUP_Label | PICKUP (M) |  |  |  | 3.75, 1.25, 1.00, 0.18 |
| Label | SHIP_Label | SHIP (M) |  |  |  | 4.75, 1.25, 1.00, 0.18 |
| Label | Total Of TREES_Label | Total M's |  |  |  | 5.79, 1.25, 1.00, 0.18 |
| Line | Line15 |  |  |  |  | 0.00, 1.47, 7.85, 0.00 |
| TextBox | NURSERY |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.54, 0.33, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.54, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.50, 0.17, 2.60, 0.17 |
| TextBox | Text21 |  | =Now() |  |  | 2.54, 0.75, 2.50, 0.20 |
| Label | Text29 | PRODUCT DISTRIBUTION SUMMARY |  |  |  | 2.38, 0.54, 2.88, 0.21 |
| Label | Label17 | Activity Code |  |  |  | 3.00, 1.04, 2.96, 0.21 |
| Label | Label18 | DELIVERY (M) |  |  |  | 2.75, 1.25, 1.00, 0.18 |
| Label | Label47 | Total # of Containers |  |  |  | 6.79, 1.08, 1.00, 0.34 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CATEGORY_CODE |  | CATEGORY_CODE |  |  | 0.00, 0.00, 0.96, 0.00 |
| TextBox | PRODUCT_CLASS |  | PRODUCT_CLASS |  |  | 0.96, 0.00, 1.75, 0.00 |
| TextBox | PICKUP |  | PICKUP |  |  | 3.75, 0.00, 0.00, 0.00 |
| TextBox | SHIP |  | SHIP |  |  | 4.75, 0.00, 0.00, 0.00 |
| TextBox | Total Of TREES |  | Total Of TREES |  |  | 5.79, 0.00, 0.00, 0.00 |
| TextBox | Text46 |  | SumOfCONTAINERS |  |  | 6.79, 0.00, 0.00, 0.00 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Sum([PICKUP]) |  |  | 3.75, 0.08, 0.00, 0.00 |
| TextBox | Text20 |  | =Sum([SHIP]) |  |  | 4.75, 0.08, 0.00, 0.00 |
| TextBox | Text22 |  | =Sum([Total Of TREES]) |  |  | 5.79, 0.08, 0.00, 0.00 |
| Line | Line23 |  |  |  |  | 3.79, 0.04, 0.96, 0.00 |
| Line | Line24 |  |  |  |  | 4.79, 0.04, 0.96, 0.00 |
| Line | Line25 |  |  |  |  | 5.83, 0.04, 0.96, 0.00 |
| Line | Line26 |  |  |  |  | 2.79, 0.04, 0.96, 0.00 |
| Label | Label35 | subtotal |  |  |  | 2.08, 0.08, 0.62, 0.21 |
| TextBox | Text36 |  | CATEGORY_CODE |  |  | 0.79, 0.08, 1.21, 0.21 |
| TextBox | Text44 |  | =Sum([SumOfCONTAINERS]) |  |  | 6.79, 0.08, 0.00, 0.00 |
| Line | Line45 |  |  |  |  | 6.83, 0.04, 0.96, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text12 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.71, 0.29, 2.25, 0.20 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Sum([PICKUP]) |  |  | 3.75, 0.08, 0.00, 0.00 |
| TextBox | Text28 |  | =Sum([SHIP]) |  |  | 4.75, 0.08, 0.00, 0.00 |
| TextBox | Text30 |  | =Sum([Total Of TREES]) |  |  | 5.79, 0.08, 0.00, 0.00 |
| Line | Line31 |  |  |  |  | 3.79, 0.00, 0.96, 0.00 |
| Line | Line32 |  |  |  |  | 4.79, 0.00, 0.96, 0.00 |
| Line | Line33 |  |  |  |  | 5.83, 0.00, 0.96, 0.00 |
| Line | Line34 |  |  |  |  | 2.79, 0.00, 0.96, 0.00 |
| Label | Label37 | Grand Total |  |  |  | 1.21, 0.08, 0.78, 0.19 |
| Line | Line40 |  |  |  |  | 3.79, 0.04, 0.96, 0.00 |
| Line | Line41 |  |  |  |  | 4.79, 0.04, 0.96, 0.00 |
| Line | Line42 |  |  |  |  | 5.83, 0.04, 0.96, 0.00 |
| Line | Line43 |  |  |  |  | 2.79, 0.04, 0.96, 0.00 |
| TextBox | Text48 |  | =Sum([SumOfCONTAINERS]) |  |  | 6.79, 0.08, 0.00, 0.00 |
| Line | Line49 |  |  |  |  | 6.83, 0.00, 0.96, 0.00 |
| Line | Line50 |  |  |  |  | 6.83, 0.04, 0.96, 0.00 |
