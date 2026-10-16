Option Compare Database

Private Sub find_product_Click()
On Error GoTo Err_find_product_Click

    Screen.PreviousControl.SetFocus
    DoCmd.DoMenuItem acFormBar, acEditMenu, 10, , acMenuVer70

Exit_find_product_Click:
    Exit Sub

Err_find_product_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_find_product_Click
    
End Sub
Private Sub cmdFind_Click()
On Error GoTo Err_cmdFind_Click


    Screen.PreviousControl.SetFocus
    DoCmd.DoMenuItem acFormBar, acEditMenu, 10, , acMenuVer70

Exit_cmdFind_Click:
    Exit Sub

Err_cmdFind_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_cmdFind_Click
    
End Sub
Private Sub Combo11_AfterUpdate()
    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![Combo11] & "'"
    Me.Bookmark = rs.Bookmark
End Sub
