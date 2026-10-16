Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)
    
    If IsNull([BEGIN_DATE]) Or IsNull([END_DATE]) Then
        MsgBox "You must enter both beginning and ending dates."
        DoCmd.GoToControl "Begin_Date"
    Else
        If [END_FY] <> "*" Then
            If ([BEGIN_DATE] > [END_DATE]) Then
                MsgBox "Ending Date must be greater than Beginning Date."
                DoCmd.GoToControl "Begin_Date"
            End If
        Else
            Me.Visible = False
        End If
    End If
    
End Sub
