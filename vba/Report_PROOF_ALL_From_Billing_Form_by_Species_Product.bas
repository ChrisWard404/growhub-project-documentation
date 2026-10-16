Option Compare Database

Private Sub Report_Open(Cancel As Integer)
On Error GoTo Err_Report_Open

    Dim stDocName As String

    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False
    
    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.OpenQuery "PROOF_ALL_AGR Query"
    DoCmd.OpenQuery "PROOF_ALL Query"
    DoCmd.OpenQuery "PROOF_ALL_LFT Query"
    'DoCmd.OpenQuery "PROOF_ALL_CPR Query"
    DoCmd.OpenQuery "PROOF_ALL_ORD Query"
    DoCmd.OpenQuery "PROOF_ALL_SOW Query"
    DoCmd.OpenQuery "PROOF_ALL_LCT Query"
    DoCmd.OpenQuery "PROOF_ALL_PC Query"

    DoCmd.SetWarnings True
    
Exit_Report_Open:
    Exit Sub

Err_Report_Open:
    MsgBox Err.DESCRIPTION
    Resume Exit_Report_Open

End Sub