# Report: Native_Seed_Harvest_Summary_by_species2

**Caption:** Packaging Summary  
**Grouping/sorting:** `PLNTMSTR_SYMBOL`, `Sort`, `Source_Location`, `Bed_Start`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label26 | Native Seed Harvest Summary |  |  |  | 3.08, 0.55, 2.45, 0.23 |
| Label | Plntmstr_symbol_Label | Lot ID |  |  |  | 0.56, 1.16, 0.53, 0.18 |
| Label | Source_Location_Label | Source |  |  |  | 2.47, 1.16, 0.48, 0.18 |
| Label | Bed_Start_Label | Start Bed |  |  |  | 4.30, 1.16, 0.60, 0.18 |
| Label | Bed_End_Label | End Bed |  |  |  | 5.07, 1.16, 0.56, 0.18 |
| Label | Weight_Label | Weight |  |  |  | 6.01, 1.16, 0.47, 0.18 |
| Label | No_of_Boxes_Label | Units   Code |  |  |  | 6.95, 1.16, 0.75, 0.18 |
| Line | Line31 |  |  |  |  | 0.39, 1.34, 7.25, 0.00 |
| TextBox | year |  | [year2] |  |  | 2.47, 0.78, 3.62, 0.23 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.68, 0.16, 3.25, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.68, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 2.68, 0.00, 3.25, 0.16 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo50 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, [Plntmstr_Symbol] & " -" & [Scientific_Name] & " (" & [Vernacular] & ")" AS Combined FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 0.52, 0.03, 5.08, 0.19 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Plntmstr_symbol |  | ID |  |  | 0.55, 0.00, 0.55, 0.21 |
| TextBox | Source_Location |  | Source_Location |  |  | 1.18, 0.00, 3.12, 0.21 |
| TextBox | Bed_Start |  | Bed_Start |  |  | 4.34, 0.00, 0.71, 0.21 |
| TextBox | Bed_End |  | Bed_End |  |  | 5.11, 0.00, 0.71, 0.21 |
| TextBox | Text29 |  | =Sum([Weight]) |  |  | 5.89, 0.00, 0.69, 0.21 |
| TextBox | Text30 |  | =Sum([No_of_Boxes]) |  |  | 6.77, 0.00, 0.53, 0.21 |
| TextBox | Unit_Code |  | UNIT_CODE |  |  | 7.35, 0.00, 0.44, 0.21 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo48 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, "Totals for " & [plntmstr_symbol] & " - " & [Scientific_Name] & " (" & [Vernacular] & ")" AS Combined FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 0.68, 0.04, 5.08, 0.19 |
| TextBox | Text42 |  | =Sum([Weight]) |  |  | 5.89, 0.03, 0.69, 0.21 |
| TextBox | Text43 |  | =Sum([No_of_Boxes]) |  |  | 6.77, 0.03, 0.53, 0.21 |
| Line | Line44 |  |  |  |  | 6.03, 0.00, 0.54, 0.00 |
| Line | Line45 |  |  |  |  | 6.76, 0.00, 0.54, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.43, 0.17, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.37, 0.17, 3.50, 0.18 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text46 |  | =Sum([Weight]) |  |  | 5.74, 0.03, 0.83, 0.21 |
| TextBox | Text47 |  | =Sum([No_of_Boxes]) |  |  | 6.77, 0.03, 0.53, 0.21 |
| Line | Line48 |  |  |  |  | 6.03, 0.00, 0.54, 0.00 |
| Line | Line49 |  |  |  |  | 7.07, 0.00, 0.54, 0.00 |
| Label | Label46 | Grand Total: |  |  |  | 4.16, 0.03, 1.12, 0.21 |
