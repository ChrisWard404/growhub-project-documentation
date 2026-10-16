Option Compare Database

Private Sub Form_Close()

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Product_Ship_Ticket_Total_Containers_update_ship_miles"
    DoCmd.SetWarnings True
    
End Sub