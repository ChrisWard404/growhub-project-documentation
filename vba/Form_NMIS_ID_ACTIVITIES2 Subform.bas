Option Compare Database

Private Sub ACTIVITY_CODE_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ACTIVITY_CODES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria


End Sub

Private Sub ACTIVITY_CODE_Enter()

    Activity_Code.Requery
    If IsNull(Activity_Code) Then
        [open_source_test_entry_form].Visible = False
    End If
    
End Sub

Private Sub Activity_Code_Exit(Cancel As Integer)

    If [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
       [Activity_Code] = "RETST2" Or [Activity_Code] = "RETST3" Or _
       [Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
       [Activity_Code] = "DONATI" Or [Activity_Code] = "DONAOT" Or _
       [Activity_Code] = "ADDNON" Then
        [open_source_test_entry_form].Visible = True
    Else
        [open_source_test_entry_form].Visible = False
    End If
    
End Sub

Private Sub ACTIVITY_DATE_DblClick(Cancel As Integer)
    
    ACTIVITY_DATE.Locked = False
    
End Sub

Private Sub ACTIVITY_DATE_Enter()

    If IsNull(ACTIVITY_DATE) Then
        ACTIVITY_DATE.Locked = False
    Else
        ACTIVITY_DATE.Locked = True
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
       [Activity_Code] = "RETST2" Or [Activity_Code] = "RETST3" Or _
       [Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
       [Activity_Code] = "DONATI" Or [Activity_Code] = "DONAOT" Or _
       [Activity_Code] = "ADDNON" Then
        [open_source_test_entry_form].Visible = True
    Else
        [open_source_test_entry_form].Visible = False
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

Private Sub Form_AfterInsert()
    
    DoCmd.RunMacro "set_cn"
    If [Activity_Code] = "WEIGH" Or [Activity_Code] = "ADDCMB" Or _
        [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
        [Activity_Code] = "RETST2" Or [Activity_Code] = "RETST3" Or _
        [Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
        [Activity_Code] = "DONATI" Or [Activity_Code] = "DONAOT" Or _
        [Activity_Code] = "ADDNON" Or [Activity_Code] = "ACQBT" Then
        [open_source_test_entry_form].Visible = True
    Else
        [open_source_test_entry_form].Visible = False
    End If
    
    
End Sub

Private Sub Form_Current()

    If [Activity_Code] = "WEIGH" Or [Activity_Code] = "ADDCMB" Or _
        [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
        [Activity_Code] = "RETST2" Or [Activity_Code] = "RETST3" Or _
        [Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
        [Activity_Code] = "DONATI" Or [Activity_Code] = "DONAOT" Or _
        [Activity_Code] = "DONATI" Or [Activity_Code] = "ADDNON" Or _
        [Activity_Code] = "DONATI" Or [Activity_Code] = "STONON" Or _
        [Activity_Code] Like "TST*" Or [Activity_Code] Like "RTS*" Or _
        [Activity_Code] Like "RETST*" Then
        [open_source_test_entry_form].Visible = True
    Else
        [open_source_test_entry_form].Visible = False
    End If
    'If IsNull(XS_SP_Balance2) Then
        'xssp_bal2.Visible = False
        'xssp_bal_label2.Visible = False
    'Else
        'xssp_bal2.Visible = True
        'xssp_bal_label2.Visible = True
    'End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

        'xssp_bal2.Visible = False
        'xssp_bal_label2.Visible = False
        
End Sub

Private Sub Open_MGMT_codes2_subform_Click()
On Error GoTo Err_Open_MGMT_codes2_subform_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
    
        stLinkCriteria = "[ACTIVITY_ID_CN]=" & "'" & Me![CN] & "'"
        stDocName = "NMIS_ID_MGMT_CODES2 subform"
        DoCmd.OpenForm stDocName, , , stLinkCriteria
    
Exit_Open_MGMT_codes2_subform_Click:
    Exit Sub

Err_Open_MGMT_codes2_subform_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_MGMT_codes2_subform_Click
    
End Sub

Private Sub open_source_test_entry_form_Click()

On Error GoTo Err_open_source_test_entry_form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    'If [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
       '[Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
       '[Activity_Code] = "DONATI" Or [Activity_Code] = "DONAOT" Or _
       '[Activity_Code] = "ADDNON" Then
        stLinkCriteria = "[ID_ACTIVITY_CN]=" & "'" & Me![CN] & "'"
        DoCmd.RunCommand acCmdRefreshPage
        stDocName = "NMIS_SOURCE_TESTS_for_act_data Form"
        DoCmd.OpenForm stDocName, , , stLinkCriteria
    'Else
        'MsgBox "Activity must be '226/TEST', '235/ADDNON', '252/RETEST', '253/XFRIN1' OR '254/XFRIN2'."
    'End If

Exit_open_source_test_entry_form_Click:
    Exit Sub

Err_open_source_test_entry_form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_open_source_test_entry_form_Click

End Sub
Private Sub Add_Record_Click()
On Error GoTo Err_Add_Record_Click


    DoCmd.GoToRecord , , acNewRec

Exit_Add_Record_Click:
    Exit Sub

Err_Add_Record_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Add_Record_Click
    
End Sub
Private Sub Open_More_Info_Form_Click()
On Error GoTo Err_Open_More_Info_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_ACTIVITIES_MORE_INFO_SUBFORM"
    stLinkCriteria = "[ID_ACTIVITY_CN]=" & "'" & Me![ID_ACTIVITY_CN] & "'"
   
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_More_Info_Form_Click:
    Exit Sub

Err_Open_More_Info_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_More_Info_Form_Click
    
End Sub