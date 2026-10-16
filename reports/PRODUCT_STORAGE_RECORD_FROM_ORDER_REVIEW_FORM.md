# Report: PRODUCT_STORAGE_RECORD_FROM_ORDER_REVIEW_FORM

**Grouping/sorting:** `Grow_Location`, `ID`, `CN`  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ORDERS`, `NMIS_PRODUCTS`, `NMIS_PRODUCT_TYPES`, `NMIS_SPECIES_PRODUCTS`  
**Opened from (VBA):** `Form_NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.75, 0.38, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 3.75, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 3.62, 0.17, 2.78, 0.20 |
| Label | REPORT_LABEL | PRODUCT STORAGE RECORD |  |  |  | 3.75, 0.58, 2.50, 0.21 |
| TextBox | INSERTED_DATE | Order Date: | INSERTED_DATE |  |  | 0.77, 0.72, 0.00, 0.16 |
| TextBox | Grow_Location |  | Grow_Location |  |  | 6.90, 0.61, 3.00, 0.26 |
| TextBox | Text91 |  | ID |  |  | 0.00, 0.00, 3.17, 0.42 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID | Agreement Lot ID | ID |  |  | 0.08, 0.29, 1.50, 0.25 |
| TextBox | SOURCE_CODE | Source | ID_SOURCE2 |  |  | 1.58, 0.29, 3.88, 0.25 |
| TextBox | CLIENT | Associate | CLIENT |  |  | 5.46, 0.29, 0.75, 0.25 |
| TextBox | CLIENT_NAME | Associate Name | CLIENT_NAME |  |  | 6.21, 0.29, 3.70, 0.25 |
| TextBox | ORDER_AMT | Order Amt | ORDER_AMT |  |  | 0.08, 0.81, 1.16, 0.25 |
| TextBox | ORUN | Overrun Amt | ORUN |  |  | 1.25, 0.81, 0.96, 0.25 |
| TextBox | ALL | Overrun All | ALL |  |  | 2.21, 0.81, 0.96, 0.25 |
| TextBox | ORDER_TYPE | Order Code | ORDER_TYPE |  |  | 3.17, 0.81, 0.00, 0.25 |
| TextBox | SERVICES_STRING | Special Services | SERVICES_STRING |  |  | 4.17, 0.81, 3.83, 0.25 |
| TextBox | GRADING_SPECS | Grading Specifications | GRADING_SPECS |  |  | 8.00, 0.81, 1.92, 0.25 |
| Rectangle | Box22 |  |  |  |  | 0.08, 0.04, 9.83, 1.04 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box26 |  |  |  |  | 0.08, 0.00, 9.83, 5.47 |
| Label | Label29 | TOTALS: |  |  |  | 0.29, 5.71, 0.71, 0.21 |
| Label | Label30 | Box/Bag(s): __________ |  |  |  | 1.52, 5.71, 1.57, 0.21 |
| Line | Line34 |  |  |  |  | 0.08, 0.50, 9.85, 0.00 |
| Line | Line35 |  |  |  |  | 0.08, 0.75, 9.85, 0.00 |
| Line | Line36 |  |  |  |  | 0.08, 1.00, 9.85, 0.00 |
| Line | Line37 |  |  |  |  | 0.08, 1.25, 9.85, 0.00 |
| Line | Line38 |  |  |  |  | 0.08, 1.50, 9.85, 0.00 |
| Line | Line39 |  |  |  |  | 0.08, 1.75, 9.85, 0.00 |
| Line | Line40 |  |  |  |  | 0.08, 2.00, 9.85, 0.00 |
| Line | Line41 |  |  |  |  | 0.08, 2.25, 9.85, 0.00 |
| Line | Line42 |  |  |  |  | 0.08, 2.50, 9.85, 0.00 |
| Line | Line43 |  |  |  |  | 0.08, 2.75, 9.85, 0.00 |
| Line | Line44 |  |  |  |  | 0.08, 3.00, 9.85, 0.00 |
| Line | Line45 |  |  |  |  | 0.08, 3.25, 9.85, 0.00 |
| Line | Line46 |  |  |  |  | 0.08, 3.50, 9.85, 0.00 |
| Line | Line47 |  |  |  |  | 0.08, 3.75, 9.85, 0.00 |
| Line | Line48 |  |  |  |  | 0.08, 4.00, 9.85, 0.00 |
| Line | Line49 |  |  |  |  | 0.08, 4.25, 9.85, 0.00 |
| Line | Line50 |  |  |  |  | 0.08, 4.50, 9.85, 0.00 |
| Line | Line51 |  |  |  |  | 0.08, 4.75, 9.85, 0.00 |
| Line | Line52 |  |  |  |  | 0.08, 5.00, 9.85, 0.00 |
| Line | Line53 |  |  |  |  | 0.08, 5.25, 9.85, 0.00 |
| Label | Label54 | Date |  |  |  | 0.79, 0.27, 0.43, 0.17 |
| Label | Label55 | Location |  |  |  | 1.50, 0.27, 0.83, 0.17 |
| Line | Line56 |  |  |  |  | 0.08, 0.46, 9.85, 0.00 |
| Label | Label57 | Num. Bags |  |  |  | 2.71, 0.06, 0.42, 0.38 |
| Label | Label58 | # Per Bag |  |  |  | 3.25, 0.06, 0.42, 0.38 |
| Label | Label59 | Total  |  |  |  | 3.83, 0.25, 0.50, 0.19 |
| Label | Label60 | Date |  |  |  | 4.50, 0.27, 0.43, 0.17 |
| Label | Label61 | Out |  |  |  | 5.12, 0.27, 0.43, 0.17 |
| Label | Label62 | Bal. |  |  |  | 5.71, 0.27, 0.43, 0.17 |
| Label | Label63 | Date |  |  |  | 6.29, 0.27, 0.43, 0.17 |
| Label | Label64 | Out |  |  |  | 6.92, 0.27, 0.43, 0.17 |
| Label | Label65 | Bal. |  |  |  | 7.50, 0.27, 0.43, 0.17 |
| Label | Label66 | Date |  |  |  | 8.08, 0.27, 0.43, 0.17 |
| Label | Label67 | Out |  |  |  | 8.71, 0.27, 0.43, 0.17 |
| Label | Label68 | Bal. |  |  |  | 9.33, 0.27, 0.43, 0.17 |
| Line | Line69 |  |  |  |  | 1.29, 0.00, 0.00, 5.46 |
| Line | Line70 |  |  |  |  | 2.67, 0.00, 0.00, 5.46 |
| Line | Line71 |  |  |  |  | 3.17, 0.00, 0.00, 5.46 |
| Line | Line72 |  |  |  |  | 3.75, 0.00, 0.00, 5.46 |
| Line | Line73 |  |  |  |  | 4.42, 0.00, 0.00, 5.46 |
| Line | Line74 |  |  |  |  | 5.04, 0.00, 0.00, 5.46 |
| Line | Line75 |  |  |  |  | 5.62, 0.00, 0.00, 5.46 |
| Line | Line76 |  |  |  |  | 6.21, 0.00, 0.00, 5.46 |
| Line | Line77 |  |  |  |  | 6.83, 0.00, 0.00, 5.46 |
| Line | Line78 |  |  |  |  | 7.42, 0.00, 0.00, 5.46 |
| Line | Line79 |  |  |  |  | 8.00, 0.00, 0.00, 5.46 |
| Line | Line80 |  |  |  |  | 8.62, 0.00, 0.00, 5.46 |
| Line | Line81 |  |  |  |  | 9.25, 0.00, 0.00, 5.46 |
| Label | Label83 | Order ID |  |  |  | 0.13, 0.08, 0.44, 0.35 |
| Line | Line84 |  |  |  |  | 0.67, 0.00, 0.00, 5.46 |
| Label | Label85 | Shelves: __________ |  |  |  | 4.62, 5.70, 1.42, 0.21 |
| ComboBox | CN |  | ID | SELECT NMIS_AGREEMENT_LOTS.ID, Last(Left$(nmis_orders.CN,Len(nmis_orders.cn)-7)) AS Order_ID FROM (NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE = NMIS_PRODUCTS.END_PRODUCT_TYPE) INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN GROUP BY NMIS_AGREEMENT_LOTS.ID ORDER BY NMIS_AGREEMENT_LOTS.ID; |  | 0.12, 0.51, 0.54, 0.24 |
| ComboBox | PRODUCT_GROUP |  | PRODUCT_GROUP | SELECT NMIS_PRODUCT_TYPES.PRODUCT_GROUP, IIf([Product_Group]="plant","m's: __________","lb's: __________") AS Product_Units FROM NMIS_PRODUCT_TYPES;  |  | 3.16, 5.71, 1.34, 0.21 |
| TextBox | Text89 |  | ID |  |  | 6.75, 5.50, 3.17, 0.42 |
