# Report: ORDER_FORM_SPECS mt Subrep

**Caption:** ORDER_FORM_SPECS Subrep  
**Record source:**

```sql
SELECT [**Order_Form_Specs].* FROM [**Order_Form_Specs];
```

**Grouping/sorting:** `CN`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`  
**Subforms/subreports:** `Report.ORDER_FORM_MCODES mt Subrep`, `Report.ORDER_FORM_CNCTS mt Subrep`, `Report.ORDER_FORM_PACK mt subrep`  
**Embedded in:** `Report:ORDER_FORM mt`, `Report:ORDER_FORM mt_edit`, `Report:ORDER_FORM_FROM_ORDER_INPUT_FORM`, `Report:order_form_from_Order_Print mt`, `Report:order_form_from_order_edit mt`, `Report:order_form_from_order_edit mt_bu2`, `Report:order_form_from_order_input mt`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | All_Plus |  | =IIf([OVERRUN_ALL]=True,"+","") |  |  | 5.02, 0.38, 0.17, 0.23 |
| TextBox | TOTAL_ORDER |  | =IIf(NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)=0 And [OVERRUN_ALL]=True,"ALL",NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)) |  |  | 4.47, 0.39, 0.58, 0.22 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 0.00, 0.39, 0.62, 0.22 |
| TextBox | SERVICES_STRING |  | SERVICES_STRING |  |  | 0.62, 0.38, 2.46, 0.23 |
| TextBox | ORDER_AMT |  | ORDER_AMT |  |  | 3.09, 0.39, 0.60, 0.22 |
| TextBox | OVERRUN_AMT |  | ORUN_AMT |  |  | 3.94, 0.39, 0.56, 0.22 |
| CheckBox | OVERRUN_ALL |  | OVERRUN_ALL |  |  | 3.77, 0.42, 0.17, 0.17 |
| TextBox | SPEC_MIN |  | SPEC_MIN |  |  | 5.21, 0.39, 0.34, 0.22 |
| TextBox | SPEC_MAX |  | SPEC_MAX |  |  | 5.54, 0.39, 0.34, 0.22 |
| TextBox | CALIPER_MIN |  | CALIPER_MIN |  |  | 5.90, 0.39, 0.31, 0.22 |
| TextBox | ROOT_PRUNE_TARGET |  | ROOT_PRUNE_TARGET |  |  | 6.23, 0.39, 0.38, 0.22 |
| TextBox | CLIENT_NOTE |  | LastOfCLIENT_NOTE |  |  | 0.75, 0.64, 2.91, 0.41 |
| TextBox | NURSERY_NOTE |  | LastOfNURSERY_NOTE |  |  | 4.46, 0.64, 3.37, 0.57 |
| Label | CLIENT_NOTE_Label | Client Note |  |  |  | 0.29, 0.68, 0.38, 0.33 |
| Label | NURSERY_NOTE_Label | Nursery Note |  |  |  | 3.88, 0.64, 0.50, 0.33 |
| Subform | NMIS_ORDER_FORM_MCODES Subrep |  | Report.ORDER_FORM_MCODES mt Subrep (master: CN → child: ORDER_CN) |  |  | 1.41, 1.05, 2.26, 0.17 |
| Label | Job_Codes_Label | Job Codes: |  |  |  | 0.67, 1.05, 0.70, 0.17 |
| Subform | NMIS_ORDER_FORM_CNCTS Subrep |  | Report.ORDER_FORM_CNCTS mt Subrep (master: CN → child: ORDERS_CN) |  |  | 0.77, 1.19, 7.03, 0.01 |
| Line | Line44 |  |  |  |  | 3.09, 0.59, 0.60, 0.00 |
| Line | Line45 |  |  |  |  | 3.95, 0.59, 0.56, 0.00 |
| Line | Line46 |  |  |  |  | 5.22, 0.59, 0.30, 0.00 |
| Line | Line47 |  |  |  |  | 5.56, 0.59, 0.30, 0.00 |
| Line | Line48 |  |  |  |  | 5.93, 0.59, 0.28, 0.00 |
| Line | Line49 |  |  |  |  | 6.24, 0.59, 0.36, 0.00 |
| Rectangle | Box50 |  |  |  |  | 0.04, 1.23, 6.50, 0.29 |
| Label | Pack_Header_Label | Date        Table    Size    # Containers   Plants/Cont    M's Packed    # Fld Contrs |  |  |  | 0.08, 1.27, 6.46, 0.18 |
| Line | Line60 |  |  |  |  | 0.83, 1.23, 0.00, 0.30 |
| Line | Line61 |  |  |  |  | 1.54, 1.23, 0.00, 0.30 |
| Line | Line63 |  |  |  |  | 2.17, 1.23, 0.00, 0.30 |
| Line | Line64 |  |  |  |  | 4.29, 1.23, 0.00, 0.30 |
| Line | Line65 |  |  |  |  | 5.38, 1.23, 0.00, 0.30 |
| Line | Line67 |  |  |  |  | 6.54, 1.23, 0.00, 0.30 |
| TextBox | CN |  | CN |  |  | 6.92, 1.29, 0.88, 0.00 |
| TextBox | ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 5.96, 1.29, 0.88, 0.00 |
| Subform | ORDER_FORM_PACK subrep |  | Report.ORDER_FORM_PACK mt subrep (master: CN → child: O_CN) |  |  | 0.08, 1.48, 6.22, 0.02 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 7.00, 0.39, 0.35, 0.22 |
| Line | Line110 |  |  |  |  | 7.02, 0.59, 0.32, 0.00 |
| Label | ACTIVITY_CODE_Label | GRADING SPECIFICATIONS |  |  |  | 0.00, 0.03, 1.71, 0.17 |
| Label | ORDER_AMT_Label | Order Amt  (M) |  |  |  | 3.09, 0.04, 0.60, 0.31 |
| Label | OVERRUN_AMT_Label | Amt(M) |  |  |  | 4.02, 0.17, 0.47, 0.18 |
| Label | OVERRUN_ALL_Label |  All |  |  |  | 3.71, 0.17, 0.23, 0.17 |
| Label | SPEC_MIN_Label | Min |  |  |  | 5.20, 0.19, 0.33, 0.17 |
| Label | SPEC_MAX_Label |  Max |  |  |  | 5.54, 0.19, 0.34, 0.17 |
| Label | CALIPER_MIN_Label | Cal. mm |  |  |  | 5.90, 0.01, 0.31, 0.34 |
| Label | Height_Label | Height |  |  |  | 5.20, 0.01, 0.69, 0.18 |
| Label | Overrun_Label | Overrun |  |  |  | 3.70, 0.00, 0.79, 0.17 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 2.00, 0.04, 0.79, 0.00 |
| Label | CONTRACT_ITEM_Label | Cont Item |  |  |  | 7.00, 0.01, 0.35, 0.34 |
| Line | Line111 |  |  |  |  | 3.33, 1.23, 0.00, 0.30 |
| ComboBox | Text117 |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, IIf([ACTIVITY_CODE]="PXPLT","TP at " & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery,"") AS TP FROM NMIS_ACTIVITY_CODES;  |  | 0.61, 0.18, 2.46, 0.21 |
| Label | PACK_ID_Label | Order ID |  |  |  | 7.42, 0.01, 0.42, 0.33 |
| Rectangle | Box118 |  |  |  |  | 7.38, 0.02, 0.00, 0.57 |
| TextBox | PACK_ID |  | PACK_ID |  |  | 7.41, 0.38, 0.47, 0.23 |
| Line | Line119 |  |  |  |  | 4.54, 0.59, 0.60, 0.00 |
| Label | Label120 | TOTAL Amt  (M) |  |  |  | 4.53, 0.02, 0.59, 0.32 |
| Rectangle | Box123 |  |  |  |  | 4.51, 0.02, 0.68, 0.57 |
| Label | Label126 | Prune Target |  |  |  | 6.21, 0.01, 0.41, 0.34 |
| Label | Label127 |  Root Min |  |  |  | 6.61, 0.01, 0.38, 0.34 |
| TextBox | Root_Prune_Min |  | ROOT_PRUNE_MIN |  |  | 6.64, 0.39, 0.34, 0.22 |
| Line | Line130 |  |  |  |  | 6.66, 0.59, 0.32, 0.00 |

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
