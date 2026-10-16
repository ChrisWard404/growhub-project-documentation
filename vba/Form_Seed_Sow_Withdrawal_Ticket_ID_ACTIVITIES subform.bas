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

Private Sub ACTIVITY_UNITS_Enter()

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

Private Sub Agreement_Lot_CN_AfterUpdate()

    AGREEMENT_LOT_CN.Requery
    
End Sub

Private Sub AGREEMENT_LOT_CN_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String
    Dim rs As Object
    
    LastAgreementCN = AGREEMENT_LOT_CN
    
    If (Not IsNull([AGREEMENT_LOT_CN]) Or [AGREEMENT_LOT_CN] = "") Then
        DoCmd.OpenForm "NMIS_AGREEMENT_LOTS", acNormal, , _
            "[CN] = Forms![Seed_Sow_Withdrawal_Ticket Subform]![Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].Form![AGREEMENT_LOT_CN] ", , acNormal
        Forms![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY].Visible = False
        DoCmd.GoToControl "ID"
        Forms![NMIS_AGREEMENT_LOTS]![Find_Lot].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Sort_By_Entry_Order].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots Label].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![Open_NMIS_Agreements Form].Visible = False
    End If
    
End Sub

Private Sub AGREEMENT_LOT_CN_Enter()

    AGREEMENT_LOT_CN.Requery
    
End Sub

Private Sub Enter_Strat_Activity_Click()

    LastActivityCN = CN
 
    If Activity_Code <> "STRAT" Then
    If IsNull(Forms![Seed_Sow_Withdrawal_Ticket Subform]![Default_Strat_Date]) Then
        MsgBox "Please enter a Default Strat Date"
    Else
        DoCmd.SetWarnings False
        Forms![Seed_Sow_Withdrawal_Ticket Subform]![Default_Activity_Code] = "STRAT"
        DoCmd.OpenQuery "StratAddActivityEnter"
        DoCmd.OpenQuery "StratAddUpdateCN"
        DoCmd.Requery
        Set rs = Me.Recordset.Clone
        rs.FindFirst "[CN] = '" & Me![LastActivityCN] & "'"
        Me.Bookmark = rs.Bookmark
        DoCmd.SetWarnings True
    End If
    Else
        MsgBox "Already a Strat Activity"
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

Private Sub Form_BeforeInsert(Cancel As Integer)

    If IsNull(ACTIVITY_DATE) Then
        ACTIVITY_DATE = [Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![DESIRED_DATE]
    End If
    
End Sub

Private Sub Form_BeforeUpdate(Cancel As Integer)

    If IsNull(ACTIVITY_DATE) Then
        ACTIVITY_DATE = [Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![DESIRED_DATE]
    End If
    
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

Private Sub Print_Lot_Label_Click()
On Error GoTo Err_Print_Lot_Label_Click

    Dim stDocName As String

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "040207" Then
            stDocName = "seed_shipping_lot_label_sw_040207"
    Else
        stDocName = "seed_shipping_lot_label_SW"
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
    MsgBox "Source ID Unlocked for editing"
    
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
            If Not IsNull([Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![NOTE]) Then
                NOTE = [Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![NOTE]
            End If
        End If
        If IsNull(DESTINATION_ASSOCIATE) Then
            DESTINATION_ASSOCIATE = [Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![DELIVERED_TO_ASSOCIATE]
        End If
        If (Not IsNull(Forms![Seed_Sow_Withdrawal_Ticket Subform]![Default_Activity_Code]) And _
            IsNull(Activity_Code)) Then
            Activity_Code = Forms![Seed_Sow_Withdrawal_Ticket Subform]![Default_Activity_Code]
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
Private Sub Open_Jobcode_Form_Click()
On Error GoTo Err_Open_Jobcode_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_MGMT_CODES_Sow_Withdrawal_Ticket subform"
    
    stLinkCriteria = "[ACTIVITY_ID_CN]=" & "'" & Me![CN] & "'"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Jobcode_Form_Click:
    Exit Sub

Err_Open_Jobcode_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Jobcode_Form_Click
    
End Sub
Private Sub Open_Storage_Location_Form_Click()
On Error GoTo Err_Open_Storage_Location_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_LOCATIONS_for_Sow_Withdrawal subform"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Storage_Location_Form_Click:
    Exit Sub

Err_Open_Storage_Location_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Storage_Location_Form_Click
    
End Sub