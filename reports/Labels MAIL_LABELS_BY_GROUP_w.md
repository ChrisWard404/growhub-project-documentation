# Report: Labels MAIL_LABELS_BY_GROUP_w

**Record source:**

```sql
MAIL_LABELS_BY_GROUP Query
```

**Grouping/sorting:** `GROUP_NAME`, `ASSOCIATE_NAME_UPPER`  
**Opened from (VBA):** `Form_Reports_Menu_Maintenance Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | GROUP_NAME |  | GROUP_NAME |  |  | 0.00, 0.00, 2.30, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text2 |  | =Trim([ASSOCIATE_NAME_UPPER]) |  |  | 0.00, 0.08, 2.30, 0.00 |
| TextBox | Text3 |  | =Trim([DEPT]) |  |  | 0.00, 0.25, 2.30, 0.00 |
| TextBox | Text4 |  | =Trim([ADDRESS]) |  |  | 0.00, 0.42, 2.30, 0.00 |
| TextBox | Text5 |  | =Trim([CITY1] & ", " & [STATE] & "  " & [ZIPCODE]) |  |  | 0.00, 0.58, 2.30, 0.00 |
| TextBox | Text6 |  | =Trim("Associate # " & [ASSOCIATE]) |  |  | 0.00, 0.75, 2.29, 0.00 |
