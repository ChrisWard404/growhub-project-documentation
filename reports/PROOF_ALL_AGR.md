# Report: PROOF_ALL_AGR

**Caption:** PROOF_ALL_AGR subrep  
**Record source:**

```sql
**proof_all_agr
```

**Grouping/sorting:** `AGR_LOT_CN`, `CLIENT_ASSOCIATE`  
**Embedded in:** `Report:PROOF_ALL`, `Report:PROOF_ALL_From_Billing_Form`, `Report:PROOF_ALL_From_Billing_Form_Product`, `Report:PROOF_ALL_From_Billing_Form_by_Species_Product`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | AGR_LOT_CN |  | AGR_LOT_CN |  |  | 1.12, 0.00, 0.46, 0.17 |
| TextBox | AMOUNT_REQUESTED |  | AMOUNT_REQUESTED |  |  | 0.75, 0.00, 0.45, 0.17 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 0.02, 0.00, 0.71, 0.17 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text13 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 0.75, 0.00, 0.45, 0.17 |
| Line | Line15 |  |  |  |  | 0.74, 0.00, 0.46, 0.00 |
