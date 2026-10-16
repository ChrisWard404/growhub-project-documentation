# Report: ORDER_FORM mt_050357_pre_fy06

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
| Subform | NMIS_AGREEMENTS subreport |  | Report.NMIS_AGREEMENTS subreport (master: CLIENT_ASSOCIATE;AGREEMENT_LOT_CN → child: CLIENT_ASSOCIATE;AGREEMENT_LOT_CN) |  |  | 2.67, 1.72, 4.24, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | ORDER_FORM_LEN_mt |  | Report.ORDER_FORM_LEN mt Subrep (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 0.04, 0.02, 3.45, 0.53 |
| Subform | ORDER_FORM_LIFT mt Subrep |  | Report.ORDER_FORM_LIFT mt Subrep (master: AGREEMENT_LOT_CN → child: AGR_LOT_CN) |  |  | 5.21, 0.02, 2.72, 0.53 |
| TextBox | TOTAL_CLIENT_ORDER | ORDER AMOUNT: | CLI_ORDER |  |  | 1.17, 0.57, 0.58, 0.00 |
| TextBox | SURPLUS | SURPLUS: | LOT_SURPLUS |  |  | 2.79, 0.57, 0.54, 0.00 |
| Line | Line69 |  |  |  |  | 1.17, 0.76, 0.62, 0.00 |
| Line | Line70 |  |  |  |  | 2.80, 0.76, 0.58, 0.00 |
| Subform | ORDER_FORM_SPECS mt Subrep |  | Report.ORDER_FORM_SPECS mt Subrep_050357 (master: ORDER_CN → child: CN) |  |  | 0.11, 0.78, 7.84, 0.74 |
| Subform | ORDER_FORM_QI mt Subrep |  | Report.ORDER_FORM_QI mt Subrep (master: ORDER_CN → child: ORDER_CN) |  |  | 3.53, 0.02, 1.64, 0.53 |
| TextBox | ORDER_CN |  | ORDER_CN |  |  | 3.46, 0.57, 0.00, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label92 |  M's Packed |  |  |  | 5.48, 2.39, 0.79, 0.17 |
| Label | ACTIVITY_CODE_Label | Alternate Grading Specifications |  |  |  | 0.08, 0.10, 1.96, 0.17 |
| TextBox | Text90 |  | AGREEMENT_LOT_CN |  |  | 2.08, 0.10, 0.79, 0.00 |
| Rectangle | Box92 |  |  |  |  | 0.12, 0.83, 7.75, 1.50 |
| Line | Line94 |  |  |  |  | 0.12, 1.21, 7.75, 0.00 |
| Line | Line96 |  |  |  |  | 0.77, 0.67, 0.00, 1.67 |
| Line | Line97 |  |  |  |  | 1.81, 0.67, 0.00, 1.67 |
| Line | Line99 |  |  |  |  | 5.76, 0.67, 0.00, 1.67 |
| Line | Line100 |  |  |  |  | 6.92, 0.67, 0.00, 1.67 |
| Label | Label101 | Cull Reason |  |  |  | 6.96, 1.58, 0.88, 0.17 |
| Rectangle | Box50 |  |  |  |  | 0.12, 0.66, 6.79, 0.18 |
| Label | Pack_Header_Label | Date |  |  |  | 0.12, 0.66, 0.65, 0.18 |
| Line | Line114 |  |  |  |  | 0.12, 1.58, 7.75, 0.00 |
| Line | Line116 |  |  |  |  | 0.12, 1.96, 7.75, 0.00 |
| Label | Label117 | Bag Amt |  |  |  | 0.77, 0.66, 1.04, 0.18 |
| Label | Label120 | Bag Tally |  |  |  | 1.81, 0.66, 3.94, 0.18 |
| Line | Line123 |  |  |  |  | 6.27, 0.67, 0.00, 1.67 |
| Label | Label124 | # Bags |  |  |  | 5.76, 0.66, 0.51, 0.18 |
| Label | Label125 | Subtotal |  |  |  | 6.26, 0.66, 0.68, 0.18 |
| Label | Label126 | Start Time:_____ Stop Time:_____   Number of Graders:____ |  |  |  | 0.12, 2.38, 4.32, 0.18 |
| Line | Line127 |  |  |  |  | 0.08, 0.00, 7.83, 0.00 |
| Label | Label128 | Tubs Packed |  |  |  | 6.94, 0.82, 0.95, 0.18 |
| Label | Label129 | Tubs Destroy |  |  |  | 6.93, 1.20, 0.97, 0.18 |
| Label | Label133 | Packing Comments: |  |  |  | 0.12, 2.56, 1.32, 0.18 |
| Label | ORDER_AMT_Label | Order Amt  (M) |  |  |  | 3.20, 0.09, 0.67, 0.31 |
| Label | OVERRUN_AMT_Label | Amt(M) |  |  |  | 4.25, 0.24, 0.46, 0.17 |
| Label | OVERRUN_ALL_Label |  All |  |  |  | 3.86, 0.24, 0.33, 0.17 |
| Label | SPEC_MIN_Label | Min |  |  |  | 4.86, 0.24, 0.42, 0.17 |
| Label | SPEC_MAX_Label |  Max |  |  |  | 5.32, 0.24, 0.38, 0.17 |
| Label | CALIPER_MIN_Label | Cal. (mm) |  |  |  | 5.82, 0.07, 0.38, 0.33 |
| Label | ROOT_PRUNE_TARGET_Label | Root Prune Target |  |  |  | 6.33, 0.07, 0.42, 0.33 |
| Label | Height_Label | Height (in) |  |  |  | 4.96, 0.07, 0.64, 0.18 |
| Label | Overrun_Label | Overrun |  |  |  | 3.86, 0.07, 0.88, 0.17 |
| Label | CONTRACT_ITEM_Label | Contract Item |  |  |  | 6.83, 0.07, 0.55, 0.33 |
| Line | Line45 |  |  |  |  | 4.14, 0.60, 0.62, 0.00 |
| Line | Line46 |  |  |  |  | 4.91, 0.60, 0.33, 0.00 |
| Line | Line47 |  |  |  |  | 5.35, 0.60, 0.33, 0.00 |
| Line | Line48 |  |  |  |  | 5.85, 0.60, 0.33, 0.00 |
| Line | Line49 |  |  |  |  | 6.30, 0.60, 0.47, 0.00 |
| Line | Line110 |  |  |  |  | 6.89, 0.60, 0.47, 0.00 |
| Line | Line135 |  |  |  |  | 3.23, 0.60, 0.62, 0.00 |
| Label | PACK_ID_Label | Order ID |  |  |  | 7.47, 0.05, 0.42, 0.33 |
| Rectangle | Box118 |  |  |  |  | 7.43, 0.06, 0.47, 0.55 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | ="Order Printed " & Now() |  |  | 0.00, 0.19, 4.21, 0.19 |
| TextBox | Text104 |  | =[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7) |  |  | 2.08, 0.01, 5.68, 0.36 |
| Line | Line113 |  |  |  |  | 0.04, 0.01, 7.71, 0.00 |
| TextBox | NOTE |  | Sublot |  |  | 2.38, 0.01, 3.38, 0.36 |
| TextBox | Entered String |  | Entered String |  |  | 0.00, 0.02, 4.25, 0.00 |
