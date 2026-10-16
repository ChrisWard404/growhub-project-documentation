Option Compare Database

Private Sub ACTIVITY_CODE_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ACTIVITY_CODES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria


End Sub

Private Sub ACTIVITY_CODE_Enter()

    Activity_Code.Requery
    
End Sub

Private Sub Activity_Code_Exit(Cancel As Integer)

    If [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
       [Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
       [Activity_Code] = "DONATI" Or [Activity_Code] = "DONAOT" Or _
       [Activity_Code] = "ADDNON" Then
        Forms![NMIS_SOURCE_LOTS_INPUT]![Open NMIS_SOURCE_TEST_RESULTS_NEW_LOT].Visible = True
    Else
        Forms![NMIS_SOURCE_LOTS_INPUT]![Open NMIS_SOURCE_TEST_RESULTS_NEW_LOT].Visible = False
    End If
End Sub

Private Sub Activity_Number_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ACTIVITY_CODES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria


End Sub

Private Sub Activity_Number_Enter()

    Activity_Number.Requery
    
End Sub

Private Sub Activity_Number_Exit(Cancel As Integer)

    If [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
       [Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
       [Activity_Code] = "DONATI" Or [Activity_Code] = "DONAOT" Or _
       [Activity_Code] = "ADDNON" Then
        Forms![NMIS_SOURCE_LOTS_INPUT]![Open NMIS_SOURCE_TEST_RESULTS_NEW_LOT].Visible = True
    Else
        Forms![NMIS_SOURCE_LOTS_INPUT]![Open NMIS_SOURCE_TEST_RESULTS_NEW_LOT].Visible = False
    End If
End Sub

Private Sub ACTIVITY_UNITS_Enter()

    If IsNull(Activity_Code) Then
        MsgBox "Please enter and ACTIVITY CODE first", vbCritical
        Activity_Code.SetFocus
    End If
    If Activity_Code = "CNRECV" Then
        UNIT_CODE = "BU"
    End If
        
End Sub

Private Sub ACTIVITY_UNITS_Exit(Cancel As Integer)
    
    Dim stBalance_Effect As String
    Dim lnNegBalance As Double
    
    If Not IsNull([BALANCE_EFFECT]) And Not IsNull([ACTIVITY_UNITS]) Then
    stBalance_Effect = [BALANCE_EFFECT]
    Select Case stBalance_Effect
        Case Is = "REMOVE"
            If [ACTIVITY_UNITS] > 0 Then
                'Response = MsgBox("Units should be Less than Zero. Change to Minus?", vbYesNo)
                'If Response = vbYes Then
                    lnNegBalance = [ACTIVITY_UNITS] * -1
                    [ACTIVITY_UNITS] = lnNegBalance
                'End If
            End If
        Case Is = "ADD"
            If [ACTIVITY_UNITS] < 0 Then
                MsgBox ("Units must be GREATER than Zero for Activity Code " & [Activity_Code])
                lnNegBalance = [ACTIVITY_UNITS] * -1
                [ACTIVITY_UNITS] = lnNegBalance
            End If
    End Select
    End If
    
End Sub

Private Sub Fiscal_Year_Exit(Cancel As Integer)

    If Not IsNull(FISCAL_YEAR) Then
        default_activity_FY = FISCAL_YEAR
    End If
    
End Sub

Private Sub Form_BeforeInsert(Cancel As Integer)

    default_activity_date = ACTIVITY_DATE

End Sub

Private Sub Form_Current()

    If [Activity_Code] = "WEIGH" Or [Activity_Code] = "ADDCMB" Or _
        [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
        [Activity_Code] = "RETST2" Or [Activity_Code] = "RETST3" Or _
        [Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
        [Activity_Code] = "DONATI" Or [Activity_Code] = "DONAOT" Or _
        [Activity_Code] = "ADDNON" Or [Activity_Code] = "ACQBT" Or _
        [Activity_Code] Like "TST*" Or [Activity_Code] Like "RTS*" Or _
        [Activity_Code] = "RETST*" Or [Activity_Code] Like "STONON" Then
        Forms![NMIS_SOURCE_LOTS_INPUT]![Open NMIS_SOURCE_TEST_RESULTS_NEW_LOT].Visible = True
    Else
        Forms![NMIS_SOURCE_LOTS_INPUT]![Open NMIS_SOURCE_TEST_RESULTS_NEW_LOT].Visible = False
    End If
End Sub

Private Sub NOTE_DblClick(Cancel As Integer)

    If IsNull(NOTE) Then
        If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "061019" Then
            NOTE = "Rec'd Bend Seed Extractory"
        End If
    End If
    
End Sub

Private Sub Open_MGMT_codes_subform_Click()
On Error GoTo Err_Open_MGMT_codes_subform_Click

    'Dim stDocName As String

    'stDocName = "NMIS_ID_MGMT_CODES_NEW subform"
    'DoCmd.OpenForm stDocName
    Dim stDocName As String
    Dim stLinkCriteria As String
    
        stLinkCriteria = "[ACTIVITY_ID_CN]=" & "'" & Me![CN] & "'"
        stDocName = "NMIS_ID_MGMT_CODES_NEW subform"
        DoCmd.OpenForm stDocName, , , stLinkCriteria
    
Exit_Open_MGMT_codes_subform_Click:
    Exit Sub

Err_Open_MGMT_codes_subform_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_MGMT_codes_subform_Click
    
End Sub

Private Sub open_source_test_entry_form_Click()

On Error GoTo Err_open_source_test_entry_form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    'If [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Then
        stLinkCriteria = "[ID_ACTIVITY_CN]=" & "'" & Me![CN] & "'"
        DoCmd.RunCommand acCmdRefreshPage
        stDocName = "NMIS_SOURCE_TESTS Form"
        DoCmd.OpenForm stDocName, , , stLinkCriteria
    'Else
        'MsgBox "Activity must be '226/TEST' or '252/RETEST'."
    'End If

Exit_open_source_test_entry_form_Click:
    Exit Sub

Err_open_source_test_entry_form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_open_source_test_entry_form_Click

End Sub

Private Sub Print_Bag_Label_Click()
On Error GoTo Err_Print_Bag_Label_Click

    Dim stDocName As String

    stDocName = "seed_entry_edit_lot_bag_label"
    DoCmd.OpenReport stDocName, acViewPreview
    
Exit_Print_Bag_Label_Click:
    Exit Sub

Err_Print_Bag_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Bag_Label_Click
    
End Sub