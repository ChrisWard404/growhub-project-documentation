Option Compare Database

Private Sub Form_Close()
    
    If Not IsNull([TOTAL_SIZED]) Then
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SIZES subform].Requery
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Plant_inv_matrix_xtab1b"
        DoCmd.SetWarnings True
        DoCmd.OpenForm "NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT"
    End If
    
End Sub

Private Sub HEIGHT_AfterUpdate()

    If (Forms![NMIS_PRODUCT_INVENTORIES]![ConvertCmHtToIn]) Then
        HEIGHT = Round(HEIGHT / 2.54, 0)
    End If
    
End Sub