Option Compare Database

Private Sub Preview_Yield_Summary_By_Client_Report_Click()
On Error GoTo Err_Preview_Yield_Summary_By_Client_Report_Click

    Dim stDocName As String

    stDocName = "Native_Seed_Harvest_Summary"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Yield_Summary_By_Client_Rep:
    Exit Sub

Err_Preview_Yield_Summary_By_Client_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Yield_Summary_By_Client_Rep
    
End Sub

Private Sub Preview_Yield_Summary_By_Client_Report_with_Totals_Click()
    
    Dim stDocName As String

    stDocName = "Native_Seed_Harvest_Summary2"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Yield_Summary_By_Species_Report_Click()
    Dim stDocName As String

    stDocName = "Native_Seed_Harvest_by_Species_Summary"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Yield_Summary_By_Species_Report_with_Totals_Click()
    
    Dim stDocName As String

    stDocName = "Native_Seed_Harvest_Summary_By_species2"
    DoCmd.OpenReport stDocName, acPreview

End Sub