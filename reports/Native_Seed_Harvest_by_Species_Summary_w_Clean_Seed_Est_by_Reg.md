# Report: Native_Seed_Harvest_by_Species_Summary_w_Clean_Seed_Est_by_Reg

**Caption:** Packaging Summary  
**Grouping/sorting:** `Region`, `PLNTMSTR_SYMBOL`, `Sort`, `Source_Location`, `Bed_Start`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label26 | Native Seed Harvest Summary |  |  |  | 3.90, 0.55, 2.45, 0.23 |
| Label | Plntmstr_symbol_Label | Lot ID |  |  |  | 0.18, 1.51, 0.53, 0.18 |
| Label | Source_Location_Label | Source |  |  |  | 2.09, 1.51, 0.48, 0.18 |
| Label | Bed_Start_Label | Start Bed |  |  |  | 3.92, 1.51, 0.60, 0.18 |
| Label | Bed_End_Label | End Bed |  |  |  | 4.61, 1.51, 0.56, 0.18 |
| Label | Weight_Label | Weight |  |  |  | 6.75, 1.51, 0.47, 0.18 |
| Label | No_of_Boxes_Label | Units  Code |  |  |  | 7.44, 1.51, 0.72, 0.18 |
| TextBox | year |  | [year2] |  |  | 3.07, 0.78, 4.05, 0.23 |
| Label | Label32 | Nursery Management Information System |  |  |  | 3.49, 0.16, 3.25, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.49, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 3.49, 0.00, 3.25, 0.16 |
| Label | Label49 | Bed Ft |  |  |  | 5.35, 1.51, 0.54, 0.18 |
| Line | Line31 |  |  |  |  | 0.01, 1.70, 10.47, 0.00 |
| Label | Label54 | Est Purity (%) |  |  |  | 8.19, 1.31, 0.58, 0.38 |
| Label | Label59 | Est Clean LBS |  |  |  | 9.19, 1.21, 0.47, 0.48 |
| ComboBox | Region |  | Region | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES; |  | 1.46, 1.00, 7.58, 0.29 |
| Label | Label78 | Acres |  |  |  | 6.03, 1.51, 0.55, 0.18 |
| Label | Label84 | Lbs Per Acre |  |  |  | 9.95, 1.21, 0.47, 0.48 |

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
| TextBox | Text29 |  | =Sum([Weight]) |  |  | 6.55, 0.00, 0.69, 0.21 |
| TextBox | Text30 |  | =Sum([No_of_Boxes]) |  |  | 7.26, 0.00, 0.53, 0.21 |
| TextBox | Unit_Code |  | UNIT_CODE |  |  | 7.83, 0.00, 0.45, 0.21 |
| TextBox | Total_Containers |  | Bed_FT |  |  | 5.32, 0.00, 0.55, 0.21 |
| TextBox | Text55 |  | Est_Purity |  |  | 8.29, 0.00, 0.41, 0.21 |
| TextBox | Text60 |  | =Sum([Cleaned_Lbs]) |  |  | 8.98, 0.00, 0.66, 0.21 |
| TextBox | est50 |  | est50 |  |  | 8.71, 0.00, 0.23, 0.21 |
| TextBox | Acres |  | Acres |  |  | 6.11, 0.00, 0.38, 0.21 |
| TextBox | Text85 |  | =Sum([Cleaned_Lbs])/[Acres] |  |  | 9.74, 0.00, 0.66, 0.21 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text38 |  | =Sum([Weight]) |  |  | 6.51, 0.05, 0.73, 0.21 |
| TextBox | Text39 |  | =Sum([No_of_Boxes]) |  |  | 7.26, 0.05, 0.53, 0.21 |
| Line | Line40 |  |  |  |  | 6.53, 0.02, 0.68, 0.00 |
| Line | Line41 |  |  |  |  | 7.28, 0.02, 0.51, 0.00 |
| Line | Line47 |  |  |  |  | 0.00, 0.29, 10.47, 0.00 |
| ComboBox | Combo48 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, "Totals for " &Plntmstr_symbol&" - "& [Scientific_Name] & " (" & [Vernacular] & ")" AS Combined FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 0.58, 0.07, 4.50, 0.19 |
| TextBox | Text51 |  | =Sum([Bed_FT]) |  |  | 5.14, 0.05, 0.73, 0.21 |
| Line | Line52 |  |  |  |  | 5.17, 0.02, 0.68, 0.00 |
| TextBox | Text61 |  | =Sum([Cleaned_Lbs]) |  |  | 8.94, 0.05, 0.71, 0.21 |
| Line | Line62 |  |  |  |  | 8.96, 0.02, 0.68, 0.00 |
| TextBox | Text77 |  | =Round(Sum([Cleaned_Lbs])/Sum([Weight])*100,2) |  |  | 8.25, 0.05, 0.46, 0.21 |
| TextBox | Text80 |  | =Sum([Acres]) |  |  | 5.93, 0.05, 0.55, 0.21 |
| Line | Line81 |  |  |  |  | 5.97, 0.02, 0.50, 0.00 |
| TextBox | Text86 |  | =Sum([Cleaned_Lbs])/Sum([Acres]) |  |  | 9.70, 0.05, 0.71, 0.21 |
| Line | Line87 |  |  |  |  | 9.72, 0.02, 0.68, 0.00 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo66 |  | Region | SELECT NMIS_ASSOCIATES.ASSOCIATE, "Total for : " & [ASSOCIATE_NAME] AS Expr1 FROM NMIS_ASSOCIATES; |  | 0.00, 0.01, 3.79, 0.23 |
| TextBox | Sum_Weight_lbs_Region |  | =Sum([Weight]) |  |  | 6.51, 0.03, 0.73, 0.21 |
| TextBox | Text68 |  | =Sum([No_of_Boxes]) |  |  | 7.26, 0.03, 0.53, 0.21 |
| Line | Line69 |  |  |  |  | 6.56, 0.00, 0.68, 0.00 |
| Line | Line70 |  |  |  |  | 7.28, 0.00, 0.51, 0.00 |
| TextBox | Text71 |  | =Sum([Bed_FT]) |  |  | 5.14, 0.03, 0.73, 0.21 |
| Line | Line72 |  |  |  |  | 5.17, 0.00, 0.68, 0.00 |
| TextBox | Sum_Est_Clean_lbs_Region |  | =Sum([Cleaned_Lbs]) |  |  | 8.94, 0.03, 0.71, 0.21 |
| Line | Line74 |  |  |  |  | 8.96, 0.00, 0.68, 0.00 |
| TextBox | Text76 |  | =Round(Sum([Cleaned_Lbs])/Sum([Weight])*100,2) |  |  | 8.25, 0.03, 0.46, 0.21 |
| TextBox | Text82 |  | =Sum([Acres]) |  |  | 5.93, 0.03, 0.55, 0.21 |
| TextBox | Text88 |  | =Sum([Cleaned_Lbs])/Sum([Acres]) |  |  | 9.70, 0.03, 0.71, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.04, 0.02, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.97, 0.02, 3.50, 0.18 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text42 |  | =Sum([Weight]) |  |  | 6.51, 0.03, 0.73, 0.21 |
| TextBox | Text43 |  | =Sum([No_of_Boxes]) |  |  | 7.26, 0.03, 0.53, 0.21 |
| Label | Label46 | Grand Total: |  |  |  | 3.99, 0.03, 1.12, 0.21 |
| TextBox | Text53 |  | =Sum([Bed_FT]) |  |  | 5.14, 0.03, 0.73, 0.21 |
| TextBox | Text63 |  | =Sum([Cleaned_Lbs]) |  |  | 8.94, 0.03, 0.71, 0.21 |
| TextBox | Text75 |  | =Round(Sum([Cleaned_Lbs])/Sum([Weight])*100,2) |  |  | 8.25, 0.03, 0.46, 0.21 |
| TextBox | Text83 |  | =Sum([Acres]) |  |  | 5.93, 0.03, 0.55, 0.21 |
| TextBox | Text89 |  | =Sum([Cleaned_Lbs])/Sum([Acres]) |  |  | 9.70, 0.03, 0.71, 0.21 |
