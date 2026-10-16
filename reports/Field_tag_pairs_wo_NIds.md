# Report: Field_tag_pairs_wo_NIds

**Grouping/sorting:** `PRODUCT_DESC`, `PLNTMSTR_SYMBOL`, `SPECIES_PRODUCT_DESC`, `SIZE_SPEC_STRING`, `Major_Client`, `SOURCE_CODE`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_PRODUCTS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Report.Field_tag_agreements subreport`, `Report.Field_tag_agreements subreport`  
**Opened from (VBA):** `Form_Field_Tags`, `Form_Field_Tags_BU`, `Form_NMIS_SOURCE_SPP_WORKSHEET_NEW`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text35 |  | ID |  |  | 7.05, 0.12, 0.62, 0.00 |
| Label | Label36 | Key: |  |  |  | 6.78, 0.12, 0.28, 0.16 |
| Label | Label37 | SId: |  |  |  | 6.80, 0.72, 0.25, 0.17 |
| Label | Label39 | Source Code: |  |  |  | 3.29, 0.80, 0.71, 0.16 |
| Label | Label41 | Key: |  |  |  | 3.20, 0.08, 0.27, 0.16 |
| Label | Label44 | Spec: |  |  |  | 5.17, 0.27, 0.28, 0.16 |
| Label | Label45 | Age: |  |  |  | 5.19, 0.43, 0.26, 0.17 |
| TextBox | Text145 |  | ID |  |  | 3.46, 0.08, 0.53, 0.00 |
| TextBox | Text157 |  | =[TOTAL_REQUEST] & [Product_Unit] |  |  | 3.42, 0.43, 0.57, 0.00 |
| TextBox | Text160 |  | END_FY |  |  | 2.54, 0.26, 0.32, 0.00 |
| Label | Label169 | - |  |  |  | 2.46, 0.26, 0.07, 0.17 |
| Label | Label171 | Amt: |  |  |  | 3.14, 0.43, 0.29, 0.16 |
| Label | Label172 | Spe: |  |  |  | 5.19, 0.11, 0.26, 0.16 |
| TextBox | Text176 |  | ="*" & [ID] & "*" |  |  | 6.78, 0.28, 1.20, 0.25 |
| TextBox | Text177 |  | ="*" & [ID] & "*" |  |  | 6.78, 0.47, 1.20, 0.25 |
| Label | Label180 | SId: |  |  |  | 4.14, 0.09, 0.25, 0.17 |
| ComboBox | Text179 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 4.39, 0.09, 0.72, 0.00 |
| ComboBox | Text156 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[SOURCE_CODE] FROM NMIS_SOURCE_LOTS;  |  | 4.06, 0.78, 2.41, 0.00 |
| ComboBox | Text164 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL] FROM NMIS_SOURCE_LOTS;  |  | 5.47, 0.07, 0.74, 0.00 |
| ComboBox | Text163 |  | SPECIES_PRODUCT_CN | SELECT [Size_Spec_String Query].[CN], [Size_Spec_String Query].[SIZE_SPEC_STRING] FROM [Size_Spec_String Query];  |  | 5.47, 0.25, 1.04, 0.00 |
| ComboBox | Text155 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SPECIES].[VERNACULAR] FROM NMIS_SPECIES INNER JOIN NMIS_SOURCE_LOTS ON ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]) AND ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]); |  | 1.97, 0.43, 1.16, 0.00 |
| ComboBox | Text154 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 7.05, 0.72, 0.88, 0.00 |
| ComboBox | Text162 |  | SPECIES_PRODUCT_CN | SELECT NMIS_SPECIES_PRODUCTS.CN, NMIS_PRODUCTS.PRODUCT_CLASS FROM NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN; |  | 5.47, 0.42, 1.04, 0.00 |
| ComboBox | Text161 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES_PRODUCTS].[END_SEASON_CODE] FROM NMIS_SPECIES_PRODUCTS;  |  | 2.86, 0.22, 0.17, 0.00 |
| TextBox | Text158 |  | BEGIN_FY |  |  | 2.06, 0.26, 0.33, 0.00 |
| ComboBox | Text159 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES_PRODUCTS].[BEGIN_SEASON_CODE] FROM NMIS_SPECIES_PRODUCTS;  |  | 2.36, 0.26, 0.15, 0.00 |
| Subform | Field_tag_agreements subreport |  | Report.Field_tag_agreements subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 4.01, 0.27, 1.13, 0.47 |
| TextBox | Text213 |  | ID |  |  | 7.05, 1.12, 0.62, 0.00 |
| Label | Label214 | Key: |  |  |  | 6.78, 1.12, 0.28, 0.16 |
| Label | Label215 | SId: |  |  |  | 6.80, 1.72, 0.25, 0.17 |
| Label | Label216 | Source Code: |  |  |  | 3.29, 1.80, 0.71, 0.16 |
| Label | Label217 | Key: |  |  |  | 3.20, 1.08, 0.27, 0.16 |
| Label | Label219 | Spec: |  |  |  | 5.17, 1.24, 0.28, 0.16 |
| Label | Label220 | Age: |  |  |  | 5.19, 1.39, 0.26, 0.17 |
| TextBox | Text223 |  | ID |  |  | 3.46, 1.08, 0.53, 0.00 |
| TextBox | Text224 |  | =[TOTAL_REQUEST] & [Product_Unit] |  |  | 3.42, 1.43, 0.57, 0.00 |
| TextBox | Text225 |  | END_FY |  |  | 2.58, 1.26, 0.32, 0.00 |
| Label | Label228 | - |  |  |  | 2.50, 1.26, 0.07, 0.17 |
| Label | Label229 | Amt: |  |  |  | 3.14, 1.43, 0.29, 0.16 |
| Label | Label230 | Spe: |  |  |  | 5.20, 1.07, 0.25, 0.17 |
| TextBox | Text233 |  | ="*" & [ID] & "*" |  |  | 6.78, 1.28, 1.20, 0.25 |
| TextBox | Text234 |  | ="*" & [ID] & "*" |  |  | 6.78, 1.47, 1.20, 0.25 |
| Label | Label235 | SId: |  |  |  | 4.14, 1.09, 0.25, 0.17 |
| ComboBox | Combo236 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 4.39, 1.09, 0.72, 0.00 |
| ComboBox | Combo237 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[SOURCE_CODE] FROM NMIS_SOURCE_LOTS;  |  | 4.06, 1.77, 2.41, 0.00 |
| ComboBox | Combo238 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL] FROM NMIS_SOURCE_LOTS;  |  | 5.47, 1.05, 0.76, 0.00 |
| ComboBox | Combo239 |  | SPECIES_PRODUCT_CN | SELECT [Size_Spec_String Query].[CN], [Size_Spec_String Query].[SIZE_SPEC_STRING] FROM [Size_Spec_String Query];  |  | 5.47, 1.21, 1.04, 0.00 |
| ComboBox | Combo240 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SPECIES].[VERNACULAR] FROM NMIS_SPECIES INNER JOIN NMIS_SOURCE_LOTS ON ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]) AND ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]);  |  | 1.97, 1.43, 1.16, 0.00 |
| ComboBox | Combo241 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 7.05, 1.72, 0.88, 0.00 |
| ComboBox | Combo242 |  | SPECIES_PRODUCT_CN | SELECT NMIS_SPECIES_PRODUCTS.CN, NMIS_PRODUCTS.PRODUCT_CLASS FROM NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN; |  | 5.47, 1.39, 1.04, 0.00 |
| ComboBox | Combo243 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES_PRODUCTS].[END_SEASON_CODE] FROM NMIS_SPECIES_PRODUCTS;  |  | 2.90, 1.26, 0.17, 0.00 |
| TextBox | Text244 |  | BEGIN_FY |  |  | 2.10, 1.26, 0.33, 0.00 |
| ComboBox | Combo245 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES_PRODUCTS].[BEGIN_SEASON_CODE] FROM NMIS_SPECIES_PRODUCTS;  |  | 2.40, 1.26, 0.15, 0.00 |
| Subform | Child246 |  | Report.Field_tag_agreements subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 4.01, 1.29, 1.14, 0.47 |
| TextBox | Previous_ID |  | Previous_ID |  |  | 1.97, 0.05, 1.16, 0.00 |
| TextBox | Text248 |  | Previous_ID |  |  | 1.97, 1.05, 1.16, 0.00 |
| Label | Label283 | Ct: |  |  |  | 5.20, 0.59, 0.25, 0.17 |
| TextBox | Combo281 |  | UNIT |  |  | 5.47, 0.57, 1.08, 0.00 |
| Label | Label249 | Ct: |  |  |  | 5.20, 1.56, 0.25, 0.17 |
| TextBox | Text250 |  | UNIT |  |  | 5.47, 1.54, 1.08, 0.00 |
| ComboBox | PREVIOUS_NURSERY_ASSOCIATE |  | PREVIOUS_NURSERY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 1.69, 0.79, 1.58, 0.00 |
| ComboBox | Combo251 |  | PREVIOUS_NURSERY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 1.65, 1.79, 1.62, 0.00 |
| TextBox | Text252 |  | ID |  |  | 0.88, 0.38, 1.09, 0.24 |
| TextBox | Text253 |  | ID |  |  | 0.88, 1.38, 1.09, 0.24 |
| TextBox | AKA |  | AKA |  |  | 1.95, 0.59, 1.08, 0.21 |
| TextBox | Text255 |  | AKA |  |  | 1.95, 1.59, 1.08, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text181 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.19, 0.00, 1.82, 0.11 |
