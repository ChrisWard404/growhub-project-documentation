# Report: NMIS_SPECIES_PRODUCTS_CHECKLIST

**Grouping/sorting:** `CATEGORY_CODE`, `SORT`, `DIV`, `PLNTMSTR_SYMBOL`, `AGE_STRING`, `SPEC_MIN`, `SPEC_MAX`, `CALIPER_MIN`, `SPECIES_PRODUCT_DESC`, `NMIS_SPECIES_PRODUCTS_Index`  
**Backend tables referenced:** `NMIS_CATEGORIES`, `NMIS_PRODUCT_TYPES`, `NMIS_SEASONS`, `NMIS_SPECIES`  
**Subforms/subreports:** `Report.NMIS_AGREEMENT_LOTS subreport`  
**Opened from (VBA):** `Form_Species_Products_Reports`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | SPECIES_PRODUCT_DESC_Label | Species Product Description |  |  |  | 2.60, 1.38, 2.94, 0.17 |
| Label | TOTAL_NUMBER_OF_FY_Label | Total # FY's |  |  |  | 5.99, 1.20, 0.50, 0.34 |
| Label | SPEC_MIN_Label | Standard Specs |  |  |  | 6.49, 1.22, 0.66, 0.33 |
| Label | BEGIN_SEASON_CODE_Label | Begin Season Code |  |  |  | 8.89, 1.08, 0.53, 0.46 |
| Label | END_SEASON_CODE_Label | End Season Code |  |  |  | 9.38, 1.08, 0.49, 0.46 |
| Label | Label31 | Unit Code |  |  |  | 8.30, 1.22, 0.52, 0.32 |
| Label | Label38 | Sow Code |  |  |  | 9.85, 1.21, 0.36, 0.33 |
| Line | Line39 |  |  |  |  | 0.00, 1.57, 10.56, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 3.83, 0.16, 3.25, 0.19 |
| Label | Label33 | Species Products |  |  |  | 4.73, 0.57, 1.44, 0.23 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.83, 0.35, 3.25, 0.20 |
| Label | Label43 | USDA Forest Service |  |  |  | 3.83, 0.00, 3.25, 0.16 |
| Label | Label64 | Alternate Specs |  |  |  | 7.36, 1.22, 0.66, 0.33 |
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES; |  | 2.17, 0.82, 6.57, 0.29 |
| Label | Label59 | (lots) |  |  |  | 0.05, 1.39, 0.30, 0.16 |
| Label | Label68 | TP Code |  |  |  | 10.21, 1.21, 0.36, 0.33 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_CLASS |  | PRODUCT_CLASS |  |  | 4.50, 0.00, 1.60, 0.21 |
| TextBox | PRODUCT_CLASS_CONDENSED |  | PRODUCT_CLASS_CONDENSED |  |  | 4.50, 0.21, 1.31, 0.21 |
| TextBox | PRODUCT_DESC |  | PRODUCT_DESC |  |  | 0.08, 0.21, 2.60, 0.21 |
| Label | PRODUCT_DESC_Label | Product Description |  |  |  | 0.03, 0.00, 1.30, 0.18 |
| Label | PRODUCT_CLASS_Label | Product Class: |  |  |  | 3.49, 0.03, 0.92, 0.18 |
| Label | PRODUCT_CLASS_CONDENSED_Label | Product Class Condensed: |  |  |  | 2.75, 0.24, 1.66, 0.18 |
| ComboBox | BEGIN_PRODUCT_TYPE | Begin Product Type: | BEGIN_PRODUCT_TYPE | SELECT NMIS_PRODUCT_TYPES.PRODUCT_TYPE, NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC FROM NMIS_PRODUCT_TYPES;  |  | 7.33, 0.00, 1.42, 0.21 |
| ComboBox | END_PRODUCT_TYPE | End Product Type: | END_PRODUCT_TYPE | SELECT NMIS_PRODUCT_TYPES.PRODUCT_TYPE, NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC FROM NMIS_PRODUCT_TYPES;  |  | 7.33, 0.22, 1.42, 0.21 |
| TextBox | NMIS_PRODUCTS_CN |  | NMIS_PRODUCTS_CN |  |  | 2.25, 0.00, 0.00, 0.00 |
| TextBox | NOTE |  | NOTE |  |  | 8.79, 0.00, 1.75, 0.42 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text45 |  | =IIf([DIV]="U","No Species Products",IIf([DIV]="D","Non-Traditonal Species","Traditional Species")) |  |  | 0.05, 0.02, 5.29, 0.21 |
| Line | Line49 |  |  |  |  | 0.11, 0.00, 10.28, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SPECIES_PRODUCT_DESC |  | SPECIES_PRODUCT_DESC |  |  | 4.17, 0.01, 2.01, 0.21 |
| TextBox | TOTAL_NUMBER_OF_FY |  | TOTAL_NUMBER_OF_FY |  |  | 6.12, 0.01, 0.29, 0.21 |
| ComboBox | BEGIN_SEASON_CODE |  | BEGIN_SEASON_CODE | SELECT NMIS_SEASONS.SEASON_CODE, NMIS_SEASONS.SEASON_DESC FROM NMIS_SEASONS;  |  | 9.01, 0.01, 0.39, 0.21 |
| ComboBox | END_SEASON_CODE |  | END_SEASON_CODE | SELECT NMIS_SEASONS.SEASON_CODE, NMIS_SEASONS.SEASON_DESC FROM NMIS_SEASONS;  |  | 9.43, 0.01, 0.36, 0.21 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 8.32, 0.01, 0.62, 0.21 |
| ComboBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, [Scientific_Name] & " (" & NMIS_SPECIES.PLNTMSTR_SYMBOL & ")" & " - " & NMIS_SPECIES.VERNACULAR AS VERNACULAR_SYMBOL FROM NMIS_SPECIES INNER JOIN NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query ON NMIS_SPECIES.PLNTMSTR_SYMBOL=NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL ORDER BY [Scientific_Name] & " (" & NMIS_SPECIES.PLNTMSTR_SYMBOL & ")" & " - " & NMIS_SPECIES.VERNACULAR;  |  | 0.35, 0.01, 3.82, 0.21 |
| TextBox | SOWING_GROUP |  | SOWING_GROUP |  |  | 9.94, 0.01, 0.24, 0.21 |
| ComboBox | NMIS_SPECIES_PRODUCTS_CN |  | sp_w_al | SELECT Species_Products_with_Agreement_Lots.CN, "(" & [CountOfCN] & ")" AS [Count] FROM Species_Products_with_Agreement_Lots; |  | 0.00, 0.03, 0.35, 0.00 |
| TextBox | SIZE_SPEC_STRING |  | SIZE_SPEC_STRING |  |  | 6.44, 0.01, 0.95, 0.21 |
| TextBox | SIZE_SPEC_STRING_ALT |  | SIZE_SPEC_STRING_ALT |  |  | 7.40, 0.01, 0.93, 0.21 |
| Subform | NMIS_AGREEMENT_LOTS subreport |  | Report.NMIS_AGREEMENT_LOTS subreport (master: NMIS_SPECIES_PRODUCTS_CN → child: SPECIES_PRODUCT_CN) |  |  | 0.35, 0.24, 10.18, 0.01 |
| TextBox | Text69 |  | TRANSPLANT_GROUP |  |  | 10.29, 0.01, 0.24, 0.21 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line65 |  |  |  |  | 0.39, 0.03, 10.18, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text25 |  | =Now() |  |  | 0.04, 0.07, 3.50, 0.18 |
| TextBox | Text26 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 7.06, 0.06, 3.50, 0.18 |
| Line | Line47 |  |  |  |  | 0.00, 0.00, 10.55, 0.00 |
