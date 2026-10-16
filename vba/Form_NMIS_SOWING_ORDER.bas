Option Compare Database

Private Sub Group_DblClick(Cancel As Integer)

    [Like_Group] = [GROUP]
    DoCmd.Requery
    
End Sub

Private Sub Like_Group_DblClick(Cancel As Integer)

    Like_Group = "*"
    DoCmd.Requery
    
End Sub

Private Sub Like_Group_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Preview_Checklist_Click()
On Error GoTo Err_Preview_Checklist_Click

    Dim stDocName As String

    If Sort_By = "C" Then
        stDocName = "NMIS_Sow_Order_Checklist"
    Else
        stDocName = "NMIS_Sow_Order_Checklist_by_Sow_Order"
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Checklist_Click:
    Exit Sub

Err_Preview_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Checklist_Click
    
End Sub

Private Sub Sort_By_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub SOWING_ORDER_CODE_Label_Click()

    Sort_By = "C"
    DoCmd.Requery
  
End Sub

Private Sub SOWING_ORDER_Label_Click()

    Sort_By = "O"
    DoCmd.Requery
  
End Sub