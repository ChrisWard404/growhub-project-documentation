# Report: ORDER_FORM_SPECS mt Subrep_050357_pre_fy06

**Caption:** ORDER_FORM_SPECS Subrep  
**Record source:**

```sql
**Order_Form_Specs
```

**Grouping/sorting:** `CN`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`  
**Subforms/subreports:** `Report.ORDER_FORM_MCODES mt Subrep`, `Report.ORDER_FORM_CNCTS mt Subrep`, `Report.ORDER_FORM_PACK mt subrep_050357`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 0.00, 0.39, 0.62, 0.22 |
| TextBox | SERVICES_STRING |  | SERVICES_STRING |  |  | 0.62, 0.38, 2.46, 0.23 |
| TextBox | CLIENT_NOTE |  | CLIENT_NOTE |  |  | 0.75, 0.68, 2.91, 0.20 |
| TextBox | NURSERY_NOTE |  | NURSERY_NOTE |  |  | 4.46, 0.64, 3.37, 0.20 |
| Label | CLIENT_NOTE_Label | Client Note |  |  |  | 0.29, 0.68, 0.38, 0.33 |
| Label | NURSERY_NOTE_Label | Nursery Note |  |  |  | 3.88, 0.64, 0.50, 0.33 |
| Subform | NMIS_ORDER_FORM_MCODES Subrep |  | Report.ORDER_FORM_MCODES mt Subrep (master: CN → child: ORDER_CN) |  |  | 1.79, 1.00, 2.00, 0.16 |
| Label | Job_Codes_Label | Job Codes: |  |  |  | 1.00, 1.00, 0.75, 0.17 |
| Subform | NMIS_ORDER_FORM_CNCTS Subrep |  | Report.ORDER_FORM_CNCTS mt Subrep (master: CN → child: ORDERS_CN) |  |  | 0.77, 1.21, 7.03, 0.01 |
| TextBox | CN |  | CN |  |  | 6.92, 0.96, 0.88, 0.00 |
| TextBox | ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 6.00, 0.96, 0.88, 0.00 |
| Subform | ORDER_FORM_PACK subrep |  | Report.ORDER_FORM_PACK mt subrep_050357 (master: CN → child: O_CN) |  |  | 0.00, 1.41, 7.90, 0.01 |
| Label | ACTIVITY_CODE_Label | GRADING SPECIFICATIONS |  |  |  | 0.00, 0.03, 1.71, 0.17 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 2.00, 0.04, 0.79, 0.00 |
| ComboBox | Text117 |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, IIf([ACTIVITY_CODE]="PXPLT","TP at " & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery,"") AS TP FROM NMIS_ACTIVITY_CODES;  |  | 0.62, 0.17, 2.46, 0.21 |
| Label | Label121 | Date |  |  |  | 0.00, 1.25, 0.64, 0.18 |
| Label | Label122 | Bag Amt |  |  |  | 0.64, 1.25, 1.06, 0.18 |
| Label | Label123 | Bag Tally |  |  |  | 1.70, 1.25, 3.93, 0.18 |
| Label | Label126 | # Bags |  |  |  | 5.62, 1.25, 0.50, 0.18 |
| Label | Label127 | Subtotal |  |  |  | 6.12, 1.25, 0.67, 0.18 |
| TextBox | TOTAL_ORDER |  | =IIf(NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)=0 And [OVERRUN_ALL]=True,"ALL",NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)) |  |  | 4.57, 0.39, 0.58, 0.22 |
| TextBox | ORDER_AMT |  | ORDER_AMT |  |  | 3.16, 0.39, 0.60, 0.22 |
| TextBox | OVERRUN_AMT |  | ORUN_AMT |  |  | 4.01, 0.39, 0.56, 0.22 |
| CheckBox | OVERRUN_ALL |  | OVERRUN_ALL |  |  | 3.84, 0.42, 0.17, 0.17 |
| TextBox | SPEC_MIN |  | SPEC_MIN |  |  | 5.31, 0.39, 0.34, 0.22 |
| TextBox | SPEC_MAX |  | SPEC_MAX |  |  | 5.65, 0.39, 0.34, 0.22 |
| TextBox | CALIPER_MIN |  | CALIPER_MIN |  |  | 6.05, 0.39, 0.36, 0.22 |
| TextBox | ROOT_PRUNE_TARGET |  | ROOT_PRUNE_TARGET |  |  | 6.46, 0.39, 0.38, 0.22 |
| Line | Line44 |  |  |  |  | 3.14, 0.59, 0.60, 0.00 |
| Line | Line45 |  |  |  |  | 3.99, 0.59, 0.56, 0.00 |
| Line | Line46 |  |  |  |  | 5.29, 0.59, 0.30, 0.00 |
| Line | Line47 |  |  |  |  | 5.69, 0.59, 0.30, 0.00 |
| Line | Line48 |  |  |  |  | 6.07, 0.59, 0.32, 0.00 |
| Line | Line49 |  |  |  |  | 6.44, 0.59, 0.37, 0.00 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 6.91, 0.39, 0.38, 0.22 |
| Line | Line110 |  |  |  |  | 6.88, 0.59, 0.39, 0.00 |
| Label | ORDER_AMT_Label | Order Amt  (M) |  |  |  | 3.16, 0.04, 0.60, 0.31 |
| Label | OVERRUN_AMT_Label | Amt(M) |  |  |  | 4.09, 0.17, 0.47, 0.18 |
| Label | OVERRUN_ALL_Label |  All |  |  |  | 3.78, 0.17, 0.23, 0.17 |
| Label | SPEC_MIN_Label | Min |  |  |  | 5.31, 0.18, 0.32, 0.17 |
| Label | SPEC_MAX_Label |  Max |  |  |  | 5.65, 0.18, 0.34, 0.17 |
| Label | CALIPER_MIN_Label | Cal. (mm) |  |  |  | 6.05, 0.01, 0.36, 0.33 |
| Label | ROOT_PRUNE_TARGET_Label | Root Prune Target |  |  |  | 6.44, 0.01, 0.40, 0.33 |
| Label | Height_Label | Height |  |  |  | 5.33, 0.01, 0.66, 0.18 |
| Label | Overrun_Label | Overrun |  |  |  | 3.77, 0.00, 0.79, 0.17 |
| Label | CONTRACT_ITEM_Label | Contr Item |  |  |  | 6.91, 0.01, 0.38, 0.33 |
| Label | PACK_ID_Label | Order ID |  |  |  | 7.38, 0.01, 0.42, 0.33 |
| Rectangle | Box118 |  |  |  |  | 7.33, 0.00, 0.00, 0.60 |
| TextBox | PACK_ID |  | PACK_ID |  |  | 7.36, 0.38, 0.50, 0.23 |
| Line | Line119 |  |  |  |  | 4.61, 0.59, 0.60, 0.00 |
| Label | Label120 | TOTAL Amt  (M) |  |  |  | 4.64, 0.02, 0.59, 0.32 |
| TextBox | All_Plus |  | =IIf([OVERRUN_ALL]=True,"+","") |  |  | 5.16, 0.38, 0.11, 0.23 |
| Rectangle | Box123 |  |  |  |  | 4.61, 0.02, 0.68, 0.57 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label92 |  M's Packed |  |  |  | 5.36, 1.56, 0.79, 0.17 |
| Line | Line102 |  |  |  |  | 6.19, 1.73, 0.61, 0.00 |
| TextBox | PACKED |  | PACKED |  |  | 4.36, 1.56, 0.00, 0.00 |
| Rectangle | Box92 |  |  |  |  | 0.00, 0.00, 7.75, 1.50 |
| Line | Line94 |  |  |  |  | 0.00, 0.38, 7.75, 0.00 |
| Line | Line96 |  |  |  |  | 0.65, 0.01, 0.00, 1.50 |
| Line | Line97 |  |  |  |  | 1.69, 0.01, 0.00, 1.50 |
| Line | Line99 |  |  |  |  | 5.64, 0.01, 0.00, 1.50 |
| Line | Line100 |  |  |  |  | 6.79, 0.01, 0.00, 1.50 |
| Label | Label101 | Cull Reason |  |  |  | 6.83, 0.75, 0.88, 0.17 |
| Label | Label103 | Start Time:_____ Stop Time:_____   Number of Graders:____ |  |  |  | 0.00, 1.55, 4.32, 0.18 |
| Line | Line114 |  |  |  |  | 0.00, 0.75, 7.75, 0.00 |
| Line | Line116 |  |  |  |  | 0.00, 1.12, 7.75, 0.00 |
| Line | Line123 |  |  |  |  | 6.15, 0.01, 0.00, 1.50 |
| Label | Label128 | Tubs Packed |  |  |  | 6.80, 0.00, 0.95, 0.18 |
| Label | Label129 | Tubs Destroy |  |  |  | 6.79, 0.38, 0.97, 0.18 |
| Label | Label133 | Packing Comments: |  |  |  | 0.00, 1.77, 1.32, 0.18 |
