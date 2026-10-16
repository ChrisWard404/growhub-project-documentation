# Report: Labels MAIL_LABELS_BY_GROUP

**Record source:**

```sql
MAIL_LABELS_BY_GROUP Query
```

**Grouping/sorting:** `GROUP_NAME`, `ASSOCIATE_NAME_UPPER`  
**Opened from (VBA):** `Form_Reports_Menu_Maintenance Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | GROUP_NAME |  | GROUP_NAME |  |  | 0.10, 0.00, 2.10, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text2 |  | =Trim([ASSOCIATE_NAME_UPPER]) |  |  | 0.10, 0.17, 2.14, 0.00 |
| TextBox | Text3 |  | =Trim([DEPT]) |  |  | 0.10, 0.33, 2.14, 0.00 |
| TextBox | Text4 |  | = Trim( [ADDRESS]) |  |  | 0.10, 0.50, 2.14, 0.00 |
| TextBox | Text5 |  | =Trim([CITY1] & ",  " & [STATE] & "     " & [ZIPCODE]) |  |  | 0.10, 0.67, 2.14, 0.00 |
