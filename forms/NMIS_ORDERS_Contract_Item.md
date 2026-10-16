# Form: NMIS_ORDERS_Contract_Item

**Caption:** NMIS_ORDERS_Contract_Item  
**Record source:**

```sql
NMIS_ORDERS
```

**Order by:** `NMIS_ORDERS.Index DESC`  
**Backend tables referenced:** `NMIS_ORDERS`  
**Embedded in:** `Form:NMIS_ID_ACTIVITY_FORM`, `Form:NMIS_ID_ACTIVITY_TRANSACTIONS_FORM`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CN_Label | CN |  |  |  | 0.04, 0.04, 0.79, 0.17 |
| Label | CONTRACT_ITEM_Label | Contract Item |  |  |  | 0.95, 0.04, 0.77, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CN |  | CN |  |  | 0.04, 0.04, 0.79, 0.00 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 0.95, 0.04, 0.77, 0.00 |
