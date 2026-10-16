# Report: ORDER_RVW_ORDRS Subrep

**Caption:** ORDER_REVIEW_ORDRS Subrep  
**Record source:**

```sql
ORDER_RVW_OR2 Query
```

**Grouping/sorting:** `CLIENT_ASSOCIATE`, `ACTIVITY_CODE`  
**Subforms/subreports:** `Report.ORDER_RVW_PAK Subrep`, `Report.ORDER_RVW_SHP Subrep`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | AG_LOT_CN |  | AG_LOT_CN |  |  | 0.25, 0.00, 0.62, 0.00 |
| Label | CLIENT_ASSOCIATE_Label | Client |  |  |  | 0.04, 0.00, 0.46, 0.17 |
| Label | ACTIVITY_CODE_Label | Code |  |  |  | 0.71, 0.00, 0.45, 0.17 |
| Label | ORDER_AMT_Label | Order(M) |  |  |  | 1.17, 0.00, 0.62, 0.17 |
| Line | Line13 |  |  |  |  | 0.04, 0.17, 3.30, 0.00 |
| Label | Label17 | Packed(M) |  |  |  | 1.83, 0.00, 0.71, 0.17 |
| Label | Label22 | Shipped(M) |  |  |  | 2.58, 0.00, 0.75, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 0.04, 0.00, 0.54, 0.17 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 0.71, 0.00, 0.50, 0.17 |
| TextBox | ORDER_AMT |  | ORDER_AMT |  |  | 1.17, 0.00, 0.62, 0.17 |
| Subform | ORDER_RVW_PAK Subrep |  | Report.ORDER_RVW_PAK Subrep (master: O_CN → child: O_CN) |  |  | 1.95, 0.00, 0.69, 0.15 |
| TextBox | O_CN |  | O_CN |  |  | 0.25, 0.00, 0.62, 0.00 |
| Subform | ORDER_RVW_SHP Subrep |  | Report.ORDER_RVW_SHP Subrep (master: O_CN → child: O_CN) |  |  | 2.70, 0.00, 0.74, 0.15 |
