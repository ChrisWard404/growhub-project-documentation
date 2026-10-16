# Report: LOTS_WO_EXTRACTION_AMOUNTS

**Grouping/sorting:** `Product_Class_for_Cycle2`, `AGREEMENT_LOT_ID`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | PRODUCT_CLASS_Label | Product |  |  |  | 0.04, 0.83, 1.18, 0.17 |
| Label | ID_Label | ID |  |  |  | 1.25, 0.83, 1.59, 0.17 |
| Label | CLIENT_ASSOCIATE_Label | Client |  |  |  | 2.89, 0.83, 0.88, 0.17 |
| Label | PACK_ID_Label | Order ID |  |  |  | 3.96, 0.83, 0.54, 0.17 |
| Label | ACTIVITY_CODE_Label | Order Code |  |  |  | 4.77, 0.83, 0.75, 0.17 |
| Label | ORDER_AMT_Label | Order Amount |  |  |  | 5.61, 0.83, 1.12, 0.17 |
| Line | Line17 |  |  |  |  | 0.04, 1.04, 6.71, 0.00 |
| TextBox | NURSERY |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.42, 0.38, 2.56, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.46, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.33, 0.17, 2.78, 0.20 |
| Label | Label21 | Container Orders Without Extract Transactions |  |  |  | 2.27, 0.58, 2.86, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_CLASS |  | Product_Class_for_Cycle2 |  |  | 0.00, 0.00, 1.22, 0.00 |
| TextBox | ID |  | AGREEMENT_LOT_ID |  |  | 1.25, 0.00, 1.59, 0.00 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 2.89, 0.00, 0.88, 0.00 |
| TextBox | ord_ID |  | ORD_ID |  |  | 4.06, 0.00, 0.52, 0.00 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 4.73, 0.00, 0.75, 0.00 |
| TextBox | ORDER_AMT |  | SumOfORDER_AMT |  |  | 5.56, 0.00, 1.12, 0.00 |
| TextBox | CandN_NOTES |  | CandN_NOTES |  |  | 2.90, 0.17, 4.44, 0.02 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text13 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.18 |
| TextBox | Text14 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.71, 0.17, 3.50, 0.18 |
