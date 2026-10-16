Option Compare Database

Private Sub Form_Close()

    Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Inv_Plot_Area_Default].Requery
    
End Sub