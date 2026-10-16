# Report: Field_tag_pairs_w_NIds_040207_split_lot

**Caption:** Tag pairs with Nursery ID's  
**Record source:**

```sql
Field_tag_pairs Query
```

**Grouping/sorting:** `BorC`, `ID`, `PLNTMSTR_SYMBOL`, `SPECIES_PRODUCT_DESC`, `SIZE_SPEC_STRING`, `Major_Client`, `SOURCE_CODE`  
**Backend tables referenced:** `NMIS_SOURCE_LOTS`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text179 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 3.32, 0.07, 3.54, 0.51 |
| TextBox | Text290 |  | ID |  |  | 3.33, 0.40, 3.52, 0.48 |
| TextBox | Text291 |  | ="*" & [ID] & "*" |  |  | 1.96, 0.41, 1.36, 0.25 |
| TextBox | Text292 |  | ="*" & [ID] & "*" |  |  | 1.96, 0.59, 1.36, 0.25 |
| TextBox | PRODUCT_DESC |  | PRODUCT_DESC |  |  | 1.96, 0.18, 1.33, 0.25 |
| TextBox | Split_Lot |  | =IIf([Forms]![Field_Tags]![Split_Lot],"Split Lot") |  |  | 3.33, 0.81, 3.54, 0.00 |
| ComboBox | Combo306 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 3.32, 1.07, 3.54, 0.51 |
| TextBox | Text307 |  | ID |  |  | 3.33, 1.40, 3.52, 0.48 |
| TextBox | Text308 |  | ="*" & [ID] & "*" |  |  | 1.96, 1.41, 1.36, 0.25 |
| TextBox | Text309 |  | ="*" & [ID] & "*" |  |  | 1.96, 1.59, 1.36, 0.25 |
| TextBox | Text310 |  | PRODUCT_DESC |  |  | 1.96, 1.18, 1.33, 0.25 |
| TextBox | Text311 |  | =IIf([Forms]![Field_Tags]![Split_Lot],"Split Lot") |  |  | 3.33, 1.81, 3.54, 0.00 |
| Label | Label293 | NId: |  |  |  | 2.08, 0.79, 0.28, 0.16 |
| TextBox | Text294 |  | ID |  |  | 2.36, 0.81, 0.88, 0.00 |
| Label | Label312 | NId: |  |  |  | 2.08, 1.79, 0.28, 0.16 |
| TextBox | Text313 |  | ID |  |  | 2.36, 1.81, 0.88, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text181 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.72, 0.00, 1.32, 0.12 |
