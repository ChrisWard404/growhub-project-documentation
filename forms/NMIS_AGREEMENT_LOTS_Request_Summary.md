# Form: NMIS_AGREEMENT_LOTS_Request_Summary

**Caption:** Agreements  Report  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_FISCAL_YEARS`  
**Opens:** `Report:Agreement_Lot_Sow_Order_Report`, `Report:NMIS_AGREEMENTS_Report`, `Report:NMIS_PLANT_INVENTORY_Report`, `Report:Request_Checklist_by_Client`, `Report:Request_Checklist_by_Client2`, `Report:Request_Checklist_by_Client_no_lots`, `Report:Request_Checklist_by_Client_no_lots_no_class`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Agreement Lots Summary Report |  |  |  | 0.97, 0.08, 3.27, 0.27 |
| CommandButton | Preview_Summary_By_Client_Report |  Agreement Lots with Client Subtotals Report |  |  | Click | 0.58, 3.62, 1.71, 0.75 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.12, 1.12, 4.88, 1.29 |
| ComboBox | Begin_FY | Begin FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  |  | 1.45, 1.66, 0.68, 0.20 |
| ComboBox | End_FY | End FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  |  | 1.45, 1.97, 0.68, 0.20 |
| ComboBox | End_Product | End Product: |  | Plant;Propagule |  | 2.20, 1.29, 1.25, 0.20 |
| CommandButton | Preview_Summary_By_Client_Report2 |  Agreement Lots by Client Report |  |  | Click | 0.58, 2.67, 1.71, 0.75 |
| ComboBox | Plntmstr_Symbol | Species Code: |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY; |  | 3.67, 1.97, 0.80, 0.21 |
| ComboBox | Like_Client | Like Client: |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME; |  | 3.65, 1.65, 0.79, 0.21 |
| CommandButton | Preview_Summary_By_Client_Report_no_lots |  Client StockType Subtotal Report |  |  | Click | 2.92, 2.67, 1.71, 0.75 |
| CommandButton | Preview_Summary_By_Client_Report_no_lots_no_class |  Client Totals Report |  |  | Click | 2.92, 3.62, 1.71, 0.75 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub
Private Sub Preview_Quarterly_Report_Click()
On Error GoTo Err_Preview_Quarterly_Report_Click

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENTS_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Quarterly_Report_Click:
    Exit Sub

Err_Preview_Quarterly_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Quarterly_Report_Click
    
End Sub
Private Sub Run_Agreement_Lots_Sow_Order_Report_Click()
On Error GoTo Err_Run_Agreement_Lots_Sow_Order_Report_Click

    Dim stDocName As String

    stDocName = "Agreement_Lot_Sow_Order_Report"
    
    'If [End_Product] = "Plant" Then
        DoCmd.OpenReport stDocName, acPreview
    'Else
        'MsgBox "End Product Must Be Plant"
    'End If

Exit_Run_Agreement_Lots_Sow_Order_Report:
    Exit Sub

Err_Run_Agreement_Lots_Sow_Order_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Run_Agreement_Lots_Sow_Order_Report
    
End Sub
Private Sub Plant_Inventory_Report_Click()
On Error GoTo Err_Plant_Inventory_Report_Click

    Dim stDocName As String

    stDocName = "NMIS_PLANT_INVENTORY_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Plant_Inventory_Report_Click:
    Exit Sub

Err_Plant_Inventory_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Plant_Inventory_Report_Click
    
End Sub

Private Sub Preview_Summary_By_Client_Report_Click()
On Error GoTo Err_Preview_Summary_By_Client_Report_Click

    Dim stDocName As String

    stDocName = "Request_Checklist_by_Client"
    
    DoCmd.OpenReport stDocName, acPreview
Exit_Preview_Summary_By_Client_Report_Click:
    Exit Sub

Err_Preview_Summary_By_Client_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Summary_By_Client_Report_Click
    
End Sub

Private Sub Preview_Summary_By_Client_Report_no_lots_Click()
On Error GoTo Err_Preview_Summary_By_Client_Report_no_lots_Click

    Dim stDocName As String

    stDocName = "Request_Checklist_by_Client_no_lots"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Summary_By_Client_Report_no_lots_Click:
    Exit Sub

Err_Preview_Summary_By_Client_Report_no_lots_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Summary_By_Client_Report_no_lots_Click
    
End Sub

Private Sub Preview_Summary_By_Client_Report_no_lots_no_class_Click()
On Error GoTo Err_Preview_Summary_By_Client_Report_no_lots_no_class_Click

    Dim stDocName As String

    stDocName = "Request_Checklist_by_Client_no_lots_no_class"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Summary_By_Client_Report_no_lots_no_class_Click:
    Exit Sub

Err_Preview_Summary_By_Client_Report_no_lots_no_class_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Summary_By_Client_Report_no_lots_no_class_Click
    
End Sub

Private Sub Preview_Summary_By_Client_Report2_Click()

    Dim stDocName As String

    stDocName = "Request_Checklist_by_Client2"
    
    DoCmd.OpenReport stDocName, acPreview

End Sub
```
