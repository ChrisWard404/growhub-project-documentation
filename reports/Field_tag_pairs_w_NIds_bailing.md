# Report: Field_tag_pairs_w_NIds_bailing

**Caption:** Tag pairs with Nursery ID's  
**Record source:**

```sql
Field_tag_pairs_Bailing Query
```

**Grouping/sorting:** `ID`, `PRODUCT_DESC`, `PLNTMSTR_SYMBOL`, `SPECIES_PRODUCT_DESC`, `SIZE_SPEC_STRING`, `Major_Client`, `SOURCE_CODE`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_PRODUCTS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Report.Field_tag_agreements subreport`, `Report.Field_tag_agreements subreport`  
**Opened from (VBA):** `Form_Field_Tags`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text35 |  | ID |  |  | 7.05, 0.12, 0.62, 0.00 |
| Label | Label36 | Key: |  |  |  | 6.78, 0.12, 0.28, 0.16 |
| Label | Label37 | SId: |  |  |  | 6.80, 0.72, 0.25, 0.17 |
| Label | Label39 | Source : |  |  |  | 3.26, 0.78, 0.72, 0.16 |
| Label | Label41 | Key: |  |  |  | 3.26, 0.07, 0.27, 0.16 |
| Label | Label44 | Spec: |  |  |  | 5.17, 0.27, 0.28, 0.16 |
| Label | Label45 | Age: |  |  |  | 5.19, 0.43, 0.26, 0.17 |
| TextBox | Text145 |  | ID |  |  | 3.53, 0.07, 0.53, 0.00 |
| TextBox | Text157 |  | =[TOTAL_REQUEST] & [Product_Unit] |  |  | 3.48, 0.42, 0.53, 0.00 |
| TextBox | Text160 |  | END_FY |  |  | 2.42, 0.27, 0.32, 0.00 |
| Label | Label169 | - |  |  |  | 2.35, 0.27, 0.07, 0.17 |
| Label | Label171 | Amt: |  |  |  | 3.17, 0.43, 0.29, 0.16 |
| Label | Label172 | Spe: |  |  |  | 5.19, 0.11, 0.26, 0.16 |
| TextBox | Text176 |  | ="*" & [ID] & "*" |  |  | 6.76, 0.28, 1.23, 0.25 |
| TextBox | Text177 |  | ="*" & [ID] & "*" |  |  | 6.76, 0.47, 1.23, 0.25 |
| Label | Label180 | SId: |  |  |  | 4.13, 0.07, 0.25, 0.17 |
| ComboBox | Text179 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 4.38, 0.07, 0.72, 0.00 |
| ComboBox | Text156 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [Source_Lot_ID_and_Source_string].[SOURCE] FROM NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON [NMIS_SOURCE_LOTS].[CN]=[Source_Lot_ID_and_Source_string].[CN];  |  | 4.01, 0.75, 2.50, 0.00 |
| ComboBox | Text164 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL] FROM NMIS_SOURCE_LOTS;  |  | 5.47, 0.07, 0.74, 0.00 |
| ComboBox | Text163 |  | SPECIES_PRODUCT_CN | SELECT [Size_Spec_String Query].[CN], [Size_Spec_String Query].[SIZE_SPEC_STRING] FROM [Size_Spec_String Query];  |  | 5.47, 0.25, 1.04, 0.00 |
| ComboBox | Text155 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SPECIES].[VERNACULAR] FROM NMIS_SPECIES INNER JOIN NMIS_SOURCE_LOTS ON ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]) AND ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]);  |  | 1.49, 0.44, 1.68, 0.00 |
| ComboBox | Text154 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 7.05, 0.72, 0.88, 0.00 |
| ComboBox | Text162 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_PRODUCTS].[PRODUCT_CLASS] FROM NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN]; |  | 5.47, 0.42, 1.12, 0.00 |
| ComboBox | Text161 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES_PRODUCTS].[END_SEASON_CODE] FROM NMIS_SPECIES_PRODUCTS;  |  | 2.75, 0.27, 0.17, 0.00 |
| TextBox | Text158 |  | BEGIN_FY |  |  | 1.95, 0.27, 0.33, 0.00 |
| ComboBox | Text159 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES_PRODUCTS].[BEGIN_SEASON_CODE] FROM NMIS_SPECIES_PRODUCTS;  |  | 2.25, 0.27, 0.15, 0.00 |
| Subform | Field_tag_agreements subreport |  | Report.Field_tag_agreements subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 4.03, 0.27, 1.13, 0.47 |
| Label | Nid Label | NId: |  |  |  | 1.93, 1.71, 0.28, 0.16 |
| TextBox | Text233 |  | ="*" & [ID] & "*" |  |  | 1.79, 1.28, 1.36, 0.25 |
| TextBox | Text234 |  | ="*" & [ID] & "*" |  |  | 1.79, 1.46, 1.36, 0.25 |
| TextBox | Combo241 |  | ID |  |  | 2.21, 1.72, 0.88, 0.00 |
| TextBox | ID |  | ID |  |  | 3.18, 1.08, 3.52, 0.83 |
| TextBox | Text247 |  | ID |  |  | 7.05, 2.12, 0.62, 0.00 |
| Label | Label248 | Key: |  |  |  | 6.78, 2.12, 0.28, 0.16 |
| Label | Label249 | SId: |  |  |  | 6.80, 2.72, 0.25, 0.17 |
| Label | Label250 | Source: |  |  |  | 3.26, 2.77, 0.72, 0.16 |
| Label | Label251 | Key: |  |  |  | 3.26, 2.08, 0.27, 0.16 |
| Label | Label252 | Spec: |  |  |  | 5.17, 2.27, 0.28, 0.16 |
| Label | Label253 | Age: |  |  |  | 5.19, 2.43, 0.26, 0.17 |
| TextBox | Text254 |  | ID |  |  | 3.53, 2.08, 0.53, 0.00 |
| TextBox | Text255 |  | =[TOTAL_REQUEST] & [Product_Unit] |  |  | 3.48, 2.42, 0.53, 0.00 |
| TextBox | Text256 |  | END_FY |  |  | 2.42, 2.27, 0.32, 0.00 |
| Label | Label257 | - |  |  |  | 2.35, 2.27, 0.07, 0.17 |
| Label | Label258 | Amt: |  |  |  | 3.17, 2.43, 0.29, 0.16 |
| Label | Label259 | Spe: |  |  |  | 5.19, 2.11, 0.26, 0.16 |
| TextBox | Text260 |  | ="*" & [ID] & "*" |  |  | 6.76, 2.28, 1.23, 0.25 |
| TextBox | Text261 |  | ="*" & [ID] & "*" |  |  | 6.76, 2.47, 1.23, 0.25 |
| Label | Label262 | SId: |  |  |  | 4.13, 2.08, 0.25, 0.17 |
| ComboBox | Combo263 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 4.38, 2.08, 0.72, 0.00 |
| ComboBox | Combo264 |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, Source_Lot_ID_and_Source_string.SOURCE FROM NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN; |  | 4.01, 2.75, 2.50, 0.00 |
| ComboBox | Combo265 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL] FROM NMIS_SOURCE_LOTS;  |  | 5.47, 2.07, 0.74, 0.00 |
| ComboBox | Combo266 |  | SPECIES_PRODUCT_CN | SELECT [Size_Spec_String Query].[CN], [Size_Spec_String Query].[SIZE_SPEC_STRING] FROM [Size_Spec_String Query];  |  | 5.47, 2.25, 1.04, 0.00 |
| ComboBox | Combo267 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SPECIES].[VERNACULAR] FROM NMIS_SPECIES INNER JOIN NMIS_SOURCE_LOTS ON ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]) AND ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]);  |  | 1.49, 2.44, 1.68, 0.00 |
| ComboBox | Combo268 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 7.05, 2.72, 0.88, 0.00 |
| ComboBox | Combo269 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_PRODUCTS].[PRODUCT_CLASS] FROM NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN]; |  | 5.47, 2.42, 1.12, 0.00 |
| ComboBox | Combo270 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES_PRODUCTS].[END_SEASON_CODE] FROM NMIS_SPECIES_PRODUCTS;  |  | 2.75, 2.27, 0.17, 0.00 |
| TextBox | Text271 |  | BEGIN_FY |  |  | 1.95, 2.27, 0.33, 0.00 |
| ComboBox | Combo272 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES_PRODUCTS].[BEGIN_SEASON_CODE] FROM NMIS_SPECIES_PRODUCTS;  |  | 2.25, 2.27, 0.15, 0.00 |
| Label | Label274 | NId: |  |  |  | 1.93, 3.71, 0.28, 0.16 |
| TextBox | Text275 |  | ="*" & [ID] & "*" |  |  | 1.79, 3.28, 1.36, 0.25 |
| TextBox | Text276 |  | ="*" & [ID] & "*" |  |  | 1.79, 3.46, 1.36, 0.25 |
| TextBox | Text277 |  | ID |  |  | 2.21, 3.72, 0.88, 0.00 |
| TextBox | Text278 |  | ID |  |  | 3.18, 3.08, 3.52, 0.83 |
| Subform | Child279 |  | Report.Field_tag_agreements subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 4.05, 2.28, 1.13, 0.47 |
| TextBox | Previous_ID |  | Previous_ID |  |  | 1.79, 0.60, 1.16, 0.00 |
| TextBox | Text248 |  | Previous_ID |  |  | 1.79, 2.60, 1.16, 0.00 |
| TextBox | Text296 |  | =IIf([ID]<>[ID_ORIGINAL],[ID_ORIGINAL]) |  |  | 0.65, 2.56, 0.00, 0.00 |
| Label | Label283 | Ct: |  |  |  | 5.16, 0.59, 0.30, 0.17 |
| TextBox | Combo281 |  | UNIT |  |  | 5.47, 0.57, 1.08, 0.00 |
| Label | Label287 | Ct: |  |  |  | 5.16, 2.59, 0.30, 0.17 |
| TextBox | Text288 |  | UNIT |  |  | 5.47, 2.57, 1.08, 0.00 |
| TextBox | Text289 |  | =IIf([ID]<>[ID_ORIGINAL],[ID_ORIGINAL]) |  |  | 0.65, 0.56, 0.00, 0.00 |
| TextBox | Text303 |  | AKA |  |  | 0.65, 0.73, 0.93, 0.00 |
| TextBox | Text304 |  | AKA |  |  | 0.65, 2.73, 0.93, 0.00 |
| ComboBox | PREVIOUS_NURSERY_ASSOCIATE |  | PREVIOUS_NURSERY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 1.57, 0.77, 1.67, 0.00 |
| ComboBox | Combo251 |  | PREVIOUS_NURSERY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 1.61, 2.76, 1.62, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text181 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.57, 0.00, 1.32, 0.12 |
