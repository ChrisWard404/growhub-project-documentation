Private Sub Command30_Click()

End Sub


Private Sub CliBilInv_Lot_Detail_Click()
On Error GoTo Err_CliBilInv_Lot_Detail_Click
    Dim stDocName As String

    stDocName = "Client_Bill_Menu"
    DoCmd.OpenForm stDocName, acNormal

Exit_CliBilInv_Lot_Detail_Click:
    Exit Sub

Err_CliBilInv_Lot_Detail_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBilInv_Lot_Detail_Click
End Sub

Private Sub CliBillwoSpcServices_Click()
On Error GoTo Err_CliBillwoSpcServices_Click

    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    'DoCmd.OpenQuery "CLIENT_BILL_3-3 at"  'Bills Client for Double Sort Hourly
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    DoCmd.SetWarnings True
    
    Client_Bill_Data_Processed = False

    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_w_lot_detail_no_spcsvc"
    DoCmd.OpenReport stDocName, acPreview


Exit_CliBillwoSpcServices_Click:
    Exit Sub

Err_CliBillwoSpcServices_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBillwoSpcServices_Click
    
End Sub

Private Sub Client_Billing_Summary_Click()

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    'DoCmd.OpenQuery "CLIENT_BILL_3-3 at"  'Bills Client for Double Sort Hourly
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If
    
    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_COMBINED2"
    DoCmd.OpenReport stDocName, acPreview
    
    DoCmd.SetWarnings True
    
End Sub

Private Sub Client_Billing_Summary_Detail_Click()

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    'DoCmd.OpenQuery "CLIENT_BILL_3-3 at"  'Bills Client for Double Sort Hourly
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_COMBINED"
    DoCmd.OpenReport stDocName, acPreview
    
    DoCmd.SetWarnings True
    
End Sub

Private Sub CmdLftDailyContr_Daily_Sum_Click()
On Error GoTo Err_CmdLftDailyContr_Daily_Sum_Click

    Dim stDocName As String

    stDocName = "LOTS_LIFTED_DAILY_CONTRACT_Daily_Summary"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdLftDailyContr_Daily_Sum_Click:
    Exit Sub

Err_CmdLftDailyContr_Daily_Sum_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdLftDailyContr_Daily_Sum_Click
    
End Sub

Private Sub CmdLftDailyContr_Sum_Click()
On Error GoTo Err_CmdLftDailyContr_Sum_Click

    Dim stDocName As String

    stDocName = "LOTS_LIFTED_DAILY_CONTRACT_Summary"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdLftDailyContr_Sum_Click:
    Exit Sub

Err_CmdLftDailyContr_Sum_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdLftDailyContr_Sum_Click
    
End Sub

Private Sub CmdLotswoExtract_Click()
On Error GoTo Err_CmdLotswoExtract_Click

    Dim stDocName As String

    stDocName = "LOTS_WO_EXTRACTION_AMOUNTS"
    
    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False
    
    DoCmd.OpenQuery "PROOF_ALL Query"
    DoCmd.OpenQuery "PROOF_ALL_CPR Query"
    DoCmd.OpenQuery "PROOF_ALL_AGR Query"
    DoCmd.OpenQuery "PROOF_ALL_ORD Query"
    DoCmd.OpenQuery "PROOF_ALL_SOW Query"
    DoCmd.OpenQuery "PROOF_ALL_LFT Query"
    DoCmd.OpenQuery "PROOF_ALL_LCT Query"
    DoCmd.OpenQuery "PROOF_ALL_PC Query"
    
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdLotswoExtract_Click:
    Exit Sub

Err_CmdLotswoExtract_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdLotswoExtract_Click
    
End Sub

Private Sub CmdLotswoLift2_Click()
On Error GoTo Err_CmdLotswoLift2_Click

    Dim stDocName As String

    stDocName = "LOTS_WO_LIFT_AMOUNTS"
    
    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False
    
    DoCmd.OpenQuery "PROOF_ALL Query"
    DoCmd.OpenQuery "PROOF_ALL_CPR Query"
    DoCmd.OpenQuery "PROOF_ALL_AGR Query"
    DoCmd.OpenQuery "PROOF_ALL_ORD Query"
    DoCmd.OpenQuery "PROOF_ALL_SOW Query"
    DoCmd.OpenQuery "PROOF_ALL_LFT Query"
    DoCmd.OpenQuery "PROOF_ALL_LCT Query"
    DoCmd.OpenQuery "PROOF_ALL_PC Query"
    
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdLotswoLift2_Click:
    Exit Sub

Err_CmdLotswoLift2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdLotswoLift2_Click
    
End Sub

Private Sub CmdOrdStat_detailed_Click()
On Error GoTo Err_CmdOrdStat_detailed_Click

    Dim stDocName As String

    stDocName = "ORDER_STATUS_DETAILED"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdOrdStat_detailed_Click:
    Exit Sub

Err_CmdOrdStat_detailed_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_CmdOrdStat_detailed_Click
    
End Sub

Private Sub CmdOrdStatSPD_Click()
On Error GoTo Err_CmdOrdStatSPD_Click

    Dim stDocName As String

    stDocName = "Order_Status_Input_SPD"
    DoCmd.OpenForm stDocName

Exit_CmdOrdStatSPD_Click:
    Exit Sub

Err_CmdOrdStatSPD_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_CmdOrdStatSPD_Click
    
End Sub

Private Sub CmdPackDailyContr_Daily_Sum_Click()
On Error GoTo Err_CmdPackDailyContr_Daily_Sum_Click

    Dim stDocName As String

    stDocName = "LOTS_PACKED_DAILY_CONTRACT_Daily_Summary"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdPackDailyContr_Daily_Sum_Click:
    Exit Sub

Err_CmdPackDailyContr_Daily_Sum_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdPackDailyContr_Daily_Sum_Click
    
End Sub

Private Sub CmdPackDailyStockType_Daily_Sum_Click()
On Error GoTo Err_CmdPackDailyStockType_Daily_Sum_Click

    Dim stDocName As String

    stDocName = "LOTS_PACKED_DAILY_BY_AGE_CLASS_Summary"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdPackDailyStockType_Daily_Sum_Click:
    Exit Sub

Err_CmdPackDailyStockType_Daily_Sum_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdPackDailyStockType_Daily_Sum_Click
    
End Sub

Private Sub CmdXPLT_by_Client_Click()
On Error GoTo Err_mdXPLT_by_Client_Click

    Dim stDocName As String

    stDocName = "XPLT_AT_JHSN_by_Client_Sp_age_class"
    DoCmd.OpenReport stDocName, acPreview

Exit_mdXPLT_by_Client_Click:
    Exit Sub

Err_mdXPLT_by_Client_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_mdXPLT_by_Client_Click
    
End Sub

Private Sub CmdXPLT_by_Store_Loc_Click()
On Error GoTo Err_CmdXPLT_by_Store_Loc_Click

    Dim stDocName As String

    stDocName = "XPLT_AT_JHSN_by_Store_Loc"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdXPLT_by_Store_Loc_Click:
    Exit Sub

Err_CmdXPLT_by_Store_Loc_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdXPLT_by_Store_Loc_Click
    
End Sub




Private Sub Contacts_for_Current_fys_orders_By_Contact_Click()

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST_By_Contact"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Contacts_for_Current_fys_orders_By_Contact_SPD_Click()
Dim stDocName As String

    stDocName = "NMIS_ASSOC_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST_By_Contact_SPD"
    DoCmd.OpenQuery stDocName ', acPreview
    
End Sub

Private Sub Contacts_for_Current_fys_orders_Click()

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Contacts_for_Current_fys_orders2_Click()

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Contacts_for_Current_fys_Propagule_orders_Click()
On Error GoTo Err_Contacts_for_Current_fys_Propagule_orders_Click

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_Prop_CHECKLIST"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Contacts_for_Current_fys_Propagule_orders_Click:
    Exit Sub

Err_Contacts_for_Current_fys_Propagule_orders_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Contacts_for_Current_fys_Propagule_orders_Click
    
End Sub

Private Sub Contacts_for_Current_fys_Propagule_orders2_Click()
On Error GoTo Err_Contacts_for_Current_fys_Propagule_orders2_Click

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_Prop_CHECKLIST"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Contacts_for_Current_fys_Propagule_orders2_Click:
    Exit Sub

Err_Contacts_for_Current_fys_Propagule_orders2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Contacts_for_Current_fys_Propagule_orders2_Click
    
End Sub

Private Sub Contract_Payment_Click()

    'DoCmd.SetWarnings False
    'DoCmd.OpenQuery "nmis_pack_amounts_del"
    'DoCmd.OpenQuery "nmis_pack_amounts_ins"
    'DoCmd.OpenQuery "nmis_pack_amount_new_net1"
    'DoCmd.OpenQuery "nmis_pack_amount_new_net"
    'DoCmd.OpenQuery "nmis_pack_amounts_update"
    'DoCmd.OpenQuery "nmis_pack_payment_del"
    'DoCmd.OpenQuery "nmis_pack_payment_ins"
    'DoCmd.OpenReport "PROCESS_PAYMENT", acPreview
    'DoCmd.OpenQuery "PROCESSING_INCREMENTAL_TEMP_MT"
    'DoCmd.OpenReport "PROCESS_PAYMENT_INCREMENTAL", acPreview
    'DoCmd.SetWarnings True
    'PROCESS_PAYMENT_ESTIMATE_INVOICE
    
    Dim stDocName As String

    stDocName = "PROCESS_PAYMENT_ESTIMATE_INVOICE"
    DoCmd.OpenForm stDocName
  
End Sub

Private Sub Contract_Payment_Estimate_Invoice_Click()

    Dim stDocName As String

    stDocName = "Contract_Payment_Estimate_Invoice"
    
    DoCmd.OpenForm stDocName
    Forms![Contract_Payment_Estimate_Invoice]![Processing_Calcs].Visible = True
    Forms![Contract_Payment_Estimate_Invoice]!Update_Lift_Items.Visible = True
    Forms![Contract_Payment_Estimate_Invoice]!Update_Pack_Items.Visible = True
    
End Sub

Private Sub Contract_Payment_Hourly_Review_Click()
On Error GoTo Err_Contract_Payment_Hourly_Review_Click

    Dim stDocName As String
    
    stDocName = "Processing_Review_by_Activity_Date"
    
    DoCmd.OpenForm stDocName, acNormal
    
Exit_Contract_Payment_Hourly_Review_Click:
    Exit Sub

Err_Contract_Payment_Hourly_Review_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Contract_Payment_Hourly_Review_Click
    
End Sub

Private Sub Ctl99_Associate_Orders_by_id_Click()
    
    Dim stDocName As String

    stDocName = "99_Associate_Orders_by_ID"
    DoCmd.OpenQuery stDocName, acPreview
    
End Sub

Private Sub Edit__Lift_Priorities_Click()

    Dim stDocName As String

    stDocName = "Lifting_Priorties"
    DoCmd.OpenForm stDocName

End Sub

Private Sub LIFT_CONTRACT_ESTIMATE_INVOICE_Click()

    Dim stDocName As String

    stDocName = "LIFT_CONTRACT_ESTIMATE_INVOICE"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Edit__Process_Table_Priorities_Click()

    Dim stDocName As String

    stDocName = "Plant_Processing_Table_Priorties"
    DoCmd.OpenForm stDocName

End Sub

Private Sub Fall_Processing_Checklist_Click()
On Error GoTo Err_Fall_Processing_Checklist_Click

    Dim stDocName As String

    stDocName = "Agreement_lot_by_End_Season"
    DoCmd.OpenReport stDocName, acPreview

Exit_Fall_Processing_Checklist_Click:
    Exit Sub

Err_Fall_Processing_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Fall_Processing_Checklist_Click
End Sub

Private Sub Generic_Orders_Click()
On Error GoTo Err_Generic_Orders_Click

    Dim stDocName As String

    stDocName = "NMIS_ORDERS_Reports"
    DoCmd.OpenForm stDocName
    Forms![NMIS_ORDERS_Reports]![NMIS_ORDERS_GENERIC_CREATE].Visible = True
    Forms![NMIS_ORDERS_Reports]![Preview_Orders_Checklist].Visible = False
    Forms![NMIS_ORDERS_Reports]![Preview_Orders_Checklist_by_Lot_ID].Visible = False
    Forms![NMIS_ORDERS_Reports]![Preview_Orders_Summary].Visible = False
    Forms![NMIS_ORDERS_Reports]![Order_Info_Box].Visible = True
    Forms![NMIS_ORDERS_Reports]![Product_Services].Visible = True
    Forms![NMIS_ORDERS_Reports]![Root_Prune].Visible = True
    Forms![NMIS_ORDERS_Reports]![Nursery_Comment].Visible = True
    Forms![NMIS_ORDERS_Reports]![Like_Activity_Code].Visible = False
    Forms![NMIS_ORDERS_Reports]![Preview_Orders_Checklist_LiftInNote].Visible = False
    [Forms]![NMIS_ORDERS_Reports]![Like_End_Season].Visible = False
Exit_Generic_Orders_Click:
    Exit Sub

Err_Generic_Orders_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Generic_Orders_Click
End Sub

Private Sub Generic_Orders_Scheduled_Transplant_Click()
On Error GoTo Err_Generic_Orders_Scheduled_Transplant_Click

    Dim stDocName As String

    stDocName = "NMIS_ORDERS_Generic_Scheduled_Transplant"
    DoCmd.OpenForm stDocName
    
Exit_Generic_Orders_Scheduled_Transplant_Click:
    Exit Sub

Err_Generic_Orders_Scheduled_Transplant_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Generic_Orders_Scheduled_Transplant_Click
    
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

Private Sub Lift_Location_Worksheet_Click()
On Error GoTo Err_Lift_Location_Worksheet_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lift_Location_Worksheet"
    DoCmd.OpenReport stDocName, acPreview

Exit_Lift_Location_Worksheet_Click:
    Exit Sub

Err_Lift_Location_Worksheet_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lift_Location_Worksheet_Click
    
End Sub

Private Sub Map_For_Scheduled_Lifting_Click()
On Error GoTo Err_Map_For_Scheduled_Lifting_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Map Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    Forms![Field_Map Form]![Current_FY_Lift] = True

Exit_Map_For_Scheduled_Lifting_Click:
    Exit Sub

Err_Map_For_Scheduled_Lifting_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Map_For_Scheduled_Lifting_Click
    
End Sub

Private Sub Multiple_ageement_checklist_Click()

    Dim stDocName As String

    stDocName = "Agreement_lot_multiple_req_amt_from_last_inv"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Open_99_Associate_Orders_by_Associate_Name_Click()
    
    Dim stDocName As String

    stDocName = "99_Associate_Orders_by_Associate"
    DoCmd.OpenQuery stDocName, acPreview

End Sub

Private Sub Open_Bag_Box_Label_Form_Click()

    Dim stDocName As String

    stDocName = "NMIS_PROCESS_LABELS_MAIN"
    DoCmd.OpenForm stDocName
    
End Sub

Private Sub Open_Drying_Tray_Tag_Form_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Drying_Tray_Input_Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

End Sub

Private Sub Open_QM_Checklist_form_Click()

    Dim stDocName As String

    stDocName = "Processing_QI_Daily_Checklist"
    DoCmd.OpenForm stDocName
    
End Sub

Private Sub Order_Checklist_Reports_Click()
On Error GoTo Err_Order_Checklist_Reports_Click

    Dim stDocName As String

    stDocName = "NMIS_ORDERS_Reports"
    DoCmd.OpenForm stDocName
    Forms![NMIS_ORDERS_Reports]![NMIS_ORDERS_GENERIC_CREATE].Visible = False
    Forms![NMIS_ORDERS_Reports]![Order_Info_Box].Visible = False
    Forms![NMIS_ORDERS_Reports]![Product_Services].Visible = False
    Forms![NMIS_ORDERS_Reports]![Root_Prune].Visible = False
    Forms![NMIS_ORDERS_Reports]![Nursery_Comment].Visible = False
    Forms![NMIS_ORDERS_Reports]![XSSRPL_Orders].Visible = False
    
    Forms![NMIS_ORDERS_Reports]![Preview_Orders_Checklist].Visible = True
    Forms![NMIS_ORDERS_Reports]![Preview_Orders_Checklist_by_Lot_ID].Visible = True
    Forms![NMIS_ORDERS_Reports]![Preview_Orders_Summary].Visible = True

    
Exit_Order_Checklist_Reports_Click:
    Exit Sub

Err_Order_Checklist_Reports_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Order_Checklist_Reports_Click
End Sub

Private Sub Order_Status_Packed_Click()
On Error GoTo Err_Order_Status_Packed_Click

    Dim stDocName As String

    stDocName = "ORDER_STATUS_Packed"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Order_Status_Packed_Click:
    Exit Sub

Err_Order_Status_Packed_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_Order_Status_Packed_Click
    
End Sub

Private Sub Order_Status_Packed_No_Click()
On Error GoTo Err_Order_Status_Packed_No_Click

    Dim stDocName As String

    stDocName = "ORDER_STATUS_Packed_No"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Order_Status_Packed_No_Click:
    Exit Sub

Err_Order_Status_Packed_No_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_Order_Status_Packed_No_Click
    
End Sub

Private Sub Order_Status_Packed_Shortage_Click()
On Error GoTo Err_Order_Status_Packed_Shortage_Click

    Dim stDocName As String

    stDocName = "ORDER_STATUS_Packed_Shortage"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Order_Status_Packed_Shortage_Click:
    Exit Sub

Err_Order_Status_Packed_Shortage_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_Order_Status_Packed_Shortage_Click
    
End Sub

Private Sub Packed_for_Outplant_by_Class_Click()

    Dim stDocName As String

    stDocName = "Packed_for_Outplant_Checklist_by_Class"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Packed_for_Outplant_by_Class_Client_Summary_Click()

    Dim stDocName As String

    stDocName = "Packed_for_Outplant_Summary_by_Class_Client"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Packed_for_Outplant_by_Class_Summary_Click()

    Dim stDocName As String

    stDocName = "Packed_for_Outplant_Summary_by_Class"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Packed_for_Outplant_by_CLIENT_Click()
On Error GoTo Err_Packed_for_Outplant_by_CLIENT_Click

    Dim stDocName As String

    stDocName = "Packed_for_Outplant_Checklist_by_Class_Client"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Packed_for_Outplant_by_CLIENT_Click:
    Exit Sub

Err_Packed_for_Outplant_by_CLIENT_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Packed_for_Outplant_by_CLIENT_Click
    
End Sub

Private Sub Packed_for_Outplant_by_Region_Click()
On Error GoTo Err_Packed_for_Outplant_by_Region_Click

    Dim stDocName As String

    stDocName = "Packed_for_Outplant_Summary_by_region"
    DoCmd.OpenReport stDocName, acPreview

Exit_Packed_for_Outplant_by_Region_Click:
    Exit Sub

Err_Packed_for_Outplant_by_Region_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Packed_for_Outplant_by_Region_Click
    
End Sub

Private Sub Packed_for_Outplant_by_Species_Click()

    Dim stDocName As String

    stDocName = "Packed_for_Outplant_Summary_by_Species"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Packed_for_Surplus_Bid_List_Click()
On Error GoTo Err_Packed_for_Surplus_Bid_List_Click

    Dim stDocName As String

    stDocName = "Packed_for_Surplus_Sales_Checklist_by_Class_Bid_List"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Packed_for_Surplus_Bid_List_Click:
    Exit Sub

Err_Packed_for_Surplus_Bid_List_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Packed_for_Surplus_Bid_List_Click
    
End Sub

Private Sub Packed_for_Surplus_Sales_Donat_Click()
On Error GoTo Err_Packed_for_Surplus_Sales_Donat_Click

    Dim stDocName As String

    stDocName = "Packed_for_Surplus_Sales_Checklist_by_Class"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Packed_for_Surplus_Sales_Donat_Click:
    Exit Sub

Err_Packed_for_Surplus_Sales_Donat_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Packed_for_Surplus_Sales_Donat_Click
    
End Sub

Private Sub Plants_Destroyed_Checklist_Click()
On Error GoTo Err_Plants_Destroyed_Checklist_Click

    Dim stDocName As String

    stDocName = "Agreement_Lot_Destroy_Checklist"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Plants_Destroyed_Checklist_Click:
    Exit Sub

Err_Plants_Destroyed_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Plants_Destroyed_Checklist_Click
    
End Sub

Private Sub Plants_Higrade_Checklist_Click()
On Error GoTo Err_Plants_Higrade_Checklist_Click

    Dim stDocName As String

    stDocName = "Agreement_Lot_Higrade_Checklist"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Plants_Higrade_Checklist_Click:
    Exit Sub

Err_Plants_Higrade_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Plants_Higrade_Checklist_Click
    
End Sub

Private Sub Precooler_Destroy_Form_Click()

    Dim stDocName As String

    stDocName = "Precooler_Destroy Form"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Precooler_Destroy_Short_Form_Click()

    Dim stDocName As String

    stDocName = "Precooler_Destroy_Short Form"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Order_Form_Propagules_Click()
    On Error GoTo Err_Preview_Order_Form_Propagules_Click
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Rollover_Propagule_Agreement_Lot_End_fy"
    DoCmd.SetWarnings True
    
    DoCmd.OpenForm "Order_Pack_Form"
    
    [Forms]![Order_Pack_Form]![PRODUCT_GROUP] = "Propagule"
    
    Forms![Order_Pack_Form]![Order_Pack_form_Propagule].Visible = True
    DoCmd.GoToControl "Order_Pack_Form_Propagule"
    
    Forms![Order_Pack_Form]![Contract].Visible = False
    Forms![Order_Pack_Form]![Like_Stock_Type].Visible = False
    Forms![Order_Pack_Form]![Lift_Date].Visible = False
    Forms![Order_Pack_Form]![Order_Mod_Date].Visible = False
    Forms![Order_Pack_Form]![BorC].Visible = False
    Forms![Order_Pack_Form]![Order_Checklist].Visible = False
    Forms![Order_Pack_Form]![Order_Form].Visible = False
    Forms![Order_Pack_Form]![Order_Checklist_by_Lift_Date].Visible = False
    Forms![Order_Pack_Form]![Order_Form_By_Lift_Date].Visible = False
    Forms![Order_Pack_Form]![Processing_Quality_Inspection_Record].Visible = False
    Forms![Order_Pack_Form]!Processing_Quality_Inspection_Record_by_lift_date.Visible = False
    Forms![Order_Pack_Form]!Form_Style.Visible = False

Exit_Preview_Order_Form_Propagules_Click:
    Exit Sub

Err_Preview_Order_Form_Propagules_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Order_Form_Propagules_Click
    
End Sub

Private Sub Process_Order_spd_to_Clients_Click()
On Error GoTo Err_Process_Order_spd_to_Clients_Click

    Dim stDocName As String

    stDocName = "Processing_Orders_To_Client_Form"
    DoCmd.OpenForm stDocName

Exit_Process_Order_spd_to_Clients_Click:
    Exit Sub

Err_Process_Order_spd_to_Clients_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Process_Order_spd_to_Clients_Click
    
End Sub

Private Sub Processing_Table_Sign_Click()
On Error GoTo Err_Processing_Table_Sign_Click

    Dim stDocName As String

    stDocName = "NMIS_ORDERS_PROCESSING_TABLE_SIGN"
    DoCmd.OpenReport stDocName, acPreview

Exit_Processing_Table_Sign_Click:
    Exit Sub

Err_Processing_Table_Sign_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Processing_Table_Sign_Click
    
End Sub

Private Sub Product_Storage_Containers_Used_by_client_Click()
On Error GoTo Err_Product_Storage_Containers_Used_by_client_Click

    Dim stDocName As String

    stDocName = "Product_Storage_Containers_Used_by_client"
    DoCmd.OpenReport stDocName, acPreview

Exit_Product_Storage_Containers_Used_by_client_Click:
    Exit Sub

Err_Product_Storage_Containers_Used_by_client_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Storage_Containers_Used_by_client_Click
    
End Sub

Private Sub Product_Storage_Containers_Used_by_Stocktype_Click()
On Error GoTo Err_Product_Storage_Containers_Used_by_Stocktype_Click

    Dim stDocName As String

    stDocName = "Product_Storage_Containers_Used_Stocktype"
    DoCmd.OpenReport stDocName, acPreview

Exit_Product_Storage_Containers_Used_by_Stocktype_Click:
    Exit Sub

Err_Product_Storage_Containers_Used_by_Stocktype_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Storage_Containers_Used_by_Stocktype_Click
    
End Sub

Private Sub Product_Storage_Containers_Used_Click()

On Error GoTo Err_Product_Storage_Containers_Used_Click

    Dim stDocName As String

    stDocName = "Product_Storage_Containers_Used"
    DoCmd.OpenReport stDocName, acPreview

Exit_Product_Storage_Containers_Used_Click:
    Exit Sub

Err_Product_Storage_Containers_Used_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Storage_Containers_Used_Click
    
End Sub

Private Sub Product_Storage_Summary_Click()

    stDocName = "Product_Storage_Summary"
    
    DoCmd.OpenForm stDocName
    
End Sub

Private Sub Propagule_Harvest_Priorities_Click()

    Dim stDocName As String

    stDocName = "Propagule_Harvest_Priorties"
    DoCmd.OpenForm stDocName

End Sub

Private Sub Propagule_Harvest_Summary_Click()

    stDocName = "Native_Seed_Harvest_Summary"
    
    DoCmd.OpenForm stDocName
    
End Sub

Private Sub Review_Double_sort_CI_Click()

    Dim stDocName As String

    stDocName = "Review_Orders_DBSRT_Contract_Items"
    DoCmd.OpenQuery stDocName ', acPreview

End Sub

Private Sub Review_Double_sort_CI2_Click()

    Dim stDocName As String

    stDocName = "Review_Orders_DBSRT_Contract_Items"
    DoCmd.OpenQuery stDocName ', acPreview
End Sub

Private Sub Review_Order_Act_vs_Activity_AC_Click()

    Dim stDocName As String

    stDocName = "Review_Pack_Activities_Not_Equal_Order"
    DoCmd.OpenQuery stDocName ', acPreview
    
End Sub

Private Sub Review_Order_Contract_Item_Click()

    Dim stDocName As String

    stDocName = "NMIS_ORDERS Review_CItems"
    DoCmd.OpenQuery stDocName ', acPreview

End Sub

Private Sub Review_Order_Contract_Item2_Click()

    Dim stDocName As String

    stDocName = "NMIS_ORDERS Review_CItems"
    DoCmd.OpenQuery stDocName ', acPreview
End Sub

Private Sub Review_Orders_without_Contract_Items_Click()

    Dim stDocName As String

    stDocName = "NMIS_ORDERS Without_CItems"
    DoCmd.OpenQuery stDocName ', acPreview

End Sub

Private Sub Review_Orders_without_Contract_Items2_Click()

    Dim stDocName As String

    stDocName = "NMIS_ORDERS Without_CItems"
    DoCmd.OpenQuery stDocName ', acPreview

End Sub

Private Sub Review_Pack_Act_vs_Trans_totals_Click()
On Error GoTo Err_Review_Pack_Act_vs_Trans_totals_Click

    Dim stDocName As String
    
    stDocName = "Pack_act_tot_vs_trans_total_checklist"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Review_Pack_Act_vs_Trans_totals_Click:
    Exit Sub

Err_Review_Pack_Act_vs_Trans_totals_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Review_Pack_Act_vs_Trans_totals_Click
    
End Sub

Private Sub Shipped_to_Other_Than_Ordered_by_Click()
On Error GoTo Err_Shipped_to_Other_Than_Ordered_by_Click

    stDocName = "Orders_Shipped_to_other_than_Packed_For"
    DoCmd.OpenReport stDocName, acPreview


Exit_Shipped_to_Other_Than_Ordered_by_Click:
    Exit Sub

Err_Shipped_to_Other_Than_Ordered_by_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Shipped_to_Other_Than_Ordered_by_Click
    
End Sub

Private Sub Stock_Lifting_Worksheet_Click()
On Error GoTo Err_Stock_Lifting_Worksheet_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Stock_Lifting_Worksheet"
    DoCmd.OpenReport stDocName, acPreview

Exit_Stock_Lifting_Worksheet_Click:
    Exit Sub

Err_Stock_Lifting_Worksheet_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Stock_Lifting_Worksheet_Click
    
End Sub

Private Sub To_Be_Lifted_By_Age_Class_Click()
On Error GoTo Err_To_Be_Lifted_By_Age_Class_Click

    Dim stDocName As String

    stDocName = "TOLIFT_Summary"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_To_Be_Lifted_By_Age_Class_Click:
    Exit Sub

Err_To_Be_Lifted_By_Age_Class_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_To_Be_Lifted_By_Age_Class_Click
    
End Sub

Private Sub To_Be_Lifted_By_Age_Class_SPD_Click()
On Error GoTo Err_To_Be_Lifted_By_Age_Class_SPD_Click

    Dim stDocName As String

    stDocName = "TOLIFT_Summary_spd"
    
    DoCmd.OpenQuery stDocName
    
Exit_To_Be_Lifted_By_Age_Class_SPD_Click:
    Exit Sub

Err_To_Be_Lifted_By_Age_Class_SPD_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_To_Be_Lifted_By_Age_Class_SPD_Click
    
End Sub

Private Sub TOLIFT_REP_Click()

    Dim stDocName As String

    stDocName = "Lifting_Locations_Form"
    DoCmd.OpenForm stDocName

End Sub
Private Sub CmdOrdFrmLD_Click()
On Error GoTo Err_CmdOrdFrmLD_Click

    Dim stDocName As String

    stDocName = "ORDER_FORM_BY_LIFT_DATE"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdOrdFrmLD_Click:
    Exit Sub

Err_CmdOrdFrmLD_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdOrdFrmLD_Click
    
End Sub
Private Sub CmdSplusList_Click()
On Error GoTo Err_CmdSplusList_Click

    Dim stDocName As String

    stDocName = "NMIS_SPLUS_LIST"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdSplusList_Click:
    Exit Sub

Err_CmdSplusList_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdSplusList_Click
    
End Sub

Private Sub CmdStrRec_Click()
On Error GoTo Err_CmdStrRec_Click


    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    DoCmd.SetWarnings True
    
    Dim stDocName As String

    stDocName = "PRODUCT_STORAGE_RECORD"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdStrRec_Click:
    Exit Sub

Err_CmdStrRec_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdStrRec_Click
    
End Sub

Private Sub ORD_CONFIRM_REP_Click()
On Error GoTo Err_ORD_CONFIRM_REP_Click

    Dim stDocName As String

    'stDocName = "ORDER_CONFIRM_MT"
    stDocName = "NMIS_ORDER_COMFIRMATION_FORM"
    'DoCmd.SetWarnings False
    'DoCmd.OpenQuery "Order_Confirm_MT_Query"
    'DoCmd.OpenQuery "Order_Confirm_SS_MT_Query"
    'DoCmd.OpenQuery "Order_Confirm_MC_MT_Query"
    'DoCmd.SetWarnings True
    DoCmd.OpenForm stDocName
    'DoCmd.OpenReport stDocName, acPreview

Exit_ORD_CONFIRM_REP_Click:
    Exit Sub

Err_ORD_CONFIRM_REP_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_ORD_CONFIRM_REP_Click
    
End Sub

Private Sub CmdLftDailyContr_Click()
On Error GoTo Err_CmdLftDailyContr_Click

    Dim stDocName As String

    stDocName = "LOTS_LIFTED_DAILY_CONTRACT"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdLftDailyContr_Click:
    Exit Sub

Err_CmdLftDailyContr_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdLftDailyContr_Click
    
End Sub
Private Sub CmdLiftDaily_Click()
On Error GoTo Err_CmdLiftDaily_Click

    Dim stDocName As String

    stDocName = "LOTS_LIFTED_DAILY"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdLiftDaily_Click:
    Exit Sub

Err_CmdLiftDaily_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdLiftDaily_Click
    
End Sub
Private Sub CmdCIAccumLft_Click()
On Error GoTo Err_CmdCIAccumLft_Click

    Dim stDocName As String

    stDocName = "LIFT_CONTRACT_ACCUMULATED"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdCIAccumLft_Click:
    Exit Sub

Err_CmdCIAccumLft_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdCIAccumLft_Click
    
End Sub
Private Sub CmdPshiptkt_Click()
On Error GoTo Err_CmdPshiptkt_Click

    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    DoCmd.SetWarnings True
 
    Dim stDocName As String

    stDocName = "PRODUCT_TICKET"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdPshiptkt_Click:
    Exit Sub

Err_CmdPshiptkt_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdPshiptkt_Click
    
End Sub
Private Sub ToLftwoc_Click()
On Error GoTo Err_ToLftwoc_Click

    Dim stDocName As String

    stDocName = "TOLIFT_WOC"
    DoCmd.OpenReport stDocName, acPreview

Exit_ToLftwoc_Click:
    Exit Sub

Err_ToLftwoc_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_ToLftwoc_Click
    
End Sub
Private Sub CmdOrdStat_Click()
On Error GoTo Err_CmdOrdStat_Click

    Dim stDocName As String

    stDocName = "ORDER_STATUS"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdOrdStat_Click:
    Exit Sub

Err_CmdOrdStat_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_CmdOrdStat_Click
    
End Sub
Private Sub CmdLftWk_Click()
On Error GoTo Err_CmdLftWk_Click

    Dim stDocName As String

    stDocName = "LIFT_CONTRACT_WEEKLY"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdLftWk_Click:
    Exit Sub

Err_CmdLftWk_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdLftWk_Click
    
End Sub
Private Sub CmdSplsStat_Click()
On Error GoTo Err_CmdSplsStat_Click

    Dim stDocName As String

    stDocName = "SURPLUS_ORDER_STATUS"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdSplsStat_Click:
    Exit Sub

Err_CmdSplsStat_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdSplsStat_Click
    
End Sub
Private Sub BillPvwProc_Click()
On Error GoTo Err_BillPvwProc_Click

    DoCmd.OpenForm "CLIENT_BILLING_PREVIEW_BILLING"
    '  turns warning (about to update/delete...) off
    'DoCmd.SetWarnings False

    'DoCmd.OpenQuery "CLIENT_BILL_PREVIEW delete"
    'DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_ORDERS"
    'DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_DESTROY"
    'DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SHIP"
    'DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_XPLT"
    'DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_MISSING_BILLING_CODES_APPEND"
        
    'DoCmd.SetWarnings True

    'Dim stDocName As String

    'tDocName = "CLIENT_BILL_PREVIEW_LOTS"
    'DoCmd.OpenReport stDocName, acPreview


Exit_BillPvwProc_Click:
    Exit Sub

Err_BillPvwProc_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_BillPvwProc_Click
    
End Sub

Private Sub CliBillInv_Click()
On Error GoTo Err_CliBillInv_Click

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    'DoCmd.OpenQuery "CLIENT_BILL_3-3 at"  'Bills Client for Double Sort Hourly
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_wo_lot_detail"
    DoCmd.OpenReport stDocName, acPreview


Exit_CliBillInv_Click:
    Exit Sub

Err_CliBillInv_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBillInv_Click
    
End Sub

Private Sub CliBillwoShip_Click()
On Error GoTo Err_CliBillwoShip_Click

    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    'DoCmd.OpenQuery "CLIENT_BILL_3-3 at"  'Bills Client for Double Sort Hourly
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    DoCmd.SetWarnings True
    
    Client_Bill_Data_Processed = False

    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_w_lot_detail"
    DoCmd.OpenReport stDocName, acPreview


Exit_CliBillwoShip_Click:
    Exit Sub

Err_CliBillwoShip_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBillwoShip_Click
    
End Sub
Private Sub CliBillShip_Click()
On Error GoTo Err_CliBillShip_Click

    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    
    DoCmd.SetWarnings True
    
    Client_Bill_Data_Processed = False
   
    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE"
    DoCmd.OpenReport stDocName, acPreview


Exit_CliBillShip_Click:
    Exit Sub

Err_CliBillShip_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBillShip_Click
    
End Sub
Private Sub CliBillwoXPLT_Click()
On Error GoTo Err_CliBillwoXPLT_Click

    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
        
    DoCmd.SetWarnings True
    Client_Bill_Data_Processed = False
    
    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE"
    DoCmd.OpenReport stDocName, acPreview


Exit_CliBillwoXPLT_Click:
    Exit Sub

Err_CliBillwoXPLT_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBillwoXPLT_Click
    
End Sub

Private Sub TOLIFT_REP_Condensed_Click()
    Dim stDocName As String

    stDocName = "TOLIFT_Condensed"
    DoCmd.OpenReport stDocName, acPreview

End Sub
Private Sub CmdOrdFrmBulk_Click()
On Error GoTo Err_CmdOrdFrmBulk_Click
    
    DoCmd.OpenForm "Order_Pack_Form"
    
    [Forms]![Order_Pack_Form]![PRODUCT_GROUP] = "Plant"
    
    Forms![Order_Pack_Form]![Order_Form].Visible = True
    DoCmd.GoToControl "Order_Form"
    
    Forms![Order_Pack_Form]![Like_Stock_Type].Visible = True
    Forms![Order_Pack_Form]![Lift_Date].Visible = True
    Forms![Order_Pack_Form]![Order_Mod_Date].Visible = True
    Forms![Order_Pack_Form]![BorC].Visible = True
    Forms![Order_Pack_Form]![Order_Checklist].Visible = True
    Forms![Order_Pack_Form]![Order_Checklist_by_Lift_Date].Visible = True
    Forms![Order_Pack_Form]![Order_Form_By_Lift_Date].Visible = True
    Forms![Order_Pack_Form]![Order_Pack_form_Propagule].Visible = True
    Forms![Order_Pack_Form]![Order_Pack_form_Propagule].Visible = False
    Forms![Order_Pack_Form]![Processing_Quality_Inspection_Record].Visible = True
    Forms![Order_Pack_Form]![Processing_Quality_Inspection_Record_by_lift_date].Visible = True

Exit_CmdOrdFrmBulk_Click:
    Exit Sub

Err_CmdOrdFrmBulk_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdOrdFrmBulk_Click
    
End Sub
Private Sub CmdSplusLstFS_Click()
On Error GoTo Err_CmdSplusLstFS_Click

    Dim stDocName As String

    stDocName = "NMIS_SPLUS_LIST_FS"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdSplusLstFS_Click:
    Exit Sub

Err_CmdSplusLstFS_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdSplusLstFS_Click
    
End Sub
Private Sub CmdPrfPk_Click()
On Error GoTo Err_CmdPrfPk_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Processing_Review_by_Activity_Date"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_CmdPrfPk_Click:
    Exit Sub

Err_CmdPrfPk_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdPrfPk_Click
    
End Sub

Private Sub CmdProofAll_Click()
On Error GoTo Err_CmdProofAll_Click

    stDocName = "PROOF_ALL"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdProofAll_Click:
    Exit Sub

Err_CmdProofAll_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdProofAll_Click
    
End Sub
Private Sub Command57_Click()
On Error GoTo Err_Command57_Click

    Dim stDocName As String

    stDocName = "LOTS_WO_PACK_AMOUNTS"
    DoCmd.OpenReport stDocName, acPreview

Exit_Command57_Click:
    Exit Sub

Err_Command57_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command57_Click
    
End Sub
Private Sub CmdLotswoPack_Click()
On Error GoTo Err_CmdLotswoPack_Click

    Dim stDocName As String
    
    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False
    
    DoCmd.OpenQuery "PROOF_ALL Query"
    DoCmd.OpenQuery "PROOF_ALL_CPR Query"
    DoCmd.OpenQuery "PROOF_ALL_AGR Query"
    DoCmd.OpenQuery "PROOF_ALL_ORD Query"
    DoCmd.OpenQuery "PROOF_ALL_SOW Query"
    DoCmd.OpenQuery "PROOF_ALL_LFT Query"
    DoCmd.OpenQuery "PROOF_ALL_LCT Query"
    DoCmd.OpenQuery "PROOF_ALL_PC Query"
    
    DoCmd.SetWarnings True
    
    stDocName = "LOTS_WO_PACK_AMOUNTS"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdLotswoPack_Click:
    Exit Sub

Err_CmdLotswoPack_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdLotswoPack_Click
    
End Sub
Private Sub CmdFldCntnrDensity_Click()
On Error GoTo Err_CmdFldCntnrDensity_Click

    Dim stDocName As String

    stDocName = "LIFT_FIELD_CONTAINER_DENSITY"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdFldCntnrDensity_Click:
    Exit Sub

Err_CmdFldCntnrDensity_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdFldCntnrDensity_Click
    
End Sub
Private Sub CmdLotswoLift_Click()
On Error GoTo Err_CmdLotswoLift_Click

    Dim stDocName As String

    stDocName = "LOTS_WO_LIFT_AMOUNTS"
    
    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False
    
    DoCmd.OpenQuery "PROOF_ALL Query"
    DoCmd.OpenQuery "PROOF_ALL_CPR Query"
    DoCmd.OpenQuery "PROOF_ALL_AGR Query"
    DoCmd.OpenQuery "PROOF_ALL_ORD Query"
    DoCmd.OpenQuery "PROOF_ALL_SOW Query"
    DoCmd.OpenQuery "PROOF_ALL_LFT Query"
    DoCmd.OpenQuery "PROOF_ALL_LCT Query"
    DoCmd.OpenQuery "PROOF_ALL_PC Query"
    
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdLotswoLift_Click:
    Exit Sub

Err_CmdLotswoLift_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdLotswoLift_Click
    
End Sub
Private Sub CmdXPLT_Click()
On Error GoTo Err_CmdXPLT_Click

    Dim stDocName As String

    stDocName = "XPLT_AT_JHSN"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdXPLT_Click:
    Exit Sub

Err_CmdXPLT_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdXPLT_Click
    
End Sub