# Report: Field_tag_pairs_wo_NIds_Intermec

**Caption:** Tag pairs without Nursery ID's - Label Printer  
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
| TextBox | Previous_ID |  | Previous_ID |  |  | 3.05, 0.05, 1.47, 0.00 |
| TextBox | Text291 |  | Previous_ID |  |  | 3.09, 1.05, 1.43, 0.00 |
| Label | Label37 | SId: |  |  |  | 8.19, 0.16, 0.28, 0.17 |
| Label | Label39 | Source Code: |  |  |  | 4.62, 0.75, 0.82, 0.16 |
| Label | Label41 | Key: |  |  |  | 4.52, 0.03, 0.30, 0.16 |
| Label | Label44 | Spec: |  |  |  | 6.56, 0.23, 0.36, 0.16 |
| Label | Label45 | Age: |  |  |  | 6.63, 0.40, 0.29, 0.17 |
| TextBox | Text145 |  | ID |  |  | 4.82, 0.03, 0.56, 0.00 |
| TextBox | Text157 |  | =[TOTAL_REQUEST] & [Product_Unit] |  |  | 4.83, 0.38, 0.57, 0.00 |
| TextBox | Text160 |  | END_FY |  |  | 3.88, 0.23, 0.35, 0.00 |
| Label | Label169 | - |  |  |  | 3.81, 0.23, 0.11, 0.17 |
| Label | Label171 | Amt: |  |  |  | 4.53, 0.39, 0.30, 0.16 |
| Label | Label172 | Spe: |  |  |  | 6.63, 0.06, 0.29, 0.16 |
| Label | Label180 | SId: |  |  |  | 5.39, 0.03, 0.28, 0.17 |
| ComboBox | Text179 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 5.67, 0.03, 0.96, 0.00 |
| ComboBox | Text155 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SPECIES].[VERNACULAR] FROM NMIS_SPECIES INNER JOIN NMIS_SOURCE_LOTS ON ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]) AND ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]);  |  | 2.75, 0.41, 1.81, 0.00 |
| ComboBox | Text154 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 8.48, 0.16, 1.27, 0.00 |
| TextBox | Text158 |  | BEGIN_FY |  |  | 3.41, 0.23, 0.36, 0.00 |
| Subform | Field_tag_agreements subreport |  | Report.Field_tag_agreements subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 5.41, 0.22, 1.16, 0.47 |
| Label | Label280 | Ct: |  |  |  | 6.63, 0.56, 0.29, 0.17 |
| TextBox | Combo281 |  | UNIT |  |  | 6.93, 0.54, 1.07, 0.00 |
| TextBox | Text163 |  | SIZE_SPEC_STRING |  |  | 6.93, 0.21, 1.07, 0.00 |
| TextBox | Text164 |  | PLNTMSTR_SYMBOL |  |  | 6.93, 0.03, 0.77, 0.00 |
| TextBox | Text162 |  | PRODUCT_CLASS |  |  | 6.93, 0.38, 1.07, 0.00 |
| TextBox | Text159 |  | BEGIN_SEASON_CODE |  |  | 3.71, 0.23, 0.18, 0.00 |
| TextBox | Text161 |  | END_SEASON_CODE |  |  | 4.26, 0.23, 0.20, 0.00 |
| TextBox | Text156 |  | SOURCE_CODE |  |  | 5.45, 0.73, 2.53, 0.00 |
| TextBox | Text290 |  | ID |  |  | 8.20, 0.32, 1.60, 0.54 |
| Label | Label293 | SId: |  |  |  | 8.19, 1.18, 0.28, 0.17 |
| Label | Label294 | Source Code: |  |  |  | 4.62, 1.77, 0.82, 0.16 |
| Label | Label295 | Key: |  |  |  | 4.52, 1.05, 0.30, 0.16 |
| Label | Label296 | Spec: |  |  |  | 6.56, 1.25, 0.36, 0.16 |
| Label | Label297 | Age: |  |  |  | 6.63, 1.42, 0.29, 0.17 |
| TextBox | Text298 |  | ID |  |  | 4.82, 1.05, 0.56, 0.00 |
| TextBox | Text299 |  | =[TOTAL_REQUEST] & [Product_Unit] |  |  | 4.83, 1.40, 0.57, 0.00 |
| TextBox | Text300 |  | END_FY |  |  | 3.87, 1.24, 0.35, 0.00 |
| Label | Label301 | - |  |  |  | 3.80, 1.24, 0.11, 0.17 |
| Label | Label302 | Amt: |  |  |  | 4.53, 1.41, 0.30, 0.16 |
| Label | Label303 | Spe: |  |  |  | 6.63, 1.09, 0.29, 0.16 |
| Label | Label304 | SId: |  |  |  | 5.39, 1.05, 0.28, 0.17 |
| ComboBox | Combo305 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 5.67, 1.05, 0.96, 0.00 |
| ComboBox | Combo306 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SPECIES].[VERNACULAR] FROM NMIS_SPECIES INNER JOIN NMIS_SOURCE_LOTS ON ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]) AND ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]);  |  | 2.79, 1.41, 1.77, 0.00 |
| ComboBox | Combo307 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 8.48, 1.18, 1.27, 0.00 |
| TextBox | Text308 |  | BEGIN_FY |  |  | 3.40, 1.24, 0.36, 0.00 |
| Subform | Child309 |  | Report.Field_tag_agreements subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 5.41, 1.24, 1.16, 0.47 |
| Label | Label310 | Ct: |  |  |  | 6.63, 1.58, 0.29, 0.17 |
| TextBox | Text311 |  | UNIT |  |  | 6.93, 1.56, 1.07, 0.00 |
| TextBox | Text312 |  | SIZE_SPEC_STRING |  |  | 6.93, 1.23, 1.07, 0.00 |
| TextBox | Text313 |  | PLNTMSTR_SYMBOL |  |  | 6.93, 1.05, 0.77, 0.00 |
| TextBox | Text314 |  | PRODUCT_CLASS |  |  | 6.93, 1.40, 1.07, 0.00 |
| TextBox | Text315 |  | BEGIN_SEASON_CODE |  |  | 3.70, 1.24, 0.18, 0.00 |
| TextBox | Text316 |  | END_SEASON_CODE |  |  | 4.25, 1.24, 0.20, 0.00 |
| TextBox | Text317 |  | SOURCE_CODE |  |  | 5.45, 1.75, 2.53, 0.00 |
| TextBox | Text318 |  | ID |  |  | 8.20, 1.34, 1.60, 0.54 |
| TextBox | Text252 |  | ID |  |  | 1.67, 0.36, 1.09, 0.24 |
| TextBox | Text253 |  | ID |  |  | 1.67, 1.39, 1.09, 0.24 |
| TextBox | AKA |  | AKA |  |  | 3.22, 0.57, 1.08, 0.22 |
| TextBox | Text255 |  | AKA |  |  | 3.22, 1.55, 1.08, 0.22 |
| ComboBox | PREVIOUS_NURSERY_ASSOCIATE |  | PREVIOUS_NURSERY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 2.78, 0.80, 1.80, 0.00 |
| ComboBox | Combo251 |  | PREVIOUS_NURSERY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 2.78, 1.75, 1.80, 0.00 |
