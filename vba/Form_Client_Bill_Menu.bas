Option Compare Database

Private Sub Begin_Date_AfterUpdate()
    
    Client_Bill_Data_Processed = False
    
End Sub

Private Sub BillBarerootDeposit_AfterUpdate()

    Client_Bill_Data_Processed = False
    
End Sub

Private Sub BillBarerootHoldDeposit_AfterUpdate()

    Client_Bill_Data_Processed = False
  
End Sub

Private Sub BillContainerDeposit_AfterUpdate()

    Client_Bill_Data_Processed = False
    
End Sub

Private Sub BillContainerHoldDeposit_AfterUpdate()

    Client_Bill_Data_Processed = False
  
End Sub

Private Sub BillLowGermSurcharge_AfterUpdate()

    Client_Bill_Data_Processed = False
    
End Sub

Private Sub BillPvwProc_Click()
On Error GoTo Err_BillPvwProc_Click

    DoCmd.OpenForm "CLIENT_BILLING_PREVIEW_BILLING2"
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

Private Sub BillQP1C_AfterUpdate()

    Client_Bill_Data_Processed = False
    
End Sub

Private Sub BillSmallLotSurcharge_AfterUpdate()

    Client_Bill_Data_Processed = False
    
End Sub

Private Sub CliBilInv_Lot_Detail_Click()
On Error GoTo Err_CliBilInv_Lot_Detail_Click

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at" ' PACK, CPROC, PXPLT
    'DoCmd.OpenQuery "CLIENT_BILL_1b at" 'bills qplug transplant first cycle from LOTINV
    DoCmd.OpenQuery "CLIENT_BILL_2 at" 'PDEST, FDEST, SDEST, CNDEST
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at" 'DBLSRT, SCSL, SCG1, SCG2, SCND
    DoCmd.OpenQuery "CLIENT_BILL_3-1b at" 'bills qplug transplant first cycle surcharge for low germ/small lot
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at" 'Storage containers
    DoCmd.OpenQuery "CLIENT_BILL_3-3 at" 'Bills Client for Hourly
    'DoCmd.OpenQuery "CLIENT_BILL_3-3c at" 'Bed Feet Surcharge non-traditional 1+0
    DoCmd.OpenQuery "CLIENT_BILL_4 at" 'Container loading
    DoCmd.OpenQuery "CLIENT_BILL_5 at" 'CDEST
    DoCmd.OpenQuery "CLIENT_BILL_6 at" 'Transplanting to Pots
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at" 'Transplanting Nursery Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-1b at" 'Transplanting Client Owned Foreign Source
    DoCmd.OpenQuery "CLIENT_BILL_6-1c at" 'Striking Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at" 'Transplanting Hand
    DoCmd.OpenQuery "CLIENT_BILL_7 at" 'TSO Billing
    DoCmd.OpenQuery "CLIENT_BILL_7_3 at" 'Tickets with Foreign Source shipping only"
    'DoCmd.OpenQuery "CLIENT_BILL_8 at" 'Foreign Source Transplanting Old no longer used.
    
    'Bill for Deposits and surcharges
    
    If [BillContainerDeposit] Then
        DoCmd.OpenQuery "CLIENT_BILL_9 at" 'Container Deposit
    End If
    If [BillContainerHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d2 at" 'Container Holdover Deposit
    End If
    If [BillBarerootDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_9b at" 'Bareroot Deposit
    End If
    If [BillBarerootHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d at" 'Bareroot Holdover Deposit
    End If
    
    If [BillSmallLotSurcharge] Then
        DoCmd.OpenQuery "CLIENT_BILL_9-1 at" 'Container Deposit Small Container SCSL < 2000
        DoCmd.OpenQuery "CLIENT_BILL_9-2 at" 'Container Deposit Large Container SCSL < 200 (MT251, TP49, TP414)
    End If
    If [BillLowGermSurcharge] Then
        'DoCmd.OpenQuery "CLIENT_BILL_9-3 at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG1, SCLG2)
        DoCmd.OpenQuery "CLIENT_BILL_9-3b at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG3)
    End If
    If [BillQP1C] Then
        DoCmd.OpenQuery "CLIENT_BILL_10 at" 'Qplug Transplant 1st Cycle
        'DoCmd.OpenQuery "CLIENT_BILL_10-1 at" 'Qplug Transplant 1st Cycle SCSL < 2000
        'DoCmd.OpenQuery "CLIENT_BILL_10-3 at" 'Qplug Transplant 1st Cycle Low Germ
    End If
    
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_w_lot_detail"
    DoCmd.OpenReport stDocName, acPreview
    

Exit_CliBilInv_Lot_Detail_Click:
    Exit Sub

Err_CliBilInv_Lot_Detail_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBilInv_Lot_Detail_Click
    
End Sub

Private Sub CliBilInv_Lot_Detail_spd_Click()
On Error GoTo Err_CliBilInv_Lot_Detail_spd_Click

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    DoCmd.OpenQuery "CLIENT_BILL_1b at" 'bills qplug transplant first cycle from LOTINV
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1b at" 'bills qplug transplant first cycle surcharge for low germ/small lot
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-3 at" 'Bills Client for Hourly
    DoCmd.OpenQuery "CLIENT_BILL_3-3c at"
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    DoCmd.OpenQuery "CLIENT_BILL_6 at" 'Transplanting to Pots
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1b at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1c at" 'Striking Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_7_3 at" 'Tickets with Foreign Source shipping only"
    'DoCmd.OpenQuery "CLIENT_BILL_8 at"
    
    'Bill for Deposits and surcharges
    
    If [BillContainerDeposit] Then
        DoCmd.OpenQuery "CLIENT_BILL_9 at" 'Container Deposit
    End If
    If [BillContainerHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d2 at" 'Container Holdover Deposit
    End If
    If [BillBarerootDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_9b at" 'Bareroot Deposit
    End If
    If [BillBarerootHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d at" 'Bareroot Holdover Deposit
    End If
    
    If [BillSmallLotSurcharge] Then
        DoCmd.OpenQuery "CLIENT_BILL_9-1 at" 'Container Deposit Small Container SCSL < 2000
        DoCmd.OpenQuery "CLIENT_BILL_9-2 at" 'Container Deposit Large Container SCSL < 200 (MT251, TP49, TP414)
    End If
    If [BillLowGermSurcharge] Then
        'DoCmd.OpenQuery "CLIENT_BILL_9-3 at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG1, SCLG2)
        DoCmd.OpenQuery "CLIENT_BILL_9-3b at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG3)
    End If
    
    If [BillQP1C] Then
        DoCmd.OpenQuery "CLIENT_BILL_10 at" 'Qplug Transplant 1st Cycle
        'DoCmd.OpenQuery "CLIENT_BILL_10-1 at" 'Qplug Transplant 1st Cycle SCSL < 2000
        'DoCmd.OpenQuery "CLIENT_BILL_10-3 at" 'Qplug Transplant 1st Cycle Low Germ
    End If
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "Client_bill_invoice_w_lot_detail_spd"
    DoCmd.OpenQuery stDocName
    
Exit_CliBilInv_Lot_Detail_spd_Click:
    Exit Sub

Err_CliBilInv_Lot_Detail_spd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBilInv_Lot_Detail_spd_Click
    
End Sub

Private Sub CliBilInv_wo_Lot_Detail_spd_Click()
On Error GoTo Err_CliBilInv_wo_Lot_Detail_spd_Click

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    DoCmd.OpenQuery "CLIENT_BILL_1b at" 'bills qplug transplant first cycle from LOTINV
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1b at" 'bills qplug transplant first cycle surcharge for low germ/small lot
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-3 at" 'Bills Client for Hourly
    DoCmd.OpenQuery "CLIENT_BILL_3-3c at"
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    DoCmd.OpenQuery "CLIENT_BILL_6 at" 'Transplanting to Pots
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1b at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1c at" 'Striking Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_7_3 at" 'Tickets with Foreign Source shipping only"
    'DoCmd.OpenQuery "CLIENT_BILL_8 at"
    
    'Bill for Deposits and surcharges
    
    If [BillContainerDeposit] Then
        DoCmd.OpenQuery "CLIENT_BILL_9 at" 'Container Deposit
    End If
    If [BillContainerHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d2 at" 'Container Holdover Deposit
    End If
    If [BillBarerootDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_9b at" 'Bareroot Deposit
    End If
    If [BillBarerootHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d at" 'Bareroot Holdover Deposit
    End If
    
    If [BillSmallLotSurcharge] Then
        DoCmd.OpenQuery "CLIENT_BILL_9-1 at" 'Container Deposit Small Container SCSL < 2000
        DoCmd.OpenQuery "CLIENT_BILL_9-2 at" 'Container Deposit Large Container SCSL < 200 (MT251, TP49, TP414)
    End If
    If [BillLowGermSurcharge] Then
        'DoCmd.OpenQuery "CLIENT_BILL_9-3 at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG1, SCLG2)
        DoCmd.OpenQuery "CLIENT_BILL_9-3b at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG3)
    End If
    
    If [BillQP1C] Then
        DoCmd.OpenQuery "CLIENT_BILL_10 at" 'Qplug Transplant 1st Cycle
        'DoCmd.OpenQuery "CLIENT_BILL_10-1 at" 'Qplug Transplant 1st Cycle SCSL < 2000
        'DoCmd.OpenQuery "CLIENT_BILL_10-3 at" 'Qplug Transplant 1st Cycle Low Germ
    End If
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "Client_bill_invoice_wo_lot_detail_spd"
    DoCmd.OpenQuery stDocName
    
Exit_CliBilInv_wo_Lot_Detail_spd_Click:
    Exit Sub

Err_CliBilInv_wo_Lot_Detail_spd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBilInv_wo_Lot_Detail_spd_Click
    
End Sub

Private Sub CliBillInv_Click()
On Error GoTo Err_CliBillInv_Click

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    'DoCmd.OpenQuery "CLIENT_BILL_1b at" 'bills qplug transplant first cycle from LOTINV
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1b at" 'bills qplug transplant first cycle surcharge for low germ/small lot
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-3 at"  'Bills Client for Hourly
    DoCmd.OpenQuery "CLIENT_BILL_3-3c at"
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    DoCmd.OpenQuery "CLIENT_BILL_6 at" 'Transplanting to Pots
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1b at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1c at" 'Striking Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_7_3 at" 'Tickets with Foreign Source shipping only"
    'DoCmd.OpenQuery "CLIENT_BILL_8 at"
    
    'Bill for Deposits and surcharges
    
    If [BillContainerDeposit] Then
        DoCmd.OpenQuery "CLIENT_BILL_9 at" 'Container Deposit
    End If
    If [BillContainerHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d2 at" 'Container Holdover Deposit
    End If
    If [BillBarerootDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_9b at" 'Bareroot Deposit
    End If
    If [BillBarerootHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d at" 'Bareroot Holdover Deposit
    End If
    
    If [BillSmallLotSurcharge] Then
        DoCmd.OpenQuery "CLIENT_BILL_9-1 at" 'Container Deposit Small Container SCSL < 2000
        DoCmd.OpenQuery "CLIENT_BILL_9-2 at" 'Container Deposit Large Container SCSL < 200 (MT251, TP49, TP414)
    End If
    If [BillLowGermSurcharge] Then
        'DoCmd.OpenQuery "CLIENT_BILL_9-3 at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG1, SCLG2)
        DoCmd.OpenQuery "CLIENT_BILL_9-3b at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG3)
    End If
    
    If [BillQP1C] Then
        DoCmd.OpenQuery "CLIENT_BILL_10 at" 'Qplug Transplant 1st Cycle
        'DoCmd.OpenQuery "CLIENT_BILL_10-1 at" 'Qplug Transplant 1st Cycle SCSL < 2000
        'DoCmd.OpenQuery "CLIENT_BILL_10-3 at" 'Qplug Transplant 1st Cycle Low Germ
    End If
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

Private Sub CliBillShip_Click()
On Error GoTo Err_CliBillShip_Click

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    'DoCmd.OpenQuery "CLIENT_BILL_1b at" 'bills qplug transplant first cycle from LOTINV
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1b at" 'bills qplug transplant first cycle surcharge for low germ/small lot
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-3 at"  'Bills Client for Hourly
    DoCmd.OpenQuery "CLIENT_BILL_3-3c at"
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    DoCmd.OpenQuery "CLIENT_BILL_6 at" 'Transplanting to Pots
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1b at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1c at" 'Striking Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_7_3 at" 'Tickets with Foreign Source shipping only"
    'DoCmd.OpenQuery "CLIENT_BILL_8 at"
    
    'Bill for Deposits and surcharges
    
    If [BillContainerDeposit] Then
        DoCmd.OpenQuery "CLIENT_BILL_9 at" 'Container Deposit
    End If
    If [BillContainerHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d2 at" 'Container Holdover Deposit
    End If
    If [BillBarerootDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_9b at" 'Bareroot Deposit
    End If
    If [BillBarerootHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d at" 'Bareroot Holdover Deposit
    End If
    
    If [BillSmallLotSurcharge] Then
        DoCmd.OpenQuery "CLIENT_BILL_9-1 at" 'Container Deposit Small Container SCSL < 2000
        DoCmd.OpenQuery "CLIENT_BILL_9-2 at" 'Container Deposit Large Container SCSL < 200 (MT251, TP49, TP414)
    End If
    If [BillLowGermSurcharge] Then
        'DoCmd.OpenQuery "CLIENT_BILL_9-3 at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG1, SCLG2)
        DoCmd.OpenQuery "CLIENT_BILL_9-3b at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG3)
    End If
    
    If [BillQP1C] Then
        DoCmd.OpenQuery "CLIENT_BILL_10 at" 'Qplug Transplant 1st Cycle
        'DoCmd.OpenQuery "CLIENT_BILL_10-1 at" 'Qplug Transplant 1st Cycle SCSL < 2000
        'DoCmd.OpenQuery "CLIENT_BILL_10-3 at" 'Qplug Transplant 1st Cycle Low Germ
    End If
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_Shipping"
    DoCmd.OpenReport stDocName, acPreview


Exit_CliBillShip_Click:
    Exit Sub

Err_CliBillShip_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBillShip_Click
    
End Sub

Private Sub CliBilSummary_by_Client_Click()
On Error GoTo Err_CliBilSummary_by_Client_Click

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    'DoCmd.OpenQuery "CLIENT_BILL_1b at" 'bills qplug transplant first cycle from LOTINV
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1b at" 'bills qplug transplant first cycle surcharge for low germ/small lot
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-3 at"  'Bills Client for Hourly
    DoCmd.OpenQuery "CLIENT_BILL_3-3c at"
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    DoCmd.OpenQuery "CLIENT_BILL_6 at" 'Transplanting to Pots
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1b at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1c at" 'Striking Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_7_3 at" 'Tickets with Foreign Source shipping only"
    'DoCmd.OpenQuery "CLIENT_BILL_8 at"
    
    'Bill for Deposits and surcharges
    
    If [BillContainerDeposit] Then
        DoCmd.OpenQuery "CLIENT_BILL_9 at" 'Container Deposit
    End If
    If [BillContainerHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d2 at" 'Container Holdover Deposit
    End If
    If [BillBarerootDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_9b at" 'Bareroot Deposit
    End If
    If [BillBarerootHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d at" 'Bareroot Holdover Deposit
    End If
    
    If [BillSmallLotSurcharge] Then
        DoCmd.OpenQuery "CLIENT_BILL_9-1 at" 'Container Deposit Small Container SCSL < 2000
        DoCmd.OpenQuery "CLIENT_BILL_9-2 at" 'Container Deposit Large Container SCSL < 200 (MT251, TP49, TP414)
    End If
    If [BillLowGermSurcharge] Then
        'DoCmd.OpenQuery "CLIENT_BILL_9-3 at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG1, SCLG2)
        DoCmd.OpenQuery "CLIENT_BILL_9-3b at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG3)
    End If
    
    If [BillQP1C] Then
        DoCmd.OpenQuery "CLIENT_BILL_10 at" 'Qplug Transplant 1st Cycle
        'DoCmd.OpenQuery "CLIENT_BILL_10-1 at" 'Qplug Transplant 1st Cycle SCSL < 2000
        'DoCmd.OpenQuery "CLIENT_BILL_10-3 at" 'Qplug Transplant 1st Cycle Low Germ
    End If
    'DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_Client_Checklist"
    DoCmd.OpenReport stDocName, acPreview
    
    DoCmd.SetWarnings True
    
Exit_CliBilSummary_by_Client_Click:
    Exit Sub

Err_CliBilSummary_by_Client_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBilSummary_by_Client_Click
End Sub

Private Sub CliBilSummary_Click()

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    'DoCmd.OpenQuery "CLIENT_BILL_1b at" 'bills qplug transplant first cycle from LOTINV
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1b at" 'bills qplug transplant first cycle surcharge for low germ/small lot
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-3 at"  'Bills Client for Hourly
    DoCmd.OpenQuery "CLIENT_BILL_3-3c at"
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6 at" 'Transplanting to Pots
    DoCmd.OpenQuery "CLIENT_BILL_6-1b at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1c at" 'Striking Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_7_3 at" 'Tickets with Foreign Source shipping only"
    'DoCmd.OpenQuery "CLIENT_BILL_8 at"
    
    'Bill for Deposits and surcharges
    
    If [BillContainerDeposit] Then
        DoCmd.OpenQuery "CLIENT_BILL_9 at" 'Container Deposit
    End If
    If [BillContainerHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d2 at" 'Container Holdover Deposit
    End If
    If [BillBarerootDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_9b at" 'Bareroot Deposit
    End If
    If [BillBarerootHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d at" 'Bareroot Holdover Deposit
    End If
    
    If [BillSmallLotSurcharge] Then
        DoCmd.OpenQuery "CLIENT_BILL_9-1 at" 'Container Deposit Small Container SCSL < 2000
        DoCmd.OpenQuery "CLIENT_BILL_9-2 at" 'Container Deposit Large Container SCSL < 200 (MT251, TP49, TP414)
    End If
    If [BillLowGermSurcharge] Then
        'DoCmd.OpenQuery "CLIENT_BILL_9-3 at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG1, SCLG2)
        DoCmd.OpenQuery "CLIENT_BILL_9-3b at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG3)
    End If
    
    If [BillQP1C] Then
        DoCmd.OpenQuery "CLIENT_BILL_10 at" 'Qplug Transplant 1st Cycle
        'DoCmd.OpenQuery "CLIENT_BILL_10-1 at" 'Qplug Transplant 1st Cycle SCSL < 2000
        'DoCmd.OpenQuery "CLIENT_BILL_10-3 at" 'Qplug Transplant 1st Cycle Low Germ
    End If
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_COMBINED"
    DoCmd.OpenReport stDocName, acPreview
    
    DoCmd.SetWarnings True
    
End Sub

Private Sub CliBilSummary_spd_Click()
On Error GoTo Err_CliBilSummary_spd_Click

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    DoCmd.OpenQuery "CLIENT_BILL_1b at" 'bills qplug transplant first cycle from LOTINV
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1b at" 'bills qplug transplant first cycle surcharge for low germ/small lot
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-3 at" 'Bills Client for Hourly
    DoCmd.OpenQuery "CLIENT_BILL_3-3c at"
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    DoCmd.OpenQuery "CLIENT_BILL_6 at" 'Transplanting to Pots
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1b at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1c at" 'Striking Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_7_3 at" 'Tickets with Foreign Source shipping only"
    'DoCmd.OpenQuery "CLIENT_BILL_8 at"
    
    'Bill for Deposits and surcharges
    
    If [BillContainerDeposit] Then
        DoCmd.OpenQuery "CLIENT_BILL_9 at" 'Container Deposit
    End If
    If [BillContainerHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d2 at" 'Container Holdover Deposit
    End If
    If [BillBarerootDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_9b at" 'Bareroot Deposit
    End If
    If [BillBarerootHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d at" 'Bareroot Holdover Deposit
    End If
    
    If [BillSmallLotSurcharge] Then
        DoCmd.OpenQuery "CLIENT_BILL_9-1 at" 'Container Deposit Small Container SCSL < 2000
        DoCmd.OpenQuery "CLIENT_BILL_9-2 at" 'Container Deposit Large Container SCSL < 200 (MT251, TP49, TP414)
    End If
    If [BillLowGermSurcharge] Then
        'DoCmd.OpenQuery "CLIENT_BILL_9-3 at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG1, SCLG2)
        DoCmd.OpenQuery "CLIENT_BILL_9-3b at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG3)
    End If
    
    If [BillQP1C] Then
        DoCmd.OpenQuery "CLIENT_BILL_10 at" 'Qplug Transplant 1st Cycle
        'DoCmd.OpenQuery "CLIENT_BILL_10-1 at" 'Qplug Transplant 1st Cycle SCSL < 2000
        'DoCmd.OpenQuery "CLIENT_BILL_10-3 at" 'Qplug Transplant 1st Cycle Low Germ
    End If
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_COMBINED_spd"
    DoCmd.OpenQuery stDocName
    
Exit_CliBilSummary_spd_Click:
    Exit Sub

Err_CliBilSummary_spd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBilSummary_spd_Click
    
End Sub

Private Sub Client_Bill_Checklist_Click()
On Error GoTo Err_Client_Bill_Checklist_Click

    Dim stDocName As String

    stDocName = "Client_Bill_Invoice_Checklist"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Client_Bill_Checklist_Click:
    Exit Sub

Err_Client_Bill_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Client_Bill_Checklist_Click
   

End Sub

Private Sub Client_Billing_Summary_Click()
On Error GoTo Err_Client_Billing_Summary_Click

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at" ' PACK, CPROC, PXPLT
    'DoCmd.OpenQuery "CLIENT_BILL_1b at" 'bills qplug transplant first cycle from LOTINV
    DoCmd.OpenQuery "CLIENT_BILL_2 at" 'PDEST, FDEST, SDEST
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at" 'DBLSRT, SCSL, SCG1, SCG2, SCND
    DoCmd.OpenQuery "CLIENT_BILL_3-1b at" 'bills qplug transplant first cycle surcharge for low germ/small lot
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at" 'Storage containers
    DoCmd.OpenQuery "CLIENT_BILL_3-3 at" 'Bills Client for Hourly
    'DoCmd.OpenQuery "CLIENT_BILL_3-3c at" 'Bed Feet Surcharge non-traditional 1+0
    DoCmd.OpenQuery "CLIENT_BILL_4 at" 'Container loading
    DoCmd.OpenQuery "CLIENT_BILL_5 at" 'CDEST
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at" 'Transplanting Nursery Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-1b at" 'Transplanting Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-1c at" 'Striking Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at" 'Transplanting Hand
    DoCmd.OpenQuery "CLIENT_BILL_7 at" 'TSO Billing
    DoCmd.OpenQuery "CLIENT_BILL_7_3 at" 'Tickets with Foreign Source shipping only"
    'DoCmd.OpenQuery "CLIENT_BILL_8 at" 'Foreign Source Transplanting Old no longer used.
    
    'Bill for Deposits and surcharges
    
    If [BillContainerDeposit] Then
        DoCmd.OpenQuery "CLIENT_BILL_9 at" 'Container Deposit
    End If
    If [BillContainerHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d2 at" 'Container Holdover Deposit
    End If
    If [BillBarerootDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_9b at" 'Bareroot Deposit
    End If
    If [BillBarerootHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d at" 'Bareroot Holdover Deposit
    End If
    
    If [BillSmallLotSurcharge] Then
        DoCmd.OpenQuery "CLIENT_BILL_9-1 at" 'Container Deposit Small Container SCSL < 2000
        DoCmd.OpenQuery "CLIENT_BILL_9-2 at" 'Container Deposit Large Container SCSL < 200 (MT251, TP49, TP414)
    End If
    If [BillLowGermSurcharge] Then
        'DoCmd.OpenQuery "CLIENT_BILL_9-3 at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG1, SCLG2)
        DoCmd.OpenQuery "CLIENT_BILL_9-3b at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG3)
    End If
    
    If [BillQP1C] Then
        DoCmd.OpenQuery "CLIENT_BILL_10 at" 'Qplug Transplant 1st Cycle
        'DoCmd.OpenQuery "CLIENT_BILL_10-1 at" 'Qplug Transplant 1st Cycle SCSL < 2000
        'DoCmd.OpenQuery "CLIENT_BILL_10-3 at" 'Qplug Transplant 1st Cycle Low Germ
    End If
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If
    
    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_COMBINED2"
    DoCmd.OpenReport stDocName, acPreview
    
    DoCmd.SetWarnings True
        
Exit_Client_Billing_Summary_Click:
    Exit Sub

Err_Client_Billing_Summary_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Client_Billing_Summary_Click
    
End Sub

Private Sub Client_Billing_Summary_Detail_Click()
On Error GoTo Err_Client_Billing_Summary_Detail_Click
'  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at" ' PACK, CPROC, PXPLT
    'DoCmd.OpenQuery "CLIENT_BILL_1b at" 'bills qplug transplant first cycle from LOTINV
    DoCmd.OpenQuery "CLIENT_BILL_2 at" 'PDEST, FDEST, SDEST
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at" 'DBLSRT, SCSL, SCG1, SCG2, SCND
    DoCmd.OpenQuery "CLIENT_BILL_3-1b at" 'bills qplug transplant first cycle surcharge for low germ/small lot
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at" 'Storage containers
    DoCmd.OpenQuery "CLIENT_BILL_3-3 at" 'Bills Client for Hourly
    'DoCmd.OpenQuery "CLIENT_BILL_3-3c at" 'Bed Feet Surcharge non-traditional 1+0
    DoCmd.OpenQuery "CLIENT_BILL_4 at" 'Container loading
    DoCmd.OpenQuery "CLIENT_BILL_5 at" 'CDEST
    DoCmd.OpenQuery "CLIENT_BILL_6 at" 'Transplanting to Pots
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at" 'Transplanting Nursery Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-1b at" 'Transplanting Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at" 'Transplanting Hand
    DoCmd.OpenQuery "CLIENT_BILL_6-1c at" 'Striking Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_7 at" 'TSO Billing
    DoCmd.OpenQuery "CLIENT_BILL_7_3 at" 'Tickets with Foreign Source shipping only"
    'DoCmd.OpenQuery "CLIENT_BILL_8 at" 'Foreign Source Transplanting Old no longer used.
    
    'Bill for Deposits and surcharges
    
    If [BillContainerDeposit] Then
        DoCmd.OpenQuery "CLIENT_BILL_9 at" 'Container Deposit
    End If
    If [BillContainerHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d2 at" 'Container Holdover Deposit
    End If
    If [BillBarerootDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_9b at" 'Bareroot Deposit
    End If
    If [BillBarerootHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d at" 'Bareroot Holdover Deposit
    End If
    
    If [BillSmallLotSurcharge] Then
        DoCmd.OpenQuery "CLIENT_BILL_9-1 at" 'Container Deposit Small Container SCSL < 2000
        DoCmd.OpenQuery "CLIENT_BILL_9-2 at" 'Container Deposit Large Container SCSL < 200 (MT251, TP49, TP414)
    End If
    If [BillLowGermSurcharge] Then
        'DoCmd.OpenQuery "CLIENT_BILL_9-3 at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG1, SCLG2)
        DoCmd.OpenQuery "CLIENT_BILL_9-3b at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG3)
    End If
    
    If [BillQP1C] Then
        DoCmd.OpenQuery "CLIENT_BILL_10 at" 'Qplug Transplant 1st Cycle
        'DoCmd.OpenQuery "CLIENT_BILL_10-1 at" 'Qplug Transplant 1st Cycle SCSL < 2000
        'DoCmd.OpenQuery "CLIENT_BILL_10-3 at" 'Qplug Transplant 1st Cycle Low Germ(SCLG1, SCLG2)
    End If
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
    
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_COMBINED"
    DoCmd.OpenReport stDocName, acPreview
    
    DoCmd.SetWarnings True
    

Exit_Client_Billing_Summary_Detail_Click:
    Exit Sub

Err_Client_Billing_Summary_Detail_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Client_Billing_Summary_Detail_Click
    
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)

    CONTACT_CN = Null
    
End Sub

Private Sub Contact_CN_Enter()

    CONTACT_CN.Requery
    
End Sub

Private Sub End_Date_AfterUpdate()
    
    Client_Bill_Data_Processed = False
    
End Sub

Private Sub END_DATE_Exit(Cancel As Integer)

    If [BEGIN_DATE] > [END_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
        MsgBox BEGIN_DATE
        MsgBox END_DATE
        DoCmd.GoToControl "end_date"
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "061019" Then
        [BillContainerDeposit] = True
        BillSmallLotSurcharge = True
        BillLowGermSurcharge = True
        [SurchargePCT] = 100
        [BillQP1C] = True
        If Forms![Switchboard]![FY_For_Reports] < 2019 Then
            [BillContainerHoldDeposit] = False
            [BillBarerootDeposit] = False
            [BillBarerootHoldDeposit] = False
        Else
            [BillContainerHoldDeposit] = True
            [BillBarerootDeposit] = True
            [BillBarerootHoldDeposit] = True
        End If
    Else
        [BillContainerDeposit] = False
        [BillContainerHoldDeposit] = False
        [BillBarerootDeposit] = False
        [BillBarerootHoldDeposit] = False
        BillSmallLotSurcharge = False
        BillLowGermSurcharge = False
        [SurchargePCT] = ""
        [BillQP1C] = False
    End If
    
End Sub

Private Sub IncomeDistributionSpd_Click()
On Error GoTo Err_IncomeDistributionSpd_Click

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    DoCmd.OpenQuery "CLIENT_BILL_1b at" 'bills qplug transplant first cycle from LOTINV
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1b at" 'bills qplug transplant first cycle surcharge for low germ/small lot
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-3 at" 'Bills Client for Hourly
    DoCmd.OpenQuery "CLIENT_BILL_3-3c at"
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    DoCmd.OpenQuery "CLIENT_BILL_6 at" 'Transplanting to Pots
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1b at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1c at" 'Striking Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_7_3 at" 'Tickets with Foreign Source shipping only"
    'DoCmd.OpenQuery "CLIENT_BILL_8 at"
    
    'Bill for Deposits and surcharges
    
    If [BillContainerDeposit] Then
        DoCmd.OpenQuery "CLIENT_BILL_9 at" 'Container Deposit
    End If
    If [BillContainerHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d2 at" 'Container Holdover Deposit
    End If
    If [BillBarerootDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_9b at" 'Bareroot Deposit
    End If
    If [BillBarerootHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d at" 'Bareroot Holdover Deposit
    End If
    
    If [BillSmallLotSurcharge] Then
        DoCmd.OpenQuery "CLIENT_BILL_9-1 at" 'Container Deposit Small Container SCSL < 2000
        DoCmd.OpenQuery "CLIENT_BILL_9-2 at" 'Container Deposit Large Container SCSL < 200 (MT251, TP49, TP414)
    End If
    If [BillLowGermSurcharge] Then
        'DoCmd.OpenQuery "CLIENT_BILL_9-3 at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG1, SCLG2)
        DoCmd.OpenQuery "CLIENT_BILL_9-3b at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG3)
    End If
    
    If [BillQP1C] Then
        DoCmd.OpenQuery "CLIENT_BILL_10 at" 'Qplug Transplant 1st Cycle
        'DoCmd.OpenQuery "CLIENT_BILL_10-1 at" 'Qplug Transplant 1st Cycle SCSL < 2000
        'DoCmd.OpenQuery "CLIENT_BILL_10-3 at" 'Qplug Transplant 1st Cycle Low Germ
    End If
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "Client_Bill_Invoice_Client_Checklist_Income_Dist"
    DoCmd.OpenQuery stDocName
    
Exit_IncomeDistributionSpd_Click:
    Exit Sub

Err_IncomeDistributionSpd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_IncomeDistributionSpd_Click
End Sub

Private Sub InvoiceSumSpd_Click()
On Error GoTo Err_InvoiceSumSpd_Click

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    DoCmd.OpenQuery "CLIENT_BILL_1b at" 'bills qplug transplant first cycle from LOTINV
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1b at" 'bills qplug transplant first cycle surcharge for low germ/small lot
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-3 at" 'Bills Client for Hourly
    DoCmd.OpenQuery "CLIENT_BILL_3-3c at"
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    DoCmd.OpenQuery "CLIENT_BILL_6 at" 'Transplanting to Pots
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1b at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1c at" 'Striking Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_7_3 at" 'Tickets with Foreign Source shipping only"
    'DoCmd.OpenQuery "CLIENT_BILL_8 at"
    
    'Bill for Deposits and surcharges
    
    If [BillContainerDeposit] Then
        DoCmd.OpenQuery "CLIENT_BILL_9 at" 'Container Deposit
    End If
    If [BillContainerHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d2 at" 'Container Holdover Deposit
    End If
    If [BillBarerootDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_9b at" 'Bareroot Deposit
    End If
    If [BillBarerootHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d at" 'Bareroot Holdover Deposit
    End If
    
    If [BillSmallLotSurcharge] Then
        DoCmd.OpenQuery "CLIENT_BILL_9-1 at" 'Container Deposit Small Container SCSL < 2000
        DoCmd.OpenQuery "CLIENT_BILL_9-2 at" 'Container Deposit Large Container SCSL < 200 (MT251, TP49, TP414)
    End If
    If [BillLowGermSurcharge] Then
        'DoCmd.OpenQuery "CLIENT_BILL_9-3 at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG1, SCLG2)
        DoCmd.OpenQuery "CLIENT_BILL_9-3b at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG3)
    End If
    
    If [BillQP1C] Then
        DoCmd.OpenQuery "CLIENT_BILL_10 at" 'Qplug Transplant 1st Cycle
        'DoCmd.OpenQuery "CLIENT_BILL_10-1 at" 'Qplug Transplant 1st Cycle SCSL < 2000
        'DoCmd.OpenQuery "CLIENT_BILL_10-3 at" 'Qplug Transplant 1st Cycle Low Germ
    End If
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "Client_Bill_Billing_Parent_MGMT_Code_Query"
    stDocName2 = "Client_Bill_Billing_Parent_MGMT_Code_MT_Query"
    DoCmd.OpenQuery stDocName
    DoCmd.SetWarnings False
        DoCmd.OpenQuery stDocName2
    DoCmd.SetWarnings True
    
Exit_InvoiceSumSpd_Click:
    Exit Sub

Err_InvoiceSumSpd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_InvoiceSumSpd_Click
End Sub

Private Sub Like_Client_AfterUpdate()

    CONTACT_CN = Null
    CONTACT_CN.Requery
    
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)

    Like_Client = "*"
    
End Sub

Private Sub NMIS_ORDER_BILL_ADJUSTMENTS_Click()
'NMIS_ORDER_BILL_ADJUSTMENTS
On Error GoTo Err_NMIS_ORDER_BILL_ADJUSTMENTS_Click

    Dim stDocName As String

    stDocName = "NMIS_ORDER_BILL_ADJUSTMENTS"
        
    Client_Bill_Data_Processed = False
    
    DoCmd.OpenForm stDocName, acNormal, "", "", , acNormal
    
Exit_NMIS_ORDER_BILL_ADJUSTMENTS_Click:
    Exit Sub

Err_NMIS_ORDER_BILL_ADJUSTMENTS_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_ORDER_BILL_ADJUSTMENTS_Click
End Sub

Private Sub Open_NMIS_AGREEMENTS_Click()
On Error GoTo Err_Open_NMIS_AGREEMENTS_Click

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENTS"
    DoCmd.OpenForm stDocName

Exit_Open_NMIS_AGREEMENTS_Click:
    Exit Sub

Err_Open_NMIS_AGREEMENTS_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_AGREEMENTS_Click
   
End Sub

Private Sub Open_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_FOR_PROCESSING_Click()
On Error GoTo Err_Open_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_FOR_PROCESSING_Click

    Dim stDocName As String

    stDocName = "NMIS_ID_ACTIVITY_TRANSACTIONS_FORM"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Agreement_Lot_What_It_Is_MT Query", acNormal
    DoCmd.SetWarnings True
    
    Client_Bill_Data_Processed = False
    DoCmd.OpenForm stDocName, acNormal, "", "", , acNormal
    
Exit_Open_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_FOR_PROCESSING_Click:
    Exit Sub

Err_Open_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_FOR_PROCESSING_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_FOR_PROCESSING_Click
End Sub

Private Sub Open_NMIS_Order_Review_Form_Click()
On Error GoTo Err_Open_NMIS_Order_Review_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Open_NMIS_PROCESSING_ORDERS_Review"
    
    Client_Bill_Data_Processed = False
    DoCmd.RunMacro stDocName

Exit_Open_NMIS_Order_Review_Form_Click:
    Exit Sub

Err_Open_NMIS_Order_Review_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Order_Review_Form_Click
   
End Sub

Private Sub Open_NMIS_Product_Charges_Form_Click()
On Error GoTo Err_Open_NMIS_Product_Charges_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_CHARGES2"
    
    Client_Bill_Data_Processed = False
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_NMIS_Product_Charges_Form_Click:
    Exit Sub

Err_Open_NMIS_Product_Charges_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Product_Charges_Form_Click
    
End Sub

Private Sub Open_NMIS_Review_All_Pack_Data_Report_Click()
On Error GoTo Err_Open_NMIS_Review_All_Pack_Data_Report_Click

    Dim stDocName As String

    stDocName = "PROOF_ALL_From_Billing_Form"
    DoCmd.OpenReport stDocName, acPreview

Exit_Open_NMIS_Review_All_Pack_Data_Report_Click:
    Exit Sub

Err_Open_NMIS_Review_All_Pack_Data_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Review_All_Pack_Data_Report_Click
   
End Sub

Private Sub Open_NMIS_Review_Pack_Status_Report_Click()
On Error GoTo Err_Open_NMIS_Review_Pack_Status_Report_Click

    Dim stDocName As String

    stDocName = "ORDER_STATUS"
    DoCmd.OpenReport stDocName, acPreview

Exit_Open_NMIS_Review_Pack_Status_Report_Click:
    Exit Sub

Err_Open_NMIS_Review_Pack_Status_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Review_Pack_Status_Report_Click
   
End Sub

Private Sub Open_NMIS_Review_Stock_Destroyed_Report_Click()
On Error GoTo Err_Open_NMIS_Review_Stock_Destroyed_Report_Click

    Dim stDocName As String

    stDocName = "Agreement_Lot_Destroy_Checklist"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Open_NMIS_Review_Stock_Destroyed_Report_Click:
    Exit Sub

Err_Open_NMIS_Review_Stock_Destroyed_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Review_Stock_Destroyed_Report_Click
   
End Sub

Private Sub Open_NMIS_Review_Stock_Higraded_Report_Click()
On Error GoTo Err_Open_NMIS_Review_Stock_Higraded_Report_Click

    Dim stDocName As String

    stDocName = "Agreement_Lot_Higrade_Checklist"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Open_NMIS_Review_Stock_Higraded_Report_Click:
    Exit Sub

Err_Open_NMIS_Review_Stock_Higraded_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Review_Stock_Higraded_Report_Click
   
End Sub

Private Sub Open_NMIS_Ship_Ticket_Form_Click()
On Error GoTo Err_Open_NMIS_Ship_Ticket_Form_Click

DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_ORDER_LOT_BALANCES MT query"
    DoCmd.OpenQuery "NMIS_Product_ship Ticket_multiple_orders_mt"
    DoCmd.SetWarnings True

    Dim stDocName As String
    stDocName = "NMIS_SHIPPING_TICKET subform"

    Client_Bill_Data_Processed = False
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    
Exit_Open_NMIS_Ship_Ticket_Form_Click:
    Exit Sub

Err_Open_NMIS_Ship_Ticket_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Ship_Ticket_Form_Click
   
End Sub

Private Sub Open_NMIS_TSO_Form_Click()
On Error GoTo Err_Open_NMIS_TSO_Form_Click

    Dim stDocName As String
    stDocName = "NMIS_TICKETS_charge_per_ticket1"

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Product_Ship_Ticket_Total_Containers_mt"
    DoCmd.SetWarnings True
    
    Client_Bill_Data_Processed = False
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    
Exit_Open_NMIS_TSO_Form_Click:
    Exit Sub

Err_Open_NMIS_TSO_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_TSO_Form_Click
   
End Sub
Private Sub Client_Bill_Table_Edit_Click()
On Error GoTo Err_Client_Bill_Table_Edit_Click

    Dim stDocName As String

    stDocName = "CLIENT_BILL_Table_Edit"
    DoCmd.OpenQuery stDocName, acNormal, acEdit

Exit_Client_Bill_Table_Edit_Click:
    Exit Sub

Err_Client_Bill_Table_Edit_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Client_Bill_Table_Edit_Click
    
End Sub