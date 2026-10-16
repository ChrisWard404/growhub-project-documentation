# Report: SURPLUS_ORDER_STATUS

**Caption:** SURPLUS_ORDER_STATUS  
**Record source:**

```sql
SURPLUS_ORDER_STATUS Query
```

**Grouping/sorting:** `ASSOCIATE_NAME`, `ID`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CLIENT_ASSOCIATE_Label | Client |  |  |  | 0.49, 0.95, 0.67, 0.18 |
| Label | ID_Label | ID |  |  |  | 1.42, 0.95, 0.61, 0.18 |
| Label | SOURCE_CODE_Label | Source Code |  |  |  | 2.12, 0.95, 2.38, 0.18 |
| Label | ORDER_AMT_Label | Order Amt |  |  |  | 4.78, 0.95, 0.96, 0.18 |
| Label | PACK_AMT_Label | Pack Amt |  |  |  | 6.95, 0.95, 0.79, 0.18 |
| Line | Line19 |  |  |  |  | 0.49, 1.16, 7.38, 0.00 |
| Label | Label21 | Pack Date |  |  |  | 5.87, 0.95, 0.96, 0.18 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.66, 0.16, 3.25, 0.19 |
| Label | Label33 | Surplus Order Status by Associate |  |  |  | 2.89, 0.58, 2.78, 0.23 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.66, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 2.66, 0.00, 3.25, 0.16 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 0.49, 0.00, 0.67, 0.21 |
| TextBox | ASSOCIATE_NAME |  | ASSOCIATE_NAME |  |  | 1.16, 0.00, 2.33, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 1.13, 0.00, 0.91, 0.21 |
| TextBox | SOURCE_CODE |  | SOURCE_CODE |  |  | 2.12, 0.00, 2.71, 0.21 |
| TextBox | ORDER_AMT |  | ORDER |  |  | 4.95, 0.00, 0.79, 0.21 |
| TextBox | PACK_AMT |  | PACK_AMT |  |  | 6.95, 0.00, 0.79, 0.21 |
| TextBox | DATE_PACK |  | DATE_PACK |  |  | 5.87, 0.00, 0.00, 0.21 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line17 |  |  |  |  | 0.49, 0.02, 7.36, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text15 |  | =Now() |  |  | 0.53, 0.08, 3.50, 0.20 |
| TextBox | Text16 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.37, 0.08, 3.50, 0.20 |
