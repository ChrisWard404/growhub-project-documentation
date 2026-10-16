Option Compare Database

Private Sub Refresh_Close_Click()
On Error GoTo Err_Refresh_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Refresh_Close_Click:
    Exit Sub

Err_Refresh_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_Close_Click
    
End Sub