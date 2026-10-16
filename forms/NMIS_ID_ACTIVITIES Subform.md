# Form: NMIS_ID_ACTIVITIES Subform

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_FISCAL_YEARS`, `NMIS_UNITS`  
**Embedded in:** `Form:NMIS_SOURCE_LOTS`, `Form:NMIS_SOURCE_LOTS2`, `Form:NMIS_SOURCE_LOTS_bu`  
**Opens:** `Form:NMIS_ACTIVITY_CODES`, `Form:NMIS_ID_ACTIVITIES_MORE_INFO_SUBFORM`, `Form:NMIS_ID_MGMT_CODES subform`, `Form:NMIS_SOURCE_TESTS Form`  
**Form events with code:** Current, Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | FISCAL_YEAR_Label | Fiscal Year |  |  |  | 0.80, 0.04, 0.63, 0.36 |
| Label | ACTIVITY_CODE_Label | Activity Code |  |  |  | 1.47, 0.04, 0.82, 0.36 |
| Label | ACTIVITY_UNITS_Label | Units |  |  |  | 5.14, 0.04, 0.68, 0.36 |
| Label | ACTIVITY_DATE_Label | Activity Date |  |  |  | 0.22, 0.03, 0.54, 0.37 |
| Label | UNIT_CODE_Label | Unit Code |  |  |  | 5.85, 0.05, 0.63, 0.35 |
| Label | NOTE_Label | Note |  |  |  | 6.51, 0.04, 2.87, 0.36 |
| Label | Label73 | Activity Description |  |  |  | 2.95, 0.04, 2.15, 0.36 |
| Label | Label94 | Activity Number |  |  |  | 2.33, 0.04, 0.58, 0.36 |
| TextBox | ID_Act_CN |  | =[cn] |  |  | 3.79, 0.12, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  | Enter, Exit | 5.14, 0.03, 0.68, 0.20 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  | DblClick, Enter | 0.22, 0.03, 0.55, 0.20 |
| TextBox | NOTE |  | NOTE |  |  | 6.51, 0.03, 2.86, 0.20 |
| TextBox | ACTIVITY_NO_NAME |  | ACTIVITY_NO_NAME |  |  | 2.95, 0.03, 2.15, 0.20 |
| ComboBox | Activity_Number |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.NOTE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) In ("CONE","SDEXTR","SDTRAN","SDTRMT"))) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME; | DblClick, Exit | 2.33, 0.03, 0.59, 0.20 |
| ComboBox | Activity_Code |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.NOTE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) In ("CONE","SDEXTR","SDTRAN","SDTRMT"))); | Exit | 1.47, 0.03, 0.82, 0.20 |
| ComboBox | Unit_Code |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE) In ("STORE","UNIT","AMT"))); |  | 5.85, 0.03, 0.63, 0.20 |
| ComboBox | Fiscal_Year |  | FISCAL_YEAR | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER; |  | 0.82, 0.03, 0.62, 0.20 |
| TextBox | ACTIVITY_UNITS_TO_SUM |  | ACTIVITY_UNITS_TO_SUM |  |  | 8.81, 0.04, 0.66, 0.00 |
| CommandButton | Open_More_Info_Form | + |  |  | Click | 0.03, 0.04, 0.17, 0.20 |
| TextBox | ID_ACTIVITY_CN |  | CN |  |  | 6.48, 0.04, 0.00, 0.00 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Balance | Lot Balance: | =Sum(Nz(IIf([UNIT_CODE]="G",[ACTIVITY_UNITS_TO_SUM]*0.002204623,[ACTIVITY_UNITS_TO_SUM]),0)) |  |  | 5.03, 0.05, 0.79, 0.20 |
| CommandButton | Open_MGMT_codes_subform | Click to Enter Special Charges/Mgmt Codes |  |  | Click | 1.59, 0.03, 2.27, 0.00 |
| CommandButton | Add Record | Click to Add New Activity |  |  | Click | 0.02, 0.03, 1.38, 0.00 |
| ComboBox | Combo116 |  | ="LB" | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="WEIGH"));  |  | 5.85, 0.05, 0.73, 0.20 |
| TextBox | CN |  | CN |  |  | 6.81, 0.04, 0.00, 0.00 |
| TextBox | Index |  | Index |  |  | 8.50, 0.04, 0.79, 0.00 |
| CommandButton | open_source_test_entry_form | Click to Enter/Edit Test Data |  |  | Click | 7.90, 0.02, 1.46, 0.00 |
| TextBox | Text150 |  | =Sum(Nz(IIf([UNIT_CODE]="G",[ACTIVITY_UNITS_TO_SUM]*0.002204623,[ACTIVITY_UNITS_TO_SUM]),0))/0.002204623 |  |  | 5.03, 0.29, 0.79, 0.20 |
| ComboBox | Combo152 |  | ="G" | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="WEIGH"));  |  | 5.85, 0.29, 0.73, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub ACTIVITY_CODE_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ACTIVITY_CODES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria


End Sub

Private Sub Activity_Code_Exit(Cancel As Integer)

    If [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
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

Private Sub Activity_Number_Exit(Cancel As Integer)
    
    If [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
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
    If Activity_Code = "CNRECV" Or Activity_Code = "CLEAN" Then
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

Private Sub Form_Current()
    
    If [Activity_Code] = "WEIGH" Or [Activity_Code] = "ADDCMB" Or _
        [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
        [Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
        [Activity_Code] = "DONATI" Or [Activity_Code] = "ADDNON" Or _
        [Activity_Code] = "DONATI" Or [Activity_Code] = "STONON" Or _
        [Activity_Code] = "ADDNON" Or [Activity_Code] = "ACQBT" Or _
        [Activity_Code] Like "TST*" Or [Activity_Code] Like "RTS*" Or _
        [Activity_Code] Like "RETST*" Then
        [open_source_test_entry_form].Visible = True
    Else
        [open_source_test_entry_form].Visible = False
    End If
    'If IsNull(XS_SP_Balance) Then
        'xssp_bal.Visible = False
        'xssp_bal_label.Visible = False
    'Else
        'xssp_bal.Visible = True
        'xssp_bal_label.Visible = True
    'End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

        'xssp_bal.Visible = False
        'xssp_bal_label.Visible = False
      
End Sub

Private Sub Open_MGMT_codes_subform_Click()
On Error GoTo Err_Open_MGMT_codes_subform_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
    
        stLinkCriteria = "[ACTIVITY_ID_CN]=" & "'" & Me![CN] & "'"
        stDocName = "NMIS_ID_MGMT_CODES subform"
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

    'If [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
       '[Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
       '[Activity_Code] = "DONATI" Or [Activity_Code] = "DONAOT" Or _
       '[Activity_Code] = "ADDNON" Or [Activity_Code] = "WEIGH" Then
        stLinkCriteria = "[ID_ACTIVITY_CN]=" & "'" & Me![CN] & "'"
        'DoCmd.RunCommand acCmdRefreshPage
        stDocName = "NMIS_SOURCE_TESTS Form"
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
```
