Option Compare Database

Private Sub Report_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "PRODUCT_STORAGE_SUMMARY_SUBREPORT_MT"
    DoCmd.SetWarnings True
    
End Sub