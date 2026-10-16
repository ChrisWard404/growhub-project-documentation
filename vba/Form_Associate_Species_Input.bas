Option Compare Database

Private Sub Preview_Report_Click()
    If IsNull([BEGIN_FY]) Or IsNull([END_FY]) Then
        MsgBox "You must enter both beginning and ending dates."
        DoCmd.GoToControl "Begin_FY"
    Else
        If [END_FY] <> "*" Then
            If ([BEGIN_FY] > [END_FY]) Then
                MsgBox "Ending FY must be greater than Beginning FY."
                DoCmd.GoToControl "Begin_FY"
            End If
        Else
            Me.Visible = False
        End If
    End If

End Sub