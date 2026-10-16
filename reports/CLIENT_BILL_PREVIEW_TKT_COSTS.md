# Report: CLIENT_BILL_PREVIEW_TKT_COSTS

**Caption:** NMIS_ASSOCIATES  
**Record source:**

```sql
CLIENT_BILL_PREVIEW_TKT_COSTS
```

**Grouping/sorting:** `ASSOCIATE_NAME`, `DESIRED_DATE`, `TKT_NO`  
**Embedded in:** `Report:CLIENT_BILL_PREVIEW_TICKETS`, `Report:CLIENT_BILL_PREVIEW_TICKETS2`  

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ASSOCIATE_NAME |  | ASSOCIATE_NAME |  |  | 0.93, 0.00, 3.00, 0.21 |
| Label | ASSOCIATE_NAME_Label | Delivered By: |  |  |  | 0.00, 0.00, 0.88, 0.21 |
| Label | TKT_NO_Label | Tkt #     |  |  |  | 0.93, 0.25, 0.51, 0.19 |
| Label | EXT_DOC_REF_Label | Doc. #           |  |  |  | 1.47, 0.25, 0.83, 0.19 |
| Label | CHARGE_PER_TICKET_Label |  Ticket Cost |  |  |  | 3.16, 0.25, 0.78, 0.19 |
| Label | Label16 |     Date     |  |  |  | 2.38, 0.25, 0.75, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | TKT_NO |  | TKT_NO |  |  | 0.93, 0.00, 0.50, 0.20 |
| TextBox | EXT_DOC_REF |  | EXT_DOC_REF |  |  | 1.47, 0.00, 0.88, 0.20 |
| TextBox | CHARGE_PER_TICKET |  | CHARGE_PER_TICKET |  |  | 3.19, 0.00, 0.75, 0.20 |
| TextBox | DELIVERED_TO_ASSOCIATE |  | DELIVERED_TO_ASSOCIATE |  |  | 3.98, 0.00, 0.79, 0.20 |
| TextBox | Text17 |  | DESIRED_DATE |  |  | 2.39, 0.00, 0.66, 0.20 |
