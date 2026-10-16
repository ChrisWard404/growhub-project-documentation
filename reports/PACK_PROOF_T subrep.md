# Report: PACK_PROOF_T subrep

**Grouping/sorting:** `UNIT_CODE`, `NUMBER_OF_ACTIVITY_UNITS`  
**Embedded in:** `Report:PACK_PROOF_A subrep`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NUMBER_OF_ACTIVITY_UNITS |  | NUMBER_OF_ACTIVITY_UNITS |  |  | 0.26, 0.00, 0.58, 0.00 |
| TextBox | AMT_PER_UNIT |  | AMT_PER_UNIT |  |  | 1.91, 0.00, 0.61, 0.00 |
| TextBox | AMT_PER_UNIT_INV_GROSS |  | AMT_PER_UNIT_INV_GROSS |  |  | 1.27, 0.00, 0.64, 0.00 |
| TextBox | ID_ACTIVITY_CN |  | ID_ACTIVITY_CN |  |  | 2.79, 0.00, 0.50, 0.00 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 0.84, 0.00, 0.42, 0.00 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 0.00, 0.00, 0.25, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text20 |  | =Round(Sum(IIf([NUMBER_OF_ACTIVITY_UNITS]>0,[NUMBER_OF_ACTIVITY_UNITS],0)*[AMT_PER_UNIT]),3)/1000 |  |  | 1.72, 0.00, 0.54, 0.00 |
| Label | Label21 | Processed (M) |  |  |  | 0.03, 0.00, 0.91, 0.18 |
| TextBox | Text22 |  | =IIf(Abs(Round(Sum(IIf([NUMBER_OF_ACTIVITY_UNITS]<0,[NUMBER_OF_ACTIVITY_UNITS],0)*[AMT_PER_UNIT_INV_GROSS]),3)/1000)>0,Abs(Round(Sum(IIf([NUMBER_OF_ACTIVITY_UNITS]<0,[NUMBER_OF_ACTIVITY_UNITS],0)*[AMT_PER_UNIT_INV_GROSS]),3)/1000),Round(Sum(IIf([NUMBER_OF_ACTIVITY_UNITS]>0,[NUMBER_OF_ACTIVITY_UNITS],0)*[AMT_PER_UNIT]),3)/1000) |  |  | 0.97, 0.00, 0.54, 0.00 |
| Label | Label23 | Gr |  |  |  | 1.51, 0.00, 0.20, 0.17 |
| Label | Label24 | Net |  |  |  | 2.28, 0.00, 0.25, 0.17 |
