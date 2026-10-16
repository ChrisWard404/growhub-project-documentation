Option Compare Database

Private Sub Report_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Field_Location_Inv_Subform_MT"
    DoCmd.OpenQuery "Field_Location_Inv_Subform_MT2"
    DoCmd.SetWarnings True
    
End Sub