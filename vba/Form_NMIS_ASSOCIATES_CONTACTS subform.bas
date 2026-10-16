Option Compare Database

Private Sub CONTACT_NAME_DblClick(Cancel As Integer)

On Error GoTo Err_CONTACT_NAME_DblClick
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    
    If IsNull(CONTACT_NAME) Then
        'DoCmd.OpenForm stDocName, , , acFormEdit
        'DoCmd.GoToRecord , , acNewRec
        'DoCmd.GoToControl "last_name"
        'Forms![NMIS_CONTACTS]!CONTACT_Lookup.Visible = False
        'Forms![NMIS_CONTACTS]!Find_Label.Visible = False
        'Forms![NMIS_CONTACTS]!Home_Associate_Filter.Visible = False
        'Forms![NMIS_CONTACTS]!Home_Associate_Filter_Label.Visible = False
        'MsgBox "Press CTRL F9 after closing the Contacts Form"
    Else
        DoCmd.OpenForm stDocName, acNormal, , "([CN]=" & "'" & [CONTACT_CN] & "')", acFormEdit
        DoCmd.GoToControl "last_name"
        Forms![NMIS_CONTACTS]!CONTACT_Lookup.Visible = False
        Forms![NMIS_CONTACTS]!Find_Label.Visible = False
        Forms![NMIS_CONTACTS]!Home_Associate_Filter.Visible = False
        Forms![NMIS_CONTACTS]!Home_Associate_Filter_Label.Visible = False
    End If
Exit_CONTACT_NAME_DblClick:
    Exit Sub

Err_CONTACT_NAME_DblClick:
    'MsgBox Err.Description
    Resume Exit_CONTACT_NAME_DblClick
End Sub

Private Sub CONTACT_NAME_Enter()
    
    'CONTACT_NAME.Requery
    
End Sub

Private Sub CONTACT_NAME_GotFocus()

    CONTACT_NAME.Requery
    
End Sub

Private Sub CONTACT_NAME_NotInList(NewData As String, Response As Integer)
    
On Error GoTo Err_CONTACT_NAME_NotInList
    [CONTACT_NAME].Undo
    [CONTACT_CN].Undo
    'Response = MsgBox("Not Currently Contact. Do you want to Add this Contact?", vbYesNo)
    
    'If Response = vbYes Then
        MsgBox "Enter New Contacts using the Contacts Form"
        'DoCmd.OpenForm "NMIS_CONTACTS", acNormal, , , acFormAdd
    'End If
Exit_CONTACT_NAME_NotInList:
    Exit Sub

Err_CONTACT_NAME_NotInList:
    'MsgBox Err.Description
    Resume Exit_CONTACT_NAME_NotInList
    
End Sub

Private Sub Form_AfterInsert()

    If [LAST_NAME] > "" And [FIRST_NAME] > "" Then
        [CONTACT_NAME_UPPER] = [LAST_NAME] & ", " & [FIRST_NAME]
      Else
        [CONTACT_NAME_UPPER] = [LAST_NAME]
    End If
    DoCmd.RunMacro "Set_CN"
    
End Sub

Private Sub Open_Contact_Form_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    
    Response = MsgBox("Is this an new contact to NMIS?", vbYesNo)
    
    If Response = vbYes Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , , acFormEdit
          DoCmd.RunCommand acCmdFilterByForm
    End If
    
End Sub

Private Sub Requery_Click()

    [LINK_ASSOCIATE].Requery
    
End Sub