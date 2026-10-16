Option Compare Database

Private Sub Form_AfterDelConfirm(Status As Integer)

    DoCmd.Requery
    DoCmd.GoToRecord , , acNewRec
   
End Sub

Private Sub Form_AfterInsert()

    DoCmd.Requery
    DoCmd.GoToRecord , , acNewRec

End Sub

Private Sub Form_AfterUpdate()

    DoCmd.Requery
    DoCmd.GoToRecord , , acNewRec
    
End Sub

Private Sub Form_GotFocus()

    DoCmd.Requery
    
End Sub