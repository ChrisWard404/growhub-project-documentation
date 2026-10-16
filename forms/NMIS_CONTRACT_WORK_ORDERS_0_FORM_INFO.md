# Form: NMIS_CONTRACT_WORK_ORDERS_0_FORM_INFO

**Caption:** NMIS_CONTRACT_WORK_ORDERS_0_FORM_INFO  
**Record source:**

```sql
SELECT NMIS_CONTRACT_WORK_ORDERS.CONTRACT_NO, NMIS_CONTRACT_WORK_ORDERS.ESTIMATE_NO, NMIS_CONTRACT_WORK_ORDERS.FISCAL_YEAR, NMIS_CONTRACT_WORK_ORDERS.WORK_ORDERED, NMIS_CONTRACT_WORK_ORDERS.REFERENCE FROM NMIS_CONTRACT_WORK_ORDERS WHERE (((NMIS_CONTRACT_WORK_ORDERS.ESTIMATE_NO)=0));
```

**Backend tables referenced:** `NMIS_CONTRACT_WORK_ORDERS`  
**Embedded in:** `Form:Contract_Work_Order`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CONTRACT_NO |  | CONTRACT_NO |  |  | 1.12, 0.08, 0.82, 0.19 |
| TextBox | ESTIMATE_NO |  | ESTIMATE_NO |  |  | 1.12, 0.33, 0.82, 0.19 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 1.12, 0.58, 0.82, 0.19 |
| TextBox | WORK_ORDERED | WORK_ORDERED | WORK_ORDERED |  |  | 1.12, 0.00, 7.33, 0.75 |
| TextBox | REFERENCE | REFERENCE | REFERENCE |  |  | 1.17, 0.79, 7.38, 0.62 |
