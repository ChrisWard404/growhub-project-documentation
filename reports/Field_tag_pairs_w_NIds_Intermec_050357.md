# Report: Field_tag_pairs_w_NIds_Intermec_050357

**Caption:** Tag pairs with Nursery ID's - Label Printer  
**Record source:**

```sql
Field_tag_pairs Query
```

**Grouping/sorting:** `PRODUCT_DESC`, `PLNTMSTR_SYMBOL`, `SPECIES_PRODUCT_DESC`, `SIZE_SPEC_STRING`, `Major_Client`, `SOURCE_CODE`  
**Backend tables referenced:** `NMIS_SOURCE_LOTS`  
**Subforms/subreports:** `Report.Field_tag_agreements_050357 subreport`, `Report.Field_tag_agreements_050357 subreport`  
**Opened from (VBA):** `Form_Field_Tags`, `Form_Field_Tags_BU`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label37 | SId: |  |  |  | 8.19, 0.16, 0.28, 0.17 |
| ComboBox | Text154 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 8.48, 0.16, 0.91, 0.00 |
| TextBox | Text290 |  | ID |  |  | 4.21, 1.12, 3.79, 0.75 |
| TextBox | Text317 |  | SOURCE_CODE |  |  | 4.21, 1.03, 3.77, 0.25 |
| TextBox | Text319 |  | ID |  |  | 8.19, 0.32, 1.68, 0.36 |
| Label | Label320 | SId: |  |  |  | 8.19, 1.14, 0.28, 0.17 |
| ComboBox | Combo321 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 8.48, 1.14, 0.91, 0.00 |
| TextBox | Text322 |  | ID |  |  | 8.19, 1.30, 1.68, 0.36 |
| TextBox | Text327 |  | V_SPD |  |  | 1.03, 0.16, 3.36, 0.00 |
| TextBox | Text328 |  | ID |  |  | 4.21, 0.11, 3.77, 0.75 |
| TextBox | Text329 |  | SOURCE_CODE |  |  | 4.21, 0.04, 3.76, 0.25 |
| Subform | Field_tag_agreements subreport |  | Report.Field_tag_agreements_050357 subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 1.03, 0.33, 3.38, 0.52 |
| Subform | Child332 |  | Report.Field_tag_agreements_050357 subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 1.04, 1.31, 3.38, 0.52 |
| TextBox | Text333 |  | V_SPD |  |  | 1.03, 1.15, 3.36, 0.00 |
| TextBox | Text298 |  | =IIf([Forms]![Field_Tags]![Split_Lot],"SPLIT LOT") |  |  | 4.42, 0.74, 3.58, 0.00 |
| TextBox | Text334 |  | =IIf([Forms]![Field_Tags]![Split_Lot],"SPLIT LOT") |  |  | 4.42, 1.75, 3.58, 0.00 |
