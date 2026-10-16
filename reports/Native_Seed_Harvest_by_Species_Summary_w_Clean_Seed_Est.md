# Report: Native_Seed_Harvest_by_Species_Summary_w_Clean_Seed_Est

**Caption:** Packaging Summary  
**Grouping/sorting:** `PLNTMSTR_SYMBOL`, `Sort`, `Source_Location`, `Bed_Start`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label26 | Native Seed Harvest Summary |  |  |  | 3.80, 0.55, 2.45, 0.23 |
| Label | Plntmstr_symbol_Label | Lot ID |  |  |  | 0.18, 1.16, 0.53, 0.18 |
| Label | Source_Location_Label | Source |  |  |  | 2.09, 1.16, 0.48, 0.18 |
| Label | Bed_Start_Label | Start Bed |  |  |  | 3.92, 1.16, 0.60, 0.18 |
| Label | Bed_End_Label | End Bed |  |  |  | 4.61, 1.16, 0.56, 0.18 |
| Label | Weight_Label | Weight |  |  |  | 6.28, 1.16, 0.47, 0.18 |
| Label | No_of_Boxes_Label | Units Code |  |  |  | 7.00, 1.16, 0.69, 0.18 |
| TextBox | year |  | [year2] |  |  | 3.19, 0.78, 3.62, 0.23 |
| Label | Label32 | Nursery Management Information System |  |  |  | 3.40, 0.16, 3.25, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.40, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 3.40, 0.00, 3.25, 0.16 |
| Label | Label49 | Bed Ft |  |  |  | 5.44, 1.16, 0.54, 0.18 |
| Line | Line31 |  |  |  |  | 0.01, 1.34, 9.96, 0.00 |
| Label | Label54 | Est Purity (%) |  |  |  | 8.19, 0.96, 0.58, 0.38 |
| Label | Label59 | Est Clean LBS |  |  |  | 9.46, 0.85, 0.47, 0.48 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text28 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, plntmstr_symbol &" - " &[Scientific_Name] & " (" & [Vernacular] & ")" AS Combined FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 0.12, 0.08, 6.96, 0.26 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Plntmstr_symbol |  | ID |  |  | 0.16, 0.00, 0.55, 0.21 |
| TextBox | Source_Location |  | Source_Location |  |  | 0.80, 0.00, 3.12, 0.21 |
| TextBox | Bed_Start |  | Bed_Start |  |  | 3.96, 0.00, 0.67, 0.21 |
| TextBox | Bed_End |  | Bed_End |  |  | 4.65, 0.00, 0.66, 0.21 |
| TextBox | Text29 |  | =Sum([Weight]) |  |  | 5.96, 0.00, 0.79, 0.21 |
| TextBox | Text30 |  | =Sum([No_of_Boxes]) |  |  | 6.79, 0.00, 0.53, 0.21 |
| TextBox | Unit_Code |  | UNIT_CODE |  |  | 7.36, 0.00, 0.45, 0.21 |
| TextBox | Total_Containers |  | Total_Containers |  |  | 5.30, 0.00, 0.66, 0.21 |
| TextBox | Text55 |  | Est_Purity |  |  | 7.85, 0.00, 0.79, 0.21 |
| TextBox | Text60 |  | =Sum([Cleaned_Lbs]) |  |  | 9.15, 0.00, 0.79, 0.21 |
| TextBox | est50 |  | est50 |  |  | 8.67, 0.00, 0.27, 0.21 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text38 |  | =Sum([Weight]) |  |  | 5.92, 0.05, 0.83, 0.21 |
| TextBox | Text39 |  | =Sum([No_of_Boxes]) |  |  | 6.79, 0.05, 0.53, 0.21 |
| Line | Line40 |  |  |  |  | 6.06, 0.02, 0.68, 0.00 |
| Line | Line41 |  |  |  |  | 6.78, 0.02, 0.54, 0.00 |
| Line | Line47 |  |  |  |  | 0.00, 0.29, 9.96, 0.00 |
| ComboBox | Combo48 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, "Totals for " &Plntmstr_symbol&" - "& [Scientific_Name] & " (" & [Vernacular] & ")" AS Combined FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 0.58, 0.07, 4.50, 0.19 |
| TextBox | Text51 |  | =Sum([Total_Containers]) |  |  | 5.11, 0.05, 0.83, 0.21 |
| Line | Line52 |  |  |  |  | 5.26, 0.02, 0.68, 0.00 |
| TextBox | Text61 |  | =Sum([Cleaned_Lbs]) |  |  | 9.10, 0.05, 0.83, 0.21 |
| Line | Line62 |  |  |  |  | 9.25, 0.02, 0.68, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.44, 0.17, 3.50, 0.18 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text42 |  | =Sum([Weight]) |  |  | 5.92, 0.03, 0.83, 0.21 |
| TextBox | Text43 |  | =Sum([No_of_Boxes]) |  |  | 6.79, 0.03, 0.53, 0.21 |
| Line | Line44 |  |  |  |  | 5.85, 0.00, 0.54, 0.00 |
| Line | Line45 |  |  |  |  | 6.42, 0.00, 0.54, 0.00 |
| Label | Label46 | Grand Total: |  |  |  | 3.99, 0.03, 1.12, 0.21 |
| TextBox | Text53 |  | =Sum([Total_Containers]) |  |  | 5.11, 0.03, 0.83, 0.21 |
| TextBox | Text63 |  | =Sum([Cleaned_Lbs]) |  |  | 9.10, 0.03, 0.83, 0.21 |
