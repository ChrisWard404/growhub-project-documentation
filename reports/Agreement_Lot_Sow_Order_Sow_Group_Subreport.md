# Report: Agreement_Lot_Sow_Order_Sow_Group_Subreport

**Caption:** AGREEMENT_LOT_SOWING_ORDER_Group_Summary  
**Record source:**

```sql
Agreement_Lot_Sow_Order
```

**Grouping/sorting:** `SOWING_ORDER`, `PRODUCT_DESC`, `PLNTMSTR_SYMBOL`, `SPECIES_PRODUCT_DESC`, `SIZE_SPEC_STRING`, `CLIENT_ASSOCIATE`  
**Backend tables referenced:** `NMIS_SOWING_ORDER`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | TOTAL_REQUEST_Label | Total Request |  |  |  | 2.79, 0.00, 0.96, 0.18 |
| Label | EST_CONTAINERS_REQUIRED_Label | Est. Bed Ft |  |  |  | 5.30, 0.01, 0.45, 0.33 |
| Label | SOURCE_CODE_Label | Sowing Group |  |  |  | 0.12, 0.18, 1.00, 0.18 |
| Label | Label89 | Calculated Sow |  |  |  | 3.83, 0.00, 0.98, 0.18 |
| TextBox | Text106 |  | ="(" & [UNIT_CODE] & ")" |  |  | 3.01, 0.18, 0.62, 0.00 |
| TextBox | Text108 |  | ="(" & [UNIT_CODE] & ")" |  |  | 4.08, 0.18, 0.47, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text102 |  | SOWING_ORDER | SELECT NMIS_SOWING_ORDER.SOWING_ORDER, NZ([SOWING_ORDER_CODE],"None") AS SO_Code FROM NMIS_SOWING_ORDER; |  | 0.46, 0.00, 1.08, 0.00 |
| TextBox | Text54 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 2.55, 0.00, 0.98, 0.00 |
| TextBox | Text97 |  | =Sum([Agreement_Est_Containers]) |  |  | 4.78, 0.00, 1.01, 0.00 |
| TextBox | Text117 |  | =Sum([Actual_Sow_Calculated]) |  |  | 3.70, 0.00, 0.84, 0.00 |
