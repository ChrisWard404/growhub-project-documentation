# Report: LOTS_LIFTED_DAILY_CONTRACT

**Grouping/sorting:** `ACTIVITY_DATE`, `CI`, `FIELD`, `ID`  
**Subforms/subreports:** `Report.LOTS_LIFTED_DAILY_CONTRACT_HOURLY subreport`  
**Opened from (VBA):** `Form_Husky_lpro_data_input_check_form`, `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CONTRACT_ITEM_Label | Contract Item |  |  |  | 0.00, 1.17, 2.92, 0.20 |
| Label | FIELD_Label | Field |  |  |  | 3.00, 1.17, 0.75, 0.20 |
| Label | ID_Label | ID |  |  |  | 3.75, 1.17, 1.12, 0.20 |
| Label | FEET_Label | Feet Lifted |  |  |  | 4.92, 1.17, 0.88, 0.20 |
| Label | MBIN_Label | MBIN |  |  |  | 5.90, 1.17, 0.79, 0.20 |
| Label | PTUB_Label | PTUB |  |  |  | 6.75, 1.17, 0.71, 0.20 |
| Line | Line17 |  |  |  |  | 0.00, 1.41, 7.50, 0.00 |
| TextBox | ACTIVITY_DATE | Lifting Date: | ACTIVITY_DATE |  |  | 1.00, 0.88, 2.00, 0.21 |
| TextBox | NURSERY |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.00, 0.38, 3.50, 0.21 |
| Label | CONTRACT_NO_Label | Attachment to Daily Diary - Contract No.: |  |  |  | 2.00, 0.58, 2.54, 0.21 |
| TextBox | CONTRACT_NO |  | CONTRACT_NO |  |  | 4.58, 0.58, 1.83, 0.21 |
| TextBox | PAGES |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.21, 0.00, 1.29, 0.20 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.38, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.25, 0.17, 2.78, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CONTRACT_ITEM |  | CI |  |  | 0.00, 0.00, 2.92, 0.00 |
| TextBox | FIELD |  | FIELD |  |  | 3.00, 0.00, 0.75, 0.00 |
| TextBox | ID |  | ID |  |  | 3.75, 0.00, 1.12, 0.00 |
| TextBox | FEET |  | FEET |  |  | 5.00, 0.00, 0.75, 0.00 |
| TextBox | MBIN |  | MBIN |  |  | 5.90, 0.00, 0.75, 0.00 |
| TextBox | PTUB |  | PTUB |  |  | 6.75, 0.00, 0.75, 0.00 |
| TextBox | Text50 |  | Not_All_Lifted |  |  | 5.75, 0.00, 0.17, 0.00 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text20 |  | =Sum([LIFT_DAILY_CONTRACT Query]![FEET]) |  |  | 5.00, 0.08, 0.75, 0.21 |
| TextBox | Text21 |  | =Sum([LIFT_DAILY_CONTRACT Query]![MBIN]) |  |  | 5.90, 0.08, 0.75, 0.21 |
| TextBox | Text22 |  | =Sum([LIFT_DAILY_CONTRACT Query]![PTUB]) |  |  | 6.75, 0.08, 0.75, 0.21 |
| Line | Line26 |  |  |  |  | 5.00, 0.04, 0.75, 0.00 |
| Line | Line27 |  |  |  |  | 5.90, 0.04, 0.75, 0.00 |
| Line | Line28 |  |  |  |  | 6.75, 0.04, 0.75, 0.00 |
| Label | Label45 | Field Totals |  |  |  | 2.67, 0.08, 1.33, 0.25 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Sum([LIFT_DAILY_CONTRACT Query]![FEET]) |  |  | 5.00, 0.08, 0.75, 0.21 |
| TextBox | Text24 |  | =Sum([LIFT_DAILY_CONTRACT Query]![MBIN]) |  |  | 5.90, 0.08, 0.75, 0.21 |
| TextBox | Text25 |  | =Sum([LIFT_DAILY_CONTRACT Query]![PTUB]) |  |  | 6.75, 0.08, 0.75, 0.21 |
| Line | Line29 |  |  |  |  | 5.00, 0.04, 0.75, 0.00 |
| Line | Line30 |  |  |  |  | 5.90, 0.04, 0.75, 0.00 |
| Line | Line31 |  |  |  |  | 6.75, 0.04, 0.75, 0.00 |
| Label | Label46 | Contract ItemTotals |  |  |  | 2.00, 0.08, 1.33, 0.25 |

## Section: GroupFooter5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text36 |  | =Sum([LIFT_DAILY_CONTRACT Query]![FEET]) |  |  | 5.00, 0.08, 0.75, 0.21 |
| TextBox | Text37 |  | =Sum([LIFT_DAILY_CONTRACT Query]![MBIN]) |  |  | 5.90, 0.08, 0.75, 0.21 |
| TextBox | Text38 |  | =Sum([LIFT_DAILY_CONTRACT Query]![PTUB]) |  |  | 6.75, 0.08, 0.75, 0.21 |
| Line | Line39 |  |  |  |  | 5.00, 0.00, 0.75, 0.00 |
| Line | Line40 |  |  |  |  | 5.90, 0.00, 0.75, 0.00 |
| Line | Line41 |  |  |  |  | 6.75, 0.00, 0.75, 0.00 |
| Line | Line42 |  |  |  |  | 5.00, 0.02, 0.75, 0.00 |
| Line | Line43 |  |  |  |  | 5.90, 0.02, 0.75, 0.00 |
| Line | Line44 |  |  |  |  | 6.75, 0.02, 0.75, 0.00 |
| Label | Label47 | Date Totals |  |  |  | 1.33, 0.08, 1.33, 0.21 |
| Subform | NMIS_ID_ACTIVITIES subreport1 |  | Report.LOTS_LIFTED_DAILY_CONTRACT_HOURLY subreport (master: ACTIVITY_DATE → child: ACTIVITY_DATE) |  |  | 0.00, 0.38, 4.23, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text13 |  | =Now() |  |  | 0.58, 0.02, 3.50, 0.20 |
| Label | Label19 | run date |  |  |  | 0.00, 0.02, 0.59, 0.20 |
