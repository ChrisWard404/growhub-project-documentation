# Report: Ship_Ticket_Checklist

**Caption:** NMIS_ID_ACTIVITIES  
**Record source:**

```sql
Tickets_For_Shipping
```

**Grouping/sorting:** `TKT_SORT`, `Ticket No`, `ID`, `Order`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Ticket FY_Label | Ticket FY |  |  |  | 2.16, 0.87, 0.68, 0.19 |
| Label | Ticket No_Label | Ticket No |  |  |  | 0.56, 0.87, 0.66, 0.19 |
| Label | Ticket Type_Label | Ticket Type |  |  |  | 1.27, 0.87, 0.80, 0.19 |
| Label | Date_Label | Date |  |  |  | 2.97, 0.87, 0.40, 0.19 |
| Label | DELIVERED_TO_ASSOCIATE_Label | Delivered To |  |  |  | 3.55, 0.87, 0.90, 0.19 |
| Label | CHARGE_PER_TICKET_Label | Charge Per Ticket |  |  |  | 4.72, 0.87, 1.22, 0.19 |
| Label | GBL_PCT_Label | GBL % |  |  |  | 6.09, 0.87, 0.56, 0.19 |
| Label | ACTIVITY_CODE_Label | Activity Code |  |  |  | 6.84, 0.87, 0.88, 0.19 |
| Line | Line34 |  |  |  |  | 0.51, 0.82, 7.33, 0.00 |
| Line | Line35 |  |  |  |  | 0.51, 1.10, 7.33, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 3.05, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.83, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.83, 0.00, 3.24, 0.16 |
| Label | Label42 | Shipping Ticket Checklist |  |  |  | 3.62, 0.58, 1.74, 0.19 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Ticket FY |  | Ticket FY |  |  | 2.16, 0.00, 0.68, 0.20 |
| TextBox | Ticket No |  | Ticket No |  |  | 0.56, 0.00, 0.66, 0.20 |
| TextBox | Ticket Type |  | Ticket Type |  |  | 1.27, 0.00, 0.80, 0.20 |
| TextBox | Date |  | Date |  |  | 2.88, 0.00, 0.51, 0.20 |
| ComboBox | DELIVERED_TO_ASSOCIATE |  | DELIVERED_TO_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 3.48, 0.00, 1.12, 0.20 |
| TextBox | CHARGE_PER_TICKET |  | CHARGE_PER_TICKET |  |  | 4.72, 0.00, 1.22, 0.20 |
| TextBox | GBL_PCT |  | GBL_PCT |  |  | 6.09, 0.00, 0.56, 0.20 |
| TextBox | NOTE |  | NOTE |  |  | 0.72, 0.20, 7.08, 0.20 |
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT [NMIS_ACTIVITY_CODES].[ACTIVITY_CODE], [NMIS_ACTIVITY_CODES].[ACTIVITY_NAME] FROM NMIS_ACTIVITY_CODES;  |  | 6.93, 0.00, 0.67, 0.20 |
| Label | Units_Label | Units |  |  |  | 6.03, 0.41, 0.47, 0.19 |
| Label | AMT_PER_UNIT_Label | Amt/Unit |  |  |  | 6.59, 0.41, 0.61, 0.19 |
| Label | AMT(M)_Label | AMT(M) |  |  |  | 7.24, 0.41, 0.59, 0.19 |
| Label | CATEGORY_CODE_Label | Category |  |  |  | 5.08, 0.41, 0.67, 0.19 |
| Label | Order_Label | Order |  |  |  | 4.38, 0.41, 0.67, 0.19 |
| Label | ID_Label | ID |  |  |  | 3.75, 0.41, 0.58, 0.19 |
| Line | Line36 |  |  |  |  | 0.51, 0.62, 7.33, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Units |  | Units |  |  | 6.03, 0.01, 0.47, 0.19 |
| TextBox | AMT_PER_UNIT |  | AMT_PER_UNIT |  |  | 6.62, 0.01, 0.51, 0.19 |
| TextBox | AMT(M) |  | AMT(M) |  |  | 7.24, 0.01, 0.59, 0.19 |
| TextBox | ID |  | ID |  |  | 3.75, 0.00, 0.58, 0.20 |
| TextBox | Order |  | Order |  |  | 4.38, 0.00, 0.67, 0.20 |
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT [NMIS_CATEGORIES].[CATEGORY_CODE], [NMIS_CATEGORIES].[CATEGORY_DESC] FROM NMIS_CATEGORIES;  |  | 5.08, 0.00, 0.67, 0.20 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text37 |  | =Sum([Units]) |  |  | 5.88, 0.03, 0.63, 0.19 |
| TextBox | Text38 |  | AMT(M) |  |  | 7.12, 0.03, 0.71, 0.19 |
| Line | Line39 |  |  |  |  | 5.92, 0.02, 0.58, 0.00 |
| Line | Line40 |  |  |  |  | 7.13, 0.02, 0.70, 0.00 |
| Line | Line41 |  |  |  |  | 0.51, 0.24, 7.33, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text31 |  | =Now() |  |  | 0.55, 0.17, 3.50, 0.00 |
| TextBox | Text32 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.51, 0.17, 3.32, 0.00 |
