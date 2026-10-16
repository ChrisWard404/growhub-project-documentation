# Form: Seed_Ship_Ticket_ID_ACTIVITIES subform

**Caption:** Seed_Ship_Ticked_ID_ACTIVITIES subform  
**Record source:**

```sql
SELECT NMIS_SOURCE_LOTS.ID, NMIS_ID_ACTIVITIES.ACTIVITY_DATE, NMIS_ID_ACTIVITIES.CN, NMIS_ID_ACTIVITIES.FISCAL_YEAR, NMIS_ID_ACTIVITIES.ACTIVITY_CODE, NMIS_ID_ACTIVITIES.ACTIVITY_UNITS, NMIS_ID_ACTIVITIES.ACTIVITY_UNITS_PRESCRIBED, NMIS_ID_ACTIVITIES.ACTIVITY_TIME, NMIS_ID_ACTIVITIES.ACTIVITY_HOURS, NMIS_ID_ACTIVITIES.AMT_PER_UNIT, NMIS_ID_ACTIVITIES.UNIT_CODE, NMIS_ID_ACTIVITIES.TREATMENT_PRODUCT_ID, NMIS_ID_ACTIVITIES.CONTRACT_ITEM, NMIS_ID_ACTIVITIES.CHARGE_PER_HOUR_OVERRIDE, NMIS_ID_ACTIVITIES.CHARGE_PER_AMT_OVERRIDE, NMIS_ID_ACTIVITIES.CHARGE_PER_UNIT_OVERRIDE, NMIS_ID_ACTIVITIES.CHARGE_PER_ACTIVITY_OVERRIDE, NMIS_ID_ACTIVITIES.NOTE, NMIS_ID_ACTIVITIES.DESTINATION_ASSOCIATE, NMIS_ID_ACTIVITIES.SOURCE_LOT_CN, NMIS_ID_ACTIVITIES.AGREEMENT_LOT_CN, NMIS_ID_ACTIVITIES.ORDER_CN, NMIS_ID_ACTIVITIES.TICKET_CN, NMIS_ACTIVITY_CODES.ACTIVITY_NAME AS ACTIVITY_NO_NAME, NMIS_ID_ACTIVITIES.Index, NMIS_ACTIVITY_CODES.BALANCE_EFFECT, NMIS_ID_ACTIVITIES.AMT_PER_UNIT, (IIf([BALANCE_EFFECT]="NOEFFECT",0,1))*[ACTIVITY_UNITS] AS ACTIVITY_UNITS_TO_SUM FROM NMIS_SOURCE_LOTS INNER JOIN (NMIS_ACTIVITY_CODES INNER JOIN NMIS_ID_ACTIVITIES ON NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ID_ACTIVITIES.ACTIVITY_CODE) ON NMIS_SOURCE_LOTS.CN = NMIS_ID_ACTIVITIES.SOURCE_LOT_CN WHERE (((NMIS_SOURCE_LOTS.ID) Like [Forms]![Seed_Shipping_Ticket Subform]![View_Lot] & "*")) ORDER BY NMIS_SOURCE_LOTS.ID, NMIS_ID_ACTIVITIES.ACTIVITY_DATE, NMIS_ID_ACTIVITIES.CN;
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_FISCAL_YEARS`, `NMIS_ID_ACTIVITIES`, `NMIS_SOURCE_LOTS`, `NMIS_TICKETS`, `NMIS_UNITS`  
**Embedded in:** `Form:Seed_Shipping_Ticket Subform`  
**Opens:** `Form:NMIS_ACTIVITY_CODES`, `Form:NMIS_ID_ACTIVITIES_MORE_INFO_Ship_Tkt_FORM`, `Form:NMIS_ID_LOCATIONS_for_Source_Withdrawal subform`, `Form:NMIS_ID_MGMT_CODES_Ship_Ticket subform`, `Form:NMIS_SOURCE_TESTS_Ship_Ticket Form`, `Form:seed_shipping_lot_label`, `Form:seed_shipping_lot_label_040207`, `Report:NMIS_ACTIVITY_CODES`, `Report:NMIS_ID_ACTIVITIES_MORE_INFO_Ship_Tkt_FORM`, `Report:NMIS_ID_LOCATIONS_for_Source_Withdrawal subform`, `Report:NMIS_ID_MGMT_CODES_Ship_Ticket subform`, `Report:NMIS_SOURCE_TESTS_Ship_Ticket Form`, `Report:seed_shipping_lot_label`, `Report:seed_shipping_lot_label_040207`  
**Form events with code:** AfterInsert, Current  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | FISCAL_YEAR_Label | FY |  |  |  | 0.03, 0.04, 0.52, 0.35 |
| Label | ACTIVITY_CODE_Label | Activity Code |  |  |  | 5.22, 0.04, 0.81, 0.35 |
| Label | ACTIVITY_UNITS_Label | Activity Units |  |  |  | 6.06, 0.04, 0.78, 0.35 |
| Label | ACTIVITY_DATE_Label | Activity Date |  |  |  | 4.58, 0.04, 0.61, 0.35 |
| Label | UNIT_CODE_Label | Unit Code |  |  |  | 6.88, 0.04, 0.41, 0.35 |
| Label | DESTINATION_ASSOCIATE_Label | Ticket ID |  |  |  | 7.90, 0.04, 0.82, 0.35 |
| Label | SOURCE_LOT_CN_Label | Source ID |  |  |  | 0.57, 0.04, 1.31, 0.35 |
| Label | Label20 | Source |  |  |  | 1.92, 0.04, 2.63, 0.35 |
| Label | Label23 | Number of Ctrs |  |  |  | 7.32, 0.04, 0.54, 0.35 |
| Label | Label42 | Job Code |  |  |  | 8.76, 0.04, 0.36, 0.35 |
| Label | Label43 | Loc-ation |  |  |  | 9.15, 0.04, 0.34, 0.35 |
| Label | Label38 | Print Tag |  |  |  | 9.51, 0.04, 0.34, 0.35 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | FISCAL_YEAR |  | FISCAL_YEAR | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  |  | 0.03, 0.03, 0.52, 0.20 |
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.BALANCE_EFFECT, NMIS_ACTIVITY_CODES.NOTE, NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) In ("CONE","SDEXTR","SDTRAN","SDTRMT"))) OR (((NMIS_ACTIVITY_CODES.ACTIVITY_CODE) Like "TST*" Or (NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="test")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE; | DblClick, Enter | 5.22, 0.03, 0.82, 0.20 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  | Click, DblClick, Enter, Exit | 6.06, 0.03, 0.77, 0.20 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 4.58, 0.03, 0.61, 0.20 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS;  |  | 6.88, 0.03, 0.41, 0.20 |
| TextBox | Index |  | Index |  |  | 8.39, 0.29, 0.42, 0.14 |
| ComboBox | SOURCE_LOT_CN |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE FROM NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN WHERE (((NMIS_SOURCE_LOTS.ID) Not Like "@*") AND ((NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE) Like IIf(IsNull([Forms]![Seed_Shipping_Ticket Subform]![Seed_Ship_Ticked_ID_ACTIVITIES subform].[Form]![SOURCE_LOT_CN]),[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code],"*"))) ORDER BY NMIS_SOURCE_LOTS.ID; | Enter, Exit | 0.58, 0.03, 1.31, 0.20 |
| ComboBox | Combo19 |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, Source_Lot_ID_and_Source_string.SOURCE, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN ORDER BY Source_Lot_ID_and_Source_string.SOURCE; |  | 1.92, 0.03, 2.64, 0.20 |
| TextBox | NOTE |  | NOTE |  |  | 1.39, 0.25, 6.41, 0.21 |
| TextBox | AMT_PER_UNIT |  | AMT_PER_UNIT |  |  | 7.31, 0.03, 0.56, 0.20 |
| TextBox | New_CN |  | =[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code |  |  | 3.17, 0.04, 0.97, 0.00 |
| TextBox | CN |  | CN |  |  | 4.17, 0.04, 0.67, 0.14 |
| TextBox | DESTINATION_ASSOCIATE |  | DESTINATION_ASSOCIATE |  |  | 7.83, 0.25, 0.62, 0.21 |
| ComboBox | TICKET_CN |  | TICKET_CN | SELECT NMIS_TICKETS.CN, NMIS_TICKETS.TKT_NO FROM NMIS_TICKETS WHERE (((NMIS_TICKETS.TICKET_TYPE) Like "S*")) ORDER BY NMIS_TICKETS.FY DESC , NMIS_TICKETS.TKT_NO DESC;  | AfterUpdate, DblClick, Exit | 7.90, 0.03, 0.83, 0.20 |
| CommandButton | Open_Jobcode_Form | JC |  |  | Click | 8.76, 0.03, 0.36, 0.31 |
| CommandButton | Open_Storage_Location_Form | Loc |  |  | Click | 9.15, 0.03, 0.34, 0.31 |
| CommandButton | Open_More_Info_Form | + |  |  | Click | 0.03, 0.25, 0.17, 0.21 |
| CommandButton | open_source_test_entry_form |  Enter/Edit Test Data |  |  | Click | 0.24, 0.25, 1.10, 0.21 |
| CommandButton | Print_Lot_Label | Tag |  |  | Click | 9.51, 0.03, 0.35, 0.31 |
| TextBox | ID |  | ID |  |  | 2.46, 0.04, 0.67, 0.14 |

## Code-behind (VBA)

```vb
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
```
