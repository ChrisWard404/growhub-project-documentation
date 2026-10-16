
Private Sub Loc_type_DblClick(Cancel As Integer)

    Loc_type.Locked = False
    
End Sub

Private Sub Loc_type_Enter()
    If IsNull(Loc_type) Then
        Loc_type.Locked = False
    Else
        Loc_type.Locked = True
    End If
    
End Sub