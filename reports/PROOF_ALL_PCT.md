# Report: PROOF_ALL_PCT

**Grouping/sorting:** `AGR_LOT_CN`  
**Embedded in:** `Report:PROOF_ALL`, `Report:PROOF_ALL_From_Billing_Form`, `Report:PROOF_ALL_From_Billing_Form_Product`, `Report:PROOF_ALL_From_Billing_Form_by_Species_Product`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | AGR_LOT_CN |  | AGR_LOT_CN |  |  | 0.71, 0.00, 0.40, 0.00 |
| TextBox | PCTR |  | PK_C |  |  | 0.00, 0.00, 0.53, 0.19 |
| TextBox | USE |  | USE |  |  | 0.50, 0.00, 0.21, 0.18 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text9 |  | =Sum([PK_C]) |  |  | 0.00, 0.02, 0.51, 0.00 |
| Line | Line10 |  |  |  |  | 0.00, 0.00, 0.58, 0.00 |
