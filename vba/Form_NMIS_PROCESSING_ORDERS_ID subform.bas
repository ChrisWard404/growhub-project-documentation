Option Compare Database

Private Sub CLIENT_ASSOCIATE_DblClick(Cancel As Integer)

    [CLIENT_ASSOCIATE].Locked = False
    MsgBox "Associate is now UNLOCKED for Editing."
    
End Sub

Private Sub CLIENT_ASSOCIATE_Enter()

    If [CLIENT_ASSOCIATE] > "" Then
        [CLIENT_ASSOCIATE].Locked = True
    Else
        [CLIENT_ASSOCIATE].Locked = False
    End If

End Sub

Private Sub CLIENT_ASSOCIATE_Exit(Cancel As Integer)

    [CLIENT_ASSOCIATE].Locked = True
        
    If Not IsNull(CLIENT_ASSOCIATE) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If

End Sub


Private Sub Form_BeforeInsert(Cancel As Integer)

        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If

End Sub

Private Sub LP_ACT_Click()
On Error GoTo Err_LP_ACT_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    AGREEMENT_LOT_CN = Me![AGREEMENT_LOT_CN]
    stDocName = "NMIS_ORDER_ACT-TRANS-LOC"
    DoCmd.OpenForm stDocName, , , "[CN]=" & "'" & Me![AGREEMENT_LOT_CN] & "'"
    
Exit_LP_ACT_Click:
    Exit Sub

Err_LP_ACT_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_LP_ACT_Click
    
End Sub


