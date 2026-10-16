

Private Sub Activity_Code_Exit(Cancel As Integer)

    Default_Activity_Code = Activity_Code
    
End Sub

Private Sub Agreement_Lot_CN_AfterUpdate()

    End_Counter_Last = 0
    LOCATION_NEXT = Location_Last_CN
    LOCATION_PREVIOUS = Location_Last_CN
   '[grow_containers].Form![Lot_Total_Ft].Requery
    
End Sub

Private Sub Agreement_Lot_CN_Change()

    End_Counter_Last = 0
    LOCATION_NEXT = Location_Last_CN
    LOCATION_PREVIOUS = Location_Last_CN
    '[grow_containers].Form.Requery
    
End Sub

Private Sub AGREEMENT_LOT_CN_DblClick(Cancel As Integer)
On Error GoTo Err_greement_Lot_CN_DblClick

    DoCmd.GoToControl "LOCATION_CN"
    DoCmd.GoToControl "Agreement_lot_Cn"
    If Not IsNull(Default_Agreement_Lot_CN) Then
        AGREEMENT_LOT_CN.Locked = False
        DoCmd.OpenForm "Agreement_Lot_ID_Change_Form"
    End If
    
Exit_greement_Lot_CN_DblClick:
    Exit Sub

Err_greement_Lot_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_greement_Lot_CN_DblClick
           
End Sub

Private Sub AGREEMENT_LOT_CN_Enter()

    If IsNull(AGREEMENT_LOT_CN) Then
        AGREEMENT_LOT_CN.Locked = False
    Else
        'AGREEMENT_LOT_CN.Locked = True
    End If
    If IsNull(AGREEMENT_LOT_CN) And Not IsNull(Default_Agreement_Lot_CN) Then
        AGREEMENT_LOT_CN = Default_Agreement_Lot_CN
    End If
    AGREEMENT_LOT_CN.Locked = False
End Sub

Private Sub Agreement_Lot_CN_Exit(Cancel As Integer)

    Default_Agreement_Lot_CN = AGREEMENT_LOT_CN
    '[grow_containers].Form.Requery
    If IsNull(Activity_Code) And Not IsNull(AGREEMENT_LOT_CN) Then
        Activity_Code = Default_Activity_Code
    End If
    
End Sub

Private Sub BEGIN_COUNTER_DblClick(Cancel As Integer)
    
    BEGIN_COUNTER.Locked = False
    
End Sub

Private Sub BEGIN_COUNTER_Enter()

    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(BEGIN_COUNTER) Then
            If Not Est_Counter Then
                BEGIN_COUNTER = End_Counter_Last
            End If
            BEGIN_COUNTER.Locked = False
        Else
            BEGIN_COUNTER.Locked = True
        End If
    End If

End Sub

Private Sub BEGIN_COUNTER_Exit(Cancel As Integer)
    
    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(BEGIN_COUNTER) Then
            If Est_Counter Then
                BEGIN_COUNTER = BEGIN_INDEX * [INDEX_INCREMENT]
            End If
        End If
    End If
    Location_Key2 = [Locmod] & [SUBLOT_NO] & [Riser_Begin] & [Riser_End]
    
End Sub

Private Sub BEGIN_DATE_Exit(Cancel As Integer)

    Begin_Date_Default = BEGIN_DATE
    
End Sub

Private Sub BEGIN_INDEX_DblClick(Cancel As Integer)

    BEGIN_INDEX.Locked = False
    
End Sub

Private Sub BEGIN_INDEX_Enter()

    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(BEGIN_INDEX) Then
            BEGIN_INDEX = End_Index_Last
            BEGIN_INDEX.Locked = False
        Else
            BEGIN_INDEX.Locked = True
        End If
    End If

End Sub

Private Sub BEGIN_INDEX_Exit(Cancel As Integer)
    
    Dim VarX As Variant
    Dim VarY As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "Location = [LOCMOD]")
    VarY = DLookup("[index_max]", "NMIS_LOCATIONS", "Location = [LOCMOD]")
    If Not IsNull(AGREEMENT_LOT_CN) Then
        If Not IsNull(BEGIN_INDEX) Then
            If IsNull(INDEX_INCREMENT) Then
                If VarX = "FIELD" Then
                    INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
                Else
                    INDEX_INCREMENT = Null
                End If
            End If
        End If
        If BEGIN_INDEX = 999 Then
            BEGIN_INDEX = Round(VarY / Nz(INDEX_INCREMENT, 1), 1)
        End If
        'If VarX <> "FIELD" Then
            'BEGIN_COUNTER = 0
            'DoCmd.GoToControl "END_INDEX"
        'End If
        If Not IsNull(BEGIN_INDEX) Then
            END_INDEX.TabStop = True
            If Est_Counter Then
                BEGIN_COUNTER = BEGIN_INDEX * [INDEX_INCREMENT]
            End If
            'DoCmd.GoToControl "begin_counter"
        End If
        Location_Key2 = [Locmod] & [SUBLOT_NO] & [Riser_Begin] & [Riser_End]
    End If
    
End Sub

Private Sub Default_Agreement_Lot_CN_Exit(Cancel As Integer)

    Default_Agreement_Lot_CN = AGREEMENT_LOT_CN
    
End Sub

Private Sub END_COUNTER_DblClick(Cancel As Integer)

    END_COUNTER.Locked = False
    
End Sub

Private Sub END_COUNTER_Enter()

    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(END_COUNTER) Then
            END_COUNTER.Locked = False
            If Activity_Code = "LOCCHG" Then
                BEGIN_COUNTER = 0
                END_COUNTER = [grow_containers].Form![Lot_Total_Ft]
            End If
            'END_COUNTER = Beg_Counter_Last
        Else
            END_COUNTER.Locked = True
        End If
        If IsNull(BEGIN_INDEX) And IsNull(END_INDEX) Then
            BEGIN_INDEX.TabStop = False
            END_INDEX.TabStop = False
        Else
            BEGIN_INDEX.TabStop = True
            END_INDEX.TabStop = True
        End If
    End If
    
End Sub

Private Sub END_COUNTER_Exit(Cancel As Integer)

    End_Counter_Last = END_COUNTER
    Dim VarX As Variant
    Dim VarY As Variant
    Dim VarZ As Variant
    Dim VarNext As Variant
    Dim VarPrev As Variant
    
    VarX = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "location = [LOCMOD]")
    VarY = DLookup("[INDEX]", "*NMIS_LOCATIONS_SORTED_TABLE", "location = [LOCMOD]")
    VarZ = DLookup("LOCATION_TYPE", "NMIS_LOCATIONS", "location = LOCMOD")
    Location_Type_Default = VarZ
    LOCATION_NEXT_Index = VarY + 1
    LOCATION_PREVIOUS_Index = VarY - 1
    LOCATION_NEXT = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_NEXT_Index]")
    LOCATION_PREVIOUS = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_PREVIOUS_Index]")
    'Beg_Index_Last = BEGIN_INDEX
    'End_Index_Last = END_INDEX
    If Not IsNull(AGREEMENT_LOT_CN) Then
        If Not IsNull(BEGIN_DATE) Then
            Begin_Date_Default = BEGIN_DATE
        End If
        
        If IsNull(END_COUNTER) Then
            If Est_Counter Then
                END_COUNTER = END_INDEX * [INDEX_INCREMENT]
            End If
        End If
    End If
    
    Default_Activity_Code = Activity_Code
    Location_Key2 = [Locmod] & [SUBLOT_NO] & [Riser_Begin] & [Riser_End]
    
End Sub

Private Sub END_INDEX_DblClick(Cancel As Integer)

    END_INDEX.Locked = False
    
End Sub

Private Sub END_INDEX_Enter()

    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(END_INDEX) Then
            END_INDEX.Locked = False
            END_INDEX = Beg_Index_Last
        Else
            END_INDEX.Locked = True
        End If
    End If

End Sub

Private Sub END_INDEX_Exit(Cancel As Integer)
    Dim VarX As Variant
    Dim VarY As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "LOCATION = [LOCMOD]")
    VarY = DLookup("[index_max]", "NMIS_LOCATIONS", "LOCATION = [LOCMOD]")
    
    Last_Est_Units = Est_Units
    If Not IsNull(AGREEMENT_LOT_CN) Then
        If Not IsNull(END_INDEX) Then
            If IsNull(INDEX_INCREMENT) Then
                If VarX = "FIELD" Then
                    INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
                Else
                    INDEX_INCREMENT = 1
                End If
            End If
            Beg_Counter_Last = BEGIN_COUNTER
            Beg_Index_Last = BEGIN_INDEX
            End_Index_Last = END_INDEX
            If Nz(SOW_DIRECTION, 1) = 1 Then
                If Val(Nz(BEGIN_INDEX, 0)) > Val(Nz(END_INDEX, 0)) Then
                    temp = BEGIN_INDEX
                    BEGIN_INDEX = END_INDEX
                    END_INDEX = temp
                    'SOWN_BACKWARDS = True
                    'Map_Backwards = True
                Else
                    'SOWN_BACKWARDS = False
                    'Map_Backwards = False
                End If
            Else
                If Val(Nz(END_INDEX, 0)) > Val(Nz(BEGIN_INDEX, 0)) Then
                    temp = BEGIN_INDEX
                    BEGIN_INDEX = END_INDEX
                    END_INDEX = temp
                    'SOWN_BACKWARDS = True
                    'Map_Backwards = True
                Else
                    'SOWN_BACKWARDS = False
                    'Map_Backwards = False
                End If
            End If
            If END_INDEX = 999 Then
                END_INDEX = Round(VarY / Nz(INDEX_INCREMENT, 1), 1)
            End If
            If Est_Counter Then
                END_COUNTER = END_INDEX * [INDEX_INCREMENT]
                BEGIN_COUNTER = BEGIN_INDEX * INDEX_INCREMENT
            End If
            'Beg_Index_Last = BEGIN_INDEX
            'End_Index_Last = END_INDEX
        
        End If
        Location_Key2 = [Locmod] & [SUBLOT_NO] & [Riser_Begin] & [Riser_End]
    End If
End Sub

Private Sub Find_Lot_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[AGREEMENT_LOT_CN] = '" & Me![Find_Lot] & "'"
    Me.Bookmark = rs.Bookmark

End Sub

Private Sub Form_AfterInsert()

    Dim VarX As Variant
    Dim VarY As Variant
    Dim VarZ As Variant
    Dim VarNext As Variant
    Dim VarPrev As Variant
    
    VarX = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "LOCATION = [LOCMOD]")
    VarY = DLookup("[INDEX]", "*NMIS_LOCATIONS_SORTED_TABLE", "LOCATION = [LOCMOD]")
    VarZ = DLookup("LOCATION_TYPE", "NMIS_LOCATIONS", "LOCATION = LOCMOD")
    Location_Type_Default = VarZ
    LOCATION_NEXT_Index = VarY + 1
    LOCATION_PREVIOUS_Index = VarY - 1
    LOCATION_NEXT = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_NEXT_Index]")
    LOCATION_PREVIOUS = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_PREVIOUS_Index]")
    'Beg_Index_Last = BEGIN_INDEX
    'End_Index_Last = END_INDEX
    If Not IsNull(BEGIN_DATE) Then
        Begin_Date_Default = BEGIN_DATE
    End If
    
End Sub

Private Sub Form_Close()

    If [Processed_Into_NMIS] Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Husky_mpro_Xfer_Table_Delete"
        DoCmd.OpenQuery "ID_LOCATION_GROW_INDEX_UPDATE_MT"
        DoCmd.OpenQuery "ID_LOCATION_GROW_INDEX_UPDATE"
        DoCmd.SetWarnings True
    End If
        
End Sub

Private Sub Form_Delete(Cancel As Integer)
    
    Default_Agreement_Lot_CN = Null
    
End Sub

Private Sub Form_Error(DataErr As Integer, Response As Integer)
On Error GoTo Err_Form_Error

    MsgBox "You have started to enter another record. Either Complete the record or press the ESC Key", vbCritical

Exit_Form_Error:
    Exit Sub

Err_Form_Error:
    'MsgBox Err.DESCRIPTION
    MsgBox "do not show"
    Resume Exit_Form_Error
        
End Sub

Private Sub Form_Open(Cancel As Integer)
On Error GoTo Err_Form_Open

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_DROP"
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_CREATE"
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_AT"
    DoCmd.SetWarnings True
    
    BEGIN_INDEX.TabStop = True
    END_INDEX.TabStop = True
    BEGIN_COUNTER.TabStop = True
    END_COUNTER.TabStop = True
    SUBLOT_NO.TabStop = False

Exit_Form_Open:
    Exit Sub

Err_Form_Open:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Open
End Sub

Private Sub INDEX_INCREMENT_Enter()
    Dim VarX As Variant

    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [LOCMOD]")

    If Not IsNull(INDEX_INCREMENT) Then
        If (VarX = "FIELD" And (IsNull(BEGIN_INDEX) Or IsNull(END_INDEX))) Then
            MsgBox "Begin and End Index Must Be Entered"
        End If
    End If
    
End Sub

Private Sub LOCATION_CN_DblClick(Cancel As Integer)

    LOCATION_CN.Locked = False
    
End Sub

Private Sub LOCATION_CN_Enter()
    
    LOCATION_CN.Requery
    [grow_containers].Form.Requery
    
        If Not IsNull(AGREEMENT_LOT_CN) Then
            If Not IsNull(LOCATION_CN) Then
                LOCATION_CN.Locked = True
            Else
                LOCATION_CN.Locked = False
                If Not IsNull(LOCATION_NEXT) Then
                    If Location_Type_Default = "FIELD" Then
                        If Not Map_Backwards Then
                            If Not IsNull(LOCATION_NEXT) Then
                                LOCATION_CN = LOCATION_NEXT
                            End If
                        Else
                            If Not IsNull(LOCATION_PREVIOUS) Then
                                LOCATION_CN = LOCATION_PREVIOUS
                            End If
                        End If
                    Else
                        LOCATION_CN = Location_Last_CN
                    End If
                    If Not IsNull(Unit_Code_Default) Then
                    UNIT_CODE = Unit_Code_Default
                    End If
                    If Not IsNull(BEGIN_DATE) Then
                        BEGIN_DATE = Begin_Date_Default
                    End If
                End If
            End If
        End If
    
End Sub

Private Sub Screen_For_Begin_FY_AfterUpdate()

    Find_Lot.Requery
  
End Sub

Private Sub LOCATION_CN_Exit(Cancel As Integer)
    
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "Location = [LOCMOD]")
    
    If Not IsNull(AGREEMENT_LOT_CN) Then
        If Not IsNull(LOCATION_CN) Then
            If IsNull(BEGIN_DATE) Then
                BEGIN_DATE = Begin_Date_Default
            End If
            'If IsNull(CN) Then
                'DoCmd.RunMacro "Set_CN2"
            'End If
        End If
        Last_ID_Location_CN = CN
        If Not IsNull(LOCATION_CN) Then
            Location_Last_CN = LOCATION_CN
        End If
        If VarX <> "FIELD" Then
            BEGIN_COUNTER = 0
            BEGIN_COUNTER.TabStop = False
        Else
            BEGIN_COUNTER.TabStop = True
        End If
    End If
    
End Sub

Private Sub Note_Enter()
    NOTE = [grow_containers].Form![NOTE_CONTAINER]
End Sub

Private Sub SOWN_BACKWARDS_AfterUpdate()
    
    'Map_Backwards = SOWN_BACKWARDS
    
End Sub

Private Sub UNIT_CODE_DblClick(Cancel As Integer)

    UNIT_CODE.Locked = False
    
End Sub

Private Sub UNIT_CODE_Enter()

    If Not IsNull(UNIT_CODE) Then
        UNIT_CODE.Locked = True
    Else
        UNIT_CODE.Locked = False
    End If
    
End Sub

Private Sub UNIT_CODE_Exit(Cancel As Integer)

    Unit_Code_Default = UNIT_CODE
    
    Dim VarX As Variant
    Dim VarY As Variant
    Dim VarNext As Variant
    Dim VarPrev As Variant
    
    VarX = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "LOCATION = [LOCMOD]")
    VarY = DLookup("[INDEX]", "*NMIS_LOCATIONS_SORTED_TABLE", "LOCATION = [LOCMOD]")
    LOCATION_NEXT_Index = VarY + 1
    LOCATION_PREVIOUS_Index = VarY - 1
    LOCATION_NEXT = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_NEXT_Index]")
    LOCATION_PREVIOUS = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_PREVIOUS_Index]")
    
End Sub
Private Sub Process_Into_NMIS_Click()
On Error GoTo Err_Process_Into_NMIS_Click

    If Not Processed_Into_NMIS Then
        DoCmd.Requery
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Husky_mpro_update_hloc_table"
        DoCmd.OpenQuery "Husky_mpro_Dump_Index_Drop"
        DoCmd.OpenQuery "Husky_mpro_Dump_Index_CO_Drop"
        DoCmd.OpenQuery "Husky_mpro_Dump_Hloc_Index_Drop"
        DoCmd.OpenQuery "Husky_mpro_Dump_Index_Create"
        DoCmd.OpenQuery "Husky_mpro_Dump_Index_CO_Create"
        DoCmd.OpenQuery "Husky_mpro_Dump_Lots"
        DoCmd.OpenQuery "Husky_mpro_Dump_CO_Lots"
        DoCmd.OpenQuery "Husky_mpro_Dump_Ctl_Create"
        DoCmd.OpenQuery "Husky_mpro_ID_Activities_Insert"
        DoCmd.OpenQuery "Husky_mpro_Dump_CO_Ctl_Create"
        DoCmd.OpenQuery "Husky_mpro_Dump_Hloc_Index_Create"
        DoCmd.OpenQuery "Husky_mpro_Dump_HLoc_Lots"
        DoCmd.OpenQuery "Husky_mpro_ID_Locations_Insert"
                    
        If Activity_Code = "LOCCHG" Then
            'If the activity is Location Changes (LOCCHG) then Zero out previous location info
            DoCmd.OpenQuery "Husky_mpro_Transactions_previous_densities_MT"
            DoCmd.OpenQuery "Husky_mpro_Transactions_previous_zero_for_location_change"
            DoCmd.OpenQuery "Husky_mpro_Transactions_Insert_Loc_Change"
            DoCmd.OpenQuery "Transactions_Current_Balance_Gross_n_Net_mt"
            DoCmd.OpenQuery "Husky_mpro_ID_Activities_locchg_Update"
        Else
            'If Nursery Owned packed for transplant, Zero out packing balances
            DoCmd.OpenQuery "Husky_mpro_transactions_prev_zero"
            DoCmd.OpenQuery "Husky_mpro_Transactions_Insert"
            'If Client Owned from a previous agreement zero out the previous agreement balances
            DoCmd.OpenQuery "Husky_mpro_ID_Activities_CO_zero_Insert"
            DoCmd.OpenQuery "Husky_mpro_transactions_xplt_prev_zero"
            'If Holdover from a previous agreement zero out the previous agreement balances
            DoCmd.OpenQuery "Husky_mpro_ID_Activities_Holdover_zero_Insert"
            DoCmd.OpenQuery "Husky_mpro_transactions_Holdover_prev_zero"
        End If

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

    stDocName = "Husky_Mpro_Dump_Report_by_Location2"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Checklist_Report_Click:
    Exit Sub

Err_Preview_Checklist_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Checklist_Report_Click
    
End Sub

Private Sub Sublot_Tabstop_AfterUpdate()

    If Sublot_Tabstop Then
        SUBLOT_NO.TabStop = True
    Else
        SUBLOT_NO.TabStop = False
    End If
End Sub