Option Compare Database


Private Sub NMIS_AGREEMENT_LOT_REPORT_CREATE_Click()
On Error GoTo Err_NMIS_AGREEMENT_LOT_REPORT_CREATE_Click

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENT_Lots_Activities_and_Transactions"
    DoCmd.OpenReport stDocName, acPreview
Exit_NMIS_AGREEMENT_LOT_REPORT_CREATE_Click:
    Exit Sub

Err_NMIS_AGREEMENT_LOT_REPORT_CREATE_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_AGREEMENT_LOT_REPORT_CREATE_Click
        
End Sub

Private Sub NMIS_AGREEMENT_LOT_REPORT_Without_Transactions_CREATE_Click()
On Error GoTo Err_NMIS_AGREEMENT_LOT_REPORT_Without_Transactions_CREATE_Click

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENT_Lots_Activities_wo_Transactions"
    DoCmd.OpenReport stDocName, acPreview
Exit_NMIS_AGREEMENT_LOT_REPORT_Without_Transactions_CREATE_Click:
    Exit Sub

Err_NMIS_AGREEMENT_LOT_REPORT_Without_Transactions_CREATE_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_AGREEMENT_LOT_REPORT_Without_Transactions_CREATE_Click
    
End Sub