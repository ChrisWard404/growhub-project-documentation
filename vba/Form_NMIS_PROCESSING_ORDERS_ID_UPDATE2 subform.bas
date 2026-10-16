Option Compare Database

Private Sub CLIENT_ASSOCIATE_DblClick(Cancel As Integer)

    CLIENT_ASSOCIATE.Locked = False
    
End Sub

Private Sub CLIENT_ASSOCIATE_Enter()

    If IsNull(CLIENT_ASSOCIATE) Then
        CLIENT_ASSOCIATE.Locked = False
    Else
        CLIENT_ASSOCIATE.Locked = True
    End If
    
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)
    'DoCmd.OpenForm "NMIS_CONTACTS", , , , acFormAdd
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    
    If IsNull(CONTACT_CN) Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , "([CN]=" & "'" & [CONTACT_CN] & "')", acFormEdit
    End If
    
End Sub

Private Sub Form_BeforeUpdate(Cancel As Integer)

    MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    MODIFIED_DATE = Date
 
End Sub

Private Sub SECONDARY_CONTACT_CN_DblClick(Cancel As Integer)
    'DoCmd.OpenForm "NMIS_CONTACTS", , , , acFormAdd
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    
    If IsNull(SECONDARY_CONTACT_CN) Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , "([CN]=" & "'" & [SECONDARY_CONTACT_CN] & "')", acFormEdit
    End If
    
End Sub