# Report: Order_Form_Checklist

**Grouping/sorting:** `Cost_Center`, `Species_Product_Description`, `ID`, `ORDER_CN`  
**Opened from (VBA):** `Form_Order_Pack_Form`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text39 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.71, 0.36, 2.50, 0.21 |
| Label | Label68 | Plant Order Checklist |  |  |  | 2.53, 0.59, 2.76, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.71, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.58, 0.17, 2.78, 0.20 |
| Label | Label134 | Order ID |  |  |  | 0.00, 0.85, 0.47, 0.36 |
| Label | Label135 | Client |  |  |  | 0.38, 1.02, 0.60, 0.20 |
| Label | Label136 | Total Order |  |  |  | 1.70, 0.85, 0.43, 0.36 |
| Label | Label137 | Order Size Specs |  |  |  | 2.26, 1.02, 1.20, 0.20 |
| Label | Label138 | Special Services |  |  |  | 3.90, 1.02, 1.16, 0.20 |
| Label | Label139 | Contract Item |  |  |  | 5.40, 0.85, 0.66, 0.36 |
| Label | Label140 | Status |  |  |  | 7.00, 1.02, 0.60, 0.20 |
| Line | Line141 |  |  |  |  | 0.00, 1.22, 7.93, 0.00 |
| Label | Label143 | Activity Code |  |  |  | 1.02, 0.85, 0.58, 0.36 |
| Label | DESIRED_DATE Label | Desired Date |  |  |  | 6.17, 0.84, 0.66, 0.36 |
| TextBox | Text94 |  | =IIf([Forms]![Order_Pack_Form]![Has_Desired_Date],"Selected for: Has Desired Ship Date") |  |  | 0.00, 0.17, 2.54, 0.20 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Cost_Center |  | Cost_Center | B;"Bareroot Plant";C;"Container Plant" |  | 0.01, 0.02, 2.54, 0.20 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text57 |  | Species_Product_Description |  |  | 0.00, 0.00, 5.66, 0.20 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 0.00, 0.00, 1.17, 0.20 |
| TextBox | SOURCE_CODE |  | SOURCE_CODE |  |  | 1.21, 0.00, 5.28, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | AGR_REQ |  | [Total_Order] |  |  | 1.58, 0.00, 0.51, 0.18 |
| TextBox | Order_Size_Spec_W_Prune |  | Order_Size_Spec_W_Prune |  |  | 2.24, 0.00, 1.65, 0.18 |
| TextBox | ORDER_CN |  | Order_ID |  |  | 0.00, 0.00, 0.44, 0.18 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 0.48, 0.00, 0.51, 0.18 |
| TextBox | SERVICES_STRING |  | SERVICES_STRING |  |  | 3.89, 0.00, 1.77, 0.18 |
| TextBox | Status |  | Status |  |  | 6.93, 0.00, 0.98, 0.18 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 5.67, 0.00, 0.24, 0.18 |
| TextBox | All_Overrun |  | All_Overrun |  |  | 2.11, 0.00, 0.10, 0.18 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 1.02, 0.00, 0.54, 0.18 |
| TextBox | DESIRED_DATE |  | DESIRED_DATE |  |  | 6.08, 0.00, 0.65, 0.18 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line130 |  |  |  |  | 0.00, 0.01, 7.91, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.01, 0.19, 3.42, 0.19 |
| Line | Line113 |  |  |  |  | 0.00, 0.01, 7.91, 0.00 |
