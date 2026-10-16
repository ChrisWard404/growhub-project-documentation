# Report: ORDER_FORM_SPECS Subrep

**Caption:** ORDER_FORM_SPECS Subrep  
**Record source:**

```sql
ORDER_FORM_SPECS Query
```

**Grouping/sorting:** `CN`  
**Subforms/subreports:** `Report.ORDER_FORM_MCODES Subrep`, `Report.ORDER_FORM_CNCTS Subrep`, `Report.ORDER_FORM_PACK subrep`  
**Embedded in:** `Report:ORDER_FORM`, `Report:ORDER_FORM_BY_LIFT_DATE`, `Report:ORDER_FORM_FROM_ORDERS`, `Report:ORDER_FORM_FROM_ORDER_INPUT_FORM_BU`, `Report:ORDER_FORM_FROM_ORDER_REVIEW_FORM`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 0.00, 0.42, 0.62, 0.00 |
| TextBox | SERVICES_STRING |  | SERVICES_STRING |  |  | 0.62, 0.42, 2.46, 0.00 |
| TextBox | ORDER_AMT |  | ORDER_AMT |  |  | 3.12, 0.42, 0.67, 0.00 |
| TextBox | OVERRUN_AMT |  | ORUN_AMT |  |  | 4.08, 0.42, 0.62, 0.00 |
| CheckBox | OVERRUN_ALL |  | OVERRUN_ALL |  |  | 3.92, 0.42, 0.17, 0.17 |
| TextBox | SPEC_MIN |  | SPEC_MIN |  |  | 4.79, 0.42, 0.38, 0.00 |
| TextBox | SPEC_MAX |  | SPEC_MAX |  |  | 5.25, 0.42, 0.38, 0.00 |
| TextBox | CALIPER_MIN |  | CALIPER_MIN |  |  | 5.75, 0.42, 0.38, 0.00 |
| TextBox | ROOT_PRUNE_TARGET |  | ROOT_PRUNE_TARGET |  |  | 6.21, 0.42, 0.50, 0.00 |
| TextBox | CLIENT_NOTE |  | CLIENT_NOTE |  |  | 0.75, 0.71, 2.91, 0.20 |
| TextBox | NURSERY_NOTE |  | NURSERY_NOTE |  |  | 4.46, 0.67, 3.37, 0.20 |
| Label | CLIENT_NOTE_Label | Client Note |  |  |  | 0.29, 0.71, 0.38, 0.33 |
| Label | NURSERY_NOTE_Label | Nursery Note |  |  |  | 3.88, 0.67, 0.50, 0.33 |
| TextBox | PACK_ID |  | PACK_ID |  |  | 7.35, 0.38, 0.55, 0.21 |
| Subform | NMIS_ORDER_FORM_MCODES Subrep |  | Report.ORDER_FORM_MCODES Subrep (master: CN → child: ORDER_CN) |  |  | 1.79, 1.00, 2.00, 0.16 |
| Label | Job_Codes_Label | Job Codes: |  |  |  | 1.00, 1.00, 0.75, 0.17 |
| Subform | NMIS_ORDER_FORM_CNCTS Subrep |  | Report.ORDER_FORM_CNCTS Subrep (master: CN → child: ORDERS_CN) |  |  | 1.00, 1.21, 5.50, 0.03 |
| Line | Line44 |  |  |  |  | 3.12, 0.58, 0.67, 0.00 |
| Line | Line45 |  |  |  |  | 4.08, 0.58, 0.62, 0.00 |
| Line | Line46 |  |  |  |  | 4.83, 0.58, 0.33, 0.00 |
| Line | Line47 |  |  |  |  | 5.28, 0.58, 0.33, 0.00 |
| Line | Line48 |  |  |  |  | 5.80, 0.58, 0.33, 0.00 |
| Line | Line49 |  |  |  |  | 6.25, 0.58, 0.47, 0.00 |
| Rectangle | Box50 |  |  |  |  | 0.04, 1.33, 6.50, 0.29 |
| Label | Pack_Header_Label | Date        Table    Size     # Containers  Trees/Cont    M's Packed    # Fld Contrs |  |  |  | 0.08, 1.38, 6.46, 0.18 |
| Line | Line60 |  |  |  |  | 0.83, 1.33, 0.00, 0.30 |
| Line | Line61 |  |  |  |  | 1.54, 1.33, 0.00, 0.30 |
| Line | Line63 |  |  |  |  | 2.17, 1.33, 0.00, 0.30 |
| Line | Line64 |  |  |  |  | 4.29, 1.33, 0.00, 0.30 |
| Line | Line65 |  |  |  |  | 5.38, 1.33, 0.00, 0.30 |
| Line | Line67 |  |  |  |  | 6.54, 1.33, 0.00, 0.30 |
| TextBox | CN |  | CN |  |  | 6.92, 0.96, 0.88, 0.00 |
| TextBox | ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 6.00, 0.96, 0.88, 0.00 |
| Subform | ORDER_FORM_PACK subrep |  | Report.ORDER_FORM_PACK subrep (master: CN → child: O_CN) |  |  | 0.08, 1.60, 6.22, 0.04 |
| Line | Line106 |  |  |  |  | 7.38, 0.58, 0.50, 0.00 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 6.79, 0.42, 0.50, 0.00 |
| Line | Line110 |  |  |  |  | 6.83, 0.58, 0.47, 0.00 |
| Label | ACTIVITY_CODE_Label | GRADING SPECIFICATIONS |  |  |  | 0.00, 0.08, 1.71, 0.17 |
| Label | ORDER_AMT_Label | Order Amt  (M) |  |  |  | 3.12, 0.04, 0.67, 0.31 |
| Label | OVERRUN_AMT_Label | Amt(M) |  |  |  | 4.25, 0.17, 0.46, 0.18 |
| Label | OVERRUN_ALL_Label |  All |  |  |  | 3.79, 0.17, 0.33, 0.17 |
| Label | SPEC_MIN_Label | Min |  |  |  | 4.79, 0.17, 0.42, 0.17 |
| Label | SPEC_MAX_Label |  Max |  |  |  | 5.25, 0.17, 0.38, 0.17 |
| Label | CALIPER_MIN_Label | Cal. (mm) |  |  |  | 5.75, 0.00, 0.38, 0.33 |
| Label | ROOT_PRUNE_TARGET_Label | Root Prune Target |  |  |  | 6.29, 0.00, 0.42, 0.33 |
| Label | Height_Label | Height (in) |  |  |  | 4.89, 0.00, 0.64, 0.18 |
| Label | Overrun_Label | Overrun |  |  |  | 3.79, 0.00, 0.88, 0.17 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 2.00, 0.08, 0.79, 0.00 |
| Label | PACK_ID_Label | Pack ID |  |  |  | 7.38, 0.00, 0.42, 0.33 |
| Label | CONTRACT_ITEM_Label | Contr Item |  |  |  | 6.79, 0.00, 0.42, 0.33 |
| Line | Line111 |  |  |  |  | 3.33, 1.33, 0.00, 0.30 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box77 |  |  |  |  | 0.04, 0.00, 7.62, 0.83 |
| Line | Line79 |  |  |  |  | 0.04, 0.21, 7.63, 0.00 |
| Line | Line80 |  |  |  |  | 0.04, 0.42, 7.63, 0.00 |
| Line | Line81 |  |  |  |  | 0.04, 0.62, 7.63, 0.00 |
| Line | Line83 |  |  |  |  | 0.83, 0.00, 0.00, 0.83 |
| Line | Line84 |  |  |  |  | 1.54, 0.00, 0.00, 0.83 |
| Line | Line87 |  |  |  |  | 4.29, 0.00, 0.00, 0.83 |
| Line | Line88 |  |  |  |  | 5.38, 0.00, 0.00, 0.83 |
| Line | Line90 |  |  |  |  | 6.54, 0.00, 0.00, 0.83 |
| Label | Label92 |  M's Packed |  |  |  | 3.46, 0.88, 0.79, 0.17 |
| Label | Label93 | Cull Reason |  |  |  | 6.67, 0.46, 0.88, 0.17 |
| Line | Line102 |  |  |  |  | 4.29, 1.04, 1.17, 0.00 |
| TextBox | PACKED |  | PACKED |  |  | 2.42, 0.88, 0.00, 0.00 |
| Line | Line112 |  |  |  |  | 3.33, 0.00, 0.00, 0.83 |
| Line | Line115 |  |  |  |  | 2.17, 0.00, 0.00, 0.83 |
| Label | Label116 | Hours Worked |  |  |  | 6.62, 0.00, 0.96, 0.17 |
