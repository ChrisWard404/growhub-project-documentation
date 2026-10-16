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

Private Sub Odd_Box_Sublot_ID_Enter()

    If IsNull(Odd_Box_Sublot_ID) Then
        Odd_Box_Sublot_ID = Last_Full_Box_Sublot + 1
    End If
    
End Sub

Private Sub Print_Seedbox_Label_Click()
On Error GoTo Err_Print_Seedbox_Label_Click

    Dim stDocName As String

    If Label_Style = "050357" Then
    stDocName = "seedbox_labels_050357s"
    Else
        stDocName = "Seedbox_Labels"
    End If
    
    DoCmd.OpenReport stDocName, acNormal

Exit_Print_Seedbox_Label_Click:
    Exit Sub

Err_Print_Seedbox_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Seedbox_Label_Click
    
End Sub
Private Sub Preview_Print_Box_Labels_Click()
On Error GoTo Err_Preview_Print_Box_Labels_Click

    Dim stDocName As String

    If Not IsNull(ID) Then
        If Label_Style = "050357" Then
        stDocName = "seedbox_labels_050357s"
        Else
            stDocName = "Seedbox_Labels"
        End If
    DoCmd.OpenReport stDocName, acPreview
    Else
        MsgBox "Enter a Lot ID", vbInformation
        DoCmd.GoToControl "ID"
    End If

Exit_Preview_Print_Box_Labels_Click:
    Exit Sub

Err_Preview_Print_Box_Labels_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Print_Box_Labels_Click
    
End Sub