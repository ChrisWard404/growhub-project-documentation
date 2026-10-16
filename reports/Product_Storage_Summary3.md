# Report: Product_Storage_Summary3

**Caption:** Product Storage Summary by Species  
**Grouping/sorting:** `PRODUCT_GROUP`, `FISCAL_YEAR`, `Plntmstr_symbol`, `Client`, `Sort`, `SUBLOT_NO`, `NMIS_ORDERS.CN`, `Source_Location`, `Bed_Start`  
**Backend tables referenced:** `NMIS_FISCAL_YEARS`  
**Opened from (VBA):** `Form_Product_Storage_Summary`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label26 | Product Storage Summary |  |  |  | 2.43, 0.55, 3.25, 0.23 |
| Label | Plntmstr_symbol_Label | Order ID/Lot ID |  |  |  | 0.01, 1.31, 1.49, 0.18 |
| Label | Source_Location_Label | Source |  |  |  | 1.93, 1.31, 0.48, 0.18 |
| Label | Weight_Label | Amt |  |  |  | 7.05, 1.31, 0.49, 0.18 |
| Label | No_of_Boxes_Label | Sublot |  |  |  | 6.51, 1.32, 0.43, 0.18 |
| Line | Line31 |  |  |  |  | 0.02, 1.49, 7.85, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.44, 0.16, 3.25, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.44, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 2.44, 0.00, 3.25, 0.16 |
| TextBox | PRODUCT_GROUP |  | PG |  |  | 2.43, 0.79, 3.26, 0.26 |
| ComboBox | FISCAL_YEAR |  | FISCAL_YEAR | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, "Processed for " & [FISCAL_YEAR_NUMBER] AS pfy FROM NMIS_FISCAL_YEARS; |  | 2.43, 1.05, 3.29, 0.21 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Plntmstr_symbol |  | order_ID_lot_ID |  |  | 0.01, 0.00, 1.79, 0.21 |
| TextBox | Source_Location |  | [Source_Location] |  |  | 1.83, 0.00, 4.78, 0.21 |
| TextBox | Text29 |  | =Sum([SumOfNet]) |  |  | 6.96, 0.00, 0.59, 0.21 |
| TextBox | Text30 |  | SUBLOT_NO |  |  | 6.61, 0.00, 0.35, 0.21 |
| TextBox | UNIT_CODE |  | unit |  |  | 7.56, 0.00, 0.33, 0.21 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text42 |  | =Sum([SumOfNet]) |  |  | 6.96, 0.03, 0.59, 0.21 |
| Line | Line44 |  |  |  |  | 6.97, 0.00, 0.58, 0.00 |
| ComboBox | Combo48 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, "Total for " & [Scientific_Name] & " (" & [Vernacular] & ")" AS Combined FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 0.17, 0.04, 5.08, 0.19 |
| TextBox | Text54 |  | UNIT |  |  | 7.56, 0.03, 0.33, 0.21 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text56 |  | =Sum([SumOfNet]) |  |  | 6.71, 0.03, 0.84, 0.21 |
| Line | Line57 |  |  |  |  | 6.97, 0.00, 0.58, 0.00 |
| TextBox | Text58 |  | UNIT |  |  | 7.56, 0.03, 0.33, 0.21 |
| TextBox | Text59 |  | PG |  |  | 0.64, 0.05, 3.26, 0.19 |
| Label | Label60 | Total for  |  |  |  | 0.06, 0.05, 0.57, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.02, 0.17, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.59, 0.17, 3.30, 0.18 |
