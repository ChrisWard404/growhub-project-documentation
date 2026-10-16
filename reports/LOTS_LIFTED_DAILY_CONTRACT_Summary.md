# Report: LOTS_LIFTED_DAILY_CONTRACT_Summary

**Caption:** LOTS_LIFTED_DAILY_CONTRACT  
**Record source:**

```sql
LIFT_DAILY_CONTRACT Query
```

**Grouping/sorting:** `CI`, `ID`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CONTRACT_ITEM_Label | Contract Item |  |  |  | 0.00, 1.17, 2.92, 0.20 |
| Label | FEET_Label | Feet Lifted |  |  |  | 4.92, 1.17, 0.88, 0.20 |
| Label | MBIN_Label | MBIN |  |  |  | 5.90, 1.17, 0.79, 0.20 |
| Label | PTUB_Label | PTUB |  |  |  | 6.78, 1.17, 0.68, 0.20 |
| Line | Line17 |  |  |  |  | 0.00, 1.41, 7.47, 0.00 |
| TextBox | ACTIVITY_DATE | Lifting Date(s): | Date_Range |  |  | 1.00, 0.88, 2.00, 0.21 |
| TextBox | NURSERY |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.00, 0.38, 3.50, 0.21 |
| Label | CONTRACT_NO_Label | Daily Diary Summary - Contract No.: |  |  |  | 1.77, 0.58, 2.27, 0.19 |
| TextBox | CONTRACT_NO |  | CONTRACT_NO |  |  | 4.08, 0.58, 1.83, 0.21 |
| TextBox | PAGES |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.21, 0.00, 1.26, 0.20 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.38, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.25, 0.17, 2.78, 0.20 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Sum([LIFT_DAILY_CONTRACT Query]![FEET]) |  |  | 5.00, 0.03, 0.75, 0.21 |
| TextBox | Text24 |  | =Sum([LIFT_DAILY_CONTRACT Query]![MBIN]) |  |  | 5.90, 0.03, 0.75, 0.21 |
| TextBox | Text25 |  | =Sum([LIFT_DAILY_CONTRACT Query]![PTUB]) |  |  | 6.75, 0.03, 0.72, 0.21 |
| TextBox | CONTRACT_ITEM |  | CI |  |  | 0.00, 0.07, 2.92, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text13 |  | =Now() |  |  | 0.58, 0.17, 3.50, 0.20 |
| Label | Label19 | run date |  |  |  | 0.00, 0.17, 0.59, 0.20 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text50 |  | =Sum([LIFT_DAILY_CONTRACT Query]![FEET]) |  |  | 4.83, 0.05, 0.92, 0.21 |
| TextBox | Text51 |  | =Sum([LIFT_DAILY_CONTRACT Query]![MBIN]) |  |  | 5.79, 0.05, 0.85, 0.21 |
| TextBox | Text52 |  | =Sum([LIFT_DAILY_CONTRACT Query]![PTUB]) |  |  | 6.67, 0.05, 0.80, 0.21 |
| Line | Line53 |  |  |  |  | 5.04, 0.04, 0.71, 0.00 |
| Line | Line54 |  |  |  |  | 5.96, 0.04, 0.71, 0.00 |
| Line | Line55 |  |  |  |  | 5.92, 0.04, 0.73, 0.00 |
| Line | Line56 |  |  |  |  | 6.83, 0.04, 0.64, 0.00 |
