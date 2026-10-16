# Form: NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_Max_Info_Subform

**Caption:** NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform  
**Record source:**

```sql
SELECT NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.CONTRACT_NO, Max(Val(NZ([ESTIMATE_NO],0))) AS Max_Est, Max(NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.END_DATE) AS MaxOfEND_DATE FROM NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE GROUP BY NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.CONTRACT_NO;
```

**Backend tables referenced:** `NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE`  
**Embedded in:** `Form:Contract_Payment_Estimate_Invoice_Main`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ESTIMATE_NO |  | Max_Est |  |  | 0.12, 0.04, 0.58, 0.19 |
| TextBox | Max_Date |  | MaxOfEND_DATE |  |  | 0.92, 0.04, 0.58, 0.19 |
