Option Compare Database

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

Private Sub Form_Close()

    If Processing_Done Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Husky_lpro_xfer_hlift_table2_Blank_create"
        DoCmd.SetWarnings True
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Agreement_Lot_Current_Age_Class_MT"
    DoCmd.SetWarnings True
    Forms!Husky_lpro_data_input_check_form!Processing_Done = False
    Forms!Husky_lpro_data_input_check_form!Hide_Activity_Posting.Visible = False
        
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

Private Sub Preview_Daily_Dump_Report_Click()
On Error GoTo Err_Preview_Daily_Dump_Report_Click

    Dim stDocName As String

    stDocName = "Husky_Lpro_Daily_Dump_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Daily_Dump_Report_Click:
    Exit Sub

Err_Preview_Daily_Dump_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Daily_Dump_Report_Click
    
End Sub

Private Sub Process_Data_Into_NMIS_Click()
'---------------------------------------------------
' Husky lpro process into NMIS
'---------------------------------------------------

    If Not (Forms!Husky_lpro_data_input_check_form!Processing_Done) Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Husky_lpro_dump_index_drop"
        DoCmd.OpenQuery "Husky_lpro_dump_index_create"
        DoCmd.OpenQuery "Husky_lpro_dump_lots"
        DoCmd.OpenQuery "Husky_lpro_Dump_Ctl_Create"
        DoCmd.OpenQuery "Husky_lpro_id_Activities_append"
        
        'set flag to not double process
        Forms!Husky_lpro_data_input_check_form!Processing_Done = 1
        Forms!Husky_lpro_data_input_check_form!Hide_Activity_Posting.Visible = True
        
        DoCmd.OpenQuery "Husky_lpro_lift_all_trans_append"
        DoCmd.OpenQuery "Husky_lpro_lift_partial_single_loc_trans_append"
        DoCmd.OpenQuery "Husky_lpro_lift_partial_total_bf_table_create"
        DoCmd.OpenQuery "Husky_lpro_lift_partial_lowest_loc_table_create"
        DoCmd.OpenQuery "Husky_lpro_lift_partial_temp_trans_table_create"
        DoCmd.OpenQuery "Husky_lpro_lift_partial_trans_remove"
        DoCmd.OpenQuery "Husky_lpro_lift_partial_trans_update"
        DoCmd.OpenQuery "Husky_lpro_lift_partial_trans_append"
        DoCmd.OpenQuery "Husky_lpro_ID_locations_append"
        DoCmd.OpenQuery "Husky_lpro_field_container_trans_append"
        DoCmd.SetWarnings True
        
        MsgBox "Processing Complete"
    Else
        MsgBox "Data has already been processed into NMIS", vbCritical
    End If
    
End Sub