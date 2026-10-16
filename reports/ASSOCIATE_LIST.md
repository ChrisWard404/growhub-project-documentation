# Report: ASSOCIATE_LIST

**Caption:** MAIL_LABELS_BY_GROUP Query  
**Record source:**

```sql
ASSOCIATE_LIST Query
```

**Grouping/sorting:** `GROUP_NAME`, `ASSOCIATE_NAME_UPPER`  
**Opened from (VBA):** `Form_Reports_Menu_Maintenance Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Label10 |  | GROUP_NAME |  |  | 0.00, 0.04, 7.50, 0.26 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ASSOCIATE_NAME_UPPER |  | ASSOCIATE_NAME_UPPER |  |  | 0.06, 0.04, 3.96, 0.00 |
| TextBox | ASSOCIATE |  | ASSOCIATE |  |  | 4.21, 0.04, 0.79, 0.00 |
| TextBox | ADDRESS |  | MAIL_ADDR |  |  | 0.54, 0.38, 2.46, 0.00 |
| TextBox | CITY1 |  | CITY |  |  | 5.46, 0.38, 1.46, 0.00 |
| TextBox | STATE |  | STATE |  |  | 6.92, 0.38, 0.46, 0.00 |
| Rectangle | Box15 |  |  |  |  | 0.02, 0.00, 7.47, 0.58 |
| TextBox | Text17 |  | STREET_ADDR |  |  | 3.00, 0.38, 2.46, 0.00 |
| TextBox | Text18 |  | DEPT |  |  | 0.54, 0.21, 2.46, 0.00 |
| TextBox | Text19 |  | EMAIL_ADDR |  |  | 3.00, 0.21, 3.42, 0.00 |
| CheckBox | PRINT_LABEL |  | PRINT_LABEL |  |  | 7.00, 0.21, 0.00, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text11 |  | =Now() |  |  | 0.04, 0.04, 3.50, 0.18 |
| TextBox | Text12 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.00, 0.04, 3.50, 0.18 |
