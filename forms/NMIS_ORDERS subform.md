# Form: NMIS_ORDERS subform

**Caption:** NMIS_ORDERS subform  
**Record source:**

```sql
SELECT NMIS_ORDERS.CN, Count(Agreement_Lots_Orders.CN) AS NumOrders FROM Agreement_Lots_Orders INNER JOIN NMIS_ORDERS ON Agreement_Lots_Orders.AGREEMENT_LOT_CN = NMIS_ORDERS.AGREEMENT_LOT_CN WHERE (((NMIS_ORDERS.FISCAL_YEAR)=2008)) GROUP BY NMIS_ORDERS.CN;
```

**Backend tables referenced:** `NMIS_ORDERS`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CN |  | CN |  |  | 5.52, 0.01, 0.29, 0.19 |
| TextBox | NumOrders |  | NumOrders |  |  | 4.98, 0.01, 0.46, 0.19 |
| TextBox | Multiple_Orders |  | =IIf([NumOrders]>1,"Multiple Orders for this Lot") |  |  | 0.00, 0.00, 5.42, 0.19 |
