# Report: NMIS_SPECIES_CHECKLIST

**Caption:** NMIS_SPECIES_CHECKLIST  
**Record source:**

```sql
SELECT NMIS_SPECIES.*, NMIS_SOURCE_LOTS_PLNTMSTR_SYMBOL_SUMMARY.CountOfID AS No_Of_Lots FROM NMIS_SPECIES LEFT JOIN NMIS_SOURCE_LOTS_PLNTMSTR_SYMBOL_SUMMARY ON NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS_PLNTMSTR_SYMBOL_SUMMARY.PLNTMSTR_SYMBOL WHERE (((NMIS_SPECIES.HIDE) Like IIf(Left$(Nz([Show Hide Lots (Y/blank for no)]," "),1)="Y","*",0)) AND ((NMIS_SPECIES.PLNTMSTR_SYMBOL) Like [Forms]![NMIS_SPECIES]![Like_Plntmstr_Symbol] & "*"));
```

**Grouping/sorting:** `GENUS`, `SPECIES`, `VARIETY`  
**Backend tables referenced:** `NMIS_SPECIES`  
**Opened from (VBA):** `Form_NMIS_SPECIES`, `Form_Reports_Menu_Maintenance Subform`  

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
| Label | SPECIES_Label | Species |  |  |  | 5.16, 1.08, 0.39, 0.18 |
| Label | VARIETY_Label | Variety |  |  |  | 7.26, 1.08, 0.40, 0.18 |
| Line | Line31 |  |  |  |  | 0.00, 1.28, 7.97, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.42, 0.16, 3.25, 0.19 |
| Label | Label33 | Species Checklist |  |  |  | 3.32, 0.57, 1.46, 0.23 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.42, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 2.42, 0.00, 3.25, 0.16 |
| Label | Label35 | Sub Species |  |  |  | 6.12, 1.08, 0.72, 0.19 |
| Label | Label36 | Hide |  |  |  | 0.32, 1.08, 0.23, 0.18 |
| Label | Label38 | Species |  |  |  | 1.90, 0.92, 0.38, 0.18 |
| Label | Label39 | # Lots |  |  |  | 0.04, 0.93, 0.23, 0.33 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 0.50, 0.00, 0.55, 0.17 |
| CheckBox | DIVERSE |  | DIVERSE |  |  | 1.60, 0.04, 0.00, 0.00 |
| TextBox | SPECIES_NO |  | SPECIES_NO |  |  | 1.77, 0.00, 0.29, 0.17 |
| TextBox | SPECIES_ABBREVIATION |  | SPECIES_ABBREVIATION |  |  | 2.08, 0.00, 0.33, 0.17 |
| TextBox | VERNACULAR |  | VERNACULAR |  |  | 2.43, 0.00, 1.60, 0.17 |
| TextBox | GENUS |  | GENUS |  |  | 4.04, 0.00, 0.91, 0.17 |
| TextBox | XGENUS |  | XGENUS |  |  | 4.96, 0.00, 0.14, 0.17 |
| TextBox | SPECIES |  | SPECIES |  |  | 5.11, 0.00, 0.91, 0.17 |
| TextBox | XSPECIES |  | SPP |  |  | 6.03, 0.00, 0.24, 0.17 |
| TextBox | SUBSP |  | SUBSP |  |  | 6.27, 0.00, 0.81, 0.17 |
| TextBox | VAR |  | VAR |  |  | 7.08, 0.00, 0.23, 0.17 |
| TextBox | VARIETY |  | VARIETY |  |  | 7.33, 0.00, 0.65, 0.17 |
| TextBox | SPECIES_GROUP |  | SPECIES_GROUP |  |  | 1.07, 0.00, 0.50, 0.17 |
| CheckBox | HIDE |  | HIDE |  |  | 0.36, 0.02, 0.00, 0.00 |
| TextBox | No_Of_Lots |  | No_Of_Lots |  |  | 0.00, 0.00, 0.35, 0.17 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text29 |  | =Now() |  |  | 0.04, 0.04, 3.50, 0.00 |
| TextBox | Text30 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.62, 0.04, 3.33, 0.00 |
| Line | Line32 |  |  |  |  | 0.04, 0.04, 7.92, 0.00 |
