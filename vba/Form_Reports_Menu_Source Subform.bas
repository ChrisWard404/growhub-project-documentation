Private Sub Activity_by_Species_Click()
On Error GoTo Err_ctivity_by_Species_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Seed_QR_Activity_Breakdown Query"
    DoCmd.OpenQuery stDocName, acViewPreview

Exit_ctivity_by_Species_Click:
    Exit Sub

Err_ctivity_by_Species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_ctivity_by_Species_Click
    
End Sub

Private Sub Activity_by_Species_Lot_Click()
On Error GoTo Err_Activity_by_Species_Lot_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Seed_QR_Activity_Breakdown_by_lot Query"
    DoCmd.OpenQuery stDocName, acViewPreview

Exit_Activity_by_Species_Lot_Click:
    Exit Sub

Err_Activity_by_Species_Lot_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Activity_by_Species_Lot_Click
    
End Sub



Private Sub ConeStorageSpd_Click()
On Error GoTo Err_ConeStorageSpd_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "ConeStorageSPD"
    DoCmd.OpenQuery stDocName

Exit_ConeStorageSpd_Click:
    Exit Sub

Err_ConeStorageSpd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_ConeStorageSpd_Click
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        [Source_Needs_Reports].Visible = True
    Else
        [Source_Needs_Reports].Visible = False
    End If
    
End Sub

Private Sub Mailing_Labels_Intermec_Click()
On Error GoTo Err_Mailing_Labels_Intermec_Click


    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Mailing_Labels_Intermec_Click:
    Exit Sub

Err_Mailing_Labels_Intermec_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Mailing_Labels_Intermec_Click
    
End Sub

Private Sub Negative_Balance_Lots_Click()
On Error GoTo Err_Negative_Balance_Lots_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Seedlots_with_negative_balance"
    DoCmd.OpenQuery stDocName ', acViewPreview

Exit_Negative_Balance_Lots_Click:
    Exit Sub

Err_Negative_Balance_Lots_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Negative_Balance_Lots_Click
    
End Sub

Private Sub NMIS_SOURCE_Location_by_ID_Click()
On Error GoTo Err_NMIS_SOURCE_Location_by_ID_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_Location_by_ID_Report"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_NMIS_SOURCE_Location_by_ID_Click:
    Exit Sub

Err_NMIS_SOURCE_Location_by_ID_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_Location_by_ID_Click
    
End Sub

Private Sub NMIS_SOURCE_Location_by_ID2_Click()
On Error GoTo Err_NMIS_SOURCE_Location_by_ID2_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_Location_by_ID_Report2"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_NMIS_SOURCE_Location_by_ID2_Click:
    Exit Sub

Err_NMIS_SOURCE_Location_by_ID2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_Location_by_ID2_Click
    
End Sub

Private Sub NMIS_SOURCE_Location_by_ID3_Click()
On Error GoTo Err_NMIS_SOURCE_Location_by_ID3_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_Location_by_ID_Report3"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_NMIS_SOURCE_Location_by_ID3_Click:
    Exit Sub

Err_NMIS_SOURCE_Location_by_ID3_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_Location_by_ID3_Click
    
End Sub

Private Sub NMIS_SOURCE_Location_by_ID3b_Click()
On Error GoTo Err_NMIS_SOURCE_Location_by_ID3b_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_Location_by_ID_Report3b"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_NMIS_SOURCE_Location_by_ID3b_Click:
    Exit Sub

Err_NMIS_SOURCE_Location_by_ID3b_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_Location_by_ID3b_Click
End Sub

Private Sub NMIS_SOURCE_Location_by_Loc_Click()
On Error GoTo Err_NMIS_SOURCE_Location_by_Loc_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_Location_by_Loc_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_NMIS_SOURCE_Location_by_Loc_Click:
    Exit Sub

Err_NMIS_SOURCE_Location_by_Loc_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_Location_by_Loc_Click
    
End Sub

Private Sub Non_WCF_Billing_Report_Click()
On Error GoTo Err_Non_WCF_Billing_Report_Click
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Seed_Non_WCF_Billing_Report"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Non_WCF_Billing_Report_Click:
    Exit Sub

Err_Non_WCF_Billing_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Non_WCF_Billing_Report_Click
    
End Sub

Private Sub Preview_Seed_Ticket_Checklist2_Click()
On Error GoTo Err_Preview_Seed_Ticket_Checklist2_Click

    Dim stDocName As String

    stDocName = "NMIS_SEED_TICKETS_CHECKLIST2"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Seed_Ticket_Checklist2_Click:
    Exit Sub

Err_Preview_Seed_Ticket_Checklist2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Seed_Ticket_Checklist2_Click
    
End Sub

Private Sub Product_Storage_Summary_Click()
On Error GoTo Err_Product_Storage_Summary_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Product_Storage_Summary"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Product_Storage_Summary_Click:
    Exit Sub

Err_Product_Storage_Summary_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Storage_Summary_Click
    
End Sub

Private Sub Seed_Box_Mini_Labels_Click()
On Error GoTo Err_Seed_Box_Mini_Labels_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form2d"
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    
Exit_Seed_Box_Mini_Labels_Click:
    Exit Sub

Err_Seed_Box_Mini_Labels_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Seed_Box_Mini_Labels_Click
    
End Sub

Private Sub Seed_Inventory_Report_Click()
On Error GoTo Err_Seed_Inventory_Report_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Seed_Inventory_Report"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Seed_Inventory_Report_Click:
    Exit Sub

Err_Seed_Inventory_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Seed_Inventory_Report_Click
    
End Sub
Private Sub seed_Quarterly_Report_Click()
On Error GoTo Err_seed_Quarterly_Report_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Seed_Quarterly_Report"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_seed_Quarterly_Report_Click:
    Exit Sub

Err_seed_Quarterly_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_seed_Quarterly_Report_Click
    
End Sub
Private Sub Seed_Box_Labels_Click()
On Error GoTo Err_Seed_Box_Labels_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form2"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Seed_Box_Labels_Click:
    Exit Sub

Err_Seed_Box_Labels_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Seed_Box_Labels_Click
    
End Sub
Private Sub Source_Lot_Report_Click()
On Error GoTo Err_Source_Lot_Report_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOT_SELECT"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Source_Lot_Report_Click:
    Exit Sub

Err_Source_Lot_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Source_Lot_Report_Click
    
End Sub
Private Sub Preview_Seed_Ticket_Checklist_Click()
On Error GoTo Err_Preview_Seed_Ticket_Checklist_Click

    Dim stDocName As String

    stDocName = "NMIS_SEED_TICKETS_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Seed_Ticket_Checklist_Click:
    Exit Sub

Err_Preview_Seed_Ticket_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Seed_Ticket_Checklist_Click
    
End Sub

Private Sub Source_Needs_Reports_Click()
On Error GoTo Err_Source_Needs_Reports_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Seed_Needs_Report"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Source_Needs_Reports_Click:
    Exit Sub

Err_Source_Needs_Reports_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Source_Needs_Reports_Click
End Sub

Private Sub Sow_For_Other_Than_Stored_For_Click()
On Error GoTo Err_Sow_For_Other_Than_Stored_For_Click

    Dim stDocName As String

    stDocName = "Seed_Sown_for_Other_Than_Storage_Parent"
    DoCmd.OpenReport stDocName, acViewPreview

Exit_Sow_For_Other_Than_Stored_For_Click:
    Exit Sub

Err_Sow_For_Other_Than_Stored_For_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Sow_For_Other_Than_Stored_For_Click
    
End Sub

Private Sub Two_Lots_per_Seed_Box_Label_Click()
On Error GoTo Err_Two_Lots_per_Seed_Box_Label_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form2e"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Two_Lots_per_Seed_Box_Label_Click:
    Exit Sub

Err_Two_Lots_per_Seed_Box_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Two_Lots_per_Seed_Box_Label_Click
    
End Sub

Private Sub Zero_Balance_Report_by_Crop_Yr_Stor_For_Click()
On Error GoTo Err_Zero_Balance_Report_by_Crop_Yr_Stor_For_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_Zero_Bal_by_Col_Yr_Stor_For_Report"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Zero_Balance_Report_by_Crop_Yr_Stor_For_Click:
    Exit Sub

Err_Zero_Balance_Report_by_Crop_Yr_Stor_For_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Zero_Balance_Report_by_Crop_Yr_Stor_For_Click
    
End Sub

Private Sub Zero_Balance_Report_Click()
On Error GoTo Err_Zero_Balance_Report_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_Zero_Balance_Report"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Zero_Balance_Report_Click:
    Exit Sub

Err_Zero_Balance_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Zero_Balance_Report_Click
    
End Sub