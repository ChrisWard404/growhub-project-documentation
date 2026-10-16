# Report: Field_tag_pairs_TP_BR

**Caption:** Tag pairs without Nursery ID's (bareroot)  
**Record source:**

```sql
Field_tag_transplant_BR Query
```

**Grouping/sorting:** `ID`, `PLNTMSTR_SYMBOL`, `SPECIES_PRODUCT_DESC`, `SIZE_SPEC_STRING`, `Major_Client`, `SOURCE_CODE`  
**Backend tables referenced:** `NMIS_PRODUCTS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Report.Field_tag_agreements subreport`, `Report.Field_tag_agreements subreport`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text35 |  | ID |  |  | 7.18, 0.12, 0.62, 0.00 |
| Label | Label36 | Key: |  |  |  | 6.92, 0.12, 0.28, 0.16 |
| Label | Label37 | SId: |  |  |  | 6.93, 0.72, 0.25, 0.17 |
| Label | Label39 | Source Code: |  |  |  | 3.39, 0.78, 0.72, 0.16 |
| Label | Label41 | Key: |  |  |  | 3.40, 0.07, 0.27, 0.16 |
| Label | Label44 | Spec: |  |  |  | 5.30, 0.35, 0.28, 0.16 |
| Label | Label45 | Age: |  |  |  | 5.33, 0.51, 0.26, 0.17 |
| TextBox | Text145 |  | ID |  |  | 3.67, 0.07, 0.53, 0.00 |
| TextBox | Text157 |  | =[TOTAL_REQUEST] & "M" |  |  | 3.69, 0.41, 0.38, 0.00 |
| TextBox | Text160 |  | END_FY |  |  | 2.71, 0.33, 0.32, 0.00 |
| Label | Label169 | - |  |  |  | 2.63, 0.33, 0.07, 0.17 |
| Label | Label171 | Amt: |  |  |  | 3.38, 0.43, 0.29, 0.16 |
| Label | Label172 | Spe: |  |  |  | 5.33, 0.18, 0.26, 0.16 |
| TextBox | Text176 |  | ="*" & [ID] & "*" |  |  | 6.89, 0.28, 1.23, 0.25 |
| TextBox | Text177 |  | ="*" & [ID] & "*" |  |  | 6.89, 0.47, 1.23, 0.25 |
| Label | Label180 | SId: |  |  |  | 4.27, 0.07, 0.25, 0.17 |
| ComboBox | Text179 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 4.52, 0.07, 0.72, 0.00 |
| ComboBox | Text156 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[SOURCE_CODE] FROM NMIS_SOURCE_LOTS;  |  | 4.14, 0.75, 2.50, 0.00 |
| ComboBox | Text164 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL] FROM NMIS_SOURCE_LOTS;  |  | 5.60, 0.15, 0.74, 0.00 |
| ComboBox | Text163 |  | SPECIES_PRODUCT_CN | SELECT [Size_Spec_String Query].[CN], [Size_Spec_String Query].[SIZE_SPEC_STRING] FROM [Size_Spec_String Query];  |  | 5.60, 0.33, 1.04, 0.00 |
| ComboBox | Text155 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SPECIES].[VERNACULAR] FROM NMIS_SPECIES INNER JOIN NMIS_SOURCE_LOTS ON ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]) AND ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]);  |  | 2.22, 0.53, 1.07, 0.00 |
| ComboBox | Text154 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 7.18, 0.72, 0.88, 0.00 |
| ComboBox | Text162 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_PRODUCTS].[PRODUCT_CLASS_CONDENSED] FROM NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN];  |  | 5.60, 0.50, 1.04, 0.00 |
| ComboBox | Text161 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES_PRODUCTS].[END_SEASON_CODE] FROM NMIS_SPECIES_PRODUCTS;  |  | 3.03, 0.33, 0.17, 0.00 |
| TextBox | Text158 |  | BEGIN_FY |  |  | 2.23, 0.33, 0.33, 0.00 |
| ComboBox | Text159 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES_PRODUCTS].[BEGIN_SEASON_CODE] FROM NMIS_SPECIES_PRODUCTS;  |  | 2.53, 0.33, 0.15, 0.00 |
| Subform | Field_tag_agreements subreport |  | Report.Field_tag_agreements subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 4.08, 0.27, 1.13, 0.47 |
| Label | Nid Label | NId: |  |  |  | 2.23, 1.71, 0.28, 0.16 |
| TextBox | Text233 |  | ="*" & [ID] & "*" |  |  | 2.21, 1.28, 1.23, 0.25 |
| TextBox | Text234 |  | ="*" & [ID] & "*" |  |  | 2.21, 1.47, 1.23, 0.25 |
| TextBox | Combo241 |  | ID |  |  | 2.50, 1.73, 0.88, 0.00 |
| TextBox | ID |  | ID |  |  | 3.62, 1.08, 3.08, 0.83 |
| TextBox | Text247 |  | ID |  |  | 7.18, 2.12, 0.62, 0.00 |
| Label | Label248 | Key: |  |  |  | 6.92, 2.12, 0.28, 0.16 |
| Label | Label249 | SId: |  |  |  | 6.93, 2.72, 0.25, 0.17 |
| Label | Label250 | Source Code: |  |  |  | 3.39, 2.77, 0.72, 0.16 |
| Label | Label251 | Key: |  |  |  | 3.40, 2.08, 0.27, 0.16 |
| Label | Label252 | Spec: |  |  |  | 5.30, 2.35, 0.28, 0.16 |
| Label | Label253 | Age: |  |  |  | 5.33, 2.51, 0.26, 0.17 |
| TextBox | Text254 |  | ID |  |  | 3.67, 2.08, 0.53, 0.00 |
| TextBox | Text255 |  | =[TOTAL_REQUEST] & "M" |  |  | 3.69, 2.41, 0.38, 0.00 |
| TextBox | Text256 |  | END_FY |  |  | 2.71, 2.33, 0.32, 0.00 |
| Label | Label257 | - |  |  |  | 2.63, 2.33, 0.07, 0.17 |
| Label | Label258 | Amt: |  |  |  | 3.38, 2.43, 0.29, 0.16 |
| Label | Label259 | Spe: |  |  |  | 5.33, 2.18, 0.26, 0.16 |
| TextBox | Text260 |  | ="*" & [ID] & "*" |  |  | 6.89, 2.28, 1.23, 0.25 |
| TextBox | Text261 |  | ="*" & [ID] & "*" |  |  | 6.89, 2.47, 1.23, 0.25 |
| Label | Label262 | SId: |  |  |  | 4.27, 2.08, 0.25, 0.17 |
| ComboBox | Combo263 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 4.52, 2.08, 0.72, 0.00 |
| ComboBox | Combo264 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[SOURCE_CODE] FROM NMIS_SOURCE_LOTS;  |  | 4.14, 2.75, 2.50, 0.00 |
| ComboBox | Combo265 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL] FROM NMIS_SOURCE_LOTS;  |  | 5.60, 2.15, 0.74, 0.00 |
| ComboBox | Combo266 |  | SPECIES_PRODUCT_CN | SELECT [Size_Spec_String Query].[CN], [Size_Spec_String Query].[SIZE_SPEC_STRING] FROM [Size_Spec_String Query];  |  | 5.60, 2.33, 1.04, 0.00 |
| ComboBox | Combo267 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SPECIES].[VERNACULAR] FROM NMIS_SPECIES INNER JOIN NMIS_SOURCE_LOTS ON ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]) AND ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]);  |  | 2.22, 2.53, 1.07, 0.00 |
| ComboBox | Combo268 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 7.18, 2.72, 0.88, 0.00 |
| ComboBox | Combo269 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_PRODUCTS].[PRODUCT_CLASS_CONDENSED] FROM NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN];  |  | 5.60, 2.50, 1.04, 0.00 |
| ComboBox | Combo270 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES_PRODUCTS].[END_SEASON_CODE] FROM NMIS_SPECIES_PRODUCTS;  |  | 3.03, 2.33, 0.17, 0.00 |
| TextBox | Text271 |  | BEGIN_FY |  |  | 2.23, 2.33, 0.33, 0.00 |
| ComboBox | Combo272 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES_PRODUCTS].[BEGIN_SEASON_CODE] FROM NMIS_SPECIES_PRODUCTS;  |  | 2.53, 2.33, 0.15, 0.00 |
| Label | Label274 | NId: |  |  |  | 2.23, 3.71, 0.28, 0.16 |
| TextBox | Text275 |  | ="*" & [ID] & "*" |  |  | 2.21, 3.28, 1.23, 0.25 |
| TextBox | Text276 |  | ="*" & [ID] & "*" |  |  | 2.21, 3.47, 1.23, 0.25 |
| TextBox | Text277 |  | ID |  |  | 2.50, 3.73, 0.88, 0.00 |
| TextBox | Text278 |  | ID |  |  | 3.62, 3.08, 3.08, 0.83 |
| Subform | Child279 |  | Report.Field_tag_agreements subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 4.10, 2.27, 1.13, 0.47 |
| Label | Label280 | Orig ID |  |  |  | 7.04, 1.29, 0.84, 0.19 |
| TextBox | Text281 |  | ID_ORIGINAL |  |  | 7.04, 1.48, 0.84, 0.19 |
| Label | Label282 | Orig ID |  |  |  | 7.04, 3.33, 0.84, 0.19 |
| TextBox | Text283 |  | ID_ORIGINAL |  |  | 7.04, 3.52, 0.84, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text181 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.72, 0.00, 1.32, 0.12 |
