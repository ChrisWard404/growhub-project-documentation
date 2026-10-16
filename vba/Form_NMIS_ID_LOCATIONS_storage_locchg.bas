Private Sub AGREEMENT_LOT_CN_Enter()

    If IsNull(BEGIN_DATE) Then
        BEGIN_DATE = Default_Date
    End If
    
End Sub

Private Sub BEGIN_DATE_Enter()
    
    If IsNull(BEGIN_DATE) Then
        BEGIN_DATE = Default_Date
    End If
    
End Sub

Private Sub BEGIN_DATE_Exit(Cancel As Integer)

    If Not IsNull(BEGIN_DATE) Then
        Default_Date = BEGIN_DATE
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)
On Error GoTo Err_Form_Open

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_DROP"
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_CREATE"
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_AT"
    DoCmd.SetWarnings True

Exit_Form_Open:
    Exit Sub

Err_Form_Open:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Open
End Sub

Private Sub LOCATION_FROM_CN_Enter()

    Location_from_CN.Requery
    
End Sub

Private Sub LOCATION_TO_Enter()
    If IsNull(Location_to) Then
        Location_to = Default_To_Loc
    End If
End Sub

Private Sub LOCATION_TO_Exit(Cancel As Integer)
    If Not IsNull(Location_to) Then
        Default_To_Loc = Location_to
    End If
End Sub

Private Sub Process_Into_NMIS_Click()
On Error GoTo Err_Process_Into_NMIS_Click

    If Not Processed_Into_NMIS Then
        'DoCmd.Requery
        'DoCmd.SetWarnings False
        'DoCmd.OpenQuery "Husky_mpro_update_hloc_table"
        'DoCmd.OpenQuery "Husky_mpro_Dump_Index_Drop"
        'DoCmd.OpenQuery "Husky_mpro_Dump_Index_CO_Drop"
        'DoCmd.OpenQuery "Husky_mpro_Dump_Hloc_Index_Drop"
        'DoCmd.OpenQuery "Husky_mpro_Dump_Index_Create"
        'DoCmd.OpenQuery "Husky_mpro_Dump_Index_CO_Create"
        'DoCmd.OpenQuery "Husky_mpro_Dump_Lots"
        'DoCmd.OpenQuery "Husky_mpro_Dump_CO_Lots"
        'DoCmd.OpenQuery "Husky_mpro_Dump_Ctl_Create"
        'DoCmd.OpenQuery "Husky_mpro_ID_Activities_Insert"
        'DoCmd.OpenQuery "Husky_mpro_Dump_CO_Ctl_Create"
        'DoCmd.OpenQuery "Husky_mpro_Dump_Hloc_Index_Create"
        'DoCmd.OpenQuery "Husky_mpro_Dump_HLoc_Lots"
        'DoCmd.OpenQuery "Husky_mpro_ID_Locations_Insert"
                    
        'If the activity is Location Changes (LOCCHG) then Zero out previous location info
        'DoCmd.OpenQuery "Husky_mpro_Transactions_previous_densities_MT"
        'DoCmd.OpenQuery "Husky_mpro_Transactions_previous_zero_for_location_change"
        'DoCmd.OpenQuery "Husky_mpro_Transactions_Insert_Loc_Change"
        'DoCmd.OpenQuery "Transactions_Current_Balance_Gross_n_Net_mt"
        'DoCmd.OpenQuery "Husky_mpro_ID_Activities_locchg_Update"
        'end If

        DoCmd.SetWarnings True
        Processed_Into_NMIS = True
        MsgBox "Processing Complete"
    
    Else
        MsgBox "Already Processed Into NMIS"
    End If
    
Exit_Process_Into_NMIS_Click:
    Exit Sub

Err_Process_Into_NMIS_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Process_Into_NMIS_Click
    
    
End Sub
Private Sub Preview_Checklist_Report_Click()
On Error GoTo Err_Preview_Checklist_Report_Click

    Dim stDocName As String

    stDocName = "Husky_Mpro_Storage_Location_Change"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Checklist_Report_Click:
    Exit Sub

Err_Preview_Checklist_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Checklist_Report_Click
    
End Sub
