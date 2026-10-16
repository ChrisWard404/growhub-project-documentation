Option Compare Database

Private Sub CONTRACT_ITEM_Enter()

    CONTRACT_ITEM.Requery
    
End Sub

Private Sub Form_GotFocus()

    Requery
    
End Sub