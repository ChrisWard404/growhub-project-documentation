Option Compare Database

Private Sub Like_Unit_Code_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Like_Unit_Code_DblClick(Cancel As Integer)

    Like_Unit_Code = "*"
    DoCmd.Requery
    
End Sub

Private Sub Like_Unit_Type_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Like_Unit_Type_DblClick(Cancel As Integer)
    
    Like_Unit_Type = "*"
    DoCmd.Requery
    
End Sub

Private Sub UNIT_CODE_DblClick(Cancel As Integer)

    UNIT_CODE.Locked = False
    
End Sub

Private Sub UNIT_CODE_Enter()

    If IsNull(UNIT_CODE) Then
        UNIT_CODE.Locked = False
    Else
        UNIT_CODE.Locked = True
    End If
        
End Sub