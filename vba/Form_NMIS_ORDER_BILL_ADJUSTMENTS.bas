Option Compare Database

Private Sub NMIS_ORDR_ACT_subform_Enter()

    ORDER_CN.Requery

End Sub

Private Sub CN_Enter()

    CN.Requery
    
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)

    CONTACT_CN = Null
    
End Sub

Private Sub Contact_CN_Enter()

    CONTACT_CN.Requery
    
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)

    Like_Client = "*"

End Sub

Private Sub Like_JobcodeClient_DblClick(Cancel As Integer)

    Like_JobcodeClient = "*"
    
End Sub