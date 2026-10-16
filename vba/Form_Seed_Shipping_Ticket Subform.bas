Option Compare Database

Private Sub Client_Contact_CN_DblClick(Cancel As Integer)
    
    'DoCmd.OpenForm "NMIS_CONTACTS", , , , acFormAdd
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    
    DoCmd.GoToControl "NURSERY_CONTACT_CN"
    DoCmd.GoToControl "Client_CONTACT_CN"
    If IsNull(Client_Contact_CN) Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , "([CN]=" & "'" & [Client_Contact_CN] & "')", acFormEdit
          DoCmd.GoToControl "Last_Name"
          Forms![NMIS_CONTACTS]![CONTACT_Lookup].Visible = False
          Forms![NMIS_CONTACTS]!Find_Label.Visible = False
          Forms![NMIS_CONTACTS]!Home_Associate_Filter.Visible = False
          Forms![NMIS_CONTACTS]!Home_Associate_Filter_Label.Visible = False
          Forms![NMIS_CONTACTS]!Hide_99s.Visible = False
          Forms![NMIS_CONTACTS]!Hide_Historical.Visible = False
          Forms![NMIS_CONTACTS]!Unfilter.Visible = True
    End If
    
End Sub

Private Sub Close_Click()

    Dim stDocName As String

    stDocName = "Close_Form"
    
    DoCmd.RunMacro stDocName

End Sub

Private Sub Create_Combo_Ticket_Click()
On Error GoTo Err_Create_Combo_Ticket_Click

    Dim stDocName As String

    stDocName = "seed_combo_ticket"
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Combo_Ticket_Click:
    Exit Sub

Err_Create_Combo_Ticket_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Combo_Ticket_Click
    
End Sub

Private Sub Create_Receive_Ticket_Click()
On Error GoTo Err_Create_Receive_Ticket_Click

    Dim stDocName As String

    stDocName = "seed_receiving_ticket"
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Receive_Ticket_Click:
    Exit Sub

Err_Create_Receive_Ticket_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Receive_Ticket_Click
    
End Sub

Private Sub Create_Withdrawal_form2_Click()
On Error GoTo Err_Create_Withdrawal_form2_Click

    Dim stDocName As String

    stDocName = "Seed_Bank_Work_Order_Ship_list_by_Loc"
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Withdrawal_form2_Click:
    Exit Sub

Err_Create_Withdrawal_form2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Withdrawal_form2_Click
    
End Sub

Private Sub DELIVERED_TO_ASSOCIATE_AfterUpdate()
 
    If Not IsNull(DELIVERED_TO_ASSOCIATE_backup) Then
        Response = MsgBox("Are you Sure you Want to Change the DELIVERED TO ASSOCIATE CODE?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [DELIVERED_TO_ASSOCIATE] = DELIVERED_TO_ASSOCIATE_backup
        End If
    End If
    
End Sub

Private Sub DELIVERED_TO_ASSOCIATE_Name_AfterUpdate()
    
    If Not IsNull(DELIVERED_TO_ASSOCIATE_backup) Then
        Response = MsgBox("Are you Sure you Want to Change the DELIVERED TO ASSOCIATE NAME?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [DELIVERED_TO_ASSOCIATE_Name] = DELIVERED_TO_ASSOCIATE_backup
        End If
    End If
    
End Sub

Private Sub DELIVERED_TO_ASSOCIATE_Name_DblClick(Cancel As Integer)

    DoCmd.OpenForm "NMIS_ASSOCIATES", , , "[ASSOCIATE] = '" & Forms![SEED_SHIPPING_TICKET Subform]![DELIVERED_TO_ASSOCIATE] & "'"
    DoCmd.GoToControl "ASSOCIATE"
    Forms![NMIS_Associates]![ASSOCIATE_Lookup].Visible = False
    Forms![NMIS_Associates]![Associate_lookup_Label].Visible = False
    Forms![NMIS_Associates]![ASSOCIATE_Lookup_by_Name].Visible = False
    Forms![NMIS_Associates]!Unfilter.Visible = True
        
End Sub

Private Sub DELIVERED_TO_ASSOCIATE_Name_Enter()
    
    If Not IsNull(DELIVERED_TO_ASSOCIATE_Name) Then
        DELIVERED_TO_ASSOCIATE_backup = DELIVERED_TO_ASSOCIATE_Name
        DELIVERED_TO_ASSOCIATE_Name.Requery
    End If
    
End Sub

Private Sub Create_Shipping_Ticket_Click()
On Error GoTo Err_Create_Shipping_Ticket_Click

    Dim stDocName As String

    stDocName = "seed_shipping_ticket"
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

    stDocName = "seed_shipping_ticket_with_Test_Data"
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

    stDocName = "Seed_Bank_Work_Order_Ship_list"
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Withdrawal_form_Click:
    Exit Sub

Err_Create_Withdrawal_form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Withdrawal_form_Click
    
End Sub

Private Sub DELIVERED_TO_ASSOCIATE_DblClick(Cancel As Integer)

        DoCmd.OpenForm "NMIS_ASSOCIATES", , , "[ASSOCIATE] = '" & Forms![SEED_SHIPPING_TICKET Subform]![DELIVERED_TO_ASSOCIATE] & "'"
        DoCmd.GoToControl "ASSOCIATE"
        Forms![NMIS_Associates]![ASSOCIATE_Lookup].Visible = False
        Forms![NMIS_Associates]![Associate_lookup_Label].Visible = False
        Forms![NMIS_Associates]![ASSOCIATE_Lookup_by_Name].Visible = False
        Forms![NMIS_Associates]!Unfilter.Visible = True
        
End Sub

Private Sub DELIVERED_TO_ASSOCIATE_Enter()

    If Not IsNull(DELIVERED_TO_ASSOCIATE) Then
        DELIVERED_TO_ASSOCIATE_backup = DELIVERED_TO_ASSOCIATE
        DELIVERED_TO_ASSOCIATE.Requery
    End If
    
End Sub

Private Sub DELIVERED_TO_ASSOCIATE_Name_Exit(Cancel As Integer)

        If Not IsNull(DELIVERED_TO_ASSOCIATE_Name) Then
            DELIVERED_TO_ASSOCIATE_backup = DELIVERED_TO_ASSOCIATE_Name
            DELIVERED_TO_ASSOCIATE_Name.Requery
        End If
End Sub

Private Sub DELIVERED_TO_ASSOCIATE_Name_GotFocus()

    DELIVERED_TO_ASSOCIATE_Name.Requery
    
End Sub

Private Sub DESIRED_DATE_DblClick(Cancel As Integer)

    [DESIRED_DATE].Locked = False
    MsgBox "Activity Date is now UNLOCKED for Editing."
    
End Sub

Private Sub DESIRED_DATE_Enter()

    If IsNull(DESIRED_DATE) Then
        DESIRED_DATE.Locked = False
    Else
        DESIRED_DATE.Locked = True
    End If
    
End Sub

Private Sub Find_Ticket_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

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


Private Sub Lot_Labels_by_Ticket_Click()
On Error GoTo Err_Lot_Labels_by_Ticket_Click

    Dim stDocName As String

     If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "040207" Then
        stDocName = "seed_shipping_lot_label_040207"
    Else
        stDocName = "seed_shipping_lot_label_by_Ticket"
    End If
    
    DoCmd.OpenReport stDocName, acViewPreview
    
Exit_Lot_Labels_by_Ticket_Click:
    Exit Sub

Err_Lot_Labels_by_Ticket_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_Labels_by_Ticket_Click
    
End Sub

Private Sub Mailing_Labels_Intermec_Click()
On Error GoTo Err_Mailing_Labels_Intermec_Click


    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC_shipping"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Mailing_Labels_Intermec_Click:
    Exit Sub

Err_Mailing_Labels_Intermec_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Mailing_Labels_Intermec_Click
    
End Sub

Private Sub New_Ticket_Click()

    DoCmd.GoToRecord , , acNewRec
    Find_Ticket = ""
    TKT_NO.SetFocus
    
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

    stDocName = "NMIS_SOURCE_Card_2_TKT_S"
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

Private Sub Receive_Form_Click()
On Error GoTo Err_Receive_Form_Click

    Dim stDocName As String

    stDocName = "Seed_Bank_Receiving_Work_List"
    DoCmd.OpenReport stDocName, acPreview

Exit_Receive_Form_Click:
    Exit Sub

Err_Receive_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Receive_Form_Click
    
End Sub

Private Sub Seed_Box_Label_Click()
On Error GoTo Err_Seed_Box_Labels_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form2"
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    Forms![Lot_ID_Input_Form2]![ID] = [Seed_Ship_Ticked_ID_ACTIVITIES subform].Form![ID]

Exit_Seed_Box_Labels_Click:
    Exit Sub

Err_Seed_Box_Labels_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Seed_Box_Labels_Click

End Sub

Private Sub Seed_Box_Mini_Label_Click()
On Error GoTo Err_Seed_Box_Mini_Label_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form2c"
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    Forms![Lot_ID_Input_Form2c]![ID1] = [Seed_Ship_Ticked_ID_ACTIVITIES subform].Form![ID]

Exit_Seed_Box_Mini_Label_Click:
    Exit Sub

Err_Seed_Box_Mini_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Seed_Box_Mini_Label_Click
End Sub

Private Sub Seed_Ship_Ticked_ID_ACTIVITIES_subform_Enter()

    If IsNull(Forms![SEED_SHIPPING_TICKET Subform]![TKT_NO]) Then
        MsgBox "Must enter Ticket ID First"
        Forms![SEED_SHIPPING_TICKET Subform]![TKT_NO].SetFocus
    End If
    
End Sub

Private Sub Shipping_Bag_Tags_Click()
On Error GoTo Err_Shipping_Bag_Tags_Click

    Dim stDocName As String

    stDocName = "seed_shipping_bag_tags"
    DoCmd.OpenReport stDocName, acPreview

Exit_Shipping_Bag_Tags_Click:
    Exit Sub

Err_Shipping_Bag_Tags_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Shipping_Bag_Tags_Click
    
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
            DoCmd.RunMacro "Set_CN2"
        End If
    End If

End Sub

Private Sub VIEW_FY_AfterUpdate()

    Find_Ticket.Requery
    FY.Requery
    
End Sub

Private Sub View_Lot_AfterUpdate()

    [Seed_Ship_Ticked_ID_ACTIVITIES subform].Requery
  
End Sub

Private Sub View_Lot_DblClick(Cancel As Integer)

    View_Lot = ""
    View_Lot.Requery
    
End Sub

Private Sub View_Lot_Enter()

    View_Lot.Requery
  
End Sub