# Form: NMIS_ID_ACTIVITIES_NEW_LOTS Subform

**Caption:** NMIS_ID_ACTIVITIES_NEW_LOTS Subform  
**Record source:**

```sql
NMIS_ID_ACTIVITIES Query
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_FISCAL_YEARS`, `NMIS_ID_ACTIVITIES`, `NMIS_TICKETS`, `NMIS_UNITS`  
**Embedded in:** `Form:NMIS_SOURCE_LOTS_INPUT`  
**Opens:** `Form:NMIS_ACTIVITY_CODES`, `Form:NMIS_ID_MGMT_CODES_NEW subform`, `Form:NMIS_SOURCE_TESTS Form`, `Form:seed_entry_edit_lot_bag_label`, `Report:NMIS_ACTIVITY_CODES`, `Report:NMIS_ID_MGMT_CODES_NEW subform`, `Report:NMIS_SOURCE_TESTS Form`, `Report:seed_entry_edit_lot_bag_label`  
**Form events with code:** BeforeInsert, Current  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | FISCAL_YEAR_Label | Fiscal Year |  |  |  | 0.69, 0.04, 0.63, 0.36 |
| Label | ACTIVITY_CODE_Label | Activity Code |  |  |  | 1.36, 0.04, 0.82, 0.36 |
| Label | ACTIVITY_UNITS_Label | Units |  |  |  | 4.69, 0.04, 0.68, 0.36 |
| Label | ACTIVITY_DATE_Label | Activity Date |  |  |  | 0.05, 0.03, 0.60, 0.37 |
| Label | UNIT_CODE_Label | Unit Code |  |  |  | 5.41, 0.05, 0.66, 0.35 |
| Label | NOTE_Label | Note |  |  |  | 7.09, 0.04, 2.25, 0.36 |
| Label | DESTINATION_ASSOCIATE_Label | Destination |  |  |  | 7.07, 0.04, 1.31, 0.36 |
| Label | Label73 | Activity Description |  |  |  | 2.83, 0.04, 1.83, 0.36 |
| Label | Label94 | Activity Number |  |  |  | 2.21, 0.04, 0.58, 0.36 |
| Label | Label38 |  Ticket ID |  |  |  | 6.10, 0.04, 0.93, 0.35 |
| Label | Label149 | Print Tag |  |  |  | 9.39, 0.04, 0.34, 0.35 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  | Enter, Exit | 4.69, 0.04, 0.68, 0.20 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 0.05, 0.04, 0.60, 0.20 |
| TextBox | NOTE |  | NOTE |  | DblClick | 7.10, 0.04, 2.25, 0.20 |
| TextBox | DESTINATION_ASSOCIATE |  | DESTINATION_ASSOCIATE |  |  | 7.07, 0.03, 1.31, 0.20 |
| TextBox | ACTIVITY_NO_NAME |  | ACTIVITY_NO_NAME |  |  | 2.82, 0.04, 1.83, 0.20 |
| ComboBox | Activity_Number |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.NOTE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) In ("CONE","SDEXTR","SDTRAN","SDTRMT"))) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO; | DblClick, Enter, Exit | 2.21, 0.04, 0.59, 0.20 |
| ComboBox | Activity_Code |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.NOTE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) In ("CONE","SDEXTR","SDTRAN","SDTRMT"))); | Exit | 1.36, 0.05, 0.82, 0.20 |
| ComboBox | Unit_Code |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE) In ("STORE","UNIT","AMT"))); |  | 5.40, 0.04, 0.69, 0.20 |
| ComboBox | Fiscal_Year |  | FISCAL_YEAR | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  | Exit | 0.70, 0.04, 0.62, 0.20 |
| ComboBox | TICKET_CN |  | TICKET_CN | SELECT NMIS_TICKETS.CN, NMIS_TICKETS.TKT_NO, NMIS_TICKETS.NOTE FROM NMIS_TICKETS WHERE (((NMIS_TICKETS.TICKET_TYPE) Like "s*")) ORDER BY NMIS_TICKETS.FY DESC , NMIS_TICKETS.TKT_NO DESC; |  | 6.12, 0.04, 0.93, 0.20 |
| CommandButton | Print_Bag_Label | Tag |  |  | Click | 9.39, 0.03, 0.35, 0.22 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CN |  | CN |  |  | 8.33, 0.04, 0.00, 0.00 |
| TextBox | Index |  | Index |  |  | 7.43, 0.04, 0.79, 0.00 |
| CommandButton | Open_MGMT_codes_subform | Enter Special Charges/Mgmt Codes |  |  | Click | 0.07, 0.04, 2.42, 0.00 |
| TextBox | default_activity_date |  |  |  |  | 6.48, 0.06, 0.79, 0.00 |
| TextBox | default_activity_FY |  |  |  |  | 4.68, 0.06, 0.79, 0.00 |
| TextBox | Balance | Lot Balance: | =Round(Sum(Nz(IIf([UNIT_CODE]="G",[ACTIVITY_UNITS_TO_SUM]*0.002204623,[ACTIVITY_UNITS_TO_SUM]),0)),4) |  |  | 4.35, 0.03, 1.03, 0.20 |
| ComboBox | Combo116 |  | ="lb" | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="WEIGH"));  |  | 5.42, 0.03, 0.66, 0.20 |
| TextBox | Text150 |  | =Round(Sum(Nz(IIf([UNIT_CODE]="G",[ACTIVITY_UNITS_TO_SUM]*0.002204623,[ACTIVITY_UNITS_TO_SUM]),0))/0.002204623,4) |  |  | 4.35, 0.26, 1.03, 0.20 |
| ComboBox | Combo152 |  | ="G" | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="WEIGH"));  |  | 5.42, 0.26, 0.66, 0.20 |

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
```
