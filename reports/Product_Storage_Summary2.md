# Report: Product_Storage_Summary2

**Caption:** Packaging Summary  
**Grouping/sorting:** `PRODUCT_GROUP`, `FISCAL_YEAR`, `Client`, `Plntmstr_symbol`, `Sort`, `order_ID_lot_ID`, `SUBLOT_NO`, `Source_Location`, `Bed_Start`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_FISCAL_YEARS`  
**Opened from (VBA):** `Form_Product_Storage_Summary`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label26 | Product Storage Summary |  |  |  | 2.67, 0.55, 3.25, 0.23 |
| Label | Plntmstr_symbol_Label | Order ID/Lot ID |  |  |  | 0.00, 1.25, 1.14, 0.18 |
| Label | Source_Location_Label | Source |  |  |  | 2.06, 1.25, 0.48, 0.18 |
| Label | Weight_Label | Amt |  |  |  | 7.02, 1.25, 0.49, 0.18 |
| Label | No_of_Boxes_Label | Sublot |  |  |  | 6.47, 1.25, 0.43, 0.18 |
| Line | Line31 |  |  |  |  | 0.01, 1.43, 7.86, 0.01 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.68, 0.16, 3.25, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.68, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 2.68, 0.00, 3.25, 0.16 |
| TextBox | PRODUCT_GROUP |  | PG |  |  | 2.67, 0.79, 3.26, 0.26 |
| ComboBox | FISCAL_YEAR |  | FISCAL_YEAR | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, "Processed for " & [FISCAL_YEAR_NUMBER] AS pfy FROM NMIS_FISCAL_YEARS; |  | 2.67, 1.05, 3.29, 0.21 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text28 |  | Client | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE] & " - " & [ASSOCIATE_NAME] AS Combined FROM NMIS_ASSOCIATES;  |  | 0.08, 0.00, 6.96, 0.26 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo50 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, [Scientific_Name] & " (" & [Vernacular] & ")" AS Combined FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query;  |  | 0.11, 0.01, 5.08, 0.19 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Plntmstr_symbol |  | order_ID_lot_ID |  |  | 0.12, 0.00, 1.62, 0.21 |
| TextBox | Source_Location |  | Source_Location |  |  | 1.76, 0.00, 4.79, 0.21 |
| TextBox | Text29 |  | =Sum([SumOfNet]) |  |  | 6.92, 0.00, 0.60, 0.21 |
| TextBox | Text30 |  | SUBLOT_NO |  |  | 6.56, 0.00, 0.35, 0.21 |
| TextBox | UNIT_CODE |  | unit |  |  | 7.52, 0.00, 0.33, 0.21 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text42 |  | =Sum([SumOfNet]) |  |  | 6.92, 0.03, 0.60, 0.21 |
| Line | Line44 |  |  |  |  | 6.94, 0.00, 0.54, 0.00 |
| ComboBox | Combo48 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, "Totals for " & [Scientific_Name] & " (" & [Vernacular] & ")" AS Combined FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query;  |  | 0.28, 0.04, 5.08, 0.19 |
| TextBox | Text54 |  | UNIT |  |  | 7.52, 0.03, 0.33, 0.21 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text38 |  | =Sum([SumOfNet]) |  |  | 6.92, 0.03, 0.60, 0.21 |
| Line | Line40 |  |  |  |  | 6.94, 0.00, 0.54, 0.00 |
| ComboBox | Client |  | Client | SELECT NMIS_ASSOCIATES.ASSOCIATE, "Totals for " & [Associate] & " - " & [Associate_Name] AS Combined FROM NMIS_ASSOCIATES;  |  | 0.28, 0.03, 5.08, 0.19 |
| Line | Line51 |  |  |  |  | 0.00, 0.25, 7.84, 0.00 |
| TextBox | Text55 |  | UNIT |  |  | 7.52, 0.03, 0.33, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.00, 0.17, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.45, 0.17, 3.30, 0.18 |
