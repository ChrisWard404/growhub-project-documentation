# Report: ORDERS_NURSERY

**Caption:** ORDER_CONFIRM  
**Record source:**

```sql
ORDERS Query
```

**Grouping/sorting:** `CLIENT_ASSOCIATE`, `CATEGORY_CODE`, `PRODUCT_CLASS`, `ID`, `ACTIVITY_CODE`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label66 | LIST OF ORDERS - Fiscal Year: |  |  |  | 2.83, 0.58, 2.05, 0.18 |
| TextBox | Text83 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.00, 0.38, 2.00, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.75, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.62, 0.17, 2.78, 0.20 |
| TextBox | CLIENT_ASSOCIATE | Client: | CLIENT_ASSOCIATE |  |  | 0.83, 0.88, 0.58, 0.00 |
| TextBox | ASSOCIATE_NAME |  | ASSOCIATE_NAME |  |  | 1.50, 0.88, 2.71, 0.00 |
| Rectangle | Box69 |  |  |  |  | 0.25, 0.83, 4.00, 0.25 |
| Label | Label95 | Order (M) |  |  |  | 5.08, 1.01, 0.33, 0.29 |
| Label | Label98 | Order Code |  |  |  | 4.38, 1.01, 0.33, 0.29 |
| Label | Label99 | Overrun Amt (M) |  |  |  | 5.55, 1.01, 0.43, 0.29 |
| Label | Label100 | Overrun All |  |  |  | 6.00, 1.01, 0.43, 0.29 |
| Label | Label101 | Grading Specifications |  |  |  | 6.53, 1.02, 0.78, 0.28 |
| Label | Label107 | Lot ID |  |  |  | 0.67, 1.12, 0.58, 0.18 |
| Label | Label108 | Source |  |  |  | 1.50, 1.12, 0.39, 0.15 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 4.88, 0.58, 0.67, 0.18 |
| Line | Line90 |  |  |  |  | 0.50, 1.29, 7.00, 0.00 |
| TextBox | Text50 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.88, 0.00, 2.00, 0.18 |
| TextBox | Text49 |  | =Now() |  |  | 5.88, 0.21, 2.00, 0.18 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CLIENT_NOTE |  | CLIENT_NOTE |  |  | 1.50, 0.17, 2.79, 0.00 |
| TextBox | NURSERY_NOTE |  | NURSERY_NOTE |  |  | 4.67, 0.17, 2.83, 0.00 |
| Label | CLIENT_NOTE_Label | CN: |  |  |  | 1.25, 0.17, 0.23, 0.16 |
| Label | NURSERY_NOTE_Label | NN: |  |  |  | 4.42, 0.17, 0.23, 0.16 |
| TextBox | ORDERS_CN |  | CN |  |  | 3.21, 0.00, 0.88, 0.12 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 4.34, 0.00, 0.53, 0.00 |
| TextBox | ORDER_AMT |  | ORDER_AMT |  |  | 4.88, 0.00, 0.58, 0.00 |
| TextBox | OVERRUN_AMT |  | OVERRUN_AMT |  |  | 5.48, 0.00, 0.50, 0.00 |
| TextBox | ID |  | ID |  |  | 0.62, 0.00, 0.62, 0.00 |
| TextBox | OVERRUN_ALL |  | ALL |  |  | 6.13, 0.00, 0.28, 0.00 |
| TextBox | SOURCE_CODE |  | SOURCE_CODE |  |  | 1.21, 0.00, 2.92, 0.00 |
| TextBox | SIZE |  | SIZE |  |  | 6.54, 0.00, 0.96, 0.00 |
| TextBox | Text97 |  | ORD_ID |  |  | 0.79, 0.17, 0.34, 0.00 |
| Line | Line107 |  |  |  |  | 0.50, 0.38, 7.00, 0.00 |
