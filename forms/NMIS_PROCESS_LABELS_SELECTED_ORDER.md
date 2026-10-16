# Form: NMIS_PROCESS_LABELS_SELECTED_ORDER

**Caption:** NMIS_PROCESS_LABELS_SELECTED_ORDER  
**Record source:**

```sql
SELECT NMIS_ORDERS.CN, Left$([CN],Len([CN])-7) & " - " & [ASSOCIATE_NAME] AS ORDER_CLIENT FROM NMIS_ASSOCIATES INNER JOIN NMIS_ORDERS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_ORDERS.CLIENT_ASSOCIATE;
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_ORDERS`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ASSOCIATE_NAME | Selected: | ORDER_CLIENT |  |  | 0.92, 0.03, 5.25, 0.24 |
