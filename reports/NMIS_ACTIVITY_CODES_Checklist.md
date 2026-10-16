# Report: NMIS_ACTIVITY_CODES_Checklist

**Grouping/sorting:** `PARENT_ACTIVITY_SORT_ORDER`, `ACTIVITY_CODE`, `ACTIVITY_CODE_NO`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ACTIVITY_CODE_Label | Activity Code |  |  |  | 0.00, 0.88, 0.58, 0.31 |
| Label | ACTIVITY_NAME_Label | Activity Name |  |  |  | 2.25, 1.01, 1.12, 0.17 |
| Label | BALANCE_EFFECT_Label | Balance Effect |  |  |  | 3.73, 0.88, 0.56, 0.31 |
| Label | ACTIVITY_CODE_NO_Label | Activity No. |  |  |  | 0.59, 0.88, 0.50, 0.31 |
| Label | NOTE_Label | Note |  |  |  | 6.35, 1.01, 0.32, 0.17 |
| Line | Line19 |  |  |  |  | 0.00, 1.22, 7.99, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.51, 0.16, 3.25, 0.19 |
| Label | Label33 | Activity Codes |  |  |  | 3.53, 0.57, 1.19, 0.23 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.51, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 2.51, 0.00, 3.25, 0.16 |
| Label | Label26 | Parent Activity |  |  |  | 1.08, 0.88, 0.52, 0.31 |
| Label | Label38 | Properties Module |  |  |  | 4.39, 0.88, 0.70, 0.31 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text27 |  | PARENT_ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES;  |  | 0.00, 0.01, 4.54, 0.25 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 0.00, 0.00, 0.64, 0.21 |
| TextBox | ACTIVITY_NAME |  | ACTIVITY_NAME |  |  | 1.68, 0.00, 1.94, 0.21 |
| TextBox | ACTIVITY_CODE_NO |  | ACTIVITY_CODE_NO |  |  | 0.67, 0.00, 0.40, 0.21 |
| TextBox | NOTE |  | NOTE |  |  | 5.28, 0.00, 2.72, 0.21 |
| TextBox | PARENT_ACTIVITY_CODE |  | PARENT_ACTIVITY_CODE |  |  | 1.06, 0.00, 0.61, 0.21 |
| TextBox | BALANCE_EFFECT |  | BALANCE_EFFECT |  |  | 3.64, 0.00, 0.77, 0.21 |
| TextBox | PROPERTIES_MODULE |  | PROPERTIES_MODULE |  |  | 4.43, 0.00, 0.83, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text15 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.18 |
| TextBox | Text16 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.76, 0.17, 3.19, 0.18 |
