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

Private Sub HEIGHT_AfterUpdate()

    If (Forms![NMIS_PRODUCT_INVENTORIES]![ConvertCmHtToIn]) Then
        HEIGHT = Round(HEIGHT / 2.54, 0)
    End If
    
End Sub