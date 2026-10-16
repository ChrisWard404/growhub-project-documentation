# Report: Field_tag_pairs_TP_BR_qplug

**Caption:** Tag pairs Transplant Client Owned  
**Record source:**

```sql
Field_tag_transplant_BR_qplug Query
```

**Grouping/sorting:** `PRODUCT_DESC`, `PLNTMSTR_SYMBOL`, `SPECIES_PRODUCT_DESC`, `SIZE_SPEC_STRING`, `Major_Client`, `SOURCE_CODE`  
**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_PRODUCTS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Report.Field_tag_agreements subreport`, `Report.Field_tag_agreements subreport`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text35 |  | ID |  |  | 7.17, 0.12, 0.62, 0.00 |
| Label | Label36 | Key: |  |  |  | 6.91, 0.12, 0.28, 0.16 |
| Label | Label37 | SId: |  |  |  | 6.92, 0.72, 0.25, 0.17 |
| Label | Label39 | Source Code: |  |  |  | 3.39, 0.80, 0.71, 0.16 |
| Label | Label41 | Key: |  |  |  | 3.39, 0.07, 0.27, 0.16 |
| Label | Label44 | Spec: |  |  |  | 5.29, 0.35, 0.28, 0.16 |
| Label | Label45 | Age: |  |  |  | 5.32, 0.51, 0.26, 0.17 |
| TextBox | Text145 |  | ID |  |  | 3.66, 0.07, 0.53, 0.00 |
| TextBox | Text157 |  | =[TOTAL_REQUEST] & "M" |  |  | 3.68, 0.41, 0.38, 0.00 |
| TextBox | Text160 |  | END_FY |  |  | 2.72, 0.33, 0.32, 0.00 |
| Label | Label169 | - |  |  |  | 2.64, 0.33, 0.07, 0.17 |
| Label | Label171 | Amt: |  |  |  | 3.38, 0.43, 0.29, 0.16 |
| Label | Label172 | Spe: |  |  |  | 5.32, 0.18, 0.26, 0.16 |
| TextBox | Text176 |  | ="*" & [ID] & "*" |  |  | 6.91, 0.28, 1.20, 0.25 |
| TextBox | Text177 |  | ="*" & [ID] & "*" |  |  | 6.91, 0.47, 1.20, 0.25 |
| Label | Label180 | SId: |  |  |  | 4.26, 0.07, 0.25, 0.17 |
| ComboBox | Text179 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 4.51, 0.07, 0.72, 0.00 |
| ComboBox | Text156 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[SOURCE_CODE] FROM NMIS_SOURCE_LOTS;  |  | 4.18, 0.78, 2.41, 0.00 |
| ComboBox | Text164 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL] FROM NMIS_SOURCE_LOTS;  |  | 5.59, 0.15, 0.74, 0.00 |
| ComboBox | Text163 |  | SPECIES_PRODUCT_CN | SELECT [Size_Spec_String Query].[CN], [Size_Spec_String Query].[SIZE_SPEC_STRING] FROM [Size_Spec_String Query];  |  | 5.59, 0.33, 1.04, 0.00 |
| ComboBox | Text155 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SPECIES].[VERNACULAR] FROM NMIS_SPECIES INNER JOIN NMIS_SOURCE_LOTS ON ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]) AND ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]);  |  | 2.09, 0.53, 1.27, 0.00 |
| ComboBox | Text154 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 7.17, 0.72, 0.88, 0.00 |
| ComboBox | Text162 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_PRODUCTS].[PRODUCT_CLASS_CONDENSED] FROM NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN];  |  | 5.59, 0.50, 1.04, 0.00 |
| ComboBox | Text161 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES_PRODUCTS].[END_SEASON_CODE] FROM NMIS_SPECIES_PRODUCTS;  |  | 3.02, 0.33, 0.17, 0.00 |
| TextBox | Text158 |  | BEGIN_FY |  |  | 2.24, 0.33, 0.33, 0.00 |
| ComboBox | Text159 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES_PRODUCTS].[BEGIN_SEASON_CODE] FROM NMIS_SPECIES_PRODUCTS;  |  | 2.54, 0.33, 0.15, 0.00 |
| Subform | Field_tag_agreements subreport |  | Report.Field_tag_agreements subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 4.08, 0.27, 1.13, 0.47 |
| TextBox | Text213 |  | ID |  |  | 7.17, 1.12, 0.62, 0.00 |
| Label | Label214 | Key: |  |  |  | 6.91, 1.12, 0.28, 0.16 |
| Label | Label215 | SId: |  |  |  | 6.92, 1.72, 0.25, 0.17 |
| Label | Label216 | Source Code: |  |  |  | 3.39, 1.80, 0.71, 0.16 |
| Label | Label217 | Key: |  |  |  | 3.39, 1.07, 0.27, 0.16 |
| Label | Label219 | Spec: |  |  |  | 5.29, 1.31, 0.28, 0.16 |
| Label | Label220 | Age: |  |  |  | 5.32, 1.47, 0.26, 0.17 |
| TextBox | Text223 |  | ID |  |  | 3.66, 1.07, 0.53, 0.00 |
| TextBox | Text224 |  | =[TOTAL_REQUEST] & "M" |  |  | 3.68, 1.41, 0.38, 0.00 |
| TextBox | Text225 |  | END_FY |  |  | 2.72, 1.32, 0.32, 0.00 |
| Label | Label228 | - |  |  |  | 2.64, 1.32, 0.07, 0.17 |
| Label | Label229 | Amt: |  |  |  | 3.38, 1.43, 0.29, 0.16 |
| Label | Label230 | Spe: |  |  |  | 5.33, 1.14, 0.25, 0.17 |
| TextBox | Text233 |  | ="*" & [ID] & "*" |  |  | 6.91, 1.28, 1.20, 0.25 |
| TextBox | Text234 |  | ="*" & [ID] & "*" |  |  | 6.91, 1.47, 1.20, 0.25 |
| Label | Label235 | SId: |  |  |  | 4.26, 1.07, 0.25, 0.17 |
| ComboBox | Combo236 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 4.51, 1.07, 0.72, 0.00 |
| ComboBox | Combo237 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[SOURCE_CODE] FROM NMIS_SOURCE_LOTS;  |  | 4.18, 1.77, 2.41, 0.00 |
| ComboBox | Combo238 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL] FROM NMIS_SOURCE_LOTS;  |  | 5.60, 1.12, 0.76, 0.00 |
| ComboBox | Combo239 |  | SPECIES_PRODUCT_CN | SELECT [Size_Spec_String Query].[CN], [Size_Spec_String Query].[SIZE_SPEC_STRING] FROM [Size_Spec_String Query];  |  | 5.60, 1.28, 1.04, 0.00 |
| ComboBox | Combo240 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SPECIES].[VERNACULAR] FROM NMIS_SPECIES INNER JOIN NMIS_SOURCE_LOTS ON ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]) AND ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]);  |  | 2.09, 1.53, 1.27, 0.00 |
| ComboBox | Combo241 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 7.17, 1.72, 0.88, 0.00 |
| ComboBox | Combo242 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_PRODUCTS].[PRODUCT_CLASS_CONDENSED] FROM NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN];  |  | 5.60, 1.46, 1.04, 0.00 |
| ComboBox | Combo243 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES_PRODUCTS].[END_SEASON_CODE] FROM NMIS_SPECIES_PRODUCTS;  |  | 3.02, 1.32, 0.17, 0.00 |
| TextBox | Text244 |  | BEGIN_FY |  |  | 2.24, 1.32, 0.33, 0.00 |
| ComboBox | Combo245 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES_PRODUCTS].[BEGIN_SEASON_CODE] FROM NMIS_SPECIES_PRODUCTS;  |  | 2.54, 1.32, 0.15, 0.00 |
| Subform | Child246 |  | Report.Field_tag_agreements subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 4.08, 1.28, 1.14, 0.47 |
| Label | Label247 | Source ID |  |  |  | 1.32, 0.33, 0.61, 0.18 |
| TextBox | Text248 |  | Orig_ID |  |  | 1.20, 0.52, 0.86, 0.17 |
| Label | Label253 | Source ID |  |  |  | 1.32, 1.33, 0.61, 0.18 |
| TextBox | Text254 |  | Orig_ID |  |  | 1.20, 1.52, 0.86, 0.17 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text181 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.32, 0.00, 1.82, 0.11 |
