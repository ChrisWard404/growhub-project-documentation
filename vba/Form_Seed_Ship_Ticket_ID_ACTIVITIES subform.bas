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

Private Sub ACTIVITY_UNITS_Click()

End Sub

Private Sub ACTIVITY_UNITS_DblClick(Cancel As Integer)

    If Forms![SEED_SHIPPING_TICKET Subform]![Seed_Balance2_ subform].Form![Sum Of ACTIVITY_UNITS] > 0 Then
        ACTIVITY_UNITS = Forms![SEED_SHIPPING_TICKET Subform]![Seed_Balance2_ subform].Form![Sum Of ACTIVITY_UNITS]
    End If
    
End Sub

Private Sub ACTIVITY_UNITS_Enter()
        
    ACTIVITY_DATE = Forms![SEED_SHIPPING_TICKET Subform]![DESIRED_DATE]

    If IsNull(Activity_Code) Then
        MsgBox "Please enter and ACTIVITY CODE first", vbCritical
        Activity_Code.SetFocus
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

    'Sets the CN on the calling form to the INDEX on the calling form + User_Nursery_Code from the NMIS_ACCESS_SET_USER_NURSERY subform on the switchboard
    [CN] = [Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code

    Dim stDocName As String
    Dim stLinkCriteria As String


    stDocName = "NMIS_ID_MGMT_CODES_Ship_Ticket subform"
    
    stLinkCriteria = "[ACTIVITY_ID_CN]=" & "'" & Me![CN] & "'"

    DoCmd.RunCommand acCmdRefreshPage
    DoCmd.OpenForm stDocName, , , stLinkCriteria

End Sub

Private Sub Form_Current()

    If [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
        [Activity_Code] = "TSTTZ" Or [Activity_Code] = "TSTGER" Or _
       [Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
       [Activity_Code] = "ADDNON" Or [Activity_Code] = "WEIGH" Or _
       [Activity_Code] Like "TST*" Or [Activity_Code] Like "RTS*" Or _
       [Activity_Code] Like "RETST*" Then
        [open_source_test_entry_form].Visible = True
    Else
        [open_source_test_entry_form].Visible = False
    End If
    
End Sub

Private Sub Open_Jobcode_Form_Click()
On Error GoTo Err_Open_Jobcode_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_MGMT_CODES_Ship_Ticket subform"
    
    stLinkCriteria = "[ACTIVITY_ID_CN]=" & "'" & Me![CN] & "'"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Jobcode_Form_Click:
    Exit Sub

Err_Open_Jobcode_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Jobcode_Form_Click
End Sub

Private Sub Open_More_Info_Form_Click()
On Error GoTo Err_Open_More_Info_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_ACTIVITIES_MORE_INFO_Ship_Tkt_FORM"
    stLinkCriteria = "[SOURCE_LOT_CN]=" & "'" & Me![SOURCE_LOT_CN] & "'"
   
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_More_Info_Form_Click:
    Exit Sub

Err_Open_More_Info_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_More_Info_Form_Click
    
End Sub

Private Sub open_source_test_entry_form_Click()

On Error GoTo Err_open_source_test_entry_form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    'If [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
        '[Activity_Code] = "TSTTZ" Or [Activity_Code] = "TSTGER" Or _
       '[Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
       '[Activity_Code] = "ADDNON" Or [Activity_Code] = "WEIGH" Then
       stLinkCriteria = "[ID_ACTIVITY_CN]=" & "'" & Me![CN] & "'"
        DoCmd.RunCommand acCmdRefreshPage
        stDocName = "NMIS_SOURCE_TESTS_Ship_Ticket Form"
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

Private Sub Open_Storage_Location_Form_Click()
On Error GoTo Err_Open_Storage_Location_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_LOCATIONS_for_Source_Withdrawal subform"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Storage_Location_Form_Click:
    Exit Sub

Err_Open_Storage_Location_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Storage_Location_Form_Click
    
End Sub

Private Sub Print_Lot_Label_Click()
On Error GoTo Err_Print_Lot_Label_Click

    Dim stDocName As String

     If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "040207" Then
        stDocName = "seed_shipping_lot_label_040207"
    Else
        stDocName = "seed_shipping_lot_label"
    End If
    
    DoCmd.OpenReport stDocName, acViewPreview
    
Exit_Print_Lot_Label_Click:
    Exit Sub

Err_Print_Lot_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Lot_Label_Click
    
End Sub

Private Sub Source_LOT_CN_DblClick(Cancel As Integer)

    SOURCE_LOT_CN.Locked = False
    MsgBox "Source Lot ID unlocked for edting"
    
End Sub

Private Sub SOURCE_LOT_CN_Enter()

    If IsNull(SOURCE_LOT_CN) Then
        SOURCE_LOT_CN.Locked = False
    Else
        SOURCE_LOT_CN.Locked = True
    End If

End Sub

Private Sub SOURCE_LOT_CN_Exit(Cancel As Integer)

    If Not IsNull(SOURCE_LOT_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
        If IsNull([NOTE]) Then
            If Not IsNull(Forms![SEED_SHIPPING_TICKET Subform].Form![NOTE]) Then
                NOTE = Forms![SEED_SHIPPING_TICKET Subform].Form![NOTE]
            End If
        End If
        If (Not IsNull(Forms![SEED_SHIPPING_TICKET Subform]![Default_Activity_Code]) And _
            IsNull(Activity_Code)) Then
            Activity_Code = Forms![SEED_SHIPPING_TICKET Subform]![Default_Activity_Code]
        End If
        If IsNull([DESTINATION_ASSOCIATE]) Then
            [DESTINATION_ASSOCIATE] = Forms![SEED_SHIPPING_TICKET Subform]![DELIVERED_TO_ASSOCIATE]
        End If
    End If
    
    SOURCE_LOT_CN.Locked = True
    
End Sub


Private Sub TICKET_CN_AfterUpdate()

    Requery
    
End Sub

Private Sub TICKET_CN_DblClick(Cancel As Integer)
    
    TICKET_CN.Locked = False
    MsgBox "Ticket ID now Unlocked for Editing"
    
End Sub

Private Sub TICKET_CN_Exit(Cancel As Integer)

    TICKET_CN.Locked = True
    
End Sub