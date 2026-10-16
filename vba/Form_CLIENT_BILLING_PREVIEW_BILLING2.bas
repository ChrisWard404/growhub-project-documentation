Option Compare Database

Private Sub Preview_Report_Click()
On Error GoTo Err_Preview_Report_Click

    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW delete"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_ORDERS2"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_DESTROY2"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SHIP2"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_XPLT2"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_MISSING_BILLING_CODES_APPEND"
        
    DoCmd.SetWarnings True

    Dim stDocName As String

    stDocName = "CLIENT_BILL_PREVIEW_LOTS2"
    DoCmd.OpenReport stDocName, acPreview
Exit_Preview_Report_Click:
    Exit Sub

Err_Preview_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_Click



End Sub

Private Sub Preview_Special_Services_Report_Click()
On Error GoTo Err_Preview_Special_Services_Report_Click

    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SVCS delete"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SVCS_1_2"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SVCS_2_2"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_MISSING_SVCS_CODES_APPEND"
    
    DoCmd.SetWarnings True
    
    Dim stDocName As String

    stDocName = "CLIENT_BILL_PREVIEW_LOTS_SVCS2"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Preview_Special_Services_Report_Click:
    Exit Sub

Err_Preview_Special_Services_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Special_Services_Report_Click


End Sub

Private Sub Preview_Ticket_Activity_Report_Click()

    Dim stDocName As String

    stDocName = "CLIENT_BILL_PREVIEW_TICKETS2"
    DoCmd.OpenReport stDocName, acPreview

End Sub