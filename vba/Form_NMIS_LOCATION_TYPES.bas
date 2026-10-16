Option Compare Database

Private Sub Command9_Click()
On Error GoTo Err_Command9_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Command9_Click:
    Exit Sub

Err_Command9_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command9_Click
    
End Sub

Private Sub Hide_Historical_AfterUpdate()

    [NMIS_LOCATIONS Subform].Form.Requery
    
End Sub

Private Sub Refresh_and_Close_Click()
On Error GoTo Err_Refresh_and_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Refresh_and_Close_Click:
    Exit Sub

Err_Refresh_and_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_and_Close_Click
    
End Sub
Private Sub Preview_Locations_Checklist_Click()
On Error GoTo Err_Preview_Locations_Checklist_Click

    Dim stDocName As String

    stDocName = "NMIS_LOCATIONS_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Locations_Checklist_Click:
    Exit Sub

Err_Preview_Locations_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Locations_Checklist_Click
    
End Sub