Option Compare Database

Private Sub Save_Record_Click()
On Error GoTo Err_Save_Record_Click

    DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70

Exit_Save_Record_Click:
    Exit Sub

Err_Save_Record_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Save_Record_Click
    
End Sub

Private Sub Goto_Next_Record_Click()
On Error GoTo Err_Goto_Next_Record_Click

    DoCmd.GoToRecord , , acNext

Exit_Goto_Next_Record_Click:
    Exit Sub

Err_Goto_Next_Record_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Goto_Next_Record_Click
    
End Sub
Private Sub Set_CN_Click()
On Error GoTo Err_Set_CN_Click

    Dim stDocName As String

    stDocName = "Set_CN"
    DoCmd.RunMacro stDocName

Exit_Set_CN_Click:
    Exit Sub

Err_Set_CN_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Set_CN_Click
    
End Sub
Private Sub Command68_Click()
On Error GoTo Err_Command68_Click

    Dim stDocName As String

    stDocName = "Set_CN"
    DoCmd.RunMacro stDocName

Exit_Command68_Click:
    Exit Sub

Err_Command68_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command68_Click
    
End Sub

Private Sub LOCATION_Change()

    Dim stDocName As String
    stDocName = "Set_CN"

    If Not IsNull(Index) And IsNull([NMIS_ID_LOCATIONS.CN]) Then
        DoCmd.RunMacro stDocName
    End If

End Sub

Private Sub Location_DblClick(Cancel As Integer)
On Error GoTo Err_LOCATION_DblClick
    
    LOCATION.Locked = False
    
Exit_LOCATION_DblClick:
    Exit Sub
    
Err_LOCATION_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_LOCATION_DblClick

End Sub

Private Sub Location_Enter()
    
    If IsNull(LOCATION) Then
        LOCATION.Locked = False
    Else
        LOCATION.Locked = True
    End If
    
    LOCATION.Requery
    
End Sub

Private Sub Location_Exit(Cancel As Integer)
    Dim stDocName As String
    stDocName = "Set_CN"

    If Not IsNull(Index) And IsNull([NMIS_ID_LOCATIONS.CN]) Then
        DoCmd.RunMacro stDocName
    End If

End Sub

Private Sub LOCATION_GotFocus()

    LOCATION.Requery
    
End Sub

Private Sub LOCATION_LostFocus()

    Dim stDocName As String
    stDocName = "Set_CN"

    If Not IsNull(Index) And IsNull([NMIS_ID_LOCATIONS.CN]) Then
        DoCmd.RunMacro stDocName
    End If

End Sub

Private Sub LOCATION_NotInList(NewData As String, Response As Integer)

   [LOCATION].Undo
    Response = MsgBox("Not Currently a valid location. Do you want to make this a valid location?", vbYesNo)
    
    If Response = vbYes Then
        DoCmd.OpenForm "NMIS_LOCATIONS_FOR_SOURCE_LOTS3", acNormal, , , acFormEdit
    End If

End Sub