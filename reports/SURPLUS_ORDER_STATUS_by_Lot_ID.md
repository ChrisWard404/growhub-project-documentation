# Report: SURPLUS_ORDER_STATUS_by_Lot_ID

**Caption:** SURPLUS_ORDER_STATUS  
**Record source:**

```sql
SURPLUS_ORDER_STATUS Query
```

**Grouping/sorting:** `ID`, `ASSOCIATE_NAME`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_Label | Lot ID |  |  |  | 0.03, 0.94, 0.47, 0.20 |
| Label | SOURCE_CODE_Label | Order ID |  |  |  | 0.66, 0.94, 0.76, 0.20 |
| Label | ORDER_AMT_Label | Order Amt |  |  |  | 4.29, 0.94, 0.96, 0.18 |
| Label | PACK_AMT_Label | Pack Amt |  |  |  | 6.46, 0.94, 0.79, 0.18 |
| Line | Line19 |  |  |  |  | 0.00, 1.15, 7.38, 0.00 |
| Label | Label21 | Pack Date |  |  |  | 5.38, 0.94, 0.96, 0.18 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.61, 0.16, 2.81, 0.19 |
| Label | Label33 | Surplus Order Status by Agreement Lot ID |  |  |  | 2.46, 0.58, 3.11, 0.21 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.40, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.40, 0.00, 3.24, 0.16 |
| Label | Label23 | Associate |  |  |  | 1.75, 0.94, 1.16, 0.21 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 0.04, 0.04, 0.54, 0.21 |
| TextBox | SOURCE_CODE |  | SOURCE_CODE |  |  | 0.67, 0.04, 2.71, 0.21 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line17 |  |  |  |  | 0.00, 0.00, 7.38, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ORDER_AMT |  | ORDER |  |  | 4.46, 0.00, 0.79, 0.21 |
| TextBox | PACK_AMT |  | PACK_AMT |  |  | 6.46, 0.00, 0.79, 0.21 |
| TextBox | DATE_PACK |  | DATE_PACK |  |  | 5.38, 0.00, 0.00, 0.21 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 1.43, 0.00, 0.67, 0.21 |
| TextBox | ASSOCIATE_NAME |  | ASSOCIATE_NAME |  |  | 2.09, 0.00, 2.33, 0.21 |
| TextBox | Order_ID |  | Order_ID |  |  | 0.75, 0.00, 0.50, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text15 |  | =Now() |  |  | 0.04, 0.08, 3.50, 0.20 |
| TextBox | Text16 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.88, 0.08, 3.50, 0.20 |
| Line | Line22 |  |  |  |  | 0.00, 0.00, 7.38, 0.00 |
