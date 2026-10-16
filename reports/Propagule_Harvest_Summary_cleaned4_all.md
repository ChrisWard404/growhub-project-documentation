# Report: Propagule_Harvest_Summary_cleaned4_all

**Caption:** Propagule Harvest Summary Cleaned  
**Record source:**

```sql
Propagule_Harvest_Summary_cleaned4_all
```

**Grouping/sorting:** `SPECIES_GROUP`, `PLNTMSTR_SYMBOL`, `Client`, `ID`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 3.87, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 3.66, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 3.66, 0.00, 3.24, 0.16 |
| Label | Label24 | Propagule Harvest Cleaned Lot Summary |  |  |  | 3.79, 0.55, 2.97, 0.19 |
| TextBox | Like_Client | Selected for Like Client: | Like_Client |  |  | 1.74, 0.29, 0.75, 0.19 |
| TextBox | Text66 | Selected for Like Species: | Like_Species |  |  | 1.74, 0.46, 0.75, 0.19 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | HARVEST_METHOD_Label | Harvest Method |  |  |  | 0.07, 0.07, 0.97, 0.40 |
| Label | ID_Label | ID |  |  |  | 2.24, 0.26, 0.42, 0.21 |
| Label | year_Label | HarvFY |  |  |  | 3.05, 0.07, 0.44, 0.40 |
| Label | GERM_Label | Germ (%) |  |  |  | 6.22, 0.07, 0.46, 0.41 |
| Label | TEST TYPE_Label | Test Type |  |  |  | 5.80, 0.08, 0.46, 0.41 |
| Label | Clean Pct_Label | Clean Pct |  |  |  | 4.86, 0.07, 0.44, 0.40 |
| Label | Clean Adj_Label | Clean (lbs) |  |  |  | 5.35, 0.07, 0.48, 0.41 |
| Label | PURITY_Label | Purity (%) |  |  |  | 6.68, 0.07, 0.48, 0.41 |
| Label | spp_Label | Seeds/ lb |  |  |  | 7.25, 0.07, 0.57, 0.41 |
| Label | PLS/lb_Label | PLS/ lb |  |  |  | 7.83, 0.08, 0.51, 0.39 |
| Label | Ac_Label | Acres |  |  |  | 3.92, 0.26, 0.47, 0.21 |
| Label | Lb/Ac CL_Label | Lb/Ac Harvest |  |  |  | 8.36, 0.07, 0.65, 0.41 |
| Label | SumOfharvest_Label | Harv (Lbs) |  |  |  | 4.40, 0.07, 0.48, 0.41 |
| Label | SumOfBed Ft_Label | Bed Ft |  |  |  | 3.46, 0.07, 0.44, 0.40 |
| Line | Line45 |  |  |  |  | 0.00, 0.05, 10.52, 0.00 |
| Line | Line46 |  |  |  |  | 0.00, 0.03, 10.52, 0.00 |
| Line | Line47 |  |  |  |  | 0.00, 0.53, 10.52, 0.00 |
| Line | Line48 |  |  |  |  | 0.00, 0.51, 10.52, 0.00 |
| Label | Label49 | Lb/Ac Clean |  |  |  | 9.02, 0.07, 0.50, 0.41 |
| Label | Label53 | Client |  |  |  | 1.74, 0.26, 0.49, 0.21 |
| Label | Label57 | BeginFY |  |  |  | 2.61, 0.07, 0.44, 0.40 |
| Label | Label60 | $/Lb Clean |  |  |  | 9.52, 0.07, 0.48, 0.41 |
| Label | Label62 | $/10M PLS |  |  |  | 10.02, 0.07, 0.48, 0.41 |
| Label | Label64 | $/Ac |  |  |  | 1.34, 0.27, 0.42, 0.21 |

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
| TextBox | ID |  | ID |  |  | 2.30, 0.00, 0.42, 0.19 |
| TextBox | year |  | year |  |  | 3.07, 0.00, 0.30, 0.19 |
| TextBox | GERM |  | GERM |  |  | 6.28, 0.00, 0.33, 0.19 |
| TextBox | TEST TYPE |  | TEST TYPE |  |  | 5.95, 0.00, 0.32, 0.19 |
| TextBox | Clean Pct |  | Clean Pct |  |  | 4.90, 0.00, 0.38, 0.19 |
| TextBox | Clean Adj |  | Clean Adj |  |  | 5.29, 0.00, 0.48, 0.19 |
| TextBox | PURITY |  | PURITY |  |  | 6.71, 0.00, 0.35, 0.19 |
| TextBox | spp |  | spp |  |  | 7.08, 0.00, 0.65, 0.19 |
| TextBox | PLS/lb |  | PLS/lb |  |  | 7.74, 0.00, 0.65, 0.19 |
| TextBox | Ac |  | Ac |  |  | 3.90, 0.00, 0.46, 0.19 |
| TextBox | Lb/Ac CL |  | Lb/Ac UCL |  |  | 8.36, 0.00, 0.57, 0.19 |
| TextBox | SumOfharvest |  | SumOfharvest |  |  | 4.43, 0.00, 0.42, 0.19 |
| TextBox | SumOfBed Ft |  | SumOfBed Ft |  |  | 3.43, 0.00, 0.44, 0.19 |
| TextBox | Text50 |  | Lb/Ac CL |  |  | 9.02, 0.00, 0.50, 0.19 |
| ComboBox | HARVEST_METHOD |  | HARVEST_METHOD | DC;"Direct Combine";PC;"Pickup Combine";SW;"Swather";SC;"Swath & Catch";HD;"Hand";ST;"Stripper";BA;Bale |  | 0.14, 0.00, 1.07, 0.19 |
| TextBox | Client |  | Client |  |  | 1.81, 0.00, 0.48, 0.19 |
| TextBox | BEGIN_FY |  | BEGIN_FY |  |  | 2.74, 0.00, 0.30, 0.19 |
| TextBox | $/Lb |  | $/Lb |  |  | 9.52, 0.00, 0.48, 0.19 |
| TextBox | $/10kpls |  | $/10kpls |  |  | 10.02, 0.00, 0.48, 0.19 |
| TextBox | Text65 |  | $/Ac |  |  | 1.22, 0.00, 0.55, 0.19 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line59 |  |  |  |  | 0.12, 0.01, 10.38, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text33 |  | =Now() |  |  | 0.04, 0.06, 3.50, 0.21 |
| TextBox | Text34 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 7.26, 0.06, 3.24, 0.21 |
| Line | Line44 |  |  |  |  | 0.00, 0.03, 10.52, 0.00 |
