Option Compare Database

Private Sub Click_to_View_Stratification_Record_Form_Click()
On Error GoTo Err_Click_to_View_Stratification_Record_Form_Click

    Dim stDocName As String

    stDocName = "Seed_Bank_Stratification_Record"
    DoCmd.OpenReport stDocName, acPreview

Exit_Click_to_View_Stratification_Record_Form_Click:
    Exit Sub

Err_Click_to_View_Stratification_Record_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Click_to_View_Stratification_Record_Form_Click
    
End Sub

Private Sub Close_Click()

    Dim stDocName As String

    stDocName = "Close_Form"
    
    DoCmd.RunMacro stDocName

End Sub

Private Sub Create_Shipping_Ticket_Click()
On Error GoTo Err_Create_Shipping_Ticket_Click

    Dim stDocName As String

    stDocName = "seed_sow_withdrawal_ticket"
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Shipping_Ticket_Click:
    Exit Sub

Err_Create_Shipping_Ticket_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Shipping_Ticket_Click
    
End Sub

Private Sub Create_Shipping_Ticket_with_test_data_Click()
On Error GoTo Err_Create_Shipping_Ticket_with_test_data_Click

    Dim stDocName As String

    stDocName = "seed_sow_withdrawal_ticket_with_Test_Data"
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Shipping_Ticket_with_test_data_Click:
    Exit Sub

Err_Create_Shipping_Ticket_with_test_data_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Shipping_Ticket_with_test_data_Click
    
End Sub

Private Sub Create_Withdrawal_form_Click()
On Error GoTo Err_Create_Withdrawal_form_Click

    Dim stDocName As String

    stDocName = "Seed_Bank_Work_Order_Sow_list"
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Withdrawal_form_Click:
    Exit Sub

Err_Create_Withdrawal_form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Withdrawal_form_Click
    
End Sub

Private Sub Create_Withdrawal_form2_Click()
On Error GoTo Err_Create_Withdrawal_form2_Click

    Dim stDocName As String

    stDocName = "Seed_Bank_Work_Order_Sow_list2"
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Withdrawal_form2_Click:
    Exit Sub

Err_Create_Withdrawal_form2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Withdrawal_form2_Click
    
End Sub

Private Sub DESIRED_DATE_DblClick(Cancel As Integer)

    [DESIRED_DATE].Locked = False
    'MsgBox "Activity Date is now UNLOCKED for Editing."
    
End Sub

Private Sub DESIRED_DATE_Enter()

    If IsNull(DESIRED_DATE) Then
        DESIRED_DATE.Locked = False
    Else
        DESIRED_DATE.Locked = True
    End If
    
End Sub

Private Sub Desired_Date2_DblClick(Cancel As Integer)

    Desired_Date2.Locked = False
    
End Sub

Private Sub Desired_Date2_Enter()

    If IsNull(Desired_Date2) Then
        Desired_Date2.Locked = False
    Else
        Desired_Date2.Locked = True
    End If
    
End Sub

Private Sub Find_Ticket_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    View_Lot = Null
    
    Set rs = Me.Recordset.Clone
    rs.FindFirst "[TKT_NO] = '" & Me![Find_Ticket] & "'"
    Me.Bookmark = rs.Bookmark
                     
End Sub

Private Sub Find_Ticket_Enter()

    Find_Ticket.Requery
    
End Sub

Private Sub FY_DblClick(Cancel As Integer)

    [FY].Locked = False
    MsgBox "FY is now UNLOCKED for Editing."
    
End Sub

Private Sub FY_Enter()
    
    If IsNull(FY) Then
        FY.Locked = False
    Else
        FY.Locked = True
    End If
    
End Sub

Private Sub New_Ticket_Click()

    DoCmd.GoToRecord , , acNewRec
    Find_Ticket = ""

End Sub

Private Sub NMIS_SOURCE_CARD_BACK_Click()
On Error GoTo Err_NMIS_SOURCE_CARD_BACK_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Card_BACK"
    DoCmd.OpenReport stDocName, acPreview

Exit_NMIS_SOURCE_CARD_BACK_Click:
    Exit Sub

Err_NMIS_SOURCE_CARD_BACK_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_CARD_BACK_Click
    
End Sub

Private Sub NMIS_SOURCE_CARD_Click()
On Error GoTo Err_NMIS_SOURCE_CARD_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Card_2_TKT_SW"
    DoCmd.OpenReport stDocName, acPreview

Exit_NMIS_SOURCE_CARD_Click:
    Exit Sub

Err_NMIS_SOURCE_CARD_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_CARD_Click
    
End Sub

Private Sub NURSERY_CONTACT_CN_Enter()

    NURSERY_CONTACT_CN.Requery

End Sub

Private Sub Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES_subform_Enter()

    If IsNull([TKT_NO]) Then
        MsgBox "Must enter Ticket ID first"
        TKT_NO.SetFocus
    End If
    
End Sub



Private Sub Ticket_Type_DblClick(Cancel As Integer)

    TICKET_TYPE.Locked = False
    
End Sub

Private Sub Ticket_Type_Enter()

    TICKET_TYPE.Locked = True
    
End Sub

Private Sub Ticket_Type_Exit(Cancel As Integer)

    TICKET_TYPE.Locked = True
    
End Sub

Private Sub TKT_NO_DblClick(Cancel As Integer)

    [TKT_NO].Locked = False
    MsgBox "Ticket ID is now UNLOCKED for Editing."
    
End Sub

Private Sub TKT_NO_Enter()

    If IsNull(TKT_NO) Then
        TKT_NO.Locked = False
    Else
        TKT_NO.Locked = True
    End If
    
End Sub

Private Sub TKT_NO_Exit(Cancel As Integer)

    If Not IsNull(TKT_NO) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "set_cn2"
        End If
    End If

End Sub

Private Sub VIEW_FY_AfterUpdate()

    Find_Ticket.Requery
    
End Sub

Private Sub View_Lot_AfterUpdate()

    [Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].Requery
    
End Sub

Private Sub View_Lot_DblClick(Cancel As Integer)

    View_Lot = ""
    View_Lot.Requery
    
End Sub

Private Sub View_Lot_Enter()

    View_Lot.Requery
    
End Sub