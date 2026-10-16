Option Compare Database

Private Sub Form_AfterDelConfirm(Status As Integer)

    Forms![NMIS_PRODUCT_INVENTORIES]![Transaction_Totals_For_Product_Inventory subform].Requery
    Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Total_Containers subform].Requery
 
End Sub

Private Sub Form_AfterInsert()

    Forms![NMIS_PRODUCT_INVENTORIES]![Transaction_Totals_For_Product_Inventory subform].Requery
    Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Total_Containers subform].Requery
    
End Sub

Private Sub Form_AfterUpdate()

    Forms![NMIS_PRODUCT_INVENTORIES]![Transaction_Totals_For_Product_Inventory subform].Requery
    Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Total_Containers subform].Requery
    
End Sub

Private Sub Form_Current()

    If Not IsNull(ID_LOCATION_CN) Then
        [ID_LOCATION_CN].Requery
    End If
    
End Sub

Private Sub ID_LOCATION_CN_Enter()

    'ID_LOCATION_CN.Requery

End Sub
Private Sub Update_Tranasctions_Click()

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_INV_TRANSACTION_UPDATE1", acNormal, acEdit
    DoCmd.OpenQuery "NMIS_PRODUCT_INV_TRANSACTION_UPDATE2", acNormal, acEdit
    DoCmd.OpenQuery "NMIS_PRODUCT_INV_TRANSACTION_UPDATE", acNormal, acEdit
    DoCmd.SetWarnings True
    DoCmd.Requery
    Forms![NMIS_PRODUCT_INVENTORIES]![Transaction_Totals_For_Product_Inventory subform].Requery
    Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Total_Containers subform].Requery
   
End Sub