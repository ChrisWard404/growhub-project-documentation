# Report: ORDER_FORM mt_040207

**Grouping/sorting:** `ID`, `ORDER_CN`, `CLIENT_ASSOCIATE`  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`  
**Subforms/subreports:** `Report.NMIS_AGREEMENTS subreport`, `Report.ORDER_FORM_LEN mt Subrep`, `Report.ORDER_FORM_LIFT mt Subrep`, `Report.ORDER_FORM_SPECS mt_040207 Subrep`, `Report.ORDER_FORM_QI mt Subrep`  
**Opened from (VBA):** `Form_Order_Pack_Form`  

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
| TextBox | Entered String |  | Entered_String |  |  | 4.96, 0.25, 2.58, 0.00 |
| TextBox | Text122 |  | Modified_String |  |  | 4.96, 0.42, 2.58, 0.00 |
| ComboBox | Text125 |  | AGREEMENT_LOT_CN | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.AKA FROM NMIS_AGREEMENT_LOTS; |  | 2.86, 1.18, 2.33, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | ORDER_FORM_LEN_mt |  | Report.ORDER_FORM_LEN mt Subrep (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 0.04, 0.04, 3.29, 0.53 |
| Subform | ORDER_FORM_LIFT mt Subrep |  | Report.ORDER_FORM_LIFT mt Subrep (master: AGREEMENT_LOT_CN → child: AGR_LOT_CN) |  |  | 4.23, 0.04, 3.69, 0.53 |
| TextBox | TOTAL_CLIENT_ORDER | ORDER AMOUNT: | CLI_ORDER |  |  | 1.17, 0.67, 0.58, 0.00 |
| TextBox | SURPLUS | SURPLUS: | LOT_SURPLUS |  |  | 2.79, 0.67, 0.54, 0.00 |
| Line | Line69 |  |  |  |  | 1.17, 0.88, 0.62, 0.00 |
| Line | Line70 |  |  |  |  | 2.79, 0.88, 0.58, 0.00 |
| Subform | ORDER_FORM_SPECS mt_040207 Subrep |  | Report.ORDER_FORM_SPECS mt_040207 Subrep (master: ORDER_CN → child: CN) |  |  | 0.04, 0.92, 7.88, 0.75 |
| Subform | ORDER_FORM_QI mt Subrep |  | Report.ORDER_FORM_QI mt Subrep (master: ORDER_CN → child: ORDER_CN) |  |  | 3.38, 0.04, 0.83, 0.54 |
| TextBox | ORDER_CN |  | ORDER_CN |  |  | 3.46, 0.67, 0.83, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | ="Order Printed: " & Now() |  |  | 0.00, 0.44, 3.42, 0.19 |
| TextBox | Text104 |  | =[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7) |  |  | 3.41, 0.26, 4.34, 0.36 |
| Line | Line113 |  |  |  |  | 0.04, 0.26, 7.71, 0.00 |
| TextBox | Text123 |  | =[Entered_String] & " " & [Modified_String] |  |  | 0.00, 0.27, 4.54, 0.00 |
| TextBox | bap |  | bap |  |  | 1.70, 0.00, 4.68, 0.25 |
