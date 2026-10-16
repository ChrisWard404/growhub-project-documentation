Option Compare Database

Private Sub Form_Close()

    'Dim stFormName As String
    
    'strFormName = "NMIS_SOURCE_LOTS_INPUT"
    
        'If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 Then
            'Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_SOURCE_TESTS Subform].Form.Requery
            'Forms![NMIS_SOURCE_LOTS_INPUT].[Source_Lot_Lookup].SetFocus
        'End If


End Sub

Private Sub ID_LIKE_AfterUpdate()

        DoCmd.Requery
    
End Sub

Private Sub ID_LIKE_DblClick(Cancel As Integer)

    ID_LIKE = "*"
    DoCmd.Requery
    
End Sub

Private Sub NMIS_SPECIES_PLNTMSTR_SYMBOL_DblClick(Cancel As Integer)

    DoCmd.OpenForm "NMIS_SPECIES"
    
End Sub

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)

    DoCmd.OpenForm "Change_Bend_plntmstr_symbol"
    
End Sub

Private Sub Run_Bend_To_JHSN_Source_Query_Click()
On Error GoTo Err_Run_Bend_To_JHSN_Source_Query_Click
     
    Dim stDocName As String
    Dim stDocName2 As String
    Dim stDocName3 As String
    Dim stFormName As String
    
    stDocName = "Bend_To_JHSN_Source"
    stDocName2 = "Bend_To_JHSN_Source2"
    stDocName3 = "Bend_To_JHSN_Source_Test"
    stDocName4 = "Bend_To_JHSN_Source_Test_Results"
    strFormName = "NMIS_AGREEMENTS"
    strFormName2 = "NMIS_SOURCE_LOTS_INPUT"
    
    If Me.NMIS_SPECIES_PLNTMSTR_SYMBOL > "" Then
        DoCmd.SetWarnings False
        If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 Then
            DoCmd.OpenQuery stDocName, acNormal, acEdit
            Forms![NMIS_AGREEMENTS]![SOURCE_LOT_CN].Requery
            If SysCmd(acSysCmdGetObjectState, acForm, strFormName2) <> 0 Then
                Forms![NMIS_SOURCE_LOTS_INPUT]![Source_Lot_Lookup] = CN & "B"
                Forms![NMIS_SOURCE_LOTS_INPUT]![Source_Lot_Lookup].Requery
                Forms![NMIS_SOURCE_LOTS_INPUT].Requery
                Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_ACTIVITIES Subform].Requery
            End If
        Else
            DoCmd.OpenQuery stDocName2, acNormal, acEdit
            Forms![NMIS_SOURCE_LOTS_INPUT]![Source_Lot_Lookup] = CN & "B"
            Forms![NMIS_SOURCE_LOTS_INPUT]![Source_Lot_Lookup].Requery
            Forms![NMIS_SOURCE_LOTS_INPUT].Requery
            Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_ACTIVITIES Subform].Requery
        End If
        DoCmd.OpenQuery stDocName3, acNormal, acEdit
        DoCmd.OpenQuery stDocName4, acNormal, acEdit
    
        If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 Then
            Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_SOURCE_TESTS Subform].Form.Requery
            Forms![NMIS_SOURCE_LOTS_INPUT].[Source_Lot_Lookup].SetFocus
        End If
    Else
        MsgBox "Unable to Add to Database. Check JHSN Species Code"
    End If
    DoCmd.SetWarnings True

Exit_Run_Bend_To_JHSN_Source_Query_Click:
    Exit Sub

Err_Run_Bend_To_JHSN_Source_Query_Click:
    
    DoCmd.SetWarnings True
    Resume Exit_Run_Bend_To_JHSN_Source_Query_Click
    
End Sub

Private Sub STORED_FOR_ASSOCIATE_DblClick(Cancel As Integer)

    DoCmd.OpenForm "Change_Bend_stored_for"
    
End Sub

Private Sub STORED_FOR_LIKE_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub STORED_FOR_LIKE_DblClick(Cancel As Integer)

    STORED_FOR_LIKE = "*"
    DoCmd.Requery
    
End Sub