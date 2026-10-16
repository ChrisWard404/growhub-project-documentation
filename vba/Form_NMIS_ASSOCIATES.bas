Option Compare Database

Private Sub ASSOCIATE_DblClick(Cancel As Integer)

            [Associate].Locked = False
            MsgBox "Associate unlocked for editing."

End Sub

Private Sub ASSOCIATE_Enter()

    If Not IsNull([Associate]) Then
        [Associate].Locked = True
    Else
        [Associate].Locked = False
    End If

End Sub

Private Sub ASSOCIATE_Exit(Cancel As Integer)

    If Not IsNull([Associate]) Then
        [Associate].Locked = True
    Else
        MsgBox "ASSOCIATE CODE MUST BE ENTERED"
    End If
    
End Sub

Private Sub ASSOCIATE_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[ASSOCIATE] = '" & Me![ASSOCIATE_Lookup] & "'"
    Me.Bookmark = rs.Bookmark

End Sub

Private Sub ASSOCIATE_Lookup_by_Name_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[ASSOCIATE] = '" & Me![ASSOCIATE_Lookup_by_Name] & "'"
    Me.Bookmark = rs.Bookmark

End Sub

Private Sub ASSOCIATE_Lookup_by_Name_Enter()

    ASSOCIATE_Lookup = Null
    
End Sub

Private Sub ASSOCIATE_Lookup_Enter()

    ASSOCIATE_Lookup_by_Name = Null
    
End Sub

Private Sub ASSOCIATE_NAME_DblClick(Cancel As Integer)

            [ASSOCIATE_NAME].Locked = False
            MsgBox "Associate Name unlocked for editing."
            
End Sub

Private Sub ASSOCIATE_NAME_Enter()

    If IsNull(ASSOCIATE_NAME) Then
        ASSOCIATE_NAME.Locked = False
    End If
    
End Sub

Private Sub ASSOCIATE_NAME_Exit(Cancel As Integer)

    If Not IsNull([ASSOCIATE_NAME]) Then
        [ASSOCIATE_NAME].Locked = True
        [ASSOCIATE_NAME_UPPER] = UCase([ASSOCIATE_NAME])
    End If

End Sub

Private Sub Form_AfterInsert()

    DoCmd.RunMacro "refresh"

End Sub

Private Sub Form_Open(Cancel As Integer)
    
    Forms![NMIS_Associates]![ASSOCIATE_Lookup].Visible = True
    Forms![NMIS_Associates]![Associate_lookup_Label].Visible = True
    Forms![NMIS_Associates]![ASSOCIATE_Lookup_by_Name].Visible = True
    Forms![NMIS_Associates]![LikeAssociate].Visible = True
    DoCmd.GoToControl "ASSOCIATE_Lookup_by_Name"
    
End Sub

Private Sub LikeAssociate_AfterUpdate()
    ASSOCIATE_Lookup_by_Name.Requery
    ASSOCIATE_Lookup.Requery
End Sub

Private Sub LikeAssociate_DblClick(Cancel As Integer)
    LikeAssociate = "*"
    ASSOCIATE_Lookup_by_Name.Requery
    ASSOCIATE_Lookup.Requery
End Sub

Private Sub New_99_Client_Click()

    DoCmd.GoToRecord , , acNewRec
    [Associate] = Forms![NMIS_Associates]![NMIS_ASSOCIATES_99S subform]![NEXT_SURPLUS_ASSOCIATE]
    PARENT_ASSOCIATE = "990000"

End Sub

Private Sub Open_Contact_Form_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
        MsgBox [NMIS_ASSOCIATES_CONTACTS  subform].Form![CONTACT_NAME]
    If IsNull([NMIS_ASSOCIATES_CONTACTS  subform].Form![CONTACT_NAME]) Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , "([LAST_NAME]=" & "'" & Forms![NMIS_Associates]![NMIS_CONTACT_NAME_SELECTED subform].Form![LAST_NAME] & _
                        "'AND " & "[FIRST_NAME] = " & " '" & Forms![NMIS_Associates]![NMIS_CONTACT_NAME_SELECTED subform].Form![FIRST_NAME] & "')", acFormEdit
    End If

End Sub


Private Sub NMIS_ASSOCIATES_subform1_Exit(Cancel As Integer)

    'Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[ASSOCIATE] = '" & [NMIS_ASSOCIATES subform1].Form![Associate] & "'"
    Me.Bookmark = rs.Bookmark
    
End Sub

Private Sub PARENT_ASSOCIATE_NotInList(NewData As String, Response As Integer)

        MsgBox "PARENT NOT CURRENTLY AN ASSOCIATE. TO USE THIS PARENT, ADD AS AN ASSOCIATE."
        
End Sub

Private Sub New_Record_Click()
On Error GoTo Err_New_Record_Click

    Dim stDocName As String

    DoCmd.GoToRecord , , acNewRec

Exit_New_Record_Click:
    Exit Sub

Err_New_Record_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_New_Record_Click
    
End Sub

Private Sub SHIP_ADDR_DblClick(Cancel As Integer)

    If IsNull(SHIP_ADDR) Then
        SHIP_ADDR = STREET_ADDR
    End If
    If IsNull(SHIP_CITY) Then
        SHIP_CITY = CITY
    End If
    If IsNull(SHIP_STATE) Then
        SHIP_STATE = STATE
    End If
    If IsNull(SHIP_ZIPCODE) Then
        SHIP_ZIPCODE = ZIPCODE
    End If
    If IsNull(SHIP_COUNTRY) Then
        SHIP_COUNTRY = COUNTRY
    End If
    
End Sub

Private Sub Unfilter_Click()
On Error GoTo Err_Unfilter_Click


    Screen.PreviousControl.SetFocus
    DoCmd.ShowAllRecords
        
    Forms![NMIS_Associates]![ASSOCIATE_Lookup].Visible = True
    Forms![NMIS_Associates]![Associate_lookup_Label].Visible = True
    Forms![NMIS_Associates]![ASSOCIATE_Lookup_by_Name].Visible = True
    Forms![NMIS_Associates]![LikeAssociate].Visible = True
    DoCmd.GoToControl "ASSOCIATE_Lookup_by_Name"
    
Exit_Unfilter_Click:
    Exit Sub

Err_Unfilter_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Unfilter_Click
End Sub