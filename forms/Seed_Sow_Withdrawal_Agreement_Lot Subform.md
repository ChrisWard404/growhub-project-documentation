# Form: Seed_Sow_Withdrawal_Agreement_Lot Subform

**Caption:** NMIS_ID_ACTIVITIES subform  
**Record source:**

```sql
SELECT NMIS_ID_ACTIVITIES.AGREEMENT_LOT_CN FROM NMIS_ID_ACTIVITIES WHERE (((NMIS_ID_ACTIVITIES.CN)<>[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].[Form]![CN])) GROUP BY NMIS_ID_ACTIVITIES.AGREEMENT_LOT_CN;
```

**Backend tables referenced:** `NMIS_ID_ACTIVITIES`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 0.00, 0.00, 1.29, 0.19 |
| TextBox | CN |  | CN |  |  | 1.29, 0.00, 0.00, 0.00 |
