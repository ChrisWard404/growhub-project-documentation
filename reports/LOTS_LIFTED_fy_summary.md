# Report: LOTS_LIFTED_fy_summary

**Caption:** LOTS_LIFTED_DAILY_CONTRACT  
**Record source:**

```sql
LIFT_CONTRACT_Lift_Summary Query
```

**Grouping/sorting:** `CI`, `mb`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CONTRACT_ITEM_Label | Contract Item |  |  |  | 0.00, 1.17, 2.92, 0.20 |
| Label | FEET_Label | Feet Lifted |  |  |  | 4.92, 1.17, 0.88, 0.20 |
| Label | MBIN_Label | MBIN |  |  |  | 5.90, 1.17, 0.79, 0.20 |
| Label | PTUB_Label | PTUB |  |  |  | 6.75, 1.17, 0.71, 0.20 |
| Line | Line17 |  |  |  |  | 0.00, 1.41, 7.50, 0.00 |
| TextBox | NURSERY |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.00, 0.38, 3.50, 0.21 |
| Label | CONTRACT_NO_Label | Lifting Summary - Contract No.: |  |  |  | 2.00, 0.58, 1.96, 0.21 |
| TextBox | CONTRACT_NO |  | CONTRACT_NO |  |  | 3.96, 0.58, 1.83, 0.21 |
| TextBox | PAGES |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.21, 0.00, 1.29, 0.20 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.38, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.25, 0.17, 2.78, 0.20 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Sum([FEET]) |  |  | 5.00, 0.00, 0.75, 0.21 |
| TextBox | Text24 |  | =Sum([MBIN]) |  |  | 5.90, 0.00, 0.75, 0.21 |
| TextBox | Text25 |  | =Sum([PTUB]) |  |  | 6.75, 0.00, 0.75, 0.21 |
| TextBox | CI |  | CI |  |  | 0.00, 0.00, 2.92, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text13 |  | =Now() |  |  | 0.58, 0.02, 3.50, 0.20 |
| Label | Label19 | run date |  |  |  | 0.00, 0.02, 0.59, 0.20 |
