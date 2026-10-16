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

Private Sub Form_Close()

   If Not IsNull([NMIS_LOCATIONS Subform].Form![CN]) Then
    If IsNull(Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_LOCATIONS2 subform].Form![LOCATION]) Then
        Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_LOCATIONS2 subform].Form![LOCATION] = [NMIS_LOCATIONS Subform].Form![CN]
    End If
    
    Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_LOCATIONS2 subform].Form![LOCATION].Requery
   End If
   
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