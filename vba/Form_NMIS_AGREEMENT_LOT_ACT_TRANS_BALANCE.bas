Option Compare Database


Private Sub Act_Trans_Report_By_Order_Click()

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENT_LOT_Transaction_Balance_by_order"
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub NMIS_AGREEMENT_LOT_REPORT_CREATE_Click()
    Dim stDocName As String

    stDocName = "NMIS_AGREEMENT_LOT_Transaction_Balance"
    
    DoCmd.OpenReport stDocName, acPreview
    
End Sub