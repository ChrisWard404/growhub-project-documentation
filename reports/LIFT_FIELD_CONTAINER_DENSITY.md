# Report: LIFT_FIELD_CONTAINER_DENSITY

**Grouping/sorting:** `ID`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label10 | Field Container Density |  |  |  | 2.92, 0.62, 1.71, 0.18 |
| Label | ID_Label | ID |  |  |  | 0.38, 1.17, 0.96, 0.17 |
| Label | UNIT_CODE_Label | Unit Code |  |  |  | 1.76, 1.17, 0.82, 0.17 |
| Label | NUMBER_OF_ACTIVITY_UNITS_Label | # Of Activity Units |  |  |  | 3.75, 1.17, 0.99, 0.17 |
| Label | AMT_PER_UNIT_Label | Amt/Unit Net |  |  |  | 5.00, 1.17, 0.94, 0.17 |
| Label | AMT_PER_UNIT_INV_GROSS_Label | Amt/Unit Gross |  |  |  | 6.00, 1.17, 1.00, 0.17 |
| Line | Line15 |  |  |  |  | 0.35, 1.38, 6.75, 0.00 |
| TextBox | ACTIVITY_DATE | Lifting Date: | ACTIVITY_DATE |  |  | 3.92, 0.83, 0.71, 0.00 |
| TextBox | NURSERY |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.00, 0.42, 3.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.50, 0.04, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.38, 0.21, 2.78, 0.20 |
| Label | Label19 | Contract Item |  |  |  | 2.72, 1.17, 0.82, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 0.38, 0.00, 1.25, 0.00 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 1.72, 0.00, 0.82, 0.00 |
| TextBox | NUMBER_OF_ACTIVITY_UNITS |  | NUMBER_OF_ACTIVITY_UNITS |  |  | 3.75, 0.00, 0.99, 0.00 |
| TextBox | AMT_PER_UNIT |  | AMT_PER_UNIT |  |  | 5.00, 0.00, 0.94, 0.00 |
| TextBox | AMT_PER_UNIT_INV_GROSS |  | AMT_PER_UNIT_INV_GROSS |  |  | 6.00, 0.00, 0.00, 0.00 |
| Line | Line17 |  |  |  |  | 0.35, 0.21, 6.75, 0.00 |
| TextBox | Text18 |  | CONTRACT_ITEM |  |  | 2.67, 0.00, 0.82, 0.00 |
| TextBox | Text20 |  | USE |  |  | 4.75, 0.00, 0.21, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text11 |  | =Now() |  |  | 0.04, 0.25, 3.50, 0.18 |
| TextBox | Text12 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.96, 0.25, 3.50, 0.18 |
| Label | Label21 | field destroy= |  |  |  | 3.92, 0.00, 0.82, 0.17 |
| Label | Label87 | P |  |  |  | 4.75, 0.00, 0.16, 0.17 |
