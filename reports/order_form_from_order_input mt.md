# Report: order_form_from_order_input mt

**Caption:** NMIS_ORDER_FORM  
**Grouping/sorting:** `ID`, `CLIENT_ASSOCIATE`, `ORDER_CN`  
**Subforms/subreports:** `Report.NMIS_AGREEMENTS subreport`, `Report.ORDER_FORM_LEN mt Subrep`, `Report.ORDER_FORM_LIFT mt Subrep`, `Report.ORDER_FORM_SPECS mt Subrep`, `Report.ORDER_FORM_QI mt Subrep`  
**Opened from (VBA):** `Form_NMIS_PROCESSING_ORDERS_INPUT`, `Form_NMIS_PROCESSING_ORDERS_INPUT_LotIdLookup`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text39 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.75, 0.36, 2.50, 0.21 |
| TextBox | Text66 | Fiscal Year: | FISCAL_YEAR |  |  | 7.38, 1.16, 0.46, 0.21 |
| Label | Label68 | PLANT ORDER PACKING FORM |  |  |  | 2.58, 0.59, 2.74, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.75, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.62, 0.17, 2.78, 0.20 |
| TextBox | Text57 |  | Species_Product_Description |  |  | 0.09, 0.89, 5.66, 0.26 |
| TextBox | ID | Lot ID: | ID |  |  | 0.09, 1.34, 1.87, 0.20 |
| Label | SOURCE_CODE_Label | Source: |  |  |  | 2.30, 1.17, 0.53, 0.19 |
| TextBox | SOURCE_CODE |  | SOURCE_CODE |  |  | 2.30, 1.37, 5.28, 0.00 |
| TextBox | CLIENT | Client: | CLIENT |  |  | 0.67, 1.66, 5.42, 0.21 |
| Line | Line51 |  |  |  |  | 0.09, 1.57, 1.77, 0.00 |
| Line | Line52 |  |  |  |  | 2.32, 1.57, 5.25, 0.00 |
| TextBox | AGR_REQ | Agreement Lot Total Req (M) | AMOUNT_REQUESTED |  |  | 2.00, 1.88, 0.62, 0.19 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 7.21, 1.58, 0.62, 0.21 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 6.12, 1.66, 0.00, 0.21 |
| Label | Label108 | Posted to NMIS: |  |  |  | 6.48, 0.00, 1.22, 0.22 |
| Rectangle | Box109 |  |  |  |  | 7.77, 0.00, 0.17, 0.17 |
| TextBox | Text128 |  | =[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7) |  |  | 0.00, 0.00, 2.75, 0.32 |
| Label | Label114 | Grading Table |  |  |  | 6.25, 0.74, 1.07, 0.24 |
| Rectangle | Box115 |  |  |  |  | 7.38, 0.36, 0.57, 0.56 |
| TextBox | Text137 |  | =[CountOfAGREEMENT_LOT_CN] & IIf([CountOfAGREEMENT_LOT_CN]>1," Orders for "," Order for ") & [total_Order] & [ALL_OVERRUN] & "M Total" |  |  | 0.00, 0.32, 2.75, 0.20 |
| Subform | NMIS_AGREEMENTS subreport |  | Report.NMIS_AGREEMENTS subreport (master: CLIENT_ASSOCIATE;AGREEMENT_LOT_CN → child: CLIENT_ASSOCIATE;AGREEMENT_LOT_CN) |  |  | 2.67, 1.88, 4.24, 0.20 |
| TextBox | Entered String |  | Entered_String |  |  | 0.00, 0.52, 2.58, 0.00 |
| TextBox | Text122 |  | Modified_String |  |  | 0.00, 0.69, 2.58, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | ORDER_FORM_LEN_mt |  | Report.ORDER_FORM_LEN mt Subrep (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 0.04, 0.04, 3.29, 0.53 |
| Subform | ORDER_FORM_LIFT mt Subrep |  | Report.ORDER_FORM_LIFT mt Subrep (master: AGREEMENT_LOT_CN → child: AGR_LOT_CN) |  |  | 4.23, 0.04, 3.69, 0.53 |
| TextBox | TOTAL_CLIENT_ORDER | ORDER AMOUNT: | CLI_ORDER |  |  | 1.17, 0.67, 0.58, 0.00 |
| TextBox | SURPLUS | SURPLUS: | LOT_SURPLUS |  |  | 2.79, 0.67, 0.54, 0.00 |
| Line | Line69 |  |  |  |  | 1.17, 0.88, 0.62, 0.00 |
| Line | Line70 |  |  |  |  | 2.79, 0.88, 0.58, 0.00 |
| Subform | ORDER_FORM_SPECS mt Subrep |  | Report.ORDER_FORM_SPECS mt Subrep (master: ORDER_CN → child: CN) |  |  | 0.04, 0.92, 7.88, 0.75 |
| Subform | ORDER_FORM_QI mt Subrep |  | Report.ORDER_FORM_QI mt Subrep (master: ORDER_CN → child: ORDER_CN) |  |  | 3.38, 0.04, 0.83, 0.54 |
| TextBox | ORDER_CN |  | ORDER_CN |  |  | 3.46, 0.67, 0.83, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label92 |  M's Packed |  |  |  | 3.42, 1.86, 0.79, 0.17 |
| Label | ACTIVITY_CODE_Label | GRADING SPECIFICATIONS |  |  |  | 0.08, 0.08, 1.71, 0.17 |
| TextBox | Text90 |  | AGREEMENT_LOT_CN |  |  | 2.08, 0.08, 0.79, 0.00 |
| Line | Line91 |  |  |  |  | 0.12, 0.67, 7.79, 0.00 |
| Rectangle | Box92 |  |  |  |  | 0.12, 0.99, 7.62, 0.83 |
| Line | Line93 |  |  |  |  | 0.12, 1.20, 7.63, 0.00 |
| Line | Line94 |  |  |  |  | 0.12, 1.41, 7.63, 0.00 |
| Line | Line95 |  |  |  |  | 0.12, 1.61, 7.63, 0.00 |
| Line | Line96 |  |  |  |  | 0.92, 0.99, 0.00, 0.83 |
| Line | Line97 |  |  |  |  | 1.62, 0.99, 0.00, 0.83 |
| Line | Line98 |  |  |  |  | 4.38, 0.99, 0.00, 0.83 |
| Line | Line99 |  |  |  |  | 5.46, 0.99, 0.00, 0.83 |
| Line | Line100 |  |  |  |  | 6.62, 0.99, 0.00, 0.83 |
| Label | Label101 | Cull Reason |  |  |  | 6.75, 1.45, 0.88, 0.17 |
| Line | Line112 |  |  |  |  | 3.42, 0.99, 0.00, 0.83 |
| Line | Line115 |  |  |  |  | 2.25, 0.99, 0.00, 0.83 |
| Rectangle | Box50 |  |  |  |  | 0.12, 0.70, 6.50, 0.29 |
| Label | Pack_Header_Label | Date        Table    Size     # Containers  Trees/Cont    M's Packed    # Fld Contrs   |  |  |  | 0.17, 0.74, 6.46, 0.18 |
| Line | Line60 |  |  |  |  | 0.92, 0.70, 0.00, 0.30 |
| Line | Line61 |  |  |  |  | 1.62, 0.70, 0.00, 0.30 |
| Line | Line63 |  |  |  |  | 2.25, 0.70, 0.00, 0.30 |
| Line | Line64 |  |  |  |  | 4.38, 0.70, 0.00, 0.30 |
| Line | Line65 |  |  |  |  | 5.46, 0.70, 0.00, 0.30 |
| Line | Line67 |  |  |  |  | 6.62, 0.70, 0.00, 0.30 |
| Line | Line111 |  |  |  |  | 3.42, 0.70, 0.00, 0.30 |
| Label | Label103 | Hours Worked |  |  |  | 6.71, 1.03, 0.95, 0.18 |
| Label | ORDER_AMT_Label | Order Amt  (M) |  |  |  | 3.20, 0.04, 0.67, 0.31 |
| Label | OVERRUN_AMT_Label | Amt(M) |  |  |  | 4.25, 0.19, 0.46, 0.17 |
| Label | OVERRUN_ALL_Label |  All |  |  |  | 3.86, 0.19, 0.33, 0.17 |
| Label | SPEC_MIN_Label | Min |  |  |  | 4.86, 0.19, 0.42, 0.17 |
| Label | SPEC_MAX_Label |  Max |  |  |  | 5.32, 0.19, 0.38, 0.17 |
| Label | CALIPER_MIN_Label | Cal. (mm) |  |  |  | 5.82, 0.02, 0.38, 0.33 |
| Label | ROOT_PRUNE_TARGET_Label | Root Prune Target |  |  |  | 6.33, 0.02, 0.42, 0.33 |
| Label | Height_Label | Height (in) |  |  |  | 4.96, 0.02, 0.64, 0.18 |
| Label | Overrun_Label | Overrun |  |  |  | 3.86, 0.02, 0.88, 0.17 |
| Label | CONTRACT_ITEM_Label | Contract Item |  |  |  | 6.80, 0.02, 0.55, 0.33 |
| Line | Line45 |  |  |  |  | 4.14, 0.60, 0.62, 0.00 |
| Line | Line46 |  |  |  |  | 4.91, 0.60, 0.33, 0.00 |
| Line | Line47 |  |  |  |  | 5.35, 0.60, 0.33, 0.00 |
| Line | Line48 |  |  |  |  | 5.85, 0.60, 0.33, 0.00 |
| Line | Line49 |  |  |  |  | 6.30, 0.60, 0.47, 0.00 |
| Line | Line110 |  |  |  |  | 6.85, 0.60, 0.47, 0.00 |
| Line | Line135 |  |  |  |  | 3.23, 0.60, 0.62, 0.00 |
| Label | PACK_ID_Label | Order ID |  |  |  | 7.44, 0.02, 0.42, 0.33 |
| Rectangle | Box118 |  |  |  |  | 7.40, 0.00, 0.00, 0.61 |
| TextBox | Text125 |  | =IIf([ACTIVITY_CODE]="HOLD","***HOLD -- DO NOT PROCESS***",IIf([ACTIVITY_CODE]="XSSRPL","***EXESS/SURPLUS -- DO NOT PROCESS***")) |  |  | 0.12, 2.04, 7.75, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | ="Order Printed: " & Now() |  |  | 0.00, 0.44, 3.42, 0.19 |
| TextBox | Text104 |  | =[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7) |  |  | 3.41, 0.26, 4.34, 0.36 |
| Line | Line113 |  |  |  |  | 0.04, 0.26, 7.71, 0.00 |
| TextBox | Text123 |  | =[Entered_String] & " " & [Modified_String] |  |  | 0.00, 0.27, 4.54, 0.00 |
| Label | Label127 |  PS____B_____  |  |  |  | 6.36, 0.00, 1.39, 0.26 |
| TextBox | bap |  | bap |  |  | 1.69, 0.00, 4.68, 0.25 |
