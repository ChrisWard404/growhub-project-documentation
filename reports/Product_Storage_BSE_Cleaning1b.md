# Report: Product_Storage_BSE_Cleaning1b

**Caption:** Packaging Summary  
**Grouping/sorting:** `PRODUCT_GROUP`, `Cleaning_Group`, `Plntmstr_symbol`, `BasedOnSort`, `Based On`, `Client`, `Sort`, `SUBLOT_NO`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label26 | Product Storage Summary and Cleaning Costs Summary |  |  |  | 1.79, 0.55, 4.55, 0.23 |
| Label | Weight_Label | Amt |  |  |  | 5.70, 1.15, 0.49, 0.18 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.46, 0.16, 3.25, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.46, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 2.46, 0.00, 3.25, 0.16 |
| Label | Label59 | Clean Chg $ |  |  |  | 6.27, 1.15, 0.74, 0.18 |
| Line | Line64 |  |  |  |  | 0.00, 1.35, 7.48, 0.00 |
| Label | Label99 | Lots |  |  |  | 7.14, 1.15, 0.31, 0.18 |
| TextBox | Cleaning_Group |  | [Cleaning_Group] |  |  | 1.80, 0.80, 4.53, 0.29 |

## Section: GroupHeader4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo100 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, [Scientific_Name] & " (" & [Vernacular] & ")" AS Expr1 FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 0.06, 0.03, 5.32, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Plntmstr_symbol |  | ID |  |  | 0.53, 0.00, 0.42, 0.21 |
| TextBox | Source_Location |  | Source_Location |  |  | 0.96, 0.00, 3.57, 0.21 |
| TextBox | Text29 |  | [SumOfNet] |  |  | 5.21, 0.00, 0.77, 0.21 |
| TextBox | Text30 |  | SUBLOT_NO |  |  | 4.52, 0.00, 0.29, 0.21 |
| TextBox | UNIT_CODE |  | unit |  |  | 6.01, 0.00, 0.17, 0.21 |
| TextBox | Clean_Chg |  | Clean_Chg |  |  | 6.33, 0.00, 0.71, 0.21 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text84 |  | [Based On] |  |  | 0.32, 0.00, 2.76, 0.23 |
| TextBox | Text87 |  | =Sum([SumOfNet]) |  |  | 5.23, 0.00, 0.75, 0.21 |
| TextBox | Text88 |  | UNIT |  |  | 5.97, 0.00, 0.21, 0.21 |
| TextBox | Text89 |  | =Sum([Clean_Chg]) |  |  | 6.21, 0.00, 0.83, 0.21 |
| TextBox | Text90 |  | =Count([SumOfNet]) |  |  | 7.11, 0.00, 0.35, 0.21 |
| TextBox | Text102 |  | [dollars] |  |  | 3.76, 0.00, 0.54, 0.23 |
| TextBox | Text103 |  | [per] |  |  | 4.30, 0.00, 0.80, 0.23 |
| TextBox | Text104 |  | =" @ " |  |  | 3.09, 0.00, 0.66, 0.23 |
| Line | Line121 |  |  |  |  | 5.25, 0.00, 0.75, 0.00 |
| Line | Line122 |  |  |  |  | 6.21, 0.00, 0.83, 0.00 |
| Line | Line123 |  |  |  |  | 7.12, 0.00, 0.38, 0.00 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text42 |  | =Sum([SumOfNet]) |  |  | 5.23, 0.00, 0.75, 0.21 |
| ComboBox | Combo48 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, "Totals for: " & [Scientific_Name] & " (" & [Vernacular] & ")" AS Expr1 FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 0.04, 0.01, 5.12, 0.19 |
| TextBox | Text54 |  | UNIT |  |  | 5.97, 0.00, 0.21, 0.21 |
| TextBox | Text60 |  | =Sum([Clean_Chg]) |  |  | 6.21, 0.00, 0.83, 0.21 |
| TextBox | SumOfNet |  | =Count([SumOfNet]) |  |  | 7.11, 0.00, 0.35, 0.21 |
| Line | Line107 |  |  |  |  | 5.23, 0.00, 0.75, 0.00 |
| Line | Line108 |  |  |  |  | 6.42, 0.00, 0.61, 0.00 |
| Line | Line115 |  |  |  |  | 7.11, 0.00, 0.35, 0.00 |
| Line | Line120 |  |  |  |  | 0.04, 0.25, 7.46, 0.00 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text92 |  | [Cleaning_Group] |  |  | 1.21, 0.00, 2.53, 0.23 |
| TextBox | Text94 |  | =Sum([SumOfNet]) |  |  | 5.23, 0.00, 0.75, 0.21 |
| TextBox | Text95 |  | UNIT |  |  | 5.97, 0.00, 0.21, 0.21 |
| TextBox | Text96 |  | =Sum([Clean_Chg]) |  |  | 6.21, 0.00, 0.83, 0.21 |
| TextBox | Text97 |  | =Count([SumOfNet]) |  |  | 7.11, 0.00, 0.35, 0.21 |
| TextBox | Text118 |  | ="Totals for: " |  |  | 0.08, 0.00, 1.12, 0.23 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.00, 0.17, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.18, 0.17, 3.30, 0.18 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text70 |  | =Sum([SumOfNet]) |  |  | 5.21, 0.00, 0.75, 0.21 |
| TextBox | Text72 |  | UNIT |  |  | 5.98, 0.00, 0.21, 0.21 |
| TextBox | Text73 |  | =Sum([Clean_Chg]) |  |  | 6.22, 0.00, 0.83, 0.21 |
| TextBox | Text86 |  | =Count([SumOfNet]) |  |  | 7.12, 0.00, 0.35, 0.21 |
| Line | Line111 |  |  |  |  | 5.28, 0.00, 0.67, 0.00 |
| Line | Line112 |  |  |  |  | 6.31, 0.00, 0.73, 0.00 |
| Line | Line113 |  |  |  |  | 7.16, 0.00, 0.31, 0.00 |
| Label | Label119 | Grand Total |  |  |  | 0.27, 0.00, 1.80, 0.23 |
