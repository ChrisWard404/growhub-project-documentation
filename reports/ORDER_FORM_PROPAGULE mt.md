# Report: ORDER_FORM_PROPAGULE mt

**Caption:** NMIS_ORDER_FORM_PROPAGULE  
**Grouping/sorting:** `ID`, `CLIENT_ASSOCIATE`, `ORDER_CN`  
**Subforms/subreports:** `Report.ORDER_FORM_SPECS_PROPAGULE mt Subrep`  
**Opened from (VBA):** `Form_NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE`, `Form_Order_Pack_Form`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text39 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.75, 0.38, 2.50, 0.21 |
| Label | Label68 | Propagule Harvest Order Form |  |  |  | 2.79, 0.62, 2.32, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.75, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.62, 0.17, 2.78, 0.20 |
| TextBox | Text120 |  | =[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7) |  |  | 0.00, 0.00, 2.62, 0.36 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | ORDER_FORM_SPECS mt Subrep |  | Report.ORDER_FORM_SPECS_PROPAGULE mt Subrep (master: ORDER_CN → child: CN) |  |  | 0.00, 1.19, 8.00, 3.71 |
| TextBox | ORDER_CN |  | ORDER_CN |  |  | 4.17, 0.88, 0.00, 0.00 |
| TextBox | Text66 | Fiscal Year: | FISCAL_YEAR |  |  | 7.33, 0.03, 0.46, 0.21 |
| TextBox | Text57 |  | PROD_DESC |  |  | 0.00, 0.03, 5.96, 0.21 |
| TextBox | ID | Nursery ID: | ID |  |  | 0.05, 0.43, 1.87, 0.27 |
| Label | SOURCE_CODE_Label | Source: |  |  |  | 2.26, 0.25, 0.53, 0.19 |
| TextBox | SOURCE_CODE |  | SOURCE_CODE |  |  | 2.26, 0.45, 5.28, 0.00 |
| TextBox | CLIENT | Client: | CLIENT |  |  | 0.62, 0.74, 5.42, 0.21 |
| Line | Line51 |  |  |  |  | 0.05, 0.66, 1.77, 0.00 |
| Line | Line52 |  |  |  |  | 2.27, 0.66, 5.25, 0.00 |
| TextBox | AGR_REQ | Total Agreement Request: | AMOUNT_REQUESTED |  |  | 1.75, 0.96, 1.04, 0.18 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 3.00, 0.92, 0.62, 0.21 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 4.67, 0.54, 0.00, 0.21 |
| TextBox | PACK_ID |  | =Left$([ORDER_CN],Len([ORDER_CN])-7) |  |  | 7.21, 0.91, 0.58, 0.23 |
| Line | Line106 |  |  |  |  | 7.21, 1.15, 0.58, 0.00 |
| Label | PACK_ID_Label | Order ID: |  |  |  | 6.62, 0.94, 0.58, 0.17 |
| TextBox | No_Harvest |  | No_Harvest |  |  | 1.92, 0.01, 4.17, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.04, 0.07, 1.96, 0.00 |
| TextBox | Text104 |  | =[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7) |  |  | 2.41, 0.00, 5.34, 0.36 |
