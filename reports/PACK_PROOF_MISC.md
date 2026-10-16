# Report: PACK_PROOF_MISC

**Grouping/sorting:** `ACTIVITY_DATE`, `ID`, `Order_ID`, `NMIS_ID_ACTIVITIES.CONTRACT_ITEM`, `NUMBER_OF_ACTIVITY_UNITS`  
**Backend tables referenced:** `NMIS_ID_ACTIVITIES`, `NMIS_ORDERS`, `NMIS_TRANSACTIONS`  
**Opened from (VBA):** `Form_Processing_Review_by_Activity_Date`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_Label | Nursery ID |  |  |  | 0.18, 1.00, 0.81, 0.18 |
| Label | ORDER_ID_Label | Order ID |  |  |  | 0.91, 1.00, 0.55, 0.18 |
| Line | Line13 |  |  |  |  | 0.17, 1.18, 7.85, 0.00 |
| Label | Label21 |  Hours |  |  |  | 3.70, 1.00, 0.40, 0.18 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 4.40, 0.65, 0.89, 0.20 |
| Label | Label14 | Packing Report for  |  |  |  | 3.04, 0.65, 1.32, 0.20 |
| TextBox | NURSERY |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.74, 0.38, 2.79, 0.20 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.86, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.74, 0.17, 2.78, 0.20 |
| Label | Label23 | Contract Item |  |  |  | 2.69, 1.00, 0.86, 0.18 |
| Label | Label40 |  Location |  |  |  | 4.39, 1.00, 0.59, 0.18 |
| Label | Label45 |  # Units |  |  |  | 5.32, 1.00, 0.49, 0.18 |
| Label | Label50 |  Units |  |  |  | 6.04, 1.00, 0.47, 0.18 |
| Label | Label55 | Amt/Unit |  |  |  | 6.61, 1.00, 0.59, 0.18 |
| Label | Label60 |  Trans CI |  |  |  | 7.41, 1.00, 0.57, 0.18 |
| Label | Label65 | Activity Code |  |  |  | 1.64, 1.00, 0.93, 0.18 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 0.17, 0.01, 1.51, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Order_ID |  | Order_ID |  |  | 0.69, 0.00, 1.05, 0.21 |
| TextBox | ACTIVITY_HOURS |  | ACTIVITY_HOURS |  |  | 3.65, 0.00, 0.43, 0.21 |
| TextBox | CONTRACT_ITEM |  | NMIS_ID_ACTIVITIES.CONTRACT_ITEM |  |  | 2.70, 0.00, 0.92, 0.21 |
| TextBox | Text41 |  | LOCATION |  |  | 4.10, 0.00, 1.04, 0.21 |
| TextBox | Text46 |  | NUMBER_OF_ACTIVITY_UNITS |  |  | 5.17, 0.00, 0.59, 0.21 |
| TextBox | Text51 |  | UNIT_CODE |  |  | 5.81, 0.00, 0.67, 0.21 |
| TextBox | Text56 |  | AMT_PER_UNIT |  |  | 6.52, 0.00, 0.67, 0.21 |
| TextBox | Text61 |  | NMIS_TRANSACTIONS.CONTRACT_ITEM |  |  | 7.24, 0.00, 0.67, 0.21 |
| TextBox | ORDER_ACTIVITY_CODE |  | NMIS_ORDERS.ACTIVITY_CODE |  |  | 0.04, 0.02, 0.58, 0.00 |
| TextBox | NMIS_ID_ACTIVITIES.ACTIVITY_CODE |  | NMIS_ID_ACTIVITIES.ACTIVITY_CODE |  |  | 1.75, 0.00, 0.92, 0.21 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line39 |  |  |  |  | 5.45, 0.00, 0.46, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text9 |  | =Now() |  |  | 0.41, 0.04, 1.96, 0.18 |
| TextBox | Text10 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.70, 0.04, 2.17, 0.18 |
