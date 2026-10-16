# Report: LOTS_PACKED_DAILY_BY_AGE_CLASS_Summary

**Grouping/sorting:** `ACTIVITY_DATE`, `Age_Class`, `ACTIVITY_CODE`, `ID`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CONTRACT_ITEM_Label | Activity Code - Description |  |  |  | 2.12, 1.09, 2.54, 0.20 |
| Label | FEET_Label | Net (M) |  |  |  | 4.64, 1.09, 0.88, 0.20 |
| Label | MBIN_Label | Gross (M) |  |  |  | 5.58, 1.09, 0.79, 0.20 |
| Label | PTUB_Label | Hours |  |  |  | 6.49, 1.09, 0.68, 0.20 |
| Line | Line17 |  |  |  |  | 0.00, 1.29, 7.94, 0.00 |
| TextBox | ACTIVITY_DATE | Packing Date(s): | Date_Range |  |  | 1.17, 0.86, 2.00, 0.21 |
| TextBox | NURSERY |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.26, 0.38, 3.50, 0.21 |
| Label | CONTRACT_NO_Label | Daily Packing Summary by Stock Type |  |  |  | 2.79, 0.58, 2.44, 0.19 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.75, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.61, 0.17, 2.78, 0.20 |
| Label | Label80 | Cull (%) |  |  |  | 7.28, 1.09, 0.68, 0.20 |
| Label | Label88 | Stock Type |  |  |  | 0.00, 1.09, 1.12, 0.20 |
| Label | Label94 | CI |  |  |  | 1.72, 1.08, 0.21, 0.21 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text57 |  | ACTIVITY_DATE |  |  | 0.00, 0.01, 1.09, 0.23 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Sum([Pack (m)]) |  |  | 4.74, 0.00, 0.75, 0.21 |
| TextBox | Text24 |  | =Sum([Pack Gr (m)]) |  |  | 5.60, 0.00, 0.75, 0.21 |
| TextBox | CONTRACT_ITEM |  | =[Activity_Code] & " - " & [activity_name] |  |  | 2.15, 0.04, 2.60, 0.00 |
| TextBox | Text73 |  | =Sum([ACTIVITY_HOURS]) |  |  | 6.43, 0.00, 0.75, 0.21 |
| TextBox | Text81 |  | =(Sum([Pack Gr (m)])-Sum([Pack (m)]))/Sum([Pack Gr (m)])*100 |  |  | 7.22, 0.00, 0.75, 0.21 |
| TextBox | Text89 |  | Age_Class |  |  | 0.02, 0.04, 1.73, 0.00 |
| TextBox | Text92 |  | CONTRACT_ITEM |  |  | 1.75, 0.04, 0.38, 0.18 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text59 | Totals for: | ACTIVITY_DATE |  |  | 1.08, 0.02, 0.00, 0.19 |
| TextBox | Text65 |  | =Sum([Pack (m)]) |  |  | 4.55, 0.01, 0.92, 0.21 |
| TextBox | Text66 |  | =Sum([Pack Gr (m)]) |  |  | 5.48, 0.01, 0.85, 0.21 |
| Line | Line68 |  |  |  |  | 4.76, 0.00, 0.71, 0.00 |
| Line | Line69 |  |  |  |  | 5.65, 0.00, 0.71, 0.00 |
| Line | Line70 |  |  |  |  | 5.60, 0.00, 0.73, 0.00 |
| TextBox | Text74 |  | =Sum([ACTIVITY_HOURS]) |  |  | 6.38, 0.01, 0.78, 0.21 |
| Line | Line75 |  |  |  |  | 6.47, 0.00, 0.71, 0.00 |
| TextBox | Text82 |  | =(Sum([Pack Gr (m)])-Sum([Pack (m)]))/Sum([Pack Gr (m)])*100 |  |  | 7.17, 0.01, 0.78, 0.21 |
| Line | Line84 |  |  |  |  | 7.22, 0.00, 0.73, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text13 |  | =Now() |  |  | 0.58, 0.00, 3.50, 0.20 |
| Label | Label19 | run date |  |  |  | 0.00, 0.00, 0.59, 0.20 |
| TextBox | PAGES |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.68, 0.00, 1.26, 0.20 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text50 |  | =Sum([Pack (m)]) |  |  | 4.55, 0.01, 0.92, 0.21 |
| TextBox | Text51 |  | =Sum([Pack Gr (m)]) |  |  | 5.48, 0.01, 0.85, 0.21 |
| Line | Line53 |  |  |  |  | 4.76, 0.00, 0.71, 0.00 |
| Line | Line54 |  |  |  |  | 5.65, 0.00, 0.71, 0.00 |
| Line | Line55 |  |  |  |  | 5.60, 0.00, 0.73, 0.00 |
| Label | Label72 | Grand Totals |  |  |  | 0.22, 0.02, 1.00, 0.20 |
| TextBox | Text77 |  | =Sum([ACTIVITY_HOURS]) |  |  | 6.38, 0.01, 0.78, 0.21 |
| Line | Line78 |  |  |  |  | 6.47, 0.00, 0.71, 0.00 |
| TextBox | Text85 |  | =(Sum([Pack Gr (m)])-Sum([Pack (m)]))/Sum([Pack Gr (m)])*100 |  |  | 7.17, 0.01, 0.78, 0.21 |
| Line | Line86 |  |  |  |  | 7.26, 0.00, 0.71, 0.00 |
