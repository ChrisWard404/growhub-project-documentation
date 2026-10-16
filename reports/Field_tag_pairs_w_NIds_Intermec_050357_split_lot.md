# Report: Field_tag_pairs_w_NIds_Intermec_050357_split_lot

**Caption:** Tag pairs without Nursery ID's  
**Record source:**

```sql
Field_tag_pairs Query
```

**Grouping/sorting:** `PRODUCT_DESC`, `PLNTMSTR_SYMBOL`, `SPECIES_PRODUCT_DESC`, `SIZE_SPEC_STRING`, `Major_Client`, `SOURCE_CODE`  
**Backend tables referenced:** `NMIS_SOURCE_LOTS`  
**Subforms/subreports:** `Report.Field_tag_agreements_050357 subreport`, `Report.Field_tag_agreements_050357 subreport`, `Report.Field_tag_agreements_050357 subreport`, `Report.Field_tag_agreements_050357 subreport`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label37 | SId: |  |  |  | 8.19, 0.14, 0.28, 0.17 |
| ComboBox | Text154 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 8.48, 0.14, 0.91, 0.00 |
| TextBox | Text290 |  | ID |  |  | 4.21, 1.10, 3.79, 0.75 |
| TextBox | Text317 |  | SOURCE_CODE |  |  | 4.21, 1.05, 3.77, 0.25 |
| TextBox | Text319 |  | ID |  |  | 8.19, 0.30, 1.68, 0.36 |
| Label | Label320 | SId: |  |  |  | 8.19, 1.11, 0.28, 0.17 |
| ComboBox | Combo321 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 8.48, 1.11, 0.91, 0.00 |
| TextBox | Text322 |  | ID |  |  | 8.19, 1.28, 1.68, 0.36 |
| TextBox | Text327 |  | V_SPD |  |  | 1.03, 0.20, 3.36, 0.00 |
| TextBox | Text328 |  | ID |  |  | 4.21, 0.09, 3.77, 0.75 |
| TextBox | Text329 |  | SOURCE_CODE |  |  | 4.21, 0.06, 3.76, 0.25 |
| Subform | Field_tag_agreements subreport |  | Report.Field_tag_agreements_050357 subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 1.03, 0.38, 3.38, 0.52 |
| Subform | Child332 |  | Report.Field_tag_agreements_050357 subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 1.04, 1.35, 3.38, 0.52 |
| TextBox | Text333 |  | V_SPD |  |  | 1.03, 1.19, 3.36, 0.00 |
| TextBox | Text298 |  | =IIf([Forms]![Field_Tags]![Split_Lot],"SPLIT LOT") |  |  | 4.42, 0.72, 3.58, 0.00 |
| TextBox | Text334 |  | =IIf([Forms]![Field_Tags]![Split_Lot],"SPLIT LOT") |  |  | 4.42, 1.73, 3.58, 0.00 |
| Label | Label335 | SId: |  |  |  | 8.19, 2.07, 0.28, 0.17 |
| ComboBox | Combo336 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 8.48, 2.07, 0.91, 0.00 |
| TextBox | Text337 |  | ID |  |  | 4.21, 3.03, 3.79, 0.75 |
| TextBox | Text338 |  | SOURCE_CODE |  |  | 4.21, 2.98, 3.77, 0.25 |
| TextBox | Text339 |  | ID |  |  | 8.19, 2.24, 1.68, 0.36 |
| Label | Label340 | SId: |  |  |  | 8.19, 3.04, 0.28, 0.17 |
| ComboBox | Combo341 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 8.48, 3.04, 0.91, 0.00 |
| TextBox | Text342 |  | ID |  |  | 8.19, 3.21, 1.68, 0.36 |
| TextBox | Text343 |  | V_SPD |  |  | 1.03, 2.11, 3.36, 0.00 |
| TextBox | Text344 |  | ID |  |  | 4.21, 2.03, 3.77, 0.75 |
| TextBox | Text345 |  | SOURCE_CODE |  |  | 4.21, 2.00, 3.76, 0.25 |
| Subform | Child346 |  | Report.Field_tag_agreements_050357 subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 1.03, 2.29, 3.38, 0.52 |
| Subform | Child347 |  | Report.Field_tag_agreements_050357 subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 1.04, 3.26, 3.38, 0.52 |
| TextBox | Text348 |  | V_SPD |  |  | 1.03, 3.09, 3.36, 0.00 |
| TextBox | Text349 |  | =IIf([Forms]![Field_Tags]![Split_Lot],"SPLIT LOT") |  |  | 4.42, 2.66, 3.58, 0.00 |
| TextBox | Text350 |  | =IIf([Forms]![Field_Tags]![Split_Lot],"SPLIT LOT") |  |  | 4.42, 3.66, 3.58, 0.00 |
