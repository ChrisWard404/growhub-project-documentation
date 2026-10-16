Option Compare Database

Private Sub Preview_Label_Click()
On Error GoTo Err_Preview_Label_Click

    Dim stDocName As String

    stDocName = "Seedbox_Labels"
    DoCmd.SendObject acReport, stDocName

Exit_Preview_Label_Click:
    Exit Sub

Err_Preview_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Label_Click
    
End Sub
Private Sub preview_Seedbox_Label_Click()
On Error GoTo Err_preview_Seedbox_Label_Click

    Dim stDocName As String

    stDocName = "Seedbox_Labels"
    DoCmd.OpenReport stDocName, acPreview

Exit_preview_Seedbox_Label_Click:
    Exit Sub

Err_preview_Seedbox_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_preview_Seedbox_Label_Click
    
End Sub
Private Sub Print_Seedbox_Label_Click()
On Error GoTo Err_Print_Seedbox_Label_Click

    Dim stDocName As String

    stDocName = "Seedbox_Labels"
    DoCmd.OpenReport stDocName, acNormal

Exit_Print_Seedbox_Label_Click:
    Exit Sub

Err_Print_Seedbox_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Seedbox_Label_Click
    
End Sub