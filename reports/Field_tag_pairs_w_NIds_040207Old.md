# Report: Field_tag_pairs_w_NIds_040207Old

**Caption:** Tag pairs with Nursery ID's  
**Record source:**

```sql
Field_tag_pairs Query
```

**Grouping/sorting:** `BorC`, `ID`, `PLNTMSTR_SYMBOL`, `SPECIES_PRODUCT_DESC`, `SIZE_SPEC_STRING`, `Major_Client`, `SOURCE_CODE`  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_SOURCE_LOTS`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text179 |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, IIf(([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="040207" And Not IsNull([AKA])),[AKA],[NMIS_SOURCE_LOTS].[ID]) AS ID2 FROM NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN; |  | 3.32, 1.56, 3.54, 0.44 |
| Label | Nid Label | NId: |  |  |  | 2.07, 1.80, 0.28, 0.16 |
| TextBox | Text233 |  | ="*" & [ID] & "*" |  |  | 1.93, 1.46, 1.36, 0.25 |
| TextBox | Text234 |  | ="*" & [ID] & "*" |  |  | 1.93, 1.56, 1.36, 0.25 |
| TextBox | Combo241 |  | ID |  |  | 2.34, 1.82, 0.88, 0.00 |
| TextBox | Text290 |  | ID |  |  | 3.32, 1.21, 3.52, 0.48 |
| TextBox | Text291 |  | ="*" & [ID] & "*" |  |  | 1.96, 0.40, 1.36, 0.25 |
| TextBox | Text292 |  | ="*" & [ID] & "*" |  |  | 1.96, 0.58, 1.36, 0.25 |
| Label | Label293 | NId: |  |  |  | 2.17, 0.78, 0.28, 0.16 |
| TextBox | Text294 |  | ID |  |  | 2.44, 0.80, 0.88, 0.00 |
| ComboBox | Combo295 |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, IIf(([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="040207" And Not IsNull([AKA])),[AKA],[NMIS_SOURCE_LOTS].[ID]) AS ID2 FROM NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN; |  | 3.32, 0.56, 3.54, 0.44 |
| TextBox | Text297 |  | ID |  |  | 3.32, 0.20, 3.52, 0.48 |
| TextBox | PRODUCT_DESC |  | PRODUCT_DESC |  |  | 1.96, 0.21, 1.33, 0.25 |
| TextBox | Text301 |  | PRODUCT_DESC |  |  | 1.94, 1.21, 1.35, 0.25 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text181 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.67, 0.00, 1.32, 0.12 |
