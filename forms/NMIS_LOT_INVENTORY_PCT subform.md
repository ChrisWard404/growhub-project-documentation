# Form: NMIS_LOT_INVENTORY_PCT subform

**Caption:** NMIS_LOT_INVENTORY_PCT subform  
**Record source:**

```sql
NMIS_LOT_INVENTORY_PCT
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | AMOUNT_REQUESTED |  | AMOUNT_REQUESTED |  |  | 0.58, 0.11, 0.62, 0.20 |
| TextBox | CLIENT_PCT_INV |  | CLIENT_PCT_INV |  |  | 1.96, 0.11, 0.62, 0.20 |
| TextBox | CLIENT_PCT_GROSS |  | CLIENT_PCT_GROSS |  |  | 3.38, 0.11, 0.62, 0.20 |
| Label | AMOUNT_REQUESTED_Label | Client Req. |  |  |  | 0.08, 0.04, 0.46, 0.31 |
| Label | CLIENT_PCT_INV_Label | Client Net |  |  |  | 1.46, 0.04, 0.46, 0.31 |
| Label | CLIENT_PCT_GROSS_Label | Client Gross |  |  |  | 2.88, 0.04, 0.46, 0.31 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NMIS_AGREEMENT_LOTS.CN |  | NMIS_AGREEMENT_LOTS.CN |  |  | 0.04, 0.04, 0.96, 0.20 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 1.21, 0.04, 0.54, 0.00 |
