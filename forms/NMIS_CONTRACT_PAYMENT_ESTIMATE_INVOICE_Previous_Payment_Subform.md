# Form: NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_Previous_Payment_Subform

**Caption:** NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform  
**Record source:**

```sql
SELECT NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.CONTRACT_NO, Sum(NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Total_Earned_to_Date) AS SumOfTotal_Earned_to_Date FROM NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL WHERE (((NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.ESTIMATE_NO)=[Forms]![Contract_Payment_Estimate_Invoice_Main].[Form]![ESTIMATE_NO])) GROUP BY NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.CONTRACT_NO;
```

**Backend tables referenced:** `NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL`  
**Embedded in:** `Form:Contract_Payment_Estimate_Invoice_Main`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Previous_Payments | Prev_Payments | SumOfTotal_Earned_to_Date |  |  | 1.29, 0.04, 0.58, 0.19 |
