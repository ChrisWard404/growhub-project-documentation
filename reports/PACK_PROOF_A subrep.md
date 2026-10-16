# Report: PACK_PROOF_A subrep

**Grouping/sorting:** `ORDER_CN`  
**Subforms/subreports:** `Report.PACK_PROOF_T subrep`  
**Embedded in:** `Report:PACK_PROOF_O subrep`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ORDER_CN |  | ORDER_CN |  |  | 0.42, 0.00, 0.33, 0.00 |
| TextBox | ACTIVITY_HOURS |  | ACTIVITY_HOURS |  |  | 0.78, 0.00, 0.44, 0.00 |
| TextBox | ID_ACTIVITY_CN |  | ID_ACTIVITY_CN |  |  | 1.50, 0.00, 0.38, 0.00 |
| Subform | PACK_PROOF_T subrep |  | Report.PACK_PROOF_T subrep (master: ID_ACTIVITY_CN;ACTIVITY_DATE → child: ID_ACTIVITY_CN;ACTIVITY_DATE) |  |  | 1.28, 0.00, 2.52, 0.17 |
| Line | Line21 |  |  |  |  | 0.00, 0.17, 3.75, 0.00 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 0.54, 0.00, 0.25, 0.00 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 0.00, 0.00, 0.53, 0.00 |
