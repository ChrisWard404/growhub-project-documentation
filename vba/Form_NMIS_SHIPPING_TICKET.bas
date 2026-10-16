Option Compare Database


Private Sub Create_Shipping_Ticket_Click()
    Dim stDocName As String

    stDocName = "PRODUCT_ticket"
    
    [Forms]![NMIS_SHIPPING_TICKET]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    
    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Shipping_Ticket_Click:
    Exit Sub

Err_Create_Shipping_Ticket_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Shipping_Ticket_Click
    
End Sub

Private Sub FISCAL_YEAR_AfterUpdate()

[NMIS_SHIPPING_TICKET Subform].Form![Find_Ticket].Requery

End Sub

Private Sub FISCAL_YEAR_Enter()

        [Forms]![NMIS_SHIPPING_TICKET]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
        
End Sub

Private Sub Refresh_Close_Click()
On Error GoTo Err_Refresh_Close_Click

    Dim stDocName As String

    stDocName = "Close_Form"
    
    DoCmd.RunMacro stDocName

Exit_Refresh_Close_Click:
    Exit Sub

Err_Refresh_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_Close_Click
    
End Sub