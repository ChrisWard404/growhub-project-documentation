Option Compare Database

Private Sub Report_Open(Cancel As Integer)

    If Forms![Source_Material_Work_List]![Hide Withdrawn Lots] = False Then
        ACTIVITY_UNITS.Visible = True
    Else
        ACTIVITY_UNITS.Visible = False
    End If
    
End Sub