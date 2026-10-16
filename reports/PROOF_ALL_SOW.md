# Report: PROOF_ALL_SOW

**Grouping/sorting:** `AGR_LOT_CN`  
**Embedded in:** `Report:PROOF_ALL`, `Report:PROOF_ALL_From_Billing_Form`, `Report:PROOF_ALL_From_Billing_Form_Product`, `Report:PROOF_ALL_From_Billing_Form_by_Species_Product`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | AGR_LOT_CN |  | AGR_LOT_CN |  |  | 0.42, 0.00, 0.40, 0.00 |
| TextBox | SOWN |  | SOWN |  |  | 0.00, 0.00, 0.40, 0.19 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text9 |  | =Sum([SOWN]) |  |  | 0.00, 0.01, 0.40, 0.00 |
| Line | Line10 |  |  |  |  | 0.00, 0.00, 0.42, 0.00 |
