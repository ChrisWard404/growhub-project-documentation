# Form: Product_Storage_Summary

**Caption:** Product Storage Summary  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_ORDERS`  
**Opens:** `Report:Product_Storage_Detailed_Summary`, `Report:Product_Storage_Detailed_Summary_with_notes`, `Report:Product_Storage_Lot_Index`, `Report:Product_Storage_Summary`, `Report:Product_Storage_Summary2`, `Report:Product_Storage_Summary3`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`, `Form_Reports_Menu_Shipping Subform`, `Form_Reports_Menu_Source Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Client Select | Select Like Client: |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ORDERS INNER JOIN NMIS_ASSOCIATES ON NMIS_ORDERS.CLIENT_ASSOCIATE = NMIS_ASSOCIATES.ASSOCIATE GROUP BY NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME ORDER BY NMIS_ASSOCIATES.ASSOCIATE; |  | 2.43, 1.01, 1.08, 0.25 |
| CommandButton | Preview Storage Summary By Client Report | Click for Summary Report  |  |  | Click | 0.25, 2.40, 0.96, 0.67 |
| CommandButton | Preview Storage Summary By Client Report with Totals | Click for Summary Report with Totals |  |  | Click | 0.25, 3.10, 0.96, 0.67 |
| ComboBox | Product_Type | Product Type: |  | Propagule;Propagule;Plant;Plant;*;All Types |  | 2.43, 0.68, 1.66, 0.25 |
| Label | Label17 | Product Storage Summary |  |  |  | 1.12, 0.21, 2.62, 0.28 |
| CommandButton | Preview Storage Detailed Summary By Client Report | Click for Detailed Summary Report |  |  | Click | 1.25, 2.40, 0.96, 0.67 |
| ComboBox | Lot ID Select | Select Like Lot ID: |  | SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.CN FROM NMIS_AGREEMENT_LOTS GROUP BY NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.CN; |  | 2.43, 1.34, 1.08, 0.25 |
| Rectangle | Box21 |  |  |  |  | 0.11, 2.08, 2.21, 1.75 |
| Label | Label22 | Reports by Client |  |  |  | 0.57, 2.14, 1.27, 0.21 |
| CommandButton | Preview Storage Summary By Species Report | Click for Summary Report |  |  | Click | 2.52, 2.40, 0.96, 0.67 |
| Rectangle | Box24 |  |  |  |  | 2.39, 2.08, 2.21, 1.00 |
| Label | Label25 | Reports by Species |  |  |  | 2.84, 2.14, 1.32, 0.21 |
| TextBox | Like_Sublot | Select Like Sublot: |  |  |  | 2.43, 1.68, 1.07, 0.25 |
| CommandButton | Preview Storage Detailed Summary By Client Report_w_notes |  Click for  Detailed  Summary  with  notes |  |  | Click | 1.26, 3.10, 0.96, 0.67 |
| Rectangle | Box29 |  |  |  |  | 2.42, 3.12, 2.21, 0.71 |
| CommandButton | Preview Storage Lot Index | Click for Lot ID Index |  |  | Click | 2.53, 3.14, 0.96, 0.67 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Preview_Storage_Detailed_Summary_By_Client_Report_Click()

    Dim stDocName As String

    stDocName = "Product_Storage_Detailed_Summary"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Storage_Detailed_Summary_By_Client_Report_w_notes_Click()

    Dim stDocName As String

    stDocName = "Product_Storage_Detailed_Summary_with_notes"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Storage_Lot_Index_Click()
On Error GoTo Err_Preview_Storage_Lot_Index_Click

    Dim stDocName As String

    stDocName = "Product_Storage_Lot_Index"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Storage_Lot_Index_Click:
    Exit Sub

Err_Preview_Storage_Lot_Index_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Storage_Lot_Index_Click
    
End Sub

Private Sub Preview_Storage_Summary_By_Client_Report_Click()

    Dim stDocName As String

    stDocName = "Product_Storage_Summary"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Storage_Summary_By_Client_Report_with_Totals_Click()
    
    Dim stDocName As String

    stDocName = "Product_Storage_Summary2"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Storage_Summary_By_Species_Report_Click()
On Error GoTo Err_Preview_Storage_Summary_By_Species_Report_Click

    Dim stDocName As String

    stDocName = "Product_Storage_Summary3"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Storage_Summary_By_Species_Report_Click:
    Exit Sub

Err_Preview_Storage_Summary_By_Species_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Storage_Summary_By_Species_Report_Click
    
End Sub
```
