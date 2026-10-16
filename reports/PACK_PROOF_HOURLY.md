# Report: PACK_PROOF_HOURLY

**Grouping/sorting:** `ACTIVITY_DATE`, `CONTRACT_ITEM`, `ID`  
**Opened from (VBA):** `Form_Processing_Review_by_Activity_Date`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_Label | Nursery     ID |  |  |  | 0.36, 1.16, 0.81, 0.18 |
| Label | ORDER_ID_Label | Order ID |  |  |  | 2.26, 1.16, 0.55, 0.18 |
| Line | Line13 |  |  |  |  | 0.36, 1.33, 7.50, 0.00 |
| Label | Label21 |  Hours |  |  |  | 5.04, 1.16, 0.45, 0.18 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 4.24, 0.65, 1.18, 0.20 |
| Label | Label14 | Hourly Report for  |  |  |  | 2.98, 0.65, 1.23, 0.20 |
| TextBox | NURSERY |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.74, 0.38, 2.79, 0.20 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.86, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.74, 0.17, 2.78, 0.20 |
| Label | Label23 |    Contract   Item |  |  |  | 3.40, 1.16, 1.03, 0.18 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 0.36, 0.00, 1.51, 0.21 |
| TextBox | Order_ID |  | Order_ID |  |  | 2.28, 0.00, 0.71, 0.21 |
| TextBox | ACTIVITY_HOURS |  | ACTIVITY_HOURS |  |  | 4.71, 0.00, 0.76, 0.21 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 3.42, 0.00, 1.08, 0.21 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text36 |  | =Sum([ACTIVITY_HOURS]) |  |  | 4.71, 0.02, 0.76, 0.21 |
| Label | Label37 | Item Total |  |  |  | 3.58, 0.02, 1.05, 0.21 |
| Line | Line39 |  |  |  |  | 5.01, 0.00, 0.46, 0.00 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text31 |  | =Sum([ACTIVITY_HOURS]) |  |  | 4.71, 0.04, 0.76, 0.21 |
| Label | Label32 | Daily Total |  |  |  | 3.58, 0.04, 1.05, 0.21 |
| Line | Line33 |  |  |  |  | 5.01, 0.04, 0.46, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text9 |  | =Now() |  |  | 0.41, 0.04, 1.96, 0.18 |
| TextBox | Text10 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.70, 0.04, 2.17, 0.18 |
