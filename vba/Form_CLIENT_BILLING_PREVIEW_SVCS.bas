Option Compare Database

Private Sub Preview_Report_Click()

    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SVCS delete"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SVCS_1"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SVCS_2"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_MISSING_SVCS_CODES_APPEND"
    
    DoCmd.SetWarnings True
    
    Dim stDocName As String

    stDocName = "CLIENT_BILL_PREVIEW_LOTS_SVCS"
    DoCmd.OpenReport stDocName, acPreview


End Sub