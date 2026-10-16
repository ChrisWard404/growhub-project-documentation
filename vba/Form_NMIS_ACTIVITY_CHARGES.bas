Option Compare Database

Private Sub Form_Open(Cancel As Integer)

    DoCmd.Requery
    
End Sub

Private Sub Hide_0_Charges_Click()

    DoCmd.Requery
    
End Sub

Private Sub VIEW_FY_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub View_FY_DblClick(Cancel As Integer)

    View_FY = "*"
    DoCmd.Requery
    
End Sub