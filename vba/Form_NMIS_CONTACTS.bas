Option Compare Database

Private Sub Open_Contact_Listing_Click()
On Error GoTo Err_Open_Contact_Listing_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS_LIST"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Contact_Listing_Click:
    Exit Sub

Err_Open_Contact_Listing_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Contact_Listing_Click
    
End Sub

Private Sub CONTACT_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![CONTACT_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
   
End Sub

Private Sub CONTACT_Lookup_Enter()

    Unfilter.Visible = False
    CONTACT_Lookup.Requery
    
End Sub

Private Sub FIRST_NAME_DblClick(Cancel As Integer)

    If Not IsNull(FIRST_NAME) Then
        [FIRST_NAME].Locked = False
        'MsgBox "First Name unlocked for editing."
    End If
    
End Sub

Private Sub FIRST_NAME_Enter()

    If Not IsNull([FIRST_NAME]) Then
        [FIRST_NAME].Locked = True
    Else
        [FIRST_NAME].Locked = False
    End If
    
End Sub

Private Sub FIRST_NAME_Exit(Cancel As Integer)
    
    If Not IsNull(LAST_NAME) Then
        [CONTACT_NAME_UPPER] = UCase([LAST_NAME] & IIf(Not IsNull(FIRST_NAME), ", " & [FIRST_NAME], "") & IIf(Not IsNull(MIDDLE_INITIAL), " " & [MIDDLE_INITIAL], ""))
    End If
    
End Sub

Private Sub Form_Close()
    'Dim strFormName As String
    
    'strFormName = "NMIS_AGREEMENTS"
    
    If SysCmd(acSysCmdGetObjectState, acForm, "NMIS_AGREEMENTS") <> 0 Then
        Forms![NMIS_AGREEMENTS]![CONTACT_CN].Requery
    End If
    If SysCmd(acSysCmdGetObjectState, acForm, "SEED_SHIPPING_TICKET Subform") <> 0 Then
        Forms![SEED_SHIPPING_TICKET Subform]![Client_Contact_CN].Requery
    End If
    If SysCmd(acSysCmdGetObjectState, acForm, "NMIS_SHIPPING_TICKET Subform") <> 0 Then
        Forms![NMIS_SHIPPING_TICKET Subform]![Client_Contact_CN].Requery
    End If
    If SysCmd(acSysCmdGetObjectState, acForm, "NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE") <> 0 Then
        Forms![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![NMIS_PROCESSING_ORDERS_ID_UPDATE subform].Form![CONTACT_CN].Requery
        Forms![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![NMIS_PROCESSING_ORDERS_ID_UPDATE subform].Form![SECONDARY_CONTACT_CN].Requery
    End If
    If SysCmd(acSysCmdGetObjectState, acForm, "NMIS_PROCESSING_ORDERS_INPUT") <> 0 Then
        Forms![NMIS_PROCESSING_ORDERS_INPUT]![CONTACT_CN].Requery
        Forms![NMIS_PROCESSING_ORDERS_INPUT]![SECONDARY_CONTACT_CN].Requery
    End If
    If SysCmd(acSysCmdGetObjectState, acForm, "NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2") <> 0 Then
        Forms![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2]![NMIS_PROCESSING_ORDERS_ID_UPDATE2 subform].Form![CONTACT_CN].Requery
        Forms![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2]![NMIS_PROCESSING_ORDERS_ID_UPDATE2 subform].Form![SECONDARY_CONTACT_CN].Requery
    End If

End Sub

Private Sub Form_Current()

    CONTACT_Lookup = CN
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    Unfilter.Visible = False
    CONTACT_Lookup.Visible = True
    Home_Associate_Filter.Visible = True
    Find_Label.Visible = True
    DoCmd.GoToControl "contact_lookup"
    
End Sub

Private Sub Hide_99s_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Hide_Historical_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub HOME_ASSOCIATE_DblClick(Cancel As Integer)

    HOME_ASSOCIATE.Locked = False
    
End Sub

Private Sub HOME_ASSOCIATE_Enter()
    
    If Not IsNull([HOME_ASSOCIATE]) Then
        [HOME_ASSOCIATE].Locked = True
    Else
        [HOME_ASSOCIATE].Locked = False
    End If
    
End Sub

Private Sub Home_Associate_Filter_AfterUpdate()

    CONTACT_Lookup.Requery
    
End Sub

Private Sub Home_Associate_Filter_DblClick(Cancel As Integer)
    
    Home_Associate_Filter = "*"
    
End Sub

Private Sub LAST_NAME_DblClick(Cancel As Integer)

    If Not IsNull(LAST_NAME) Then
        [LAST_NAME].Locked = False
        'MsgBox "Last Name unlocked for editing."
    End If
    
End Sub

Private Sub LAST_NAME_Enter()

    If Not IsNull([LAST_NAME]) Then
        [LAST_NAME].Locked = True
    Else
        [LAST_NAME].Locked = False
    End If
    
End Sub

Private Sub LAST_NAME_Exit(Cancel As Integer)
    
    If Not IsNull(LAST_NAME) Then
        [CONTACT_NAME_UPPER] = UCase([LAST_NAME] & IIf(Not IsNull(FIRST_NAME), ", " & [FIRST_NAME], "") & IIf(Not IsNull(MIDDLE_INITIAL), " " & [MIDDLE_INITIAL], ""))
    End If
    
End Sub

Private Sub MIDDLE_INITIAL_Exit(Cancel As Integer)

    [CONTACT_NAME_UPPER] = UCase([LAST_NAME] & IIf(Not IsNull(FIRST_NAME), ", " & [FIRST_NAME], "") & IIf(Not IsNull(MIDDLE_INITIAL), " " & [MIDDLE_INITIAL], ""))
    
End Sub

Private Sub Unfilter_Click()
On Error GoTo Err_Unfilter_Click


    'Screen.PreviousControl.SetFocus
    DoCmd.ShowAllRecords
    CONTACT_Lookup.Visible = True
    Find_Label.Visible = True
    Forms![NMIS_CONTACTS]!Home_Associate_Filter.Visible = True
    Forms![NMIS_CONTACTS]!Home_Associate_Filter_Label.Visible = True
    Forms![NMIS_CONTACTS]!Hide_99s.Visible = True
    Forms![NMIS_CONTACTS]!Hide_Historical.Visible = True
    DoCmd.GoToControl "CONTACT_Lookup"
Exit_Unfilter_Click:
    Exit Sub

Err_Unfilter_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Unfilter_Click
    
End Sub