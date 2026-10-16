# Form: NMIS_PROCESSING_ORDERS_ID_INFO_Review_Orders_Form

**Caption:** Order ID Info  
**Record source:**

```sql
SELECT [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].CN, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].TOTAL_REQUEST, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].PRODUCT_DESC, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].NET_INV, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].GROSS_INV, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].SPEC_MIN, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].SPEC_MAX, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].CALIPER_MIN, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].SOURCE, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].ID_SOURCEB, NMIS_LOT_SURPLUS2.SUM_ORDER, NMIS_LOT_SURPLUS2.LOT_SURPLUS, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].ID, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].LastOfNOTE, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].MaxOfACTIVITY_DATE AS ACTIVITY_DATE FROM NMIS_LOT_SURPLUS2 INNER JOIN [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE] ON NMIS_LOT_SURPLUS2.CN = [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].CN WHERE ((([**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].CN)=[Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![AGREEMENT_LOT_CN]));
```

**Opened from (VBA):** `Form_NMIS_PROCESSING_ORDERS_ID_UPDATE subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SOURCE_CODE | Source: | ID_SOURCEB |  |  | 1.02, 0.60, 3.29, 0.21 |
| TextBox | PRODUCT_DESC | Stock Type: | PRODUCT_DESC |  |  | 1.36, 0.88, 2.92, 0.21 |
| TextBox | NET_INV | Net: | NET_INV |  |  | 3.60, 1.68, 0.77, 0.24 |
| TextBox | GROSS_INV | Gross: | GROSS_INV |  |  | 2.32, 1.68, 0.75, 0.24 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 3.75, 0.61, 0.75, 0.21 |
| Label | Growing_Specs_Label | Growing Specs: |  |  |  | 0.42, 1.15, 1.09, 0.20 |
| TextBox | SPEC_MIN |  | SPEC_MIN |  |  | 2.14, 1.11, 0.37, 0.24 |
| TextBox | SPEC_MAX |  | SPEC_MAX |  |  | 3.19, 1.11, 0.38, 0.24 |
| TextBox | CALIPER_MIN |  | CALIPER_MIN |  |  | 4.16, 1.11, 0.37, 0.24 |
| Label | hgt min_Label | hgt min: |  |  |  | 1.49, 1.15, 0.62, 0.21 |
| Label | hgt_max_Label | hgt max: |  |  |  | 2.51, 1.15, 0.67, 0.21 |
| Label | caliper_Label | caliper: |  |  |  | 3.58, 1.15, 0.55, 0.21 |
| TextBox | TOTAL_REQUEST | Sow Request: | TOTAL_REQUEST |  |  | 1.49, 2.54, 0.75, 0.21 |
| TextBox | TOTAL_ORDER_AMT | Total Orders for Lot: | SUM_ORDER |  |  | 3.65, 2.54, 0.77, 0.21 |
| TextBox | SURPLUS |  | LOT_SURPLUS |  |  | 3.90, 0.32, 0.75, 0.21 |
| TextBox | Text108 |  | ID |  |  | 0.04, 0.09, 4.92, 0.38 |
| TextBox | Text110 | Balance Available: | LOT_SURPLUS |  |  | 2.82, 2.92, 1.17, 0.29 |
| TextBox | Inv_Note | Note: | LastOfNOTE |  |  | 0.92, 1.96, 3.50, 0.42 |
| Rectangle | Box115 |  |  |  |  | 0.42, 1.42, 4.09, 1.00 |
| TextBox | Inv_Date | Date: | ACTIVITY_DATE |  |  | 0.92, 1.68, 0.75, 0.24 |
| Label | Label119 | INVENTORY |  |  |  | 2.11, 1.48, 0.86, 0.20 |
| Rectangle | Box122 |  |  |  |  | 0.42, 2.85, 4.09, 0.44 |
