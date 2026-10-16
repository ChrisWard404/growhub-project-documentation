# Report: PACK_PROOF_O subrep

**Caption:** PACK_PROOF_O Query  
**Record source:**

```sql
**PACK_PROOF_O
```

**Grouping/sorting:** `CLIENT_ASSOCIATE`, `ORDER_ID`, `ACTIVITY_CODE`  
**Subforms/subreports:** `Report.PACK_PROOF_A subrep`  
**Embedded in:** `Report:PACK_PROOF`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 0.00, 0.00, 0.58, 0.00 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 0.58, 0.00, 0.50, 0.00 |
| TextBox | ORDER_AMT |  | ORDER_AMT |  |  | 1.05, 0.00, 0.50, 0.00 |
| TextBox | ORDER_ID |  | ORDER_ID |  |  | 1.70, 0.00, 0.49, 0.00 |
| TextBox | CN |  | CN |  |  | 3.00, 0.00, 0.50, 0.00 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 3.50, 0.00, 0.50, 0.00 |
| Subform | PACK_PROOF_A subrep |  | Report.PACK_PROOF_A subrep (master: CN;ACTIVITY_DATE;ID_Activity_CN → child: ORDER_CN;ACTIVITY_DATE;ID_Activity_CN) |  |  | 3.75, 0.00, 3.77, 0.17 |
| TextBox | Text21 |  | SERVICES_STRING |  |  | 2.17, 0.00, 1.58, 0.00 |
| TextBox | Text22 |  | ACTIVITY_DATE |  |  | 2.38, 0.00, 0.33, 0.00 |
| TextBox | All |  | All |  |  | 1.55, 0.00, 0.14, 0.15 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line12 |  |  |  |  | 0.00, 0.02, 7.50, 0.00 |
