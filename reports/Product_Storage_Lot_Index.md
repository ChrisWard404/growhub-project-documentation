# Report: Product_Storage_Lot_Index

**Grouping/sorting:** `PRODUCT_GROUP`, `AGREEMENT_LOT_ID`, `Plntmstr_symbol`, `Sort`, `SUBLOT_NO`, `Source_Location`  
**Subforms/subreports:** `Report.PRODUCT_STORAGE_SUMMARY_SUBREPORT`  
**Opened from (VBA):** `Form_Product_Storage_Summary`  
**Report events with code:** Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label26 | Product Storage Summary |  |  |  | 2.48, 0.55, 3.25, 0.23 |
| Label | Plntmstr_symbol_Label | Lot ID |  |  |  | 0.04, 1.04, 0.93, 0.18 |
| Label | Source_Location_Label | Source |  |  |  | 1.75, 1.04, 0.48, 0.18 |
| Label | Weight_Label | Amt |  |  |  | 7.17, 1.04, 0.46, 0.18 |
| Label | No_of_Boxes_Label | Sublot |  |  |  | 6.52, 1.05, 0.43, 0.18 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.49, 0.16, 3.25, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.49, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 2.49, 0.00, 3.25, 0.16 |
| TextBox | PRODUCT_GROUP |  | PG |  |  | 2.48, 0.79, 3.25, 0.26 |
| Label | Label64 | Product |  |  |  | 5.16, 1.04, 1.03, 0.18 |
| Label | Label66 | End FY |  |  |  | 4.59, 1.04, 0.46, 0.18 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Plntmstr_symbol |  | AGREEMENT_LOT_ID |  |  | 0.04, 0.00, 1.12, 0.21 |
| TextBox | Source_Location |  | Source_Location |  |  | 1.16, 0.00, 3.18, 0.21 |
| TextBox | Text29 |  | =Sum([SumOfNet]) |  |  | 6.95, 0.00, 0.63, 0.21 |
| TextBox | Text30 |  | SUBLOT_NO |  |  | 6.59, 0.00, 0.35, 0.21 |
| TextBox | UNIT_CODE |  | unit |  |  | 7.61, 0.00, 0.33, 0.21 |
| TextBox | Text63 |  | Product_for_Cycle |  |  | 5.00, 0.00, 1.58, 0.21 |
| TextBox | Text65 |  | END_FY |  |  | 4.67, 0.00, 0.33, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | PRODUCT_STORAGE_SUMMARY_SUBREPORT |  | Report.PRODUCT_STORAGE_SUMMARY_SUBREPORT (master: Client;AGREEMENT_LOT_CN;Order_SUBLOT → child: CLIENT_ASSOCIATE;AGREEMENT_LOT_CN;Order_SUBLOT) |  |  | 0.17, 0.08, 6.33, 0.20 |
| TextBox | Text60 |  | SumOfNet |  |  | 6.86, 0.01, 0.72, 0.19 |
| TextBox | Text62 |  | unit |  |  | 7.61, 0.01, 0.33, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.00, 0.17, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.55, 0.17, 3.30, 0.18 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "PRODUCT_STORAGE_SUMMARY_SUBREPORT_MT"
    DoCmd.SetWarnings True
    
End Sub
```
