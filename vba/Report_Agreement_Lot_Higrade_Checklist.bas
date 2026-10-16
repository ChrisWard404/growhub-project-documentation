Option Compare Database

Private Sub Report_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Agreement_Lot_Higrade_Checklist_Subreport_MT"
    DoCmd.SetWarnings True
    
End Sub