Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub End_Product_Change()

    If End_Product = "Propagule" Then
        Cost_Center = "*"
        END_FY = "*"
        Cost_Center.Visible = False
    Else
        Cost_Center.Visible = True
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    Cost_Center.Visible = True
    
End Sub

Private Sub Preview_Order_Checklist_No_Orders_Click()

    Dim stDocName As String

    stDocName = "Orders_Checklist_scheduled_transplant_not"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Orders_Checklist_Click()

    Dim stDocName As String

    stDocName = "Orders_Checklist_Scheduled_Transplant"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Orders_Summary_Click()

    Dim stDocName As String

    stDocName = "Orders_Checklist_Summary"
    DoCmd.OpenReport stDocName, acPreview

End Sub
Private Sub NMIS_ORDERS_GENERIC_CREATE_Click()
On Error GoTo Err_NMIS_ORDERS_GENERIC_CREATE_Click
    
    If Not IsNull(Contact) Then
        If Not IsNull(Like_Client) Then
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "NMIS_ORDERS_MAKE_GENERIC_TABLE_APPEND_Sch_Xplt", acNormal, acEdit
            DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_APPEND2_Sch_Xplt", acNormal, acEdit
            DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_SERVICES_APPEND_Sch_Xplt", acNormal, acEdit
            DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_MGMT_CODE_APPEND_Sch_Xplt", acNormal, acEdit
            DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_GRADES_APPEND_Sch_Xplt", acNormal, acEdit
            DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_CN_UPDATE2_Sch_Xplt", acNormal, acEdit
            DoCmd.OpenQuery "NMIS_ORDERS_MAKE_GENERIC_TABLE_DELETE_Sch_Xplt", acNormal, acEdit
            DoCmd.SetWarnings True
            MsgBox "Generic Scheduled Transplant Orders Created"
        Else
            MsgBox "A Client is Required", vbCritical
            DoCmd.GoToControl "like_client"
        End If
    Else
        MsgBox "A Contact is Required", vbCritical
        DoCmd.GoToControl "contact"
    End If
    
Exit_NMIS_ORDERS_GENERIC_CREATE_Click:
    Exit Sub

Err_NMIS_ORDERS_GENERIC_CREATE_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_ORDERS_GENERIC_CREATE_Click
    
End Sub