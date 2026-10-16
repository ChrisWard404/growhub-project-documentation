# Report: TOLIFT_ORDER subrep

**Caption:** NMIS_TOLIFT_ORDER subrep  
**Record source:**

```sql
**TOLIFT_ORDER_TABLE
```

**Grouping/sorting:** `CLIENT_ASSOCIATE`, `ACTIVITY_CODE`  
**Subforms/subreports:** `Report.TOLIFT_CNOTE subrep`, `Report.TOLIFT_NNOTE subrep`  
**Embedded in:** `Report:TOLIFT`, `Report:TOLIFT_Condensed_By_Major_Client_W_Detail`, `Report:TOLIFT_HOLDOVER`, `Report:TOLIFT_Remaining_w_notes`, `Report:TOLIFT_by_age_class_species`, `Report:TOLIFT_by_age_class_species_old`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label27 | Client |  |  |  | 0.04, 0.00, 0.58, 0.17 |
| Label | Label28 | Order Amt |  |  |  | 2.65, 0.00, 0.72, 0.17 |
| Label | Label29 | O'run |  |  |  | 3.39, 0.00, 0.50, 0.17 |
| Label | Label30 | All |  |  |  | 3.91, 0.00, 0.25, 0.17 |
| Label | Label31 | Pack Amt |  |  |  | 4.16, 0.00, 0.65, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 0.04, 0.00, 0.68, 0.00 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 2.23, 0.00, 0.58, 0.00 |
| TextBox | ORDER_AMT |  | ORDER_AMT |  |  | 2.85, 0.00, 0.50, 0.00 |
| TextBox | OVERRUN_AMT |  | OVERRUN_AMT |  |  | 3.39, 0.00, 0.50, 0.00 |
| CheckBox | OVERRUN_ALL |  | OVERRUN_ALL |  |  | 3.99, 0.04, 0.00, 0.14 |
| TextBox | PACK |  | PACK |  |  | 4.20, 0.00, 0.56, 0.00 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 4.97, 0.00, 0.67, 0.00 |
| TextBox | CN |  | CN |  |  | 5.23, 0.00, 0.54, 0.00 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 5.81, 0.00, 0.54, 0.00 |
| Subform | TOLIFT_CNOTE SUBREP |  | Report.TOLIFT_CNOTE subrep (master: CN → child: OC_CN) |  |  | 0.33, 0.15, 5.66, 0.00 |
| Subform | NMIS_TOLIFT_NNOTE subrep |  | Report.TOLIFT_NNOTE subrep (master: CN → child: ON_CN) |  |  | 0.21, 0.16, 5.78, 0.00 |
| TextBox | ORDER_SIZE_SPEC_STRING |  | Order_Size_Spec_W_Prune2 |  |  | 0.72, 0.00, 1.30, 0.00 |
