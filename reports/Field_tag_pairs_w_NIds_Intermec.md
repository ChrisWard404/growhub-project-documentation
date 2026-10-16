# Report: Field_tag_pairs_w_NIds_Intermec

**Caption:** Tag pairs with Nursery ID's - Labelprinter  
**Record source:**

```sql
Field_tag_pairs Query
```

**Grouping/sorting:** `PRODUCT_DESC`, `PLNTMSTR_SYMBOL`, `SPECIES_PRODUCT_DESC`, `SIZE_SPEC_STRING`, `Major_Client`, `SOURCE_CODE`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`  
**Subforms/subreports:** `Report.Field_tag_agreements subreport`, `Report.Field_tag_agreements subreport`  
**Opened from (VBA):** `Form_Field_Tags`, `Form_Field_Tags_BU`, `Form_NMIS_SOURCE_SPP_WORKSHEET_NEW`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label37 | SId: |  |  |  | 8.17, 0.12, 0.29, 0.17 |
| Label | Label39 | Source Code: |  |  |  | 4.46, 0.75, 0.80, 0.16 |
| Label | Label41 | Key: |  |  |  | 4.68, 0.04, 0.31, 0.16 |
| Label | Label44 | Spec: |  |  |  | 6.58, 0.24, 0.33, 0.16 |
| Label | Label45 | Age: |  |  |  | 6.61, 0.41, 0.30, 0.17 |
| TextBox | Text145 |  | ID |  |  | 4.98, 0.04, 0.57, 0.00 |
| TextBox | Text157 |  | =[TOTAL_REQUEST] & [Product_Unit] |  |  | 4.81, 0.39, 0.56, 0.00 |
| TextBox | Text160 |  | END_FY |  |  | 3.57, 0.21, 0.36, 0.00 |
| Label | Label169 | - |  |  |  | 3.49, 0.21, 0.12, 0.17 |
| Label | Label171 | Amt: |  |  |  | 4.55, 0.40, 0.27, 0.16 |
| Label | Label172 | Spe: |  |  |  | 6.66, 0.07, 0.25, 0.16 |
| Label | Label180 | SId: |  |  |  | 5.55, 0.04, 0.29, 0.17 |
| ComboBox | Text179 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 5.83, 0.04, 0.81, 0.00 |
| ComboBox | Text155 |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, [VERNACULAR] & " " AS Expr1 FROM NMIS_SPECIES INNER JOIN NMIS_SOURCE_LOTS ON (NMIS_SPECIES.[PLNTMSTR_SYMBOL] = NMIS_SOURCE_LOTS.[PLNTMSTR_SYMBOL]) AND (NMIS_SPECIES.[PLNTMSTR_SYMBOL] = NMIS_SOURCE_LOTS.[PLNTMSTR_SYMBOL]); |  | 2.76, 0.42, 1.75, 0.00 |
| ComboBox | Text154 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 8.46, 0.12, 1.17, 0.00 |
| TextBox | Text158 |  | BEGIN_FY |  |  | 3.09, 0.21, 0.37, 0.00 |
| TextBox | Text233 |  | ID |  |  | 1.49, 1.30, 2.74, 0.54 |
| Label | Label250 | Source Code: |  |  |  | 4.54, 2.76, 0.72, 0.16 |
| Label | Label251 | Key: |  |  |  | 4.68, 2.04, 0.31, 0.16 |
| TextBox | Text254 |  | ID |  |  | 4.98, 2.04, 0.57, 0.00 |
| TextBox | Text255 |  | =[TOTAL_REQUEST] & [Product_Unit] |  |  | 4.81, 2.38, 0.56, 0.00 |
| TextBox | Text256 |  | END_FY |  |  | 3.61, 2.21, 0.36, 0.00 |
| Label | Label257 | - |  |  |  | 3.53, 2.21, 0.12, 0.17 |
| Label | Label258 | Amt: |  |  |  | 4.53, 2.38, 0.29, 0.16 |
| Label | Label262 | SId: |  |  |  | 5.55, 2.04, 0.29, 0.17 |
| ComboBox | Combo263 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 5.83, 2.04, 0.82, 0.00 |
| ComboBox | Combo267 |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, [VERNACULAR] & " " AS Expr1 FROM NMIS_SPECIES INNER JOIN NMIS_SOURCE_LOTS ON (NMIS_SPECIES.[PLNTMSTR_SYMBOL] = NMIS_SOURCE_LOTS.[PLNTMSTR_SYMBOL]) AND (NMIS_SPECIES.[PLNTMSTR_SYMBOL] = NMIS_SOURCE_LOTS.[PLNTMSTR_SYMBOL]); |  | 2.80, 2.42, 1.71, 0.00 |
| TextBox | Text271 |  | BEGIN_FY |  |  | 3.13, 2.21, 0.37, 0.00 |
| Subform | Child279 |  | Report.Field_tag_agreements subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 5.43, 2.24, 1.17, 0.47 |
| Label | Label280 | Ct: |  |  |  | 6.61, 0.57, 0.30, 0.17 |
| Label | Label282 | Spec: |  |  |  | 6.60, 2.24, 0.33, 0.16 |
| Label | Label283 | Age: |  |  |  | 6.62, 2.41, 0.30, 0.17 |
| Label | Label284 | Spe: |  |  |  | 6.67, 2.07, 0.25, 0.16 |
| Label | Label288 | Ct: |  |  |  | 6.62, 2.57, 0.30, 0.17 |
| TextBox | Combo289 |  | UNIT |  |  | 6.92, 2.55, 1.08, 0.00 |
| TextBox | Combo281 |  | UNIT |  |  | 6.91, 0.55, 1.08, 0.00 |
| TextBox | Text163 |  | SIZE_SPEC_STRING |  |  | 6.91, 0.22, 1.08, 0.00 |
| TextBox | Combo286 |  | SIZE_SPEC_STRING |  |  | 6.92, 2.22, 1.08, 0.00 |
| TextBox | Text164 |  | PLNTMSTR_SYMBOL |  |  | 6.91, 0.04, 0.78, 0.00 |
| TextBox | Combo285 |  | PLNTMSTR_SYMBOL |  |  | 6.92, 2.04, 0.78, 0.00 |
| TextBox | Text162 |  | PRODUCT_CLASS |  |  | 6.91, 0.39, 1.08, 0.00 |
| TextBox | Combo287 |  | PRODUCT_CLASS |  |  | 6.92, 2.39, 1.08, 0.00 |
| TextBox | Text159 |  | BEGIN_SEASON_CODE |  |  | 3.39, 0.21, 0.19, 0.00 |
| TextBox | Text161 |  | END_SEASON_CODE |  |  | 3.89, 0.21, 0.21, 0.00 |
| TextBox | Combo272 |  | BEGIN_SEASON_CODE |  |  | 3.43, 2.21, 0.19, 0.00 |
| TextBox | Combo270 |  | END_SEASON_CODE |  |  | 3.93, 2.21, 0.21, 0.00 |
| TextBox | Combo264 |  | SOURCE_CODE |  |  | 5.26, 2.75, 2.73, 0.00 |
| TextBox | Text156 |  | SOURCE_CODE |  |  | 5.26, 0.75, 2.73, 0.00 |
| TextBox | Text290 |  | ID |  |  | 8.18, 0.29, 1.61, 0.54 |
| TextBox | Text291 |  | ID |  |  | 1.49, 3.30, 2.74, 0.54 |
| ComboBox | Combo292 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 8.46, 2.12, 1.17, 0.00 |
| TextBox | Text293 |  | ID |  |  | 8.18, 2.29, 1.61, 0.54 |
| Label | Label294 | SId: |  |  |  | 8.17, 2.12, 0.29, 0.17 |
| TextBox | ID_ORIGINAL |  | ID_ORIGINAL |  |  | 1.80, 0.42, 0.88, 0.00 |
| TextBox | Text296 |  | ID_ORIGINAL |  |  | 1.91, 2.42, 0.88, 0.00 |
| TextBox | Text248 |  | Previous_ID |  |  | 3.03, 0.03, 1.16, 0.00 |
| TextBox | Text297 |  | Previous_ID |  |  | 3.03, 2.03, 1.16, 0.00 |
| TextBox | Text298 |  | =IIf([Forms]![Field_Tags]![Split_Lot],"SPLIT LOT") |  |  | 4.24, 1.68, 3.76, 0.00 |
| TextBox | Text300 |  | =IIf([Forms]![Field_Tags]![Split_Lot],"SPLIT LOT") |  |  | 4.24, 3.68, 3.76, 0.00 |
| TextBox | Text303 |  | AKA |  |  | 3.16, 0.59, 0.88, 0.00 |
| TextBox | Text304 |  | AKA |  |  | 3.16, 2.59, 0.88, 0.00 |
| Subform | Field_tag_agreements subreport |  | Report.Field_tag_agreements subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 5.40, 0.23, 1.17, 0.47 |
| ComboBox | PREVIOUS_NURSERY_ASSOCIATE |  | PREVIOUS_NURSERY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 2.49, 0.77, 1.98, 0.00 |
| ComboBox | Combo251 |  | PREVIOUS_NURSERY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 2.53, 2.77, 1.94, 0.00 |
| TextBox | ID |  | ID |  |  | 4.24, 1.01, 3.76, 0.83 |
| TextBox | Text278 |  | ID |  |  | 4.24, 3.01, 3.76, 0.83 |
