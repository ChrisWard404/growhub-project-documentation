Option Compare Database

Private Sub Close_Form_Click()

    DoCmd.Close
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    If NMIS_Contract_Items_Current = "no" Then
        Rollover_Contracts.Visible = True
        Close_form.Visible = False
    Else
        Rollover_Contracts.Visible = False
        Close_form.Visible = True
    End If
    
End Sub

Private Sub Rollover_Contracts_Click()
On Error GoTo Err_Rollover_Contracts_Click

    Dim stDocName As String

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "CONTRACT_ROLLOVER", acNormal, acEdit
    DoCmd.OpenQuery "Rollover_CONTRACT_ITEMS", acNormal, acEdit
    DoCmd.OpenQuery "CONTRACT_ITEM_DETAIL_ROLLOVER", acNormal, acEdit
    DoCmd.OpenQuery "CONTRACT_PAYMENT_ESTIMATE_INVOICE_ROLLOVER", acNormal, acEdit
    DoCmd.SetWarnings True
    MsgBox "Rollover Complete"
    DoCmd.Close

Exit_Rollover_Contracts_Click:
    Exit Sub

Err_Rollover_Contracts_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Rollover_Contracts_Click
    
End Sub