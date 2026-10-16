# Report: Product_Storage_BSE_Cleaning_Summary1b

**Caption:** Packaging Summary  
**Grouping/sorting:** `PRODUCT_GROUP`, `Cleaning_Group`, `Plntmstr_symbol`, `Based On`, `Client`, `Sort`, `SUBLOT_NO`, `Bed_Start`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label26 | Product Storage Summary and Cleaning Costs Summary |  |  |  | 1.79, 0.55, 4.55, 0.23 |
| Label | Weight_Label | Amt |  |  |  | 5.76, 0.90, 0.49, 0.18 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.46, 0.16, 3.25, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.46, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 2.46, 0.00, 3.25, 0.16 |
| Label | Label59 | Clean Chg $ |  |  |  | 6.33, 0.90, 0.74, 0.18 |
| Line | Line64 |  |  |  |  | 0.00, 1.10, 7.48, 0.00 |
| Label | Label99 | Lots |  |  |  | 7.14, 0.90, 0.31, 0.18 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Cleaning_Group | Cleaning Group: | Cleaning_Group |  |  | 1.46, 0.04, 2.42, 0.23 |

## Section: GroupHeader4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo100 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, [Scientific_Name] & " (" & [Vernacular] & ")" AS Expr1 FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 0.06, 0.03, 5.32, 0.19 |
| Line | Line101 |  |  |  |  | 0.00, 0.00, 7.46, 0.00 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text84 |  | [Based On] |  |  | 1.33, 0.00, 3.96, 0.23 |
| TextBox | Text87 |  | =Sum([SumOfNet]) |  |  | 5.29, 0.00, 0.75, 0.21 |
| TextBox | Text88 |  | UNIT |  |  | 6.04, 0.00, 0.21, 0.21 |
| TextBox | Text89 |  | =Sum([Clean_Chg]) |  |  | 6.30, 0.00, 0.83, 0.21 |
| TextBox | Text90 |  | =Count([SumOfNet]) |  |  | 7.14, 0.00, 0.35, 0.21 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text42 |  | =Sum([SumOfNet]) |  |  | 5.29, 0.00, 0.75, 0.21 |
| ComboBox | Combo48 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, "Totals for: " & [Scientific_Name] & " (" & [Vernacular] & ")" AS Expr1 FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 0.04, 0.01, 5.32, 0.19 |
| TextBox | Text54 |  | UNIT |  |  | 6.04, 0.00, 0.21, 0.21 |
| TextBox | Text60 |  | =Sum([Clean_Chg]) |  |  | 6.30, 0.00, 0.83, 0.21 |
| TextBox | SumOfNet |  | =Count([SumOfNet]) |  |  | 7.14, 0.00, 0.35, 0.21 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text92 |  | ="Totals for: " & [Cleaning_Group] |  |  | 1.00, 0.00, 2.42, 0.23 |
| TextBox | Text94 |  | =Sum([SumOfNet]) |  |  | 5.29, 0.00, 0.75, 0.21 |
| TextBox | Text95 |  | UNIT |  |  | 6.04, 0.00, 0.21, 0.21 |
| TextBox | Text96 |  | =Sum([Clean_Chg]) |  |  | 6.30, 0.00, 0.83, 0.21 |
| TextBox | Text97 |  | =Count([SumOfNet]) |  |  | 7.14, 0.00, 0.35, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.00, 0.17, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.95, 0.17, 3.30, 0.18 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text70 |  | =Sum([SumOfNet]) |  |  | 5.27, 0.03, 0.75, 0.21 |
| Line | Line71 |  |  |  |  | 5.63, 0.00, 0.60, 0.00 |
| TextBox | Text72 |  | UNIT |  |  | 6.04, 0.03, 0.21, 0.21 |
| TextBox | Text73 |  | =Sum([Clean_Chg]) |  |  | 6.28, 0.03, 0.83, 0.21 |
| Line | Line74 |  |  |  |  | 6.61, 0.00, 0.64, 0.00 |
| TextBox | Text86 |  | =Count([SumOfNet]) |  |  | 7.14, 0.03, 0.35, 0.21 |
