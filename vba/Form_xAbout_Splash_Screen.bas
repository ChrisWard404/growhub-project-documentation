Option Compare Database

Private Sub Form_Open(Cancel As Integer)

    ' Set Current_User_Name
    Current_User_Name = CurrentUserName
    
End Sub

Private Sub Open_Switchboard_Click()
On Error GoTo Err_Open_Switchboard_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Switchboard"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Switchboard_Click:
    Exit Sub

Err_Open_Switchboard_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Switchboard_Click
    
End Sub