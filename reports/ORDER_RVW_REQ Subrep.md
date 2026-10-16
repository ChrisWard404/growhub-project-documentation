# Report: ORDER_RVW_REQ Subrep

**Caption:** ORDER_REVIEW_REQ Subrep  
**Record source:**

```sql
**order_review_req
```

**Grouping/sorting:** `CLIENT_ASSOCIATE`  
**Subforms/subreports:** `Report.ORDER_RVW_CINV Subrep`  
**Embedded in:** `Report:ORDER_REVIEW`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CLIENT_ASSOCIATE_Label | Client |  |  |  | 0.04, 0.00, 0.50, 0.17 |
| Label | AMOUNT_REQUESTED_Label | Req (M) |  |  |  | 0.67, 0.00, 0.67, 0.17 |
| Line | Line9 |  |  |  |  | 0.04, 0.17, 2.08, 0.00 |
| Label | PCT_INV_Label | Net Inv. |  |  |  | 1.38, 0.00, 0.71, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | AMOUNT_REQUESTED |  | AMOUNT_REQUESTED |  |  | 0.67, 0.00, 0.67, 0.17 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 0.04, 0.00, 0.58, 0.17 |
| Subform | NMIS_ORDER_RVW_CINV Subrep |  | Report.ORDER_RVW_CINV Subrep (master: AGR_LOT_CN;CLIENT_ASSOCIATE → child: AGR_LOT_CN;CLIENT_ASSOCIATE) |  |  | 1.38, 0.00, 0.62, 0.16 |
| TextBox | AGR_LOT_CN |  | AGR_LOT_CN |  |  | 2.04, 0.00, 0.47, 0.00 |
