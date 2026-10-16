Option Compare Database

Private Sub Contact_CN_Enter()
    
    CONTACT_CN.Requery
    
End Sub

Private Sub Like_Client_Change()

    CONTACT_CN.Requery
    
End Sub

Private Sub Preview_Report_Click()

    Me.Visible = False

End Sub