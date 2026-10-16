
Private Sub Form_AfterInsert()

    Next_Count = Nz(SAMPLE_NO, 0) + 1
    DoCmd.Requery
    DoCmd.GoToRecord , , acNewRec
    
End Sub

Private Sub LARGE_Exit(Cancel As Integer)

    If Not IsNull(SAMPLE_COUNT) And Not IsNull(SMALL) Then
    
            Sample_Count_Taken = SAMPLE_COUNT
        If IsNull(LARGE) Then
            LARGE = 0
        End If
        
        TARGET = Sample_Count_Taken - (Nz(SMALL, 0) + Nz(LARGE, 0))
        
        If TARGET < 0 Then
            TARGET = 0
        End If
        
    End If
    
End Sub

Private Sub SAMPLE_COUNT_DblClick(Cancel As Integer)

    DoCmd.OpenForm "NMIS_PRODUCT_INVENTORY_SIZES2 subform"
 
End Sub
