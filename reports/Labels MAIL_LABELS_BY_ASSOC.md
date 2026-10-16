# Report: Labels MAIL_LABELS_BY_ASSOC

**Record source:**

```sql
MAIL_LABELS_BY_ASSOC Query
```

**Order by:** `NMIS_ASSOCIATES.ASSOCIATE`  
**Grouping/sorting:** `ASSOCIATE_NAME_UPPER`  
**Opened from (VBA):** `Form_Reports_Menu_Maintenance Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text2 |  | = Trim( [ASSOCIATE]) |  |  | 0.00, 0.17, 2.21, 0.00 |
| TextBox | Text3 |  | =Trim([ASSOCIATE_NAME_UPPER]) |  |  | 0.00, 0.33, 2.21, 0.00 |
| TextBox | Text4 |  | =Trim([ADDRESS]) |  |  | 0.00, 0.50, 2.21, 0.00 |
| TextBox | Text5 |  | =Trim([UCITY] & ", " & [STATE]) |  |  | 0.00, 0.67, 2.21, 0.00 |
| TextBox | Text6 |  | =Trim([ZIPCODE]) |  |  | 1.05, 0.83, 0.65, 0.00 |
