# Form: NMIS_PROCESSING_ORDERS_ID_INFO subform

**Caption:** NMIS_ORDER_ID_INFO  
**Record source:**

```sql
NMIS_ORDER_ID_INFO Query
```

**Embedded in:** `Form:NMIS_PROCESSING_ORDERS_BY_CLIENT`, `Form:NMIS_PROCESSING_ORDERS_BY_ID`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SOURCE_CODE | Source | SOURCE |  |  | 0.95, 0.04, 3.80, 0.21 |
| TextBox | PRODUCT_DESC | Product | PRODUCT_DESC |  |  | 0.95, 0.28, 2.92, 0.21 |
| TextBox | NET_INV | Net | NET_INV |  |  | 3.46, 0.76, 0.75, 0.21 |
| TextBox | GROSS_INV | Gross | GROSS_INV |  |  | 1.33, 0.76, 0.75, 0.21 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 4.08, 0.04, 0.75, 0.21 |
| Label | Growing_Specs_Label | Growing Specs |  |  |  | 0.00, 0.52, 1.17, 0.21 |
| TextBox | SPEC_MIN |  | SPEC_MIN |  |  | 1.96, 0.52, 0.20, 0.21 |
| TextBox | SPEC_MAX |  | SPEC_MAX |  |  | 2.96, 0.52, 0.25, 0.21 |
| TextBox | CALIPER_MIN |  | CALIPER_MIN |  |  | 3.96, 0.52, 0.20, 0.21 |
| Label | hgt min_Label | hgt min |  |  |  | 1.29, 0.52, 0.62, 0.21 |
| Label | hgt_max_Label | hgt max |  |  |  | 2.25, 0.52, 0.67, 0.21 |
| Label | caliper_Label | caliper |  |  |  | 3.38, 0.52, 0.54, 0.21 |
| TextBox | TOTAL_REQUEST | Request | TOTAL_REQUEST |  |  | 1.33, 1.00, 0.75, 0.21 |
| TextBox | TOTAL_ORDER_AMT | Total Orders | ORDER_AMOUNT |  |  | 3.46, 1.00, 0.75, 0.21 |
| TextBox | SURPLUS |  | LOT_SURPLUS |  |  | 4.12, 0.38, 0.75, 0.21 |
