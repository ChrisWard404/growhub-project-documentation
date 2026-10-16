# Report: Product_Storage_BSE_Cleaning1

**Caption:** Packaging Summary  
**Grouping/sorting:** `PRODUCT_GROUP`, `Parent`, `Client`, `Cleaning_Group`, `Plntmstr_symbol`, `Sort`, `SUBLOT_NO`, `Source_Location`, `Bed_Start`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label26 | Product Storage Summary and Cleaning Costs |  |  |  | 3.42, 0.55, 3.91, 0.23 |
| Label | Plntmstr_symbol_Label | Lot ID |  |  |  | 2.02, 0.93, 0.45, 0.17 |
| Label | Source_Location_Label | Source |  |  |  | 3.64, 0.93, 0.48, 0.18 |
| Label | Weight_Label | Amt |  |  |  | 6.39, 0.93, 0.49, 0.18 |
| Label | No_of_Boxes_Label | Sublot |  |  |  | 5.91, 0.93, 0.43, 0.18 |
| Label | Label32 | Nursery Management Information System |  |  |  | 3.76, 0.16, 3.25, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.76, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 3.76, 0.00, 3.25, 0.16 |
| Label | Label58 | Based on |  |  |  | 8.60, 0.93, 0.59, 0.18 |
| Label | Label59 | Lot Chg $ |  |  |  | 7.94, 0.93, 0.58, 0.18 |
| Line | Line64 |  |  |  |  | 0.00, 1.14, 10.62, 0.01 |
| Label | Label66 | Contact |  |  |  | 0.11, 0.93, 1.89, 0.18 |
| Label | Label69 | $ Per |  |  |  | 7.03, 0.93, 0.86, 0.18 |

## Section: GroupHeader4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo76 |  | Parent | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE] & " - " & [ASSOCIATE_NAME] AS Combined FROM NMIS_ASSOCIATES;  |  | 0.00, 0.00, 6.96, 0.26 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text28 |  | Client | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE] & " - " & [ASSOCIATE_NAME] AS Combined FROM NMIS_ASSOCIATES;  |  | 0.08, 0.08, 6.96, 0.26 |

## Section: GroupHeader5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Cleaning_Group | Cleaning Group: | Cleaning_Group |  |  | 1.40, 0.04, 2.35, 0.21 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo50 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, [Scientific_Name] & " (" & [Vernacular] & ")" AS Combined FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query;  |  | 0.11, 0.03, 5.08, 0.19 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Plntmstr_symbol |  | ID |  |  | 2.01, 0.00, 0.42, 0.21 |
| TextBox | Source_Location |  | Source_Location |  |  | 2.44, 0.00, 3.57, 0.21 |
| TextBox | Text29 |  | =Sum([SumOfNet]) |  |  | 6.31, 0.00, 0.44, 0.21 |
| TextBox | Text30 |  | SUBLOT_NO |  |  | 6.00, 0.00, 0.29, 0.21 |
| TextBox | UNIT_CODE |  | unit |  |  | 6.77, 0.00, 0.25, 0.21 |
| TextBox | Clean_Chg |  | Clean_Chg |  |  | 7.94, 0.00, 0.58, 0.21 |
| TextBox | Based On |  | Based On |  |  | 8.61, 0.00, 1.99, 0.21 |
| TextBox | dollars |  | dollars |  |  | 7.05, 0.00, 0.38, 0.21 |
| TextBox | per |  | per |  |  | 7.45, 0.00, 0.48, 0.21 |
| TextBox | Contact |  | Contact |  |  | 0.00, 0.01, 2.00, 0.20 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text42 |  | =Sum([SumOfNet]) |  |  | 6.00, 0.03, 0.75, 0.21 |
| Line | Line44 |  |  |  |  | 6.21, 0.00, 0.54, 0.00 |
| ComboBox | Combo48 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, "Totals for " & [Scientific_Name] & " (" & [Vernacular] & ")" AS Combined FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query;  |  | 0.28, 0.04, 5.08, 0.19 |
| TextBox | Text54 |  | UNIT |  |  | 6.78, 0.03, 0.25, 0.21 |
| TextBox | Text60 |  | =Sum([Clean_Chg]) |  |  | 7.71, 0.03, 0.81, 0.21 |
| Line | Line67 |  |  |  |  | 7.89, 0.00, 0.64, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text38 |  | =Sum([SumOfNet]) |  |  | 6.00, 0.03, 0.75, 0.21 |
| Line | Line40 |  |  |  |  | 6.21, 0.00, 0.54, 0.00 |
| ComboBox | Client |  | Client | SELECT NMIS_ASSOCIATES.ASSOCIATE, "Totals for " & [Associate] & " - " & [Associate_Name] AS Combined FROM NMIS_ASSOCIATES;  |  | 0.28, 0.03, 5.08, 0.19 |
| Line | Line51 |  |  |  |  | 0.00, 0.25, 10.61, 0.00 |
| TextBox | Text55 |  | UNIT |  |  | 6.78, 0.03, 0.25, 0.21 |
| TextBox | Text61 |  | =Sum([Clean_Chg]) |  |  | 7.71, 0.03, 0.81, 0.21 |
| Line | Line68 |  |  |  |  | 7.89, 0.00, 0.64, 0.00 |

## Section: GroupFooter5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo77 |  | Parent | SELECT NMIS_ASSOCIATES.ASSOCIATE, "Totals for " & [Associate] & " - " & [Associate_Name] AS Combined FROM NMIS_ASSOCIATES;  |  | 0.28, 0.03, 5.08, 0.19 |
| TextBox | Text78 |  | =Sum([SumOfNet]) |  |  | 6.00, 0.03, 0.75, 0.21 |
| Line | Line79 |  |  |  |  | 6.21, 0.00, 0.54, 0.00 |
| TextBox | Text80 |  | UNIT |  |  | 6.78, 0.03, 0.25, 0.21 |
| TextBox | Text81 |  | =Sum([Clean_Chg]) |  |  | 7.71, 0.03, 0.81, 0.21 |
| Line | Line82 |  |  |  |  | 7.89, 0.00, 0.64, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.00, 0.17, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 7.35, 0.17, 3.28, 0.19 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text70 |  | =Sum([SumOfNet]) |  |  | 6.04, 0.03, 0.71, 0.21 |
| Line | Line71 |  |  |  |  | 6.21, 0.00, 0.54, 0.00 |
| TextBox | Text72 |  | UNIT |  |  | 6.78, 0.03, 0.25, 0.21 |
| TextBox | Text73 |  | =Sum([Clean_Chg]) |  |  | 7.62, 0.03, 0.90, 0.21 |
| Line | Line74 |  |  |  |  | 7.89, 0.00, 0.64, 0.00 |
| Label | Label75 | Total |  |  |  | 5.31, 0.05, 0.48, 0.19 |
