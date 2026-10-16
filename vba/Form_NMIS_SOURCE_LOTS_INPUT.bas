Option Compare Database

Private Sub preview_print_seedbox_label_Click()
On Error GoTo Err_preview_print_seedbox_label_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_preview_print_seedbox_label_Click:
    Exit Sub

Err_preview_print_seedbox_label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_preview_print_seedbox_label_Click
    
End Sub

Private Sub Preview_Print_Box_Labels_Click()
On Error GoTo Err_Preview_Print_Box_Labels_Click

    Dim stDocName As String

    stDocName = "Seedbox_Labels2"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Print_Box_Labels_Click:
    Exit Sub

Err_Preview_Print_Box_Labels_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Print_Box_Labels_Click
    
End Sub

Private Sub Preview_Germination_Test_Report_Click()
On Error GoTo Err_Preview_Germination_Test_Report_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_LOTS_GERM_TESTS"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Germination_Test_Report_Cli:
    Exit Sub

Err_Preview_Germination_Test_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Germination_Test_Report_Cli
    
End Sub
Private Sub colse_Click()
On Error GoTo Err_colse_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_colse_Click:
    Exit Sub

Err_colse_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_colse_Click
    
End Sub
Private Sub refresh_Click()
On Error GoTo Err_refresh_Click


    DoCmd.DoMenuItem acFormBar, acRecordsMenu, 5, , acMenuVer70
    
Exit_refresh_Click:
    Exit Sub

Err_refresh_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_refresh_Click
    
End Sub

Private Sub BREEDING_ZONE_AfterUpdate()
    If IsNull(BREEDING_ZONE_OLD) Then
        BREEDING_ZONE_OLD = BackupBreedingZone
    End If
End Sub

Private Sub BREEDING_ZONE_Enter()
    If IsNull(BREEDING_ZONE_OLD) Then
        BackupBreedingZone = BREEDING_ZONE
    End If
End Sub

Private Sub Category_Code_AfterUpdate()

    [NMIS_ID_ACTIVITIES Subform].Form.Requery
    
End Sub

Private Sub CATEGORY_CODE_Enter()

    CATEGORY_CODE.Requery
    CATEGORY_DESCRIPTION.Requery
    
End Sub

Private Sub CATEGORY_DESCRIPTION_AfterUpdate()

    [NMIS_ID_ACTIVITIES Subform].Form.Requery
    
End Sub

Private Sub CATEGORY_DESCRIPTION_Enter()

    CATEGORY_CODE.Requery
    CATEGORY_DESCRIPTION.Requery
    
End Sub

Private Sub CROP_YEAR_Enter()
    
    If Not IsNull(DATE_COLLECTED) And IsNull(CROP_YEAR) Then
        If Right$(DATE_COLLECTED, 2) > "40" Then
            CENTURY = "19"
        Else
            CENTURY = "20"
        End If
        CROP_YEAR = CENTURY & Right$(DATE_COLLECTED, 2)
    End If

End Sub

Private Sub DATE_COLLECTED_Exit(Cancel As Integer)
    
    If Not IsNull(DATE_COLLECTED) And IsNull(CROP_YEAR) Then
        If Right$(DATE_COLLECTED, 2) > "40" Then
            CENTURY = "19"
        Else
            CENTURY = "20"
        End If
        CROP_YEAR = CENTURY & Right$(DATE_COLLECTED, 2)
    End If

End Sub

Private Sub Form_AfterInsert()
    Dim strFormName As String
        
    strFormName = "NMIS_AGREEMENTS"

    If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 Then
        If IsNull(Forms![NMIS_AGREEMENTS]![source_id]) Then
            Forms![NMIS_AGREEMENTS]![source_id] = CN
            Forms![NMIS_AGREEMENTS]![SOURCE_LOT_CN] = CN
            Forms![NMIS_AGREEMENTS]![source_id].Requery
            Forms![NMIS_AGREEMENTS]![SOURCE_LOT_CN].Requery
        End If
    End If
    
    Source_Lot_Lookup.Requery
    
End Sub

Private Sub Form_Close()
    
    Dim strFormName As String
    
    strFormName = "NMIS_AGREEMENTS"
    
    If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 Then
        If IsNull(Forms![NMIS_AGREEMENTS]![SOURCE_LOT_CN]) Then
            Forms![NMIS_AGREEMENTS]![SOURCE_LOT_CN] = CN
        End If
        Forms![NMIS_AGREEMENTS]![AGREEMENT_LOT_CN].Requery
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "061019" Then
        Open_Bend_Lots_Form.Visible = True
    Else
        Open_Bend_Lots_Form.Visible = False
    End If
    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "061505" Then
        Open_Source_TI.Visible = True
    Else
        Open_Source_TI.Visible = False
    End If
    DoCmd.GoToRecord , , acNewRec
    
End Sub

Private Sub ID_AfterUpdate()

    ID2 = Backup_ID
    
End Sub

Private Sub ID_DblClick(Cancel As Integer)

    [ID].Locked = False
    MsgBox "ID is now unlocked for editing."

End Sub

Private Sub ID_Enter()

    If [ID] > "" Then
        [ID].Locked = True
    Else
        [ID].Locked = False
    End If
    Backup_ID = ID

End Sub

Private Sub ID_Exit(Cancel As Integer)

    [ID].Locked = True
    
    If Not IsNull(ID) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If

End Sub

Private Sub NMIS_SOURCE_CARD_Activities_Click()
On Error GoTo Err_NMIS_SOURCE_CARD_Activities_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Card_Activities"
    DoCmd.OpenReport stDocName, acPreview

Exit_NMIS_SOURCE_CARD_Activities_Click:
    Exit Sub

Err_NMIS_SOURCE_CARD_Activities_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_CARD_Activities_Click
    
End Sub

Private Sub NMIS_SOURCE_CARD_BACK_Click()
On Error GoTo Err_NMIS_SOURCE_CARD_BACK_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Card_BACK"
    DoCmd.OpenReport stDocName, acPreview

Exit_NMIS_SOURCE_CARD_BACK_Click:
    Exit Sub

Err_NMIS_SOURCE_CARD_BACK_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_CARD_BACK_Click
    
End Sub

Private Sub Open_Bend_Lots_Form_Click()
On Error GoTo Err_Open_Bend_Lots_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOTS_Bend"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Bend_Lots_Form_Click:
    Exit Sub

Err_Open_Bend_Lots_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Bend_Lots_Form_Click
    
End Sub

Private Sub Open_NMIS_SOURCE_TEST_RESULTS_NEW_LOT_Click()
On Error GoTo Err_Open_NMIS_SOURCE_TEST_RESULTS_NEW_LOT_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    'If [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
       '[Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
       '[Activity_Code] = "ADDNON" Then
        stLinkCriteria = "[ID_ACTIVITY_CN]=" & "'" & [NMIS_ID_ACTIVITIES Subform].Form![CN] & "'"
        'DoCmd.RunCommand acCmdRefreshPage
        stDocName = "NMIS_SOURCE_TESTS_NEW_LOT Form"
        DoCmd.OpenForm stDocName, , , stLinkCriteria
    'Else
        'MsgBox "Activity must be '226/TEST', '235/ADDNON', '252/RETEST', '253/XFRIN1' or '254/XFRIN2'.", vbInformation
    'End If

Exit_Open_NMIS_SOURCE_TEST_RESULTS_NEW_LOT_Click:
    Exit Sub

Err_Open_NMIS_SOURCE_TEST_RESULTS_NEW_LOT_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_SOURCE_TEST_RESULTS_NEW_LOT_Click
    
End Sub
Private Sub Generate_Source_Code_Click()
On Error GoTo Err_Generate_Source_Code_Click

    Dim stSpecies_Code As String
    Dim stSOURCE_Code As String
    Dim stSource_Code_Type As String
    Dim stZone As String
    Dim stHUC As String
    
    If IsNull(SOURCE_CODE) Then
        If Forms![NMIS_SOURCE_LOTS_INPUT]![SOURCE_CODE_TYPE Subform]![SOURCE_CODE_TYPE] > "" Then
                stSource_Code_Type = Forms![NMIS_SOURCE_LOTS_INPUT]![SOURCE_CODE_TYPE Subform]![SOURCE_CODE_TYPE]
              Else
                stSource_Code_Type = "UNS"
        End If

        Select Case stSource_Code_Type
    
            Case Is = "BLM"
                stSOURCE_Code = [Plntmstr_Symbol] & "-" & _
                Mid([STORED_FOR_ASSOCIATE], 3, 2) & "-" & _
                [SEED_ZONE] & "-" & _
                [ORIGIN_ELEVATION] & "-" & _
                Right(Nz([CROP_YEAR], [DATE_COLLECTED]), 2) & " " & _
                [CERT_CODE]
        
            Case Is = "R1"
                stSOURCE_Code = Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_SPECIES_NO subform]![SPECIES_ABBREVIATION] & "-" & _
                Mid([STORED_FOR_ASSOCIATE], 3, 2) & "-" & _
                [ORIGIN_ELEVATION] & "-" & _
                [ID]
            
            Case Is = "R2"
                stSOURCE_Code = _
                [Plntmstr_Symbol] & "-" & _
                Mid([STORED_FOR_ASSOCIATE], 3, 2) & "-" & _
                Mid([STORED_FOR_ASSOCIATE], 5, 2) & "-" & _
                [SEED_ZONE] & "-" & _
                [ORIGIN_ELEVATION] & "-" & _
                Right(Nz([CROP_YEAR], [DATE_COLLECTED]), 2)
            
            Case Is = "R4"
                MsgBox "Source Code is not used by Region 04"
                GoTo Exit_Generate_Source_Code_Click
        
            Case Is = "R5"
                If Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_SPECIES_NO subform]![SPECIES_NO] <> "" Then
                    stSpecies_Code = Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_SPECIES_NO subform]![SPECIES_NO]
                Else
                    stSpecies_Code = Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_SPECIES_NO subform]![Plntmstr_Symbol]
                End If
                If COMBINED Then
                    stCombined_code = "="
                Else
                    stCombined_code = "-"
                End If
            
                stSOURCE_Code = _
                stSpecies_Code & "-" & _
                [SEED_ZONE] & "." & _
                [ORIGIN_ELEVATION] & "-" & _
                Mid([STORED_FOR_ASSOCIATE], 3, 2) & "-" & _
                Mid([STORED_FOR_ASSOCIATE], 5, 2) & "-" & _
                [COLLECT_METHOD] & "-" & _
                [GENETIC_BASE] & _
                stCombined_code & _
                Right(Nz([CROP_YEAR], [DATE_COLLECTED]), 2)
            
            Case Is = "R6"
                If [BREEDING_ZONE] > "" Then
                    stZone = [BREEDING_ZONE] & "-"
                Else
                    stZone = [SEED_ZONE] & "-" & Mid([STORED_FOR_ASSOCIATE], 5, 2)
                End If
                If [HUC] > "" Then
                stHUC = [HUC] & "-"
                Else
                    stHUC = ""
                End If
            
                stSOURCE_Code = [Plntmstr_Symbol] & "-" & _
                Mid([STORED_FOR_ASSOCIATE], 3, 2) & "-" & _
                stZone & _
                [COLLECT_METHOD] & "-" & _
                [ORIGIN_ELEVATION] & "-" & _
                stHUC & _
                Right(Nz([CROP_YEAR], [DATE_COLLECTED]), 2) & " " & _
                [CERT_CODE]
                
            Case Is = "R6d"
                If Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_SPECIES_NO subform]![SPECIES_NO] <> "" Then
                    stSpecies_Code = Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_SPECIES_NO subform]![SPECIES_NO]
                Else
                    stSpecies_Code = Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_SPECIES_NO subform]![Plntmstr_Symbol]
                End If
                
                stSOURCE_Code = _
                [ACCESSION] & "-" & _
                Right(Nz([CROP_YEAR], [DATE_COLLECTED]), 2) & "-" & _
                stSpecies_Code & "-" & _
                [TREE]
            
                'stSOURCE_Code = _
                'stSpecies_Code & "-" & _
                '[ACCESSION] & "-" & _
                '[TREE] & "-" & _
                'Right(Nz([CROP_YEAR], [DATE_COLLECTED]), 2)
            
            Case Is = "R9"
                stSOURCE_Code = _
                [Plntmstr_Symbol] & "-" & _
                Mid([STORED_FOR_ASSOCIATE], 3, 2) & "-" & _
                [SEED_ZONE] & "-" & _
                Right(Nz([CROP_YEAR], [DATE_COLLECTED]), 2)
            
            Case Is = "UNS"
            stSOURCE_Code = "Source Code type not specified"
        
            Case Else
            stSOURCE_Code = "Source Code Type Unknown"
        
            End Select
    
        [SOURCE_CODE] = stSOURCE_Code
    
    End If

Exit_Generate_Source_Code_Click:
    Exit Sub

Err_Generate_Source_Code_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Generate_Source_Code_Click
    
End Sub

Private Sub Open_Source_TI_Click()
On Error GoTo Err_Open_Source_TI_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
 
    stLinkCriteria = "[CN_SOURCE_LOT]=" & "'" & Me![CN] & "'"
        stDocName = "NMIS_SOURCE_LOTS_TI_form"
        DoCmd.OpenForm stDocName, , , stLinkCriteria
    
Exit_Open_Source_TI_Click:
    Exit Sub

Err_Open_Source_TI_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Source_TI_Click

End Sub

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)

    Plntmstr_Symbol.Undo
    Response = MsgBox("Do you want to enter a new species?", vbYesNo)
    
    If Response = vbYes Then
        DoCmd.OpenForm "NMIS_SPECIES", acNormal, , , acFormEdit
        DoCmd.GoToRecord , , acNewRec
    End If

End Sub

Private Sub Plntmstr_Symbol_Enter()

    Plntmstr_Symbol.Requery
    
End Sub

Private Sub PLNTMSTR_SYMBOL_NotInList(NewData As String, Response As Integer)

    Plntmstr_Symbol.Undo
    Response = MsgBox("Not Currently a valid species. Do you want to make this a valid species?", vbYesNo)
    
    If Response = vbYes Then
        DoCmd.OpenForm "NMIS_SPECIES", acNormal, , , acFormEdit
        DoCmd.GoToRecord , , acNewRec
    End If

End Sub

Private Sub PRODUCT_CN_AfterUpdate()

    PRODUCT_CN.Requery
    
End Sub

Private Sub PRODUCT_CN_Enter()

    PRODUCT_CN.Requery

End Sub

Private Sub Seed_Box_Label_Large_ID_Click()
On Error GoTo Err_Seed_Box_Label_Large_ID_Click

    Dim stDocName As String

    stDocName = "Seedbox_Label_Large_ID"
    DoCmd.OpenReport stDocName, acPreview

Exit_Seed_Box_Label_Large_ID_Click:
    Exit Sub

Err_Seed_Box_Label_Large_ID_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Seed_Box_Label_Large_ID_Click
    
End Sub


Private Sub SOURCE_CODE_AfterUpdate()
    If IsNull(Source_code_old) Then
        Source_code_old = Backup_source_code
    End If
End Sub

Private Sub SOURCE_CODE_Enter()
    If IsNull(Source_code_old) Then
        Backup_source_code = SOURCE_CODE
    End If
End Sub

Private Sub Source_Lot_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![Source_Lot_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
    

End Sub

Private Sub Source_Lot_Lookup_Enter()

    ' Find the record that matches the control.
    Dim rs As Object
    If Not IsNull(Source_Lot_Lookup) Then
        Set rs = Me.Recordset.Clone
        rs.FindFirst "[CN] = '" & Me![Source_Lot_Lookup] & "'"
        Me.Bookmark = rs.Bookmark
    End If

End Sub

Private Sub STORED_AT_ASSOCIATE_Enter()

    STORED_AT_ASSOCIATE.Requery
    
End Sub

Private Sub STORED_FOR_ASSOCIATE_Enter()

    STORED_FOR_ASSOCIATE.Requery
    
End Sub

Private Sub STORED_FOR_ASSOCIATE_NotInList(NewData As String, Response As Integer)

    STORED_FOR_ASSOCIATE.Undo
    Response = MsgBox("Not Currently a valid Associate. Do you want to make this a valid Associate?", vbYesNo)
    
    If Response = vbYes Then
        DoCmd.OpenForm "NMIS_ASSOCIATES", acNormal, , , acFormEdit
    End If

End Sub
Private Sub Seed_Box_Label_Click()
On Error GoTo Err_Seed_Box_Labels_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form2"
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    Forms![Lot_ID_Input_Form2]![ID] = ID

Exit_Seed_Box_Labels_Click:
    Exit Sub

Err_Seed_Box_Labels_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Seed_Box_Labels_Click

End Sub
Private Sub Seed_Box_Mini_Label_Click()
On Error GoTo Err_Seed_Box_Mini_Label_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form2c"
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    Forms![Lot_ID_Input_Form2c]![ID1] = ID

Exit_Seed_Box_Mini_Label_Click:
    Exit Sub

Err_Seed_Box_Mini_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Seed_Box_Mini_Label_Click
    
End Sub
Private Sub Seed_Card_Click()
On Error GoTo Err_Seed_Card_Click

    Dim stDocName As String

    stDocName = "Seedbox_Labels"
    DoCmd.OpenReport stDocName, acPreview

Exit_Seed_Card_Click:
    Exit Sub

Err_Seed_Card_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Seed_Card_Click
    
End Sub
Private Sub NMIS_SOURCE_CARD_Click()
On Error GoTo Err_NMIS_SOURCE_CARD_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Card_Front"
    DoCmd.OpenReport stDocName, acPreview

Exit_NMIS_SOURCE_CARD_Click:
    Exit Sub

Err_NMIS_SOURCE_CARD_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_CARD_Click
    
End Sub

Private Sub Transactions_Click()
On Error GoTo Err_Transactions_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE_NEW_LOTS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Transactions_Click:
    Exit Sub

Err_Transactions_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Transactions_Click
    
End Sub