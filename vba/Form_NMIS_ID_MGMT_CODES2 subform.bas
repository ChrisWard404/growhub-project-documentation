Option Compare Database

Private Sub NMIS_CLIENT_MGMT_CODES_subform_Exit(Cancel As Integer)

    [NMIS_CLIENT_MGMT_CODES subform].Requery
    If Not IsNull([NMIS_CLIENT_MGMT_CODES subform].Form![MGMT_CODE]) Then
        If Not IsNull([NMIS_CLIENT_MGMT_CODES subform].Form![TOTAL_PCT]) Then
            If [NMIS_CLIENT_MGMT_CODES subform].Form![TOTAL_PCT] <> 100 Then
                MsgBox "Percents must total 100"
                [NMIS_CLIENT_MGMT_CODES subform].Form![CLIENT_ASSOCIATE].SetFocus
            End If
        End If
    End If
    
End Sub

Private Sub Save_and_Exit_Click()
On Error GoTo Err_Save_and_Exit_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    
    DoCmd.RunMacro stDocName

Exit_Save_and_Exit_Click:
    Exit Sub

Err_Save_and_Exit_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Save_and_Exit_Click
    
End Sub