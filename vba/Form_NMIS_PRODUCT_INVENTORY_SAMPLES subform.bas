
Private Sub Form_AfterInsert()

    'Next_Count = Nz(SAMPLE_NO, 0) + 1
    DoCmd.Requery
    DoCmd.GoToRecord , , acNewRec
    
End Sub

Private Sub LARGE_Exit(Cancel As Integer)

    If Not IsNull(SAMPLE_COUNT) Then 'And Not IsNull(SMALL) Then
    
        Sample_Count_Taken = SAMPLE_COUNT
        
        If IsNull(LARGE) Then
            LARGE = 0
        End If
        
        TARGET = Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Inventory_Factors_For_Cycle subform].Form![INV_SIZE_SAMPLE] - _
            (Nz(SMALL, 0) + Nz(LARGE, 0))
        
        If TARGET < 0 Then
            TARGET = 0
        End If
        
    End If
    
End Sub

Private Sub SAMPLE_COUNT_AfterUpdate()
    
    If SAMPLE_NO = 0 Then
        SAMPLE_NO = Nz([Max_Sample_No], 0) + 1
    End If
    
    If Forms![NMIS_PRODUCT_INVENTORIES]![Count_Empties] Then
            SAMPLE_COUNT = EmptyCellTemp - SAMPLE_COUNT
    End If
    
End Sub

Private Sub SAMPLE_COUNT_DblClick(Cancel As Integer)

    DoCmd.OpenForm "NMIS_PRODUCT_INVENTORY_SIZES2c subform"
 
End Sub

Private Sub SMALL_Exit(Cancel As Integer)

    If IsNull(SMALL) Then
            SMALL = 0
        End If
End Sub