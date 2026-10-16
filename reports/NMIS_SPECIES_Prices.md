# Report: NMIS_SPECIES_Prices

**Grouping/sorting:** `GENUS`, `SPECIES`, `VARIETY`  
**Opened from (VBA):** `Form_Reports_Menu_Maintenance Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | PLNTMSTR_SYMBOL_Label | Species Symbol |  |  |  | 0.50, 0.93, 0.46, 0.33 |
| Label | SPECIES_GROUP_Label | Species Group |  |  |  | 1.09, 0.93, 0.42, 0.33 |
| Label | DIVERSE_Label | Non Tradi-tional |  |  |  | 1.48, 0.75, 0.32, 0.51 |
| Label | SPECIES_NO_Label |  No. |  |  |  | 1.80, 1.08, 0.20, 0.18 |
| Label | SPECIES_ABBREVIATION_Label | Abbrev. |  |  |  | 2.02, 1.08, 0.39, 0.18 |
| Label | VERNACULAR_Label | Common Name |  |  |  | 2.66, 1.08, 0.72, 0.18 |
| Label | GENUS_Label | Genus |  |  |  | 4.11, 1.08, 0.32, 0.18 |
| Label | SPECIES_Label | Price Code |  |  |  | 5.99, 1.08, 0.51, 0.19 |
| Label | VARIETY_Label | Base |  |  |  | 7.07, 1.08, 0.45, 0.19 |
| Line | Line31 |  |  |  |  | 0.00, 1.31, 8.00, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.42, 0.16, 3.25, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.42, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 2.42, 0.00, 3.25, 0.16 |
| Label | Label35 | Amount or Factor |  |  |  | 6.54, 0.94, 0.51, 0.33 |
| Label | Label36 | Hide |  |  |  | 0.28, 1.08, 0.23, 0.18 |
| Label | Label38 | Species |  |  |  | 1.90, 0.92, 0.38, 0.18 |
| Label | Label39 | # Lots |  |  |  | 0.01, 0.93, 0.23, 0.33 |
| Label | Label41 | Charge |  |  |  | 7.55, 1.08, 0.43, 0.19 |
| TextBox | Text43 |  | ="Seed Prices Checklist FY " & [Forms]![Switchboard]![FY_For_Reports] |  |  | 1.88, 0.54, 4.58, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 0.50, 0.02, 0.55, 0.17 |
| CheckBox | DIVERSE |  | DIVERSE |  |  | 1.60, 0.06, 0.00, 0.00 |
| TextBox | SPECIES_NO |  | SPECIES_NO |  |  | 1.77, 0.02, 0.29, 0.17 |
| TextBox | SPECIES_ABBREVIATION |  | SPECIES_ABBREVIATION |  |  | 2.08, 0.02, 0.33, 0.17 |
| TextBox | VERNACULAR |  | VERNACULAR |  |  | 2.43, 0.02, 1.60, 0.17 |
| TextBox | Scientific_Name |  | Scientific_Name |  |  | 4.04, 0.02, 1.99, 0.17 |
| TextBox | PRICE_RATE_CODE |  | PRICE_RATE_CODE |  |  | 6.05, 0.02, 0.49, 0.17 |
| TextBox | AMOUNT |  | AMOUNT |  |  | 6.57, 0.02, 0.43, 0.17 |
| TextBox | BASE_AMOUNT |  | BASE_AMOUNT |  |  | 7.03, 0.02, 0.40, 0.17 |
| TextBox | SPECIES_GROUP |  | SPECIES_GROUP |  |  | 1.07, 0.02, 0.50, 0.17 |
| CheckBox | HIDE |  | HIDE |  |  | 0.32, 0.04, 0.00, 0.00 |
| TextBox | No_Of_Lots |  | No_Of_Lots |  |  | 0.00, 0.02, 0.27, 0.17 |
| TextBox | Charge |  | =[amount]*[base_amount] |  |  | 7.46, 0.02, 0.53, 0.17 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text29 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.00 |
| TextBox | Text30 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.62, 0.17, 3.33, 0.00 |
| Line | Line32 |  |  |  |  | 0.04, 0.17, 7.92, 0.00 |
