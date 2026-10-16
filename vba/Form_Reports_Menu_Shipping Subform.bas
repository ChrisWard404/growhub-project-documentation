Private Sub CmdProdShpTkt_Click()

    Dim stDocName As String

    stDocName = "PRODUCT_ticket2b"
   
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
    
End Sub

Private Sub inventory_by_location_type_and_lot_Click()
On Error GoTo Err_inventory_by_location_type_and_lot_Click

    Dim stLinkCriteria As String

    stDocName = "transaction_Totals_by_location"
    DoCmd.OpenForm stDocName
    
Exit_inventory_by_location_type_and_lot_Click:
    Exit Sub

Err_inventory_by_location_type_and_lot_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_inventory_by_location_type_and_lot_Click
    
End Sub

Private Sub Mailing_Labels_Intermec_Click()

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Processing_and_Shipping_Record_for_TP_Report_Click()

    Dim stDocName As String

    stDocName = "Processing_and_Shipping_Record_for_TP_Report"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Processing_and_Shipping_Record_Report_Click()

    Dim stDocName As String

    stDocName = "Processing_and_Shipping_Record_Report"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Prod_Ship_Ticket_List_by_Categ_Click()
    Dim stDocName As String

    stDocName = "Ship_Ticket_Summary_by_Category"
    DoCmd.OpenReport stDocName, acPreview
End Sub

Private Sub Prod_Ship_Ticket_list_by_Tkt_No_Click()
    Dim stDocName As String

    stDocName = "Ship_Ticket_Summary_by_Ticket_No"
    DoCmd.OpenReport stDocName, acPreview
End Sub

Private Sub Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click()
On Error GoTo Err_Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click

    Dim stDocName As String

    stDocName = "Ship_Ticket_Summary_by_Ticket_No_TSO"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click:
    Exit Sub

Err_Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click
    
End Sub

Private Sub Product_Storage_Summary_Click()

    stDocName = "Product_Storage_Summary"
    
    DoCmd.OpenForm stDocName
 
End Sub

Private Sub Review_Destroy_Act_vs_Trans_totals_Click()
On Error GoTo Err_Review_Destroy_Act_vs_Trans_totals_Click

    Dim stDocName As String
    
    stDocName = "Destroy_act_tot_vs_trans_total_checklist"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Review_Destroy_Act_vs_Trans_totals_Click:
    Exit Sub

Err_Review_Destroy_Act_vs_Trans_totals_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Review_Destroy_Act_vs_Trans_totals_Click
    
End Sub

Private Sub Review_Pack_Act_vs_Trans_totals_Ship_Click()
On Error GoTo Err_Review_Pack_Act_vs_Trans_totals_Ship_Click

    Dim stDocName As String
    
    stDocName = "Ship_act_tot_vs_trans_total_checklist"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Review_Pack_Act_vs_Trans_totals_Ship_Click:
    Exit Sub

Err_Review_Pack_Act_vs_Trans_totals_Ship_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Review_Pack_Act_vs_Trans_totals_Ship_Click
    
End Sub

Private Sub Shipping_Summary_By_Parent_Associate_Click()

    DoCmd.OpenReport "Shipping_Summary_By_Parent_Associate", acViewPreview
    
End Sub

Private Sub Shipping_Summary_By_Stocktype_Click()
On Error GoTo Err_Shipping_Summary_By_Stocktype_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Shipping_Summary_By_Stocktype"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Shipping_Summary_By_Stocktype_Click:
    Exit Sub

Err_Shipping_Summary_By_Stocktype_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Shipping_Summary_By_Stocktype_Click
    
End Sub

Private Sub Shipping_Summary_By_Stocktype_SPD_Click()
On Error GoTo Err_Shipping_Summary_By_Stocktype_SPD_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Agreement_Lot_Ship_Totals_by_FY"
    DoCmd.OpenQuery stDocName, acPreview
    
Exit_Shipping_Summary_By_Stocktype_SPD_Click:
    Exit Sub

Err_Shipping_Summary_By_Stocktype_SPD_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Shipping_Summary_By_Stocktype_SPD_Click
    
End Sub

Private Sub Shipping_Summary_By_Stocktype_Species_Click()
On Error GoTo Err_Shipping_Summary_By_Stocktype_Species_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Shipping_Summary_By_Stocktype"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Shipping_Summary_By_Stocktype_Species_Click:
    Exit Sub

Err_Shipping_Summary_By_Stocktype_Species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Shipping_Summary_By_Stocktype_Species_Click
    
End Sub

Private Sub Shipping_Summary_By_Stocktype_Species2_Click()
On Error GoTo Err_Shipping_Summary_By_Stocktype_Species2_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Shipping_Summary_By_Stocktype_Species2"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Shipping_Summary_By_Stocktype_Species2_Click:
    Exit Sub

Err_Shipping_Summary_By_Stocktype_Species2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Shipping_Summary_By_Stocktype_Species2_Click

End Sub