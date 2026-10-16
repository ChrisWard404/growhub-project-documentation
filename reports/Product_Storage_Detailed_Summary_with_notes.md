# Report: Product_Storage_Detailed_Summary_with_notes

**Caption:** Product Storage Detailed Summary  
**Grouping/sorting:** `PRODUCT_GROUP`, `FISCAL_YEAR`, `Client`, `ID`, `Plntmstr_symbol`, `Sort`, `SUBLOT_NO`, `Source_Location`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_FISCAL_YEARS`  
**Subforms/subreports:** `Report.PRODUCT_STORAGE_SUMMARY_SUBREPORT`  
**Opened from (VBA):** `Form_Product_Storage_Summary`  
**Report events with code:** Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label26 | Product Storage Summary |  |  |  | 2.48, 0.55, 3.25, 0.23 |
| Label | Plntmstr_symbol_Label | Lot ID |  |  |  | 0.04, 1.23, 0.93, 0.18 |
| Label | Source_Location_Label | Source |  |  |  | 1.75, 1.23, 0.48, 0.18 |
| Label | Weight_Label | Amt |  |  |  | 7.03, 1.23, 0.49, 0.18 |
| Label | No_of_Boxes_Label | Sublot |  |  |  | 6.42, 1.23, 0.43, 0.18 |
| Line | Line31 |  |  |  |  | 0.00, 1.41, 7.96, 0.01 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.49, 0.16, 3.25, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.49, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 2.49, 0.00, 3.25, 0.16 |
| TextBox | PRODUCT_GROUP |  | PG |  |  | 2.48, 0.79, 3.25, 0.26 |
| ComboBox | FISCAL_YEAR |  | FISCAL_YEAR | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, "Processed for " & [FISCAL_YEAR_NUMBER] AS pfy FROM NMIS_FISCAL_YEARS; |  | 2.48, 1.05, 3.29, 0.21 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text28 |  | Client | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE] & " - " & [ASSOCIATE_NAME] AS Combined FROM NMIS_ASSOCIATES;  |  | 0.00, 0.00, 6.96, 0.26 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Plntmstr_symbol |  | ID |  |  | 0.04, 0.00, 1.29, 0.21 |
| TextBox | Source_Location |  | Source_Location |  |  | 1.34, 0.00, 5.08, 0.21 |
| TextBox | Text29 |  | =Sum([SumOfNet]) |  |  | 6.88, 0.00, 0.63, 0.21 |
| TextBox | Text30 |  | SUBLOT_NO |  |  | 6.42, 0.00, 0.46, 0.21 |
| TextBox | UNIT_CODE |  | unit |  |  | 7.54, 0.00, 0.33, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | PRODUCT_STORAGE_SUMMARY_SUBREPORT |  | Report.PRODUCT_STORAGE_SUMMARY_SUBREPORT (master: Client;AGREEMENT_LOT_CN;Order_SUBLOT → child: CLIENT_ASSOCIATE;AGREEMENT_LOT_CN;Order_SUBLOT) |  |  | 0.17, 0.01, 6.24, 0.20 |
| TextBox | Text60 |  | SumOfNet |  |  | 6.44, 0.01, 0.72, 0.21 |
| TextBox | Text62 |  | unit |  |  | 7.16, 0.01, 0.33, 0.21 |
| Line | Line59 |  |  |  |  | 0.85, 0.22, 6.64, 0.00 |
| TextBox | NOTE |  | NOTE |  |  | 0.62, 0.25, 5.79, 0.01 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text38 |  | =Sum([SumOfNet]) |  |  | 6.79, 0.03, 0.72, 0.21 |
| ComboBox | Client |  | Client | SELECT NMIS_ASSOCIATES.ASSOCIATE, "Totals for " & [Associate] & " - " & [Associate_Name] AS Combined FROM NMIS_ASSOCIATES;  |  | 0.28, 0.03, 5.08, 0.19 |
| Line | Line51 |  |  |  |  | 0.00, 0.25, 7.95, 0.00 |
| TextBox | Text55 |  | UNIT |  |  | 7.54, 0.03, 0.33, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.00, 0.01, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.65, 0.01, 3.30, 0.18 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "PRODUCT_STORAGE_SUMMARY_SUBREPORT_MT"
    DoCmd.SetWarnings True
    
End Sub
```
