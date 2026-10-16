# Report: MAIL_LABELS_BY_GROUP_EMAIL Query

**Caption:** MAIL_LABELS_BY_GROUP_EMAIL Query  
**Record source:**

```sql
MAIL_LABELS_BY_GROUP_EMAIL Query
```


## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label10 | MAIL_LABELS_BY_GROUP_EMAIL Query |  |  |  | 0.04, 0.04, 6.70, 0.42 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ASSOCIATE_NAME_UPPER | Associate Name Upper | ASSOCIATE_NAME_UPPER |  |  | 1.45, 0.04, 2.66, 0.21 |
| TextBox | DEPT | DEPT | DEPT |  |  | 1.45, 0.33, 1.78, 0.21 |
| TextBox | MAIL_ADDR | Mail Address | MAIL_ADDR |  |  | 1.45, 0.62, 1.90, 0.21 |
| TextBox | STREET_ADDR | Street Address | STREET_ADDR |  |  | 1.45, 0.92, 1.90, 0.21 |
| TextBox | EMAIL_ADDR | E-Mail Address | EMAIL_ADDR |  |  | 1.45, 1.21, 1.78, 0.21 |
| Line | Line13 |  |  |  |  | 0.04, 0.04, 4.07, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text11 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.18 |
| TextBox | Text12 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.96, 0.17, 3.50, 0.18 |
