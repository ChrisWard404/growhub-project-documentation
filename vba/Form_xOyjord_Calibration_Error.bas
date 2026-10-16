Option Compare Database

Private Sub Close_Form_Click()
On Error GoTo Err_Close_Form_Click


    DoCmd.Close

Exit_Close_Form_Click:
    Exit Sub

Err_Close_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Close_Form_Click
    
End Sub