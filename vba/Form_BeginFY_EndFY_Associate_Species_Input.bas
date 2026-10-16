Option Compare Database

Private Sub Form_Close()
On Error GoTo Err_Form_Close

   'Forms![Switchboard]![FY_For_Reports] = Forms![Switchboard]![NMIS_FISCAL_YEAR_Current].Form![FISCAL_YEAR_TEXT]

Exit_Form_Close:
    Exit Sub

Err_Form_Close:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Close

End Sub

Private Sub Form_Open(Cancel As Integer)

    'Forms![Switchboard]![FY_For_Reports] = 2000 + Val(Right$(Date, 2))

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        COLLECT_METHOD.Visible = True
    Else
        COLLECT_METHOD.Visible = False
    End If
    
End Sub

Private Sub Preview_Report_Click()

    'If IsNull([BEGIN_FY]) Or IsNull([END_FY]) Then
        'MsgBox "You must enter both beginning and ending dates."
        'DoCmd.GoToControl "Begin_FY"
    'Else
        'If [END_FY] <> "*" Then
            'If ([BEGIN_FY] > [END_FY]) Then
                'MsgBox "Ending FY must be greater than Beginning FY."
                'DoCmd.GoToControl "Begin_FY"
            'End If
        'Else
            Me.Visible = False
        'End If
    'End If

End Sub