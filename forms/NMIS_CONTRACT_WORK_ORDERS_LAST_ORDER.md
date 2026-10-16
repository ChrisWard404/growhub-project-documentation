# Form: NMIS_CONTRACT_WORK_ORDERS_LAST_ORDER

**Caption:** NMIS_CONTRACT_WORK_ORDERS_LAST_ORDER  
**Record source:**

```sql
SELECT NMIS_CONTRACT_WORK_ORDERS.CONTRACT_NO, NMIS_CONTRACT_WORK_ORDERS.FISCAL_YEAR, Max(NMIS_CONTRACT_WORK_ORDERS.ESTIMATE_NO) AS MaxOfESTIMATE_NO FROM NMIS_CONTRACT_WORK_ORDERS GROUP BY NMIS_CONTRACT_WORK_ORDERS.CONTRACT_NO, NMIS_CONTRACT_WORK_ORDERS.FISCAL_YEAR;
```

**Backend tables referenced:** `NMIS_CONTRACT_WORK_ORDERS`  
**Embedded in:** `Form:Contract_Work_Order`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CONTRACT_NO | CONTRACT_NO | CONTRACT_NO |  |  | 1.12, 0.08, 0.82, 0.19 |
| TextBox | FISCAL_YEAR | FISCAL_YEAR | FISCAL_YEAR |  |  | 1.12, 0.33, 0.82, 0.19 |
| TextBox | ESTIMATE_NO | ESTIMATE_NO | =[MaxOfESTIMATE_NO]+1 |  |  | 1.12, 0.58, 0.82, 0.19 |
