Option Compare Database

Private Sub Form_Close()

    Forms![Switchboard]![FY_For_Reports] = Forms![Switchboard]![Current FY:]
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    'Forms![Switchboard]![FY_For_Reports] = 2000 + Val(Right$(Date, 2))
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    DoCmd.SetWarnings True

End Sub

Private Sub Preview_Product_Inventory_Checklist_Click()
On Error GoTo Err_Preview_Product_Inventory_Checklist_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_CHECKLIST_by_stocktype"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Product_Inventory_Checklist_Click:
    Exit Sub

Err_Preview_Product_Inventory_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Product_Inventory_Checklist_Click
    
End Sub

Private Sub Preview_Product_Inventory_Daily_Checklist_Click()
On Error GoTo Err_Preview_Product_Inventory_Daily_Checklist_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_DAILY_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Product_Inventory_Daily_Checklist_C:
    Exit Sub

Err_Preview_Product_Inventory_Daily_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Product_Inventory_Daily_Checklist_C
    
End Sub