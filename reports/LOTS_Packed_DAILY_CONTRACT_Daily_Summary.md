# Report: LOTS_Packed_DAILY_CONTRACT_Daily_Summary

**Caption:** Lots Packed Daily by Contract Item  
**Record source:**

```sql
Pack_DAILY_CONTRACT Query
```

**Grouping/sorting:** `ACTIVITY_DATE`, `CI`, `ID`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CONTRACT_ITEM_Label | Contract Item |  |  |  | 0.00, 1.09, 2.92, 0.20 |
| Label | FEET_Label | Net (M) |  |  |  | 3.77, 1.09, 0.88, 0.20 |
| Label | MBIN_Label | Gross (M) |  |  |  | 4.75, 1.09, 0.79, 0.20 |
| Label | PTUB_Label | Hours |  |  |  | 5.64, 1.09, 0.68, 0.20 |
| Line | Line17 |  |  |  |  | 0.00, 1.29, 7.47, 0.00 |
| TextBox | ACTIVITY_DATE | Packing Date(s): | Date_Range |  |  | 1.17, 0.86, 2.00, 0.21 |
| TextBox | NURSERY |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.00, 0.38, 3.50, 0.21 |
| Label | CONTRACT_NO_Label | Daily Packing Summary - Contract No.: |  |  |  | 1.77, 0.58, 2.44, 0.19 |
| TextBox | CONTRACT_NO |  | CONTRACT_NO |  |  | 4.25, 0.58, 1.83, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.38, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.25, 0.17, 2.78, 0.20 |
| Label | Label80 | Cull (%) |  |  |  | 6.66, 1.09, 0.68, 0.20 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text57 |  | ACTIVITY_DATE |  |  | 0.00, 0.01, 1.09, 0.23 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Sum([Pack (m)]) |  |  | 3.85, 0.00, 0.75, 0.21 |
| TextBox | Text24 |  | =Sum([Pack Gr (m)]) |  |  | 4.75, 0.00, 0.75, 0.21 |
| TextBox | CONTRACT_ITEM |  | CI |  |  | 0.00, 0.04, 2.92, 0.00 |
| TextBox | Text73 |  | =Sum([ACTIVITY_HOURS]) |  |  | 5.55, 0.00, 0.75, 0.21 |
| TextBox | Text81 |  | =(Sum([Pack Gr (m)])-Sum([Pack (m)]))/Sum([Pack Gr (m)])*100 |  |  | 6.57, 0.00, 0.75, 0.21 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text59 | Totals for: | ACTIVITY_DATE |  |  | 1.71, 0.02, 0.00, 0.19 |
| TextBox | Text65 |  | =Sum([Pack (m)]) |  |  | 3.69, 0.01, 0.92, 0.21 |
| TextBox | Text66 |  | =Sum([Pack Gr (m)]) |  |  | 4.65, 0.01, 0.85, 0.21 |
| Line | Line68 |  |  |  |  | 3.90, 0.00, 0.71, 0.00 |
| Line | Line69 |  |  |  |  | 4.81, 0.00, 0.71, 0.00 |
| Line | Line70 |  |  |  |  | 4.77, 0.00, 0.73, 0.00 |
| TextBox | Text74 |  | =Sum([ACTIVITY_HOURS]) |  |  | 5.52, 0.01, 0.78, 0.21 |
| Line | Line75 |  |  |  |  | 5.61, 0.00, 0.71, 0.00 |
| TextBox | Text82 |  | =(Sum([Pack Gr (m)])-Sum([Pack (m)]))/Sum([Pack Gr (m)])*100 |  |  | 6.54, 0.01, 0.78, 0.21 |
| Line | Line84 |  |  |  |  | 6.59, 0.00, 0.73, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text13 |  | =Now() |  |  | 0.79, 0.00, 3.29, 0.20 |
| Label | Label19 | Report Date |  |  |  | 0.00, 0.00, 0.77, 0.20 |
| TextBox | PAGES |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.21, 0.00, 1.26, 0.20 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text50 |  | =Sum([Pack (m)]) |  |  | 3.69, 0.01, 0.92, 0.21 |
| TextBox | Text51 |  | =Sum([Pack Gr (m)]) |  |  | 4.65, 0.01, 0.85, 0.21 |
| Line | Line53 |  |  |  |  | 3.90, 0.00, 0.71, 0.00 |
| Line | Line54 |  |  |  |  | 4.81, 0.00, 0.71, 0.00 |
| Line | Line55 |  |  |  |  | 4.77, 0.00, 0.73, 0.00 |
| Label | Label72 | Grand Totals |  |  |  | 0.22, 0.02, 1.00, 0.20 |
| TextBox | Text77 |  | =Sum([ACTIVITY_HOURS]) |  |  | 5.52, 0.01, 0.78, 0.21 |
| Line | Line78 |  |  |  |  | 5.61, 0.00, 0.71, 0.00 |
| TextBox | Text85 |  | =(Sum([Pack Gr (m)])-Sum([Pack (m)]))/Sum([Pack Gr (m)])*100 |  |  | 6.54, 0.01, 0.78, 0.21 |
| Line | Line86 |  |  |  |  | 6.64, 0.00, 0.71, 0.00 |
