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