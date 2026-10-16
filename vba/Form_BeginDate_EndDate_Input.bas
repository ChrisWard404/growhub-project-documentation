Option Compare Database

Private Sub Preview_Report_Click()
    If IsNull([BeginDate]) Or IsNull([EndDate]) Then
        MsgBox "You must enter both beginning and ending dates."
        DoCmd.GoToControl "BeginDate"
    Else
    If ([BeginDate] > [EndDate]) Then
                MsgBox "Ending Date must be greater than Beginning Date."
                DoCmd.GoToControl "BeginDATE"
    Else
            Me.Visible = False
    End If
    End If
End Sub