# Form: NMIS_Product_ship Ticket_multiple_orders subform

**Caption:** NMIS_ORDERS subform  
**Record source:**

```sql
*NMIS_Product_ship Ticket_multiple_orders Table
```

**Embedded in:** `Form:NMIS_SHIPPING_TICKET subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CN |  | CN |  |  | 5.52, 0.01, 0.29, 0.19 |
| TextBox | NumOrders |  | NumOrders |  |  | 4.98, 0.01, 0.46, 0.19 |
| TextBox | Multiple_Orders |  | =IIf([NumOrders]>1,"Multiple Orders for Agreement Lot " & [id]) |  |  | 0.00, 0.00, 5.42, 0.19 |
