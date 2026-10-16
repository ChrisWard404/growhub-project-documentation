# Report: PRODUCT_STORAGE_SUMMARY_SUBREPORT

**Record source:**

```sql
SELECT [*PRODUCT_STORAGE_SUMMARY_SUBREPORT_TABLE].*, [ORDER] & [SUBLOT_NO] AS Order_SUBLOT, [CLIENT_ASSOCIATE] & "/" & [ORDER] AS CA_ORDER FROM [*PRODUCT_STORAGE_SUMMARY_SUBREPORT_TABLE] ORDER BY [*PRODUCT_STORAGE_SUMMARY_SUBREPORT_TABLE].ORDER, [*PRODUCT_STORAGE_SUMMARY_SUBREPORT_TABLE].LOCATION, [*PRODUCT_STORAGE_SUMMARY_SUBREPORT_TABLE].SUBLOT_NO, [*PRODUCT_STORAGE_SUMMARY_SUBREPORT_TABLE].AMT_PER_UNIT;
```

**Embedded in:** `Report:Product_Storage_Detailed_Summary`, `Report:Product_Storage_Detailed_Summary_with_notes`, `Report:Product_Storage_Lot_Index`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ORDER |  | CA_ORDER |  |  | 0.00, 0.00, 1.08, 0.21 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 1.75, 0.00, 0.38, 0.21 |
| TextBox | SumOfNUMBER_OF_ACTIVITY_UNITS |  | SumOfNUMBER_OF_ACTIVITY_UNITS |  |  | 3.20, 0.00, 0.46, 0.21 |
| TextBox | AMT_PER_UNIT |  | AMT_PER_UNIT |  |  | 4.60, 0.00, 0.75, 0.21 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 1.08, 0.00, 0.66, 0.21 |
| Label | Label5 | @ |  |  |  | 4.39, 0.00, 0.19, 0.21 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 5.65, 0.00, 0.46, 0.21 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 6.02, 0.00, 0.00, 0.21 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 3.67, 0.00, 0.71, 0.21 |
| Label | Label10 | = |  |  |  | 5.35, 0.00, 0.14, 0.21 |
| TextBox | BALANCE |  | BALANCE |  |  | 5.52, 0.00, 0.74, 0.21 |
| TextBox | LOCATION |  | LOCATION |  |  | 2.14, 0.00, 1.04, 0.21 |
