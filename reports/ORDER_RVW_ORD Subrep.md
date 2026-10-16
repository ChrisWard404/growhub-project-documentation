# Report: ORDER_RVW_ORD Subrep

**Caption:** ORDER_RVW_ORD Subrep  
**Record source:**

```sql
**order_review_order
```

**Grouping/sorting:** `AGR_LOT_CN`  
**Subforms/subreports:** `Report.ORDER_RVW_LFT Subrep`, `Report.ORDER_RVW_PAK Subrep`, `Report.ORDER_RVW_SHP Subrep`  
**Embedded in:** `Report:ORDER_REVIEW`  

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | TOTAL_ORD |  | =Sum([order_amt]) |  |  | 1.04, 0.00, 0.71, 0.17 |
| Label | TOTAL_ORD_Label | Total Orders (M): |  |  |  | 0.00, 0.00, 1.08, 0.19 |
| TextBox | AGR_LOT_CN |  | AGR_LOT_CN |  |  | 2.00, 0.00, 0.50, 0.17 |
| Subform | ORDER_RVW_LFT Subrep |  | Report.ORDER_RVW_LFT Subrep (master: AGR_LOT_CN → child: AGR_LOT_CN) |  |  | 2.54, 0.00, 1.90, 0.20 |
| Label | CLIENT_ASSOCIATE_Label | Client |  |  |  | 0.04, 0.21, 0.46, 0.17 |
| Label | ACTIVITY_CODE_Label | Code |  |  |  | 0.71, 0.21, 0.45, 0.17 |
| Label | ORDER_AMT_Label | Order(M) |  |  |  | 1.17, 0.21, 0.62, 0.17 |
| Label | Label17 | Packed(M) |  |  |  | 1.83, 0.21, 0.71, 0.17 |
| Label | Label22 | Shipped(M) |  |  |  | 2.58, 0.21, 0.75, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 0.04, 0.00, 0.54, 0.17 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 0.71, 0.00, 0.50, 0.17 |
| TextBox | ORDER_AMT |  | ORDER_AMT |  |  | 1.17, 0.00, 0.62, 0.17 |
| Subform | ORDER_RVW_PAK Subrep |  | Report.ORDER_RVW_PAK Subrep (master: O_CN → child: O_CN) |  |  | 1.95, 0.00, 0.69, 0.15 |
| TextBox | O_CN |  | O_CN |  |  | 0.25, 0.00, 0.62, 0.00 |
| Subform | ORDER_RVW_SHP Subrep |  | Report.ORDER_RVW_SHP Subrep (master: O_CN → child: O_CN) |  |  | 2.70, 0.00, 0.74, 0.15 |
