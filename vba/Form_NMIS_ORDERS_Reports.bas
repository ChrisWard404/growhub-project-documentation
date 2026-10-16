Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub End_FY_AfterUpdate()
    
    [Forms]![Switchboard]![FY_For_Reports] = END_FY
    
End Sub

Private Sub End_Product_Change()

    If End_Product = "Propagule" Then
        Cost_Center = "*"
        END_FY = "*"
        Cost_Center.Visible = False
        Root_Prune.Visible = False
        Product_Services = "NOSVC"
    Else
        Cost_Center.Visible = True
        Root_Prune.Visible = True
        Product_Services = "STDSVC"
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    Cost_Center.Visible = True
    
End Sub

Private Sub Like_Activity_Code_DblClick(Cancel As Integer)

    Like_Activity_Code = "*"
    
End Sub

Private Sub Preview_Order_Checklist_No_Orders_Click()

    Like_Activity_Code = "*"
    
    Dim stDocName As String

    stDocName = "Orders_Checklist_no_orders"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Orders_Checklist_by_Lot_ID_Click()
On Error GoTo Err_Preview_Orders_Checklist_by_Lot_ID_Click

    Dim stDocName As String

    stDocName = "Orders_Checklist_by_Lot_ID"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Orders_Checklist_by_Lot_ID_Click:
    Exit Sub

Err_Preview_Orders_Checklist_by_Lot_ID_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Orders_Checklist_by_Lot_ID_Click
 
End Sub

Private Sub Preview_Orders_Checklist_Click()

    Dim stDocName As String

    stDocName = "Orders_Checklist"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Orders_Checklist_LiftInNote_Click()

    Dim stDocName As String

    stDocName = "Orders_Checklist_LiftInNote"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Orders_Summary_Click()

    Dim stDocName As String

    stDocName = "Orders_Checklist_Summary"
    DoCmd.OpenReport stDocName, acPreview

End Sub
Private Sub NMIS_ORDERS_GENERIC_CREATE_Click()
On Error GoTo Err_NMIS_ORDERS_GENERIC_CREATE_Click
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_ORDERS_MAKE_GENERIC_TABLE_APPEND", acNormal, acEdit
    DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_APPEND2", acNormal, acEdit
    DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_SERVICES_APPEND", acNormal, acEdit
    DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_MGMT_CODE_APPEND", acNormal, acEdit
    DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_GRADES_APPEND", acNormal, acEdit
    DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_CN_UPDATE2", acNormal, acEdit
    DoCmd.OpenQuery "NMIS_ORDERS_MAKE_GENERIC_TABLE_DELETE", acNormal, acEdit
    DoCmd.SetWarnings True

    MsgBox "Generic Orders Created"
    
Exit_NMIS_ORDERS_GENERIC_CREATE_Click:
    Exit Sub

Err_NMIS_ORDERS_GENERIC_CREATE_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_ORDERS_GENERIC_CREATE_Click
    
End Sub