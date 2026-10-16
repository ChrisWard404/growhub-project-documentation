# Report: ACCOMPLISHMENT_REPORT_No_Numlots

**Caption:** Accomplishment Report  
**Record source:**

```sql
ACCOMPLISHMENT ct
```

**Grouping/sorting:** `CC`, `TYN`, `REGION`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label18 | Accomplishment Report |  |  |  | 3.04, 0.79, 2.12, 0.21 |
| TextBox | NURSERY |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.79, 0.33, 2.56, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.83, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.71, 0.17, 2.78, 0.17 |
| TextBox | Text114 |  | =[Forms]![Switchboard]![FY_For_Reports] |  |  | 4.25, 0.54, 0.50, 0.21 |
| Label | Text34 | Fiscal Year |  |  |  | 3.46, 0.54, 0.79, 0.21 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CDEST_Label | Cooler |  |  |  | 3.10, 0.25, 0.64, 0.20 |
| Label | FDEST_Label | Field |  |  |  | 1.71, 0.25, 0.67, 0.20 |
| Label | PDEST_Label | Pre-Cooler |  |  |  | 2.39, 0.25, 0.71, 0.20 |
| Label | PICKUP_Label | Pickup |  |  |  | 3.83, 0.25, 0.79, 0.20 |
| Label | SHIP_Label | Ship |  |  |  | 4.67, 0.25, 0.74, 0.20 |
| Label | XFERTO_Label | Transfer to New Lot |  |  |  | 5.50, 0.08, 0.77, 0.37 |
| Label | XPLT_Label | To Field |  |  |  | 6.31, 0.25, 0.74, 0.20 |
| Label | XPLTP_Label | To Pots |  |  |  | 7.15, 0.25, 0.75, 0.20 |
| Line | Line21 |  |  |  |  | 0.00, 0.46, 7.90, 0.00 |
| Label | Label23 | Destroy |  |  |  | 1.71, 0.04, 2.08, 0.20 |
| Label | Label24 | Distribution |  |  |  | 3.83, 0.04, 1.62, 0.20 |
| Label | Label25 | Transplant |  |  |  | 6.31, 0.04, 1.58, 0.20 |
| Line | Line26 |  |  |  |  | 3.82, 0.04, 0.00, 0.42 |
| Line | Line27 |  |  |  |  | 5.47, 0.04, 0.00, 0.42 |
| Line | Line28 |  |  |  |  | 6.31, 0.04, 0.00, 0.42 |
| Line | Line32 |  |  |  |  | 1.71, 0.25, 3.77, 0.00 |
| Line | Line33 |  |  |  |  | 6.31, 0.25, 1.58, 0.00 |
| Label | Label35 | Region |  |  |  | 0.10, 0.25, 1.56, 0.20 |
| Line | Line48 |  |  |  |  | 1.70, 0.04, 0.00, 0.42 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Cost_Center |  | CC | B;Bareroot;C;Container |  | 0.11, 0.02, 3.22, 0.23 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | TreeYN |  | TYN | T;Tree;N;Non-Tree |  | 0.12, 0.04, 1.95, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text36 |  | CDEST |  |  | 3.09, 0.00, 0.64, 0.00 |
| TextBox | Text37 |  | FDEST |  |  | 1.70, 0.00, 0.51, 0.00 |
| TextBox | Text38 |  | PDEST |  |  | 2.38, 0.00, 0.71, 0.00 |
| TextBox | Text39 |  | PICKUP |  |  | 3.83, 0.00, 0.79, 0.00 |
| TextBox | Text40 |  | SHIP |  |  | 4.67, 0.00, 0.74, 0.00 |
| TextBox | Text41 |  | XFERTO |  |  | 5.50, 0.00, 0.73, 0.00 |
| TextBox | Text42 |  | XPLT |  |  | 6.31, 0.00, 0.74, 0.00 |
| TextBox | Text43 |  | XPLTP |  |  | 7.15, 0.00, 0.75, 0.00 |
| Line | Line44 |  |  |  |  | 3.82, 0.00, 0.00, 0.20 |
| Line | Line45 |  |  |  |  | 5.47, 0.00, 0.00, 0.20 |
| Line | Line46 |  |  |  |  | 6.31, 0.00, 0.00, 0.20 |
| Line | Line49 |  |  |  |  | 1.70, 0.00, 0.00, 0.20 |
| ComboBox | Text47 |  | region | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES; |  | 0.11, 0.01, 1.55, 0.16 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo60 |  | TYN | T;Tree Subtotals;N;Non-Tree Subtotals |  | 0.12, 0.03, 1.33, 0.20 |
| TextBox | Text61 |  | =Sum([CDEST]) |  |  | 3.09, 0.06, 0.64, 0.00 |
| TextBox | Text62 |  | =Sum([FDEST]) |  |  | 1.52, 0.06, 0.68, 0.00 |
| TextBox | Text63 |  | =Sum([PDEST]) |  |  | 2.38, 0.06, 0.71, 0.00 |
| TextBox | Text64 |  | =Sum([PICKUP]) |  |  | 3.82, 0.06, 0.79, 0.00 |
| TextBox | Text65 |  | =Sum([SHIP]) |  |  | 4.66, 0.06, 0.74, 0.00 |
| TextBox | Text66 |  | =Sum([XFERTO]) |  |  | 5.55, 0.06, 0.73, 0.00 |
| TextBox | Text67 |  | =Sum([XPLT]) |  |  | 6.30, 0.06, 0.74, 0.00 |
| TextBox | Text68 |  | =Sum([XPLTP]) |  |  | 7.14, 0.06, 0.75, 0.00 |
| Line | Line81 |  |  |  |  | 1.31, 0.00, 6.58, 0.00 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo59 |  | CC | B;Bareroot Subtotals;C;Container Subtotals |  | 0.12, 0.03, 1.33, 0.20 |
| TextBox | Text72 |  | =Sum([CDEST]) |  |  | 3.10, 0.06, 0.64, 0.00 |
| TextBox | Text73 |  | =Sum([FDEST]) |  |  | 1.53, 0.06, 0.68, 0.00 |
| TextBox | Text74 |  | =Sum([PDEST]) |  |  | 2.39, 0.06, 0.71, 0.00 |
| TextBox | Text75 |  | =Sum([PICKUP]) |  |  | 3.83, 0.06, 0.79, 0.00 |
| TextBox | Text76 |  | =Sum([SHIP]) |  |  | 4.67, 0.06, 0.74, 0.00 |
| TextBox | Text77 |  | =Sum([XFERTO]) |  |  | 5.56, 0.06, 0.73, 0.00 |
| TextBox | Text78 |  | =Sum([XPLT]) |  |  | 6.31, 0.06, 0.74, 0.00 |
| TextBox | Text79 |  | =Sum([XPLTP]) |  |  | 7.15, 0.06, 0.75, 0.00 |
| Line | Line80 |  |  |  |  | 1.31, 0.00, 6.58, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.00, 0.17, 3.50, 0.19 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.39, 0.17, 3.50, 0.19 |
| Line | Line22 |  |  |  |  | 0.00, 0.17, 7.89, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CDEST |  | =Sum([CDEST]) |  |  | 3.10, 0.18, 0.64, 0.00 |
| TextBox | FDEST |  | =Sum([FDEST]) |  |  | 1.53, 0.18, 0.68, 0.00 |
| TextBox | PDEST |  | =Sum([PDEST]) |  |  | 2.39, 0.18, 0.71, 0.00 |
| TextBox | PICKUP |  | =Sum([PICKUP]) |  |  | 3.83, 0.18, 0.79, 0.00 |
| TextBox | SHIP |  | =Sum([SHIP]) |  |  | 4.67, 0.18, 0.74, 0.00 |
| TextBox | XFERTO |  | =Sum([XFERTO]) |  |  | 5.56, 0.18, 0.73, 0.00 |
| TextBox | XPLT |  | =Sum([XPLT]) |  |  | 6.31, 0.18, 0.74, 0.00 |
| TextBox | XPLTP |  | =Sum([XPLTP]) |  |  | 7.15, 0.18, 0.75, 0.00 |
| Line | Line29 |  |  |  |  | 3.82, 0.00, 0.00, 0.42 |
| Line | Line30 |  |  |  |  | 5.47, 0.00, 0.00, 0.42 |
| Line | Line31 |  |  |  |  | 6.31, 0.00, 0.00, 0.42 |
| Line | Line50 |  |  |  |  | 1.31, 0.00, 6.58, 0.00 |
| Line | Line52 |  |  |  |  | 1.70, 0.00, 0.00, 0.42 |
| Label | Label82 | Totals |  |  |  | 0.12, 0.15, 0.46, 0.20 |
