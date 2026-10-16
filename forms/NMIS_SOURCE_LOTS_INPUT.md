# Form: NMIS_SOURCE_LOTS_INPUT

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`, `NMIS_ID_ACTIVITIES`, `NMIS_PRODUCTS`, `NMIS_SOURCE_LOTS`  
**Subforms/subreports:** `Form.NMIS_SPECIES_NO subform`, `Form.NMIS_ID_ACTIVITIES_NEW_LOTS Subform`, `Form.SOURCE_CODE_TYPE Subform`, `Form.NMIS_ID_LOCATIONS2 subform`, `Form.NMIS_SOURCE_TESTS_NEW Subform`, `Form.NMIS_CLIENT_MGMT_CODES_Source_Lots_new_Subform`, `Form.NMIS_SOURCE_LastTestData2b Query subform`  
**Opens:** `Form:Lot_ID_Input_Form`, `Form:Lot_ID_Input_Form2`, `Form:Lot_ID_Input_Form2c`, `Form:NMIS_ASSOCIATES`, `Form:NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE_NEW_LOTS`, `Form:NMIS_SOURCE_Card_Activities`, `Form:NMIS_SOURCE_Card_BACK`, `Form:NMIS_SOURCE_Card_Front`, `Form:NMIS_SOURCE_LOTS_Bend`, `Form:NMIS_SOURCE_LOTS_GERM_TESTS`, `Form:NMIS_SOURCE_LOTS_TI_form`, `Form:NMIS_SOURCE_TESTS_NEW_LOT Form`, `Form:NMIS_SPECIES`, `Form:Refresh_Close`, `Form:Seedbox_Label_Large_ID`, `Form:Seedbox_Labels`, `Form:Seedbox_Labels2`, `Report:Lot_ID_Input_Form`, `Report:Lot_ID_Input_Form2`, `Report:Lot_ID_Input_Form2c`, `Report:NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE_NEW_LOTS`, `Report:NMIS_SOURCE_Card_Activities`, `Report:NMIS_SOURCE_Card_BACK`, `Report:NMIS_SOURCE_Card_Front`, `Report:NMIS_SOURCE_LOTS_Bend`, `Report:NMIS_SOURCE_LOTS_GERM_TESTS`, `Report:NMIS_SOURCE_LOTS_TI_form`, `Report:NMIS_SOURCE_TESTS_NEW_LOT Form`, `Report:Refresh_Close`, `Report:Seedbox_Label_Large_ID`, `Report:Seedbox_Labels`, `Report:Seedbox_Labels2`  
**Opened from (VBA):** `Form_NMIS_AGREEMENTS`, `Form_NMIS_AGREEMENTS_bu`, `Form_NMIS_AGREEMENTS_w_lot_lookup`, `Form_NMIS_SOURCE_LOTS`, `Form_NMIS_SOURCE_LOTS2`, `Form_NMIS_SOURCE_LOTS_bu`  
**Form events with code:** AfterInsert, Close, Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box463 |  |  |  |  | 0.03, 0.03, 3.09, 0.33 |
| Subform | NMIS_SPECIES_NO subform |  | Form.NMIS_SPECIES_NO subform (master: PLNTMSTR_SYMBOL → child: PLNTMSTR_SYMBOL) |  |  | 4.56, 0.03, 1.50, 0.32 |
| TextBox | SOURCE_CODE | Source Code: | SOURCE_CODE |  | AfterUpdate, Enter | 3.58, 0.44, 4.09, 0.23 |
| TabControl | TabCtl70 |  |  |  |  | 0.00, 0.76, 10.41, 5.79 |
| Page | Lot Information |  |  |  |  | 0.05, 1.05, 10.26, 5.41 |
| ComboBox | STORED_FOR_ASSOCIATE | Stored For: | STORED_FOR_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Hist)") AS AN FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.HISTORICAL) Like IIf(Not ([NMIS_ASSOCIATES].[HISTORICAL])=IsNull([Forms]![NMIS_SOURCE_LOTS_INPUT]![STORED_FOR_ASSOCIATE]),"*",False))); | Enter, NotInList | 1.07, 1.10, 1.11, 0.20 |
| Rectangle | Box253 |  |  |  |  | 0.05, 1.06, 10.24, 2.00 |
| Rectangle | Box266 |  |  |  |  | 0.05, 3.10, 10.26, 1.65 |
| Rectangle | Box436 |  |  |  |  | 0.05, 4.79, 4.89, 1.50 |
| ComboBox | STORED_AT_ASSOCIATE | Stored  At: | STORED_AT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE;  | Enter | 1.07, 1.35, 1.11, 0.20 |
| TextBox | DATE_COLLECTED | Collect Date: | DATE_COLLECTED |  | Exit | 1.07, 1.59, 0.84, 0.20 |
| TextBox | CROP_YEAR | Crop Year YYYY: | CROP_YEAR |  | Enter | 3.15, 1.60, 0.53, 0.20 |
| ComboBox | CATEGORY_CODE | Category: | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, [CATEGORY_DESC] & IIf([historical]," (Hist)") AS cd, NMIS_CATEGORIES.HISTORICAL FROM NMIS_CATEGORIES WHERE (((NMIS_CATEGORIES.HISTORICAL) Like IIf(IsNull([Forms]![NMIS_SOURCE_LOTS_INPUT]![CATEGORY_CODE]),False,"*"))) ORDER BY NMIS_CATEGORIES.CATEGORY_CODE; | Enter | 1.07, 1.84, 0.81, 0.20 |
| ComboBox | COLLECTED_BY_ASSOCIATE | Collected By: | COLLECTED_BY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 1.07, 2.09, 0.00, 0.20 |
| ComboBox | PRODUCT_CN | Product: | PRODUCT_CN | SELECT NMIS_PRODUCTS.CN, IIf(Not IsNull([PRODUCT_DESC]),[PRODUCT_DESC],"") & IIf([historical]," (Hist)") AS PD, NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.HISTORICAL FROM NMIS_PRODUCTS WHERE (((NMIS_PRODUCTS.CATEGORY_CODE)="nsps") AND ((NMIS_PRODUCTS.HISTORICAL) Like IIf(Not ([NMIS_Products].[HISTORICAL])=IsNull([Forms]![NMIS_SOURCE_LOTS_INPUT]![PRODUCT_CN]),"*",False))) ORDER BY IIf(Not IsNull([PRODUCT_DESC]),[PRODUCT_DESC],"") & IIf([historical]," (Hist)"); | AfterUpdate, Enter | 1.07, 2.32, 3.11, 0.20 |
| TextBox | TREE_NUMBER | Tree No.(s): | TREE_NUMBER |  |  | 1.07, 2.57, 3.08, 0.20 |
| ComboBox | PLNTMSTR_SYMBOL | Species Code: | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_ABBREVIATION, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY ORDER BY NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL; | NotInList | 5.02, 1.10, 1.09, 0.20 |
| TextBox | BREEDING_ZONE | Breeding Zone: | BREEDING_ZONE |  | AfterUpdate, Enter | 5.02, 1.35, 0.78, 0.20 |
| TextBox | BREEDING_SUBUNIT | Breeding Subunit: | BREEDING_SUBUNIT |  |  | 5.02, 1.60, 0.78, 0.20 |
| TextBox | SEED_ZONE | Seed Zone: | SEED_ZONE |  |  | 5.03, 1.84, 0.74, 0.20 |
| TextBox | ORIGIN_ELEVATION | Elevation: | ORIGIN_ELEVATION |  |  | 5.03, 2.09, 0.84, 0.20 |
| TextBox | HUC | HUC: | HUC |  |  | 5.03, 2.32, 0.99, 0.20 |
| TextBox | HABITAT | Habitat: | HABITAT |  |  | 5.03, 2.57, 0.99, 0.20 |
| TextBox | COLLECT_METHOD | Collect Method: | COLLECT_METHOD |  |  | 7.30, 1.10, 0.84, 0.20 |
| TextBox | GENETIC_BASE | Genetic Base: | GENETIC_BASE |  |  | 7.30, 1.35, 0.74, 0.20 |
| TextBox | CERT_CODE | Cert Class: | CERT_CODE |  |  | 7.30, 1.59, 0.84, 0.20 |
| TextBox | PROAG_ELEVATION | Proag Elevation: | PROAG_ELEVATION |  |  | 7.30, 1.84, 0.84, 0.20 |
| TextBox | LATTITUDE | Lattitude: | LATTITUDE |  |  | 7.30, 2.08, 0.00, 0.21 |
| TextBox | LONGITUDE | Longitude: | LONGITUDE |  |  | 7.30, 2.32, 0.00, 0.21 |
| TextBox | GEOGRAPHIC_LOCATION | Geographic Loc: | GEOGRAPHIC_LOCATION |  |  | 7.30, 2.57, 1.94, 0.20 |
| TextBox | TOWNSHIP | Township: | TOWNSHIP |  |  | 9.36, 1.10, 0.81, 0.21 |
| TextBox | RANGE | Range: | RANGE |  |  | 9.36, 1.35, 0.81, 0.21 |
| TextBox | SECTION | Section: | SECTION |  |  | 9.36, 1.59, 0.81, 0.21 |
| TextBox | MERIDIAN | Meridan: | MERIDIAN |  |  | 9.36, 1.84, 0.81, 0.21 |
| TextBox | NOTE | Note: | NOTE |  |  | 0.73, 2.81, 9.23, 0.20 |
| ComboBox | CATEGORY_DESCRIPTION |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, [CATEGORY_DESC] & IIf([historical]," (Hist)") AS cd, NMIS_CATEGORIES.CATEGORY_CODE FROM NMIS_CATEGORIES WHERE (((NMIS_CATEGORIES.HISTORICAL) Like IIf(IsNull([Forms]![NMIS_SOURCE_LOTS_INPUT]![CATEGORY_CODE]),False,"*"))); | AfterUpdate, Enter | 1.88, 1.84, 2.27, 0.20 |
| Subform | NMIS_ID_ACTIVITIES Subform |  | Form.NMIS_ID_ACTIVITIES_NEW_LOTS Subform (master: CN → child: SOURCE_LOT_CN) |  |  | 0.11, 3.16, 10.16, 1.51 |
| CommandButton | Open NMIS_SOURCE_TEST_RESULTS_NEW_LOT | Enter Test Data |  |  | Click | 8.62, 4.81, 0.93, 0.00 |
| Subform | SOURCE_CODE_TYPE Subform |  | Form.SOURCE_CODE_TYPE Subform (master: STORED_FOR_ASSOCIATE → child: ASSOCIATE) |  |  | 2.30, 5.55, 3.66, 0.75 |
| TextBox | INSERTED_BY | Inserted By: | INSERTED_BY |  |  | 8.56, 5.94, 1.63, 0.00 |
| TextBox | INSERTED_DATE | Inserted Date: | INSERTED_DATE |  |  | 8.56, 6.15, 1.63, 0.00 |
| TextBox | Activity_Code |  | =[NMIS_ID_ACTIVITIES Subform].Form!ACTIVITY_CODE |  |  | 0.51, 6.22, 2.14, 0.00 |
| Subform | NMIS_ID_LOCATIONS2 subform |  | Form.NMIS_ID_LOCATIONS2 subform (master: CN → child: SOURCE_LOT_CN) |  |  | 0.11, 4.84, 4.75, 1.53 |
| CheckBox | COMBINED | Combined: | COMBINED |  |  | 3.15, 1.15, 0.27, 0.00 |
| CommandButton | Seed_Box_Label | Seed Box Label |  |  | Click | 5.03, 5.12, 1.04, 0.29 |
| CommandButton | Seed_Box_Mini_Label | Seed Box Mini-Label |  |  | Click | 5.03, 5.78, 1.32, 0.29 |
| CommandButton | NMIS_SOURCE_CARD | Source Card |  |  | Click | 6.46, 5.12, 0.88, 0.29 |
| CommandButton | NMIS_SOURCE_CARD_BACK | Source Card Back |  |  | Click | 6.46, 5.46, 1.12, 0.29 |
| CommandButton | Open_Bend_Lots_Form |  Bend Lots |  |  | Click | 8.66, 5.54, 0.78, 0.29 |
| CommandButton | Transactions | Transactions |  |  | Click | 8.55, 4.97, 1.21, 0.35 |
| CommandButton | Seed_Box_Label_Large_ID | Seed Box ID Label |  |  | Click | 5.03, 5.46, 1.18, 0.29 |
| CheckBox | Duplicate | Duplicate |  |  |  | 8.10, 5.19, 0.27, 0.00 |
| CommandButton | NMIS_SOURCE_CARD_Activities | Card Activities |  |  | Click | 6.46, 5.78, 1.12, 0.29 |
| CommandButton | Open_Source_TI | Source TI |  |  | Click | 9.33, 2.40, 0.88, 0.29 |
| TextBox | BREEDING_ZONE_OLD | Old BZ: | BREEDING_ZONE_OLD |  |  | 9.36, 2.09, 0.68, 0.20 |
| TextBox | ACCESSION |  | ACCESSION |  |  | 8.46, 2.25, 0.88, 0.00 |
| TextBox | TREE |  | TREE |  |  | 8.46, 2.42, 0.88, 0.00 |
| Page | Page454 | Tests |  |  |  | 0.09, 1.05, 10.22, 5.41 |
| Subform | NMIS_SOURCE_TESTS Subform |  | Form.NMIS_SOURCE_TESTS_NEW Subform (master: CN → child: SOURCE_LOT_CN) |  |  | 0.29, 1.45, 9.67, 4.10 |
| Page | Page460 | Client Mgmt Codes |  |  |  | 0.09, 1.05, 10.22, 5.41 |
| Subform | NMIS_CLIENT_MGMT_CODES_Source_Lot_Subform | Client Mgmt Codes for this Lot | Form.NMIS_CLIENT_MGMT_CODES_Source_Lots_new_Subform (master: CN → child: SOURCE_CN) |  |  | 3.29, 1.70, 3.19, 2.79 |
| Subform | NMIS_SOURCE_LastTestData2 Query subform | Last Test Data | Form.NMIS_SOURCE_LastTestData2b Query subform (master: CN → child: SOURCE_LOT_CN) |  |  | 0.60, 1.81, 2.04, 1.05 |
| Rectangle | Box133 |  |  |  |  | 0.54, 1.57, 2.19, 1.33 |
| Line | Line86 |  |  |  |  | 0.04, 0.39, 9.85, 0.00 |
| TextBox | ID2 | 'Old' ID: | ID2 |  |  | 9.04, 0.47, 1.25, 0.20 |
| CommandButton | Generate_Source_Code | Generate |  |  | Click | 7.74, 0.43, 0.62, 0.00 |
| TextBox | ID | ID: | ID |  | AfterUpdate, DblClick, Enter, Exit | 0.44, 0.44, 1.82, 0.22 |
| TextBox | CN |  | CN |  |  | 6.93, 0.17, 0.00, 0.00 |
| TextBox | Index |  | Index |  |  | 6.93, 0.03, 0.00, 0.00 |
| CommandButton | Refresh and Close | Close |  |  |  | 9.69, 0.03, 0.52, 0.28 |
| TextBox | New_CN |  | =[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code |  |  | 8.78, 0.03, 0.00, 0.00 |
| ComboBox | Source_Lot_Lookup |  |  | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_LOTS.SOURCE_CODE, NMIS_SOURCE_LOTS.CATEGORY_CODE, NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE FROM NMIS_SOURCE_LOTS ORDER BY NMIS_SOURCE_LOTS.ID; | AfterUpdate, Enter | 0.97, 0.07, 2.08, 0.27 |
| Label | Source_Lot_Lookup_Label | Find Lot: |  |  |  | 0.12, 0.07, 0.78, 0.24 |
| TextBox | Backup_ID |  |  |  |  | 7.76, 0.04, 0.00, 0.00 |
| Label | Label147 | NMIS Source Lots Edit/New Lot Entry |  |  |  | 3.36, 0.04, 3.61, 0.28 |
| TextBox | Source_code_old | Old Source Code: | SOURCE_CODE_OLD |  |  | 5.91, 0.71, 4.09, 0.21 |
| TextBox | Backup_source_code |  |  |  |  | 7.76, 0.21, 1.17, 0.00 |
| TextBox | BackupBreedingZone |  |  |  |  | 8.98, 0.21, 0.67, 0.00 |

## Code-behind (VBA)

```vb
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
```
