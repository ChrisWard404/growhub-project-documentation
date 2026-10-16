# Report: Propagule_Harvest_Summary_cleaned3

**Caption:** Propagule_Harvest_Summary_cleaned3  
**Grouping/sorting:** `SPECIES_GROUP`, `PLNTMSTR_SYMBOL`, `Client`, `ID`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 3.87, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 3.66, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 3.66, 0.00, 3.24, 0.16 |
| Label | Label24 | Propagule Harvest Cleaned Lot Summary |  |  |  | 3.79, 0.55, 2.97, 0.19 |
| TextBox | Like_Client | Selected for Like Client: | Like_Client |  |  | 1.74, 0.29, 0.75, 0.19 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | HARVEST_METHOD_Label | Harvest Method |  |  |  | 0.07, 0.07, 1.16, 0.40 |
| Label | ID_Label | ID |  |  |  | 2.01, 0.26, 0.42, 0.21 |
| Label | year_Label | HarvFY |  |  |  | 2.89, 0.07, 0.44, 0.40 |
| Label | GERM_Label | Germ (%) |  |  |  | 6.49, 0.07, 0.56, 0.41 |
| Label | TEST TYPE_Label | Test Type |  |  |  | 5.94, 0.08, 0.52, 0.41 |
| Label | Clean Pct_Label | Clean Pct |  |  |  | 4.90, 0.07, 0.46, 0.40 |
| Label | Clean Adj_Label | Clean (lbs) |  |  |  | 5.45, 0.07, 0.50, 0.41 |
| Label | PURITY_Label | Purity (%) |  |  |  | 7.05, 0.07, 0.50, 0.41 |
| Label | spp_Label | Seeds/lb |  |  |  | 7.55, 0.26, 0.68, 0.21 |
| Label | PLS/lb_Label | PLS/lb |  |  |  | 8.27, 0.26, 0.69, 0.21 |
| Label | Ac_Label | Acres |  |  |  | 3.84, 0.26, 0.51, 0.21 |
| Label | Lb/Ac CL_Label | Lb/Ac Harvest |  |  |  | 9.02, 0.07, 0.67, 0.41 |
| Label | SumOfharvest_Label | Harvest (Lbs) |  |  |  | 4.31, 0.07, 0.57, 0.41 |
| Label | SumOfBed Ft_Label | Bed Ft |  |  |  | 3.36, 0.07, 0.44, 0.40 |
| Line | Line45 |  |  |  |  | 0.00, 0.05, 10.36, 0.00 |
| Line | Line46 |  |  |  |  | 0.00, 0.03, 10.36, 0.00 |
| Line | Line47 |  |  |  |  | 0.00, 0.53, 10.36, 0.00 |
| Line | Line48 |  |  |  |  | 0.00, 0.51, 10.36, 0.00 |
| Label | Label49 | Lb/Ac Cleaned |  |  |  | 9.75, 0.07, 0.59, 0.41 |
| Label | Label53 | Client |  |  |  | 1.51, 0.26, 0.49, 0.21 |
| Label | Label57 | BeginFY |  |  |  | 2.45, 0.07, 0.44, 0.40 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SPECIES_GROUP |  | SPECIES_GROUP |  |  | 0.04, 0.00, 4.02, 0.25 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name_With_Code, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACULAR FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 0.04, 0.00, 2.58, 0.21 |
| ComboBox | Combo51 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACULAR, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name_With_Code FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 2.75, 0.00, 2.93, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 2.07, 0.00, 0.42, 0.19 |
| TextBox | year |  | year |  |  | 3.02, 0.00, 0.30, 0.19 |
| TextBox | GERM |  | GERM |  |  | 6.55, 0.00, 0.44, 0.19 |
| TextBox | TEST TYPE |  | TEST TYPE |  |  | 6.12, 0.00, 0.39, 0.19 |
| TextBox | Clean Pct |  | Clean Pct |  |  | 4.93, 0.00, 0.40, 0.19 |
| TextBox | Clean Adj |  | Clean Adj |  |  | 5.39, 0.00, 0.50, 0.19 |
| TextBox | PURITY |  | PURITY |  |  | 7.08, 0.00, 0.38, 0.19 |
| TextBox | spp |  | spp |  |  | 7.56, 0.00, 0.66, 0.19 |
| TextBox | PLS/lb |  | PLS/lb |  |  | 8.27, 0.00, 0.69, 0.19 |
| TextBox | Ac |  | Ac |  |  | 3.82, 0.00, 0.50, 0.19 |
| TextBox | Lb/Ac CL |  | Lb/Ac UCL |  |  | 9.02, 0.00, 0.59, 0.19 |
| TextBox | SumOfharvest |  | SumOfharvest |  |  | 4.39, 0.00, 0.50, 0.19 |
| TextBox | SumOfBed Ft |  | SumOfBed Ft |  |  | 3.33, 0.00, 0.44, 0.19 |
| TextBox | Text50 |  | Lb/Ac CL |  |  | 9.75, 0.00, 0.59, 0.19 |
| ComboBox | HARVEST_METHOD |  | HARVEST_METHOD | DC;"Direct Combine";PC;"Pickup Combine";SW;"Swather";SC;"Swath & Catch";HD;"Hand";ST;"Stripper";BA;Bale |  | 0.14, 0.00, 1.41, 0.19 |
| TextBox | Client |  | Client |  |  | 1.58, 0.00, 0.48, 0.19 |
| TextBox | BEGIN_FY |  | BEGIN_FY |  |  | 2.57, 0.00, 0.30, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text33 |  | =Now() |  |  | 0.04, 0.10, 3.50, 0.21 |
| TextBox | Text34 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 7.26, 0.10, 3.08, 0.21 |
| Line | Line43 |  |  |  |  | 0.00, 0.00, 9.99, 0.00 |
| Line | Line44 |  |  |  |  | 0.00, 0.04, 10.36, 0.00 |
