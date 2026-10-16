# Form: NMIS_PROCESSING_ORDERS_ID_INFO_New_Orders subform

**Caption:** NMIS_ORDER_ID_INFO  
**Record source:**

```sql
SELECT [**NMIS_ORDER_ID_INFO_ORDERS_NEW_TABLE].CN, [**NMIS_ORDER_ID_INFO_ORDERS_NEW_TABLE].TOTAL_REQUEST, [**NMIS_ORDER_ID_INFO_ORDERS_NEW_TABLE].PRODUCT_DESC, NMIS_LOT_SURPLUS2.NET_INV, [**NMIS_ORDER_ID_INFO_ORDERS_NEW_TABLE].GROSS_INV, [**NMIS_ORDER_ID_INFO_ORDERS_NEW_TABLE].SPEC_MIN, [**NMIS_ORDER_ID_INFO_ORDERS_NEW_TABLE].SPEC_MAX, [**NMIS_ORDER_ID_INFO_ORDERS_NEW_TABLE].CALIPER_MIN, [**NMIS_ORDER_ID_INFO_ORDERS_NEW_TABLE].SOURCE, IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]<>"040207",[**NMIS_ORDER_ID_INFO_ORDERS_NEW_TABLE].[ID_SOURCEB],[ID_LPN]) AS ID_SOURCEB, NMIS_LOT_SURPLUS2.SUM_ORDER, NMIS_LOT_SURPLUS2.LOT_SURPLUS FROM NMIS_LOT_SURPLUS2 INNER JOIN [**NMIS_ORDER_ID_INFO_ORDERS_NEW_TABLE] ON NMIS_LOT_SURPLUS2.CN = [**NMIS_ORDER_ID_INFO_ORDERS_NEW_TABLE].CN;
```

**Embedded in:** `Form:NMIS_PROCESSING_ORDERS_INPUT`, `Form:NMIS_PROCESSING_ORDERS_INPUT_LotIdLookup`, `Form:NMIS_PROCESSING_ORDERS_INPUTbu`, `Form:junk`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SOURCE_CODE | Source: | ID_SOURCEB |  |  | 0.67, 0.04, 3.29, 0.21 |
| TextBox | PRODUCT_DESC | Stock Type: | PRODUCT_DESC |  |  | 1.01, 0.28, 2.92, 0.21 |
| TextBox | NET_INV | Net: | NET_INV |  |  | 3.20, 0.76, 0.77, 0.21 |
| TextBox | GROSS_INV | Inventory     Gross: | GROSS_INV |  |  | 1.35, 0.76, 0.75, 0.21 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 3.40, 0.38, 0.75, 0.21 |
| Label | Growing_Specs_Label | Growing Specs: |  |  |  | 0.06, 0.52, 1.09, 0.20 |
| TextBox | SPEC_MIN |  | SPEC_MIN |  |  | 1.84, 0.52, 0.20, 0.21 |
| TextBox | SPEC_MAX |  | SPEC_MAX |  |  | 2.73, 0.52, 0.25, 0.21 |
| TextBox | CALIPER_MIN |  | CALIPER_MIN |  |  | 3.61, 0.52, 0.26, 0.21 |
| Label | hgt min_Label | hgt min: |  |  |  | 1.22, 0.52, 0.62, 0.21 |
| Label | hgt_max_Label | hgt max: |  |  |  | 2.06, 0.52, 0.67, 0.21 |
| Label | caliper_Label | caliper: |  |  |  | 3.06, 0.52, 0.55, 0.21 |
| TextBox | TOTAL_REQUEST | Sow Request: | TOTAL_REQUEST |  |  | 1.04, 1.00, 0.75, 0.21 |
| TextBox | TOTAL_ORDER_AMT | Total Orders for Lot: | SUM_ORDER |  |  | 3.20, 1.00, 0.77, 0.21 |
| TextBox | SURPLUS |  | LOT_SURPLUS |  |  | 3.38, 0.08, 0.75, 0.21 |
