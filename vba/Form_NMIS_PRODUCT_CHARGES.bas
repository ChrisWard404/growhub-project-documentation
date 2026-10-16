Option Compare Database

Private Sub Filter_For_Parent_Activity_Change()

    DoCmd.Requery
    
End Sub

Private Sub Filter_For_Parent_Activity_DblClick(Cancel As Integer)

    Filter_For_Parent_Activity = Null
    DoCmd.Requery
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.Requery
    
End Sub

Private Sub Hide_0_Charges_Click()

    DoCmd.Requery
    
End Sub

Private Sub PARENT_ACTIVITY_CODE_DblClick(Cancel As Integer)

    Filter_For_Parent_Activity = PARENT_ACTIVITY_CODE
    DoCmd.Requery
    
End Sub

Private Sub VIEW_FY_AfterUpdate()

    If Not IsNull(Activity_Code) Then
        DoCmd.Requery
    End If
    
End Sub

Private Sub View_FY_DblClick(Cancel As Integer)

    View_FY = Null
    DoCmd.Requery
    
End Sub