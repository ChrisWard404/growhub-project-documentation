# Report: LOTS_WO_PACK_AMOUNTS

**Caption:** LOTS_WO_PACK_AMOUNTS  
**Record source:**

```sql
LOTS_WO_PACK_AMOUNTS
```

**Grouping/sorting:** `Cost_Center`, `PRODUCT_CLASS`, `LOT_ID`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | PRODUCT_CLASS_Label | Product |  |  |  | 0.04, 0.83, 1.00, 0.17 |
| Label | ID_Label | ID |  |  |  | 1.08, 0.83, 1.21, 0.16 |
| Label | CLIENT_ASSOCIATE_Label | Client |  |  |  | 2.35, 0.83, 0.96, 0.17 |
| Label | PACK_ID_Label | Order ID |  |  |  | 3.31, 0.83, 1.12, 0.17 |
| Label | ACTIVITY_CODE_Label | Order Code |  |  |  | 4.48, 0.83, 0.75, 0.17 |
| Label | ORDER_AMT_Label | Order Amount |  |  |  | 5.31, 0.83, 1.12, 0.17 |
| Line | Line17 |  |  |  |  | 0.06, 1.04, 7.10, 0.00 |
| TextBox | NURSERY |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.42, 0.38, 2.56, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.46, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.33, 0.17, 2.78, 0.20 |
| Label | Label21 | Orders Without Pack Amounts |  |  |  | 2.32, 0.58, 2.80, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_CLASS |  | PRODUCT_CLASS |  |  | 0.00, 0.00, 0.00, 0.00 |
| TextBox | ID |  | LOT_ID |  |  | 1.04, 0.00, 1.21, 0.16 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 2.31, 0.00, 0.96, 0.00 |
| TextBox | PACK_ID |  | PACK_ID |  |  | 3.27, 0.00, 1.12, 0.00 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 4.44, 0.00, 0.75, 0.00 |
| TextBox | ORDER_AMT |  | ORDER_AMT |  |  | 5.27, 0.00, 1.12, 0.00 |
| TextBox | CandN_NOTES |  | CandN_NOTES |  |  | 2.33, 0.17, 4.92, 0.01 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text13 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.18 |
| TextBox | Text14 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.71, 0.17, 3.50, 0.18 |
