# Report: ORDER_FORM mt_050357

**Grouping/sorting:** `ID`, `CLIENT_ASSOCIATE`, `ORDER_CN`  
**Subforms/subreports:** `Report.NMIS_AGREEMENTS subreport`, `Report.ORDER_FORM_LEN mt Subrep`, `Report.ORDER_FORM_LIFT mt Subrep`, `Report.ORDER_FORM_SPECS mt Subrep_050357`, `Report.ORDER_FORM_QI mt Subrep`  
**Opened from (VBA):** `Form_NMIS_PROCESSING_ORDERS_INPUTbu`, `Form_Order_Pack_Form`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_AGREEMENTS subreport |  | Report.NMIS_AGREEMENTS subreport (master: AGREEMENT_LOT_CN;CLIENT_ASSOCIATE → child: AGREEMENT_LOT_CN;CLIENT_ASSOCIATE) |  |  | 2.67, 1.65, 4.24, 0.20 |
| TextBox | AGR_REQ | Agreement Lot Total Req (M) | AMOUNT_REQUESTED |  |  | 2.00, 1.67, 0.62, 0.19 |
| TextBox | Text137 |  | =[CountOfAGREEMENT_LOT_CN] & IIf([CountOfAGREEMENT_LOT_CN]>1," Orders for "," Order for ") & [total_Order] & [ALL_OVERRUN] & "M Total" |  |  | 0.00, 0.33, 2.75, 0.20 |
| Label | Label134 | Grading Belt      1        2        3 |  |  |  | 0.08, 0.54, 2.04, 0.21 |
| Rectangle | Box132 |  |  |  |  | 7.45, 0.35, 0.46, 0.46 |
| Label | Label131 | Lavender  Pink  Yellow |  |  |  | 6.00, 0.62, 1.41, 0.19 |
| Label | Label130 | None   White   Orange  Blue |  |  |  | 5.83, 0.44, 1.57, 0.19 |
| TextBox | Text128 |  | =[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7) |  |  | 0.00, 0.00, 2.75, 0.32 |
| Rectangle | Box109 |  |  |  |  | 7.72, 0.04, 0.17, 0.17 |
| Label | Label108 | Posted to NMIS: |  |  |  | 6.49, 0.04, 1.22, 0.22 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 6.12, 1.43, 0.00, 0.21 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 7.29, 1.43, 0.62, 0.21 |
| Line | Line52 |  |  |  |  | 2.32, 1.40, 5.25, 0.00 |
| Line | Line51 |  |  |  |  | 0.09, 1.40, 1.77, 0.00 |
| TextBox | CLIENT | Client: | CLIENT |  |  | 0.67, 1.43, 5.42, 0.21 |
| TextBox | SOURCE_CODE |  | SOURCE_CODE |  |  | 2.30, 1.19, 5.28, 0.00 |
| Label | SOURCE_CODE_Label | Source: |  |  |  | 2.30, 1.04, 0.53, 0.19 |
| TextBox | ID | Lot ID: | ID |  |  | 0.09, 1.16, 1.87, 0.23 |
| TextBox | Text57 |  | Species_Product_Description |  |  | 0.09, 0.75, 5.66, 0.23 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.62, 0.17, 2.78, 0.20 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.75, 0.00, 2.50, 0.17 |
| Label | Label68 | PLANT ORDER PACKING FORM |  |  |  | 2.58, 0.59, 2.74, 0.21 |
| TextBox | Text66 | Fiscal Year: | FISCAL_YEAR |  |  | 7.38, 1.01, 0.46, 0.21 |
| TextBox | Text39 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.75, 0.36, 2.50, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | ORDER_FORM_LEN_mt |  | Report.ORDER_FORM_LEN mt Subrep (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 0.04, 0.02, 3.45, 0.53 |
| Subform | ORDER_FORM_LIFT mt Subrep |  | Report.ORDER_FORM_LIFT mt Subrep (master: AGREEMENT_LOT_CN → child: AGR_LOT_CN) |  |  | 4.29, 0.02, 3.70, 0.73 |
| TextBox | TOTAL_CLIENT_ORDER | ORDER AMOUNT: | CLI_ORDER |  |  | 1.17, 0.57, 0.58, 0.00 |
| TextBox | SURPLUS | SURPLUS: | LOT_SURPLUS |  |  | 2.79, 0.57, 0.54, 0.00 |
| Line | Line69 |  |  |  |  | 1.17, 0.74, 0.62, 0.00 |
| Line | Line70 |  |  |  |  | 2.79, 0.74, 0.58, 0.00 |
| Subform | ORDER_FORM_SPECS mt Subrep |  | Report.ORDER_FORM_SPECS mt Subrep_050357 (master: ORDER_CN → child: CN) |  |  | 0.10, 0.75, 7.84, 3.99 |
| Subform | ORDER_FORM_QI mt Subrep |  | Report.ORDER_FORM_QI mt Subrep (master: ORDER_CN → child: ORDER_CN) |  |  | 3.51, 0.02, 0.76, 0.53 |
| TextBox | ORDER_CN |  | ORDER_CN |  |  | 3.46, 0.57, 0.62, 0.00 |
| TextBox | Text125 |  | =IIf([ACTIVITY_CODE]="HOLD","***HOLD -- DO NOT PROCESS***",IIf([ACTIVITY_CODE]="XSSRPL","***EXESS/SURPLUS -- DO NOT PROCESS***")) |  |  | 0.10, 4.79, 7.75, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | ="Order Printed " & Now() |  |  | 0.00, 0.43, 4.21, 0.16 |
| TextBox | Text104 |  | =[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7) |  |  | 2.08, 0.28, 5.68, 0.30 |
| Line | Line113 |  |  |  |  | 0.04, 0.26, 7.71, 0.00 |
| TextBox | NOTE |  | Sublot |  |  | 2.38, 0.28, 3.38, 0.30 |
| TextBox | Entered String |  | Entered String |  |  | 0.00, 0.28, 4.25, 0.00 |
| TextBox | bap |  | bap |  |  | 1.81, 0.00, 4.68, 0.25 |
