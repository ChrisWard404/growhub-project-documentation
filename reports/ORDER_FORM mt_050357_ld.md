# Report: ORDER_FORM mt_050357_ld

**Caption:** NMIS_ORDER_FORM  
**Grouping/sorting:** `ID`, `CLIENT_ASSOCIATE`, `ORDER_CN`  
**Subforms/subreports:** `Report.NMIS_AGREEMENTS subreport`, `Report.ORDER_FORM_LEN mt Subrep`, `Report.ORDER_FORM_LIFT mt Subrep`, `Report.ORDER_FORM_SPECS mt Subrep_050357`, `Report.ORDER_FORM_QI mt Subrep`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text39 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.75, 0.36, 2.50, 0.21 |
| TextBox | Text66 | Fiscal Year: | FISCAL_YEAR |  |  | 7.38, 1.05, 0.46, 0.21 |
| Label | Label68 | PLANT ORDER PACKING FORM |  |  |  | 2.58, 0.59, 2.74, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.75, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.62, 0.17, 2.78, 0.20 |
| TextBox | Text57 |  | Species_Product_Description |  |  | 0.09, 0.82, 5.66, 0.23 |
| TextBox | ID | Lot ID: | ID |  |  | 0.09, 1.24, 1.87, 0.20 |
| Label | SOURCE_CODE_Label | Source: |  |  |  | 2.30, 1.07, 0.53, 0.19 |
| TextBox | SOURCE_CODE |  | SOURCE_CODE |  |  | 2.30, 1.27, 5.28, 0.00 |
| TextBox | CLIENT | Client: | CLIENT |  |  | 0.67, 1.50, 5.42, 0.21 |
| Line | Line51 |  |  |  |  | 0.09, 1.48, 1.77, 0.00 |
| Line | Line52 |  |  |  |  | 2.32, 1.48, 5.25, 0.00 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 7.29, 1.50, 0.62, 0.21 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 6.12, 1.50, 0.00, 0.21 |
| Label | Label108 | Posted to NMIS: |  |  |  | 6.45, 0.07, 1.22, 0.22 |
| Rectangle | Box109 |  |  |  |  | 7.74, 0.00, 0.17, 0.17 |
| TextBox | Text128 |  | =[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7) |  |  | 0.00, 0.00, 2.75, 0.32 |
| Label | Label130 | None   White   Orange  Blue |  |  |  | 5.83, 0.47, 1.57, 0.19 |
| Label | Label131 | Lavender  Pink  Yellow |  |  |  | 6.00, 0.66, 1.41, 0.19 |
| Rectangle | Box132 |  |  |  |  | 7.45, 0.39, 0.46, 0.46 |
| Label | Label134 | Grading Belt      1        2        3 |  |  |  | 0.08, 0.57, 2.04, 0.21 |
| TextBox | Text137 |  | =[CountOfAGREEMENT_LOT_CN] & IIf([CountOfAGREEMENT_LOT_CN]>1," Orders for "," Order for ") & [total_Order] & [ALL_OVERRUN] & "M Total" |  |  | 0.00, 0.33, 2.75, 0.20 |
| TextBox | AGR_REQ | Agreement Lot Total Req (M) | AMOUNT_REQUESTED |  |  | 2.00, 1.72, 0.62, 0.19 |
| Subform | NMIS_AGREEMENTS subreport |  | Report.NMIS_AGREEMENTS subreport (master: AGREEMENT_LOT_CN;CLIENT_ASSOCIATE → child: AGREEMENT_LOT_CN;CLIENT_ASSOCIATE) |  |  | 2.67, 1.72, 4.24, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | ORDER_FORM_LEN_mt |  | Report.ORDER_FORM_LEN mt Subrep (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 0.04, 0.02, 3.45, 0.53 |
| Subform | ORDER_FORM_LIFT mt Subrep |  | Report.ORDER_FORM_LIFT mt Subrep (master: AGREEMENT_LOT_CN → child: AGR_LOT_CN) |  |  | 4.33, 0.02, 3.59, 0.53 |
| TextBox | TOTAL_CLIENT_ORDER | ORDER AMOUNT: | CLI_ORDER |  |  | 1.17, 0.57, 0.58, 0.00 |
| TextBox | SURPLUS | SURPLUS: | LOT_SURPLUS |  |  | 2.79, 0.57, 0.54, 0.00 |
| Line | Line69 |  |  |  |  | 1.17, 0.76, 0.62, 0.00 |
| Line | Line70 |  |  |  |  | 2.80, 0.76, 0.58, 0.00 |
| Subform | ORDER_FORM_SPECS mt Subrep |  | Report.ORDER_FORM_SPECS mt Subrep_050357 (master: ORDER_CN → child: CN) |  |  | 0.11, 0.78, 7.84, 0.74 |
| Subform | ORDER_FORM_QI mt Subrep |  | Report.ORDER_FORM_QI mt Subrep (master: ORDER_CN → child: ORDER_CN) |  |  | 3.53, 0.02, 0.76, 0.53 |
| TextBox | ORDER_CN |  | ORDER_CN |  |  | 3.46, 0.57, 0.62, 0.00 |
| TextBox | Text125 |  | =IIf([ACTIVITY_CODE]="HOLD","***HOLD -- DO NOT PROCESS***",IIf([ACTIVITY_CODE]="XSSRPL","***EXESS/SURPLUS -- DO NOT PROCESS***")) |  |  | 0.00, 1.53, 7.75, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | ="Order Printed " & Now() |  |  | 0.00, 0.47, 4.21, 0.19 |
| TextBox | Text104 |  | =[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7) |  |  | 2.08, 0.35, 5.68, 0.30 |
| Line | Line113 |  |  |  |  | 0.04, 0.27, 7.71, 0.00 |
| TextBox | NOTE |  | Sublot |  |  | 2.38, 0.35, 3.38, 0.30 |
| TextBox | Entered String |  | Entered String |  |  | 0.00, 0.30, 4.25, 0.00 |
| TextBox | bap |  | bap |  |  | 1.84, 0.00, 4.68, 0.25 |
