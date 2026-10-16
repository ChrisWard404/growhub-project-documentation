# Report: Product_Storage_Summary

**Grouping/sorting:** `PRODUCT_GROUP`, `FISCAL_YEAR`, `Client`, `ID`, `order_ID_lot_ID`, `Plntmstr_symbol`, `Sort`, `SUBLOT_NO`, `Source_Location`, `Bed_Start`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_FISCAL_YEARS`  
**Opened from (VBA):** `Form_Product_Storage_Summary`, `Form_Reports_Menu_Processing Subform`, `Form_Reports_Menu_Shipping Subform`, `Form_Reports_Menu_Source Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label26 | Product Storage Summary |  |  |  | 2.67, 0.55, 3.25, 0.23 |
| Label | Plntmstr_symbol_Label | Order ID/Lot ID |  |  |  | 0.01, 1.28, 0.95, 0.18 |
| Label | Source_Location_Label | Source |  |  |  | 1.97, 1.28, 0.48, 0.18 |
| Label | Weight_Label | Amt |  |  |  | 7.03, 1.28, 0.49, 0.18 |
| Label | No_of_Boxes_Label | Sublot |  |  |  | 6.42, 1.29, 0.43, 0.18 |
| Line | Line31 |  |  |  |  | 0.00, 1.46, 7.88, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.68, 0.16, 3.25, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.68, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 2.68, 0.00, 3.25, 0.16 |
| TextBox | PRODUCT_GROUP |  | PG |  |  | 2.67, 0.79, 3.25, 0.26 |
| ComboBox | FISCAL_YEAR |  | FISCAL_YEAR | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, "Processed for " & [FISCAL_YEAR_NUMBER] AS pfy FROM NMIS_FISCAL_YEARS; |  | 2.66, 1.04, 3.29, 0.21 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text28 |  | Client | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE] & " - " & [ASSOCIATE_NAME] AS Combined FROM NMIS_ASSOCIATES;  |  | 0.00, 0.01, 6.96, 0.26 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Plntmstr_symbol |  | order_ID_lot_ID |  |  | 0.04, 0.00, 1.84, 0.21 |
| TextBox | Source_Location |  | Source_Location |  |  | 1.92, 0.00, 4.54, 0.21 |
| TextBox | Text29 |  | =Sum([SumOfNet]) |  |  | 6.89, 0.00, 0.62, 0.21 |
| TextBox | Text30 |  | SUBLOT_NO |  |  | 6.46, 0.00, 0.41, 0.21 |
| TextBox | UNIT_CODE |  | unit |  |  | 7.54, 0.00, 0.33, 0.21 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line57 |  |  |  |  | 0.04, 0.01, 7.83, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text38 |  | =Sum([SumOfNet]) |  |  | 6.79, 0.03, 0.72, 0.21 |
| ComboBox | Client |  | Client | SELECT NMIS_ASSOCIATES.ASSOCIATE, "Totals for " & [Associate] & " - " & [Associate_Name] AS Combined FROM NMIS_ASSOCIATES;  |  | 0.20, 0.03, 5.08, 0.19 |
| Line | Line51 |  |  |  |  | 0.00, 0.25, 7.83, 0.00 |
| TextBox | Text55 |  | UNIT |  |  | 7.54, 0.03, 0.33, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.00, 0.17, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.37, 0.17, 3.30, 0.18 |
