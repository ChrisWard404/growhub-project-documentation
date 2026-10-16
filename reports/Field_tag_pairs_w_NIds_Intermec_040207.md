# Report: Field_tag_pairs_w_NIds_Intermec_040207

**Caption:** Tag pairs with Nursery ID's - Label Printer  
**Record source:**

```sql
Field_tag_pairs Query
```

**Grouping/sorting:** `PRODUCT_DESC`, `PLNTMSTR_SYMBOL`, `SPECIES_PRODUCT_DESC`, `SIZE_SPEC_STRING`, `Major_Client`, `SOURCE_CODE`  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_SOURCE_LOTS`  
**Subforms/subreports:** `Report.Field_tag_agreements subreport`, `Report.Field_tag_agreements subreport`  
**Opened from (VBA):** `Form_Field_Tags`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text179 |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, IIf(([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="040207" And Not IsNull([AKA])),[AKA],[NMIS_SOURCE_LOTS].[ID]) AS ID2 FROM NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN; |  | 4.45, 1.41, 3.54, 0.44 |
| TextBox | Text290 |  | ID |  |  | 4.45, 1.05, 3.52, 0.48 |
| ComboBox | Combo295 |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, IIf(([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="040207" And Not IsNull([AKA])),[AKA],[NMIS_SOURCE_LOTS].[ID]) AS ID2 FROM NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN; |  | 4.45, 0.41, 3.54, 0.44 |
| TextBox | Text297 |  | ID |  |  | 4.45, 0.04, 3.52, 0.48 |
| TextBox | PRODUCT_DESC |  | PRODUCT_DESC |  |  | 3.08, 0.16, 1.33, 0.25 |
| TextBox | Text301 |  | PRODUCT_DESC |  |  | 3.06, 1.16, 1.35, 0.25 |
| Subform | Child279 |  | Report.Field_tag_agreements subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 3.29, 0.43, 1.13, 0.21 |
| Subform | Child302 |  | Report.Field_tag_agreements subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 3.29, 1.43, 1.13, 0.21 |
