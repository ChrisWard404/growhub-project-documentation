Option Compare Database

Private Sub Preview_Report_Click()
On Error GoTo Err_Preview_Report_Click

    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW delete"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_ORDERS"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_DESTROY"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SHIP"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_XPLT"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_MISSING_BILLING_CODES_APPEND"
        
    DoCmd.SetWarnings True

    Dim stDocName As String

    stDocName = "CLIENT_BILL_PREVIEW_LOTS"
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
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SVCS_1"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SVCS_2"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_MISSING_SVCS_CODES_APPEND"
    
    DoCmd.SetWarnings True
    
    Dim stDocName As String

    stDocName = "CLIENT_BILL_PREVIEW_LOTS_SVCS"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Preview_Special_Services_Report_Click:
    Exit Sub

Err_Preview_Special_Services_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Special_Services_Report_Click


End Sub

Private Sub Preview_Ticket_Activity_Report_Click()

    Dim stDocName As String

    stDocName = "CLIENT_BILL_PREVIEW_TICKETS"
    DoCmd.OpenReport stDocName, acPreview

End Sub