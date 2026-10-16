Option Compare Database

Private Sub Calculate_Gross_Click()

    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![GROSS_INV] = GROSS
    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![SAMPLES] = Plots_Taken
    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![SAMPLES_SPACING] = Plot_Spacing
    
End Sub