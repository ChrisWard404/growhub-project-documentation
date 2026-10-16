# Report: LOTS_LIFTED_DAILY

**Caption:** LOTS_LIFTED_DAILY  
**Record source:**

```sql
LIFT_DAILY Query
```

**Grouping/sorting:** `ACTIVITY_DATE`, `CONTRACT_ITEM`, `FIELD`, `FLD_CONT`, `ID`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NURSERY |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.00, 0.38, 3.50, 0.21 |
| Label | ID_Label | Nursery ID  |  |  |  | 3.93, 1.41, 0.92, 0.16 |
| Label | FEET_Label | Feet LIfted |  |  |  | 5.40, 1.23, 0.54, 0.33 |
| Label | NO_FLD_CONT_Label | No. of Containers |  |  |  | 6.31, 1.23, 0.75, 0.34 |
| Label | CONTRACT_ITEM_Label | Contract Item |  |  |  | 0.46, 1.23, 0.62, 0.33 |
| Label | FLD_CONT_Label | Container Type |  |  |  | 3.00, 1.23, 0.71, 0.33 |
| Label | FIELD_Label | Nursery Field |  |  |  | 1.96, 1.23, 0.58, 0.33 |
| Label | Report_Label | List of Lots LIfted |  |  |  | 3.21, 0.58, 1.12, 0.21 |
| TextBox | ACTIVITY_DATE | Lifting Date: | ACTIVITY_DATE |  |  | 0.96, 1.00, 1.04, 0.21 |
| TextBox | PAGES |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.21, 0.00, 1.29, 0.20 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.50, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.38, 0.17, 2.78, 0.20 |
| Line | Line21 |  |  |  |  | 0.50, 1.58, 6.54, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 3.92, 0.02, 1.29, 0.00 |
| TextBox | FEET |  | FEET |  |  | 5.40, 0.02, 0.54, 0.00 |
| TextBox | NO_FLD_CONT |  | NO_FLD_CONT |  |  | 6.36, 0.02, 0.54, 0.00 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 0.50, 0.02, 0.50, 0.00 |
| TextBox | FLD_CONT |  | FLD_CONT |  |  | 3.00, 0.02, 0.46, 0.00 |
| TextBox | FIELD |  | FIELD |  |  | 2.00, 0.02, 0.67, 0.00 |
| TextBox | Not_All_Lifted |  | Not_All_Lifted |  |  | 5.94, 0.02, 0.23, 0.00 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | C-TYPE_TOTAL_Label | C-Type Total |  |  |  | 2.75, 0.12, 0.85, 0.19 |
| TextBox | CT_SUM_FT |  | =Sum([LIFT_DAILY Query]![FEET]) |  |  | 5.40, 0.12, 0.54, 0.00 |
| Line | Line49 |  |  |  |  | 5.36, 0.08, 0.58, 0.00 |
| Line | Line50 |  |  |  |  | 6.32, 0.08, 0.58, 0.00 |
| TextBox | CT_SUM_FLD_CONT |  | =Sum([LIFT_DAILY Query]![NO_FLD_CONT]) |  |  | 6.21, 0.12, 0.69, 0.00 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | FIELD_TOTAL_Label | Field Total |  |  |  | 2.42, 0.12, 0.70, 0.17 |
| TextBox | F_SUM_FEET |  | =Sum([LIFT_DAILY Query]![FEET]) |  |  | 5.40, 0.12, 0.54, 0.00 |
| TextBox | F_SUM_FLD_CONT |  | =Sum([LIFT_DAILY Query]![NO_FLD_CONT]) |  |  | 6.21, 0.12, 0.69, 0.00 |
| Line | Line60 |  |  |  |  | 6.32, 0.08, 0.58, 0.00 |
| Line | Line61 |  |  |  |  | 5.36, 0.08, 0.58, 0.00 |

## Section: GroupFooter5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ITEM_TOTAL_Label | Item Total |  |  |  | 1.83, 0.12, 0.70, 0.17 |
| TextBox | I_SUM_FEET |  | =Sum([LIFT_DAILY Query]![FEET]) |  |  | 5.40, 0.12, 0.54, 0.00 |
| TextBox | I_SUM_FLD_CONT |  | =Sum([LIFT_DAILY Query]![NO_FLD_CONT]) |  |  | 6.25, 0.12, 0.65, 0.00 |
| Line | Line69 |  |  |  |  | 6.32, 0.08, 0.58, 0.00 |
| Line | Line70 |  |  |  |  | 5.36, 0.08, 0.58, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | DATE_TOTAL_Label | Date Total |  |  |  | 1.29, 0.17, 0.72, 0.17 |
| TextBox | D_SUM_FEET |  | =Sum([LIFT_DAILY Query]![FEET]) |  |  | 5.40, 0.21, 0.54, 0.00 |
| TextBox | D_SUM_FLD_CONT |  | =Sum([LIFT_DAILY Query]![NO_FLD_CONT]) |  |  | 6.25, 0.21, 0.65, 0.00 |
| Line | Line65 |  |  |  |  | 6.32, 0.17, 0.58, 0.00 |
| Line | Line66 |  |  |  |  | 5.36, 0.17, 0.58, 0.00 |
| Line | Line71 |  |  |  |  | 6.32, 0.12, 0.58, 0.00 |
| Line | Line72 |  |  |  |  | 5.36, 0.12, 0.58, 0.00 |
