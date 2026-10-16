Option Compare Database

Private Sub Report_Open(Cancel As Integer)
    
    DoCmd.SetWarnings False
    'DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    DoCmd.OpenQuery "Transaction_Totals_By_Location_and_amt_per_unit_Grow_by_sublot2"
    DoCmd.SetWarnings True
    
End Sub