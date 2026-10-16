Option Compare Database

Private Sub Like_FY_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Like_FY_DblClick(Cancel As Integer)

    Like_FY = "*"
    
End Sub

Private Sub MGMT_CODE_DblClick(Cancel As Integer)

    If Not IsNull(CLIENT_ASSOCIATE) Then
        MGMT_CODE = CLIENT_ASSOCIATE
    End If
    
End Sub

Private Sub MGMT_CODE_Exit(Cancel As Integer)

    If IsNull(MGMT_CODE) And Not IsNull(CLIENT_ASSOCIATE) Then
        MGMT_CODE = CLIENT_ASSOCIATE
    End If
    
End Sub