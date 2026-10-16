# Report: Product_Storage_BSE_Cleaning_Summary1

**Caption:** Packaging Summary  
**Grouping/sorting:** `PRODUCT_GROUP`, `Parent`, `Client`, `Cleaning_Group`, `Plntmstr_symbol`, `Sort`, `SUBLOT_NO`, `Bed_Start`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label26 | Product Storage Summary and Cleaning Costs Summary |  |  |  | 1.79, 0.55, 4.55, 0.23 |
| Label | Weight_Label | Amt |  |  |  | 5.88, 0.90, 0.49, 0.18 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.46, 0.16, 3.25, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.46, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 2.46, 0.00, 3.25, 0.16 |
| Label | Label59 | Clean Chg $ |  |  |  | 6.50, 0.90, 0.74, 0.18 |
| Line | Line64 |  |  |  |  | 0.00, 1.10, 7.32, 0.00 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo75 |  | Parent | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE] & " - " & [ASSOCIATE_NAME] AS Combined FROM NMIS_ASSOCIATES;  |  | 0.00, 0.00, 5.25, 0.26 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text28 |  | Client | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE] & " - " & [ASSOCIATE_NAME] AS Combined FROM NMIS_ASSOCIATES;  |  | 0.01, 0.05, 6.96, 0.26 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Cleaning_Group | Cleaning_Group: | Cleaning_Group |  |  | 1.25, 0.04, 2.42, 0.23 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text42 |  | =Sum([SumOfNet]) |  |  | 5.41, 0.00, 0.75, 0.21 |
| ComboBox | Combo48 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, [Scientific_Name] & " (" & [Vernacular] & ")" AS Expr1 FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 0.04, 0.01, 5.32, 0.19 |
| TextBox | Text54 |  | UNIT |  |  | 6.15, 0.00, 0.21, 0.21 |
| TextBox | Text60 |  | =Sum([Clean_Chg]) |  |  | 6.42, 0.00, 0.83, 0.21 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text38 |  | =Sum([SumOfNet]) |  |  | 5.41, 0.03, 0.75, 0.21 |
| Line | Line40 |  |  |  |  | 5.55, 0.00, 0.60, 0.00 |
| ComboBox | Client |  | Client | SELECT NMIS_ASSOCIATES.ASSOCIATE, "Totals for " & [Associate] & " - " & [Associate_Name] AS Combined FROM NMIS_ASSOCIATES;  |  | 0.12, 0.03, 5.24, 0.19 |
| Line | Line51 |  |  |  |  | 0.00, 0.25, 7.31, 0.00 |
| TextBox | Text55 |  | UNIT |  |  | 6.15, 0.03, 0.21, 0.21 |
| TextBox | Text61 |  | =Sum([Clean_Chg]) |  |  | 6.42, 0.03, 0.83, 0.21 |
| Line | Line68 |  |  |  |  | 6.61, 0.00, 0.64, 0.00 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text76 |  | =Sum([SumOfNet]) |  |  | 5.42, 0.03, 0.75, 0.21 |
| Line | Line77 |  |  |  |  | 5.56, 0.00, 0.60, 0.00 |
| ComboBox | Combo78 |  | Parent | SELECT NMIS_ASSOCIATES.ASSOCIATE, "Totals for " & [Associate] & " - " & [Associate_Name] AS Combined FROM NMIS_ASSOCIATES;  |  | 0.14, 0.03, 5.24, 0.19 |
| TextBox | Text79 |  | UNIT |  |  | 6.16, 0.03, 0.21, 0.21 |
| TextBox | Text80 |  | =Sum([Clean_Chg]) |  |  | 6.43, 0.03, 0.83, 0.21 |
| Line | Line81 |  |  |  |  | 6.62, 0.00, 0.64, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.00, 0.17, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.95, 0.17, 3.30, 0.18 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text70 |  | =Sum([SumOfNet]) |  |  | 5.41, 0.03, 0.75, 0.21 |
| Line | Line71 |  |  |  |  | 5.63, 0.00, 0.60, 0.00 |
| TextBox | Text72 |  | UNIT |  |  | 6.18, 0.03, 0.21, 0.21 |
| TextBox | Text73 |  | =Sum([Clean_Chg]) |  |  | 6.42, 0.03, 0.83, 0.21 |
| Line | Line74 |  |  |  |  | 6.61, 0.00, 0.64, 0.00 |
