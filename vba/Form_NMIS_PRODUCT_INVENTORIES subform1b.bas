Option Compare Database

Private Sub Calculate_Gross_Click()

    If IsNull(Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form!Sum_of_Sample_Count) Then
        MsgBox "You Must enter Sample Counts First!"
    Else
        Gross_Per_Unit_calculated = Nz(Round((Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form!Sum_of_Sample_Count / _
            Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form!Max_Sample_No) * [Plot_Area], 3), 0)
        GROSS_INV = Nz(Round(Gross_Per_Unit_calculated * Forms!NMIS_PRODUCT_INVENTORIES![Agreement_Lot_Total_Containers subform].Form!Total_Containers / 1000, 3), 0)
    End If
    
End Sub

Private Sub Calculate_Net_Click()

    If IsNull(GROSS_INV) Then
        MsgBox "I may be a computer, but I do need some information to work with unless you want me to just make stuff up!"
    Else
        NET_INV = Nz(Round(GROSS_INV * Shipping_Factor / 100, 3), 0)
        'If Not IsNull(Shipping_Factor_Alt) Then
            NET_INV_ALT = Nz(Round(GROSS_INV * Shipping_Factor_Alt / 100, 3), Null)
        'End If
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES subform1].Form![ACTIVITY_UNITS] = NET_INV

        MsgBox "Click on Transactions tab and Update Transactions", vbExclamation
    End If
    
End Sub

Private Sub CALIPER_MIN_ALT_Change()

    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        Specs_Changed = True
        Update_Target_Factors.Visible = True
    End If
    
End Sub

Private Sub CALIPER_MIN_Change()

    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        Specs_Changed = True
        Update_Target_Factors.Visible = True
    End If
    
End Sub

Private Sub NET_INV_AfterUpdate()

    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES subform1].Form![ACTIVITY_UNITS] = NET_INV

End Sub

Private Sub SPEC_MAX_ALT_Change()

    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        Specs_Changed = True
        Update_Target_Factors.Visible = True
    End If
    
End Sub




Private Sub SPEC_MAX_Change()

    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        Specs_Changed = True
        Update_Target_Factors.Visible = True
    End If
    
End Sub

Private Sub SPEC_MIN_ALT_Change()

    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        Specs_Changed = True
        Update_Target_Factors.Visible = True
    End If
    
End Sub


Private Sub SPEC_MIN_Change()

    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        Specs_Changed = True
        Update_Target_Factors.Visible = True
    End If
    
End Sub

Private Sub TARGET_FACTOR_ALT_Enter()
    
    If Specs_Changed = True Then
        Update_Target_Factors.Visible = False
        DoCmd.Requery
        
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Plant_inv_matrix_xtab1b"
        DoCmd.SetWarnings True
        
        DoCmd.OpenForm "NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT"
        Specs_Changed = False
        TARGET_FACTOR_ALT.SetFocus
    End If
            
End Sub

Private Sub TARGET_FACTOR_Enter()

    If Specs_Changed = True Then
        Update_Target_Factors.Visible = False
        DoCmd.Requery
        
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Plant_inv_matrix_xtab1b"
        DoCmd.SetWarnings True
        
        DoCmd.OpenForm "NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT"
        Specs_Changed = False
        TARGET_FACTOR_ALT.SetFocus
    End If
    
End Sub

Private Sub Use_Default_Factors_Click()

    SPEC_MIN = Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_AGREEMENT_LOTS subform].Form![SPEC_MIN]
    SPEC_MAX = Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_AGREEMENT_LOTS subform].Form![SPEC_MAX]
    CALIPER_MIN = Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_AGREEMENT_LOTS subform].Form![CALIPER_MIN]
    SPEC_MIN_ALT = Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_AGREEMENT_LOTS subform].Form![SPEC_MIN_ALT]
    SPEC_MAX_ALT = Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_AGREEMENT_LOTS subform].Form![SPEC_MAX_ALT]
    CALIPER_MIN_ALT = Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_AGREEMENT_LOTS subform].Form![CALIPER_MIN_ALT]
    INV_FACTOR_1 = Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Default_Factors_For_Cycle subform].Form![INV_FACTOR_1]
    INV_FACTOR_2 = Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Default_Factors_For_Cycle subform].Form![INV_FACTOR_2]
    INV_FACTOR_3 = Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Default_Factors_For_Cycle subform].Form![INV_TARGET_PCT]
    DoCmd.GoToControl "GROSS_INV"
    
End Sub
Private Sub Update_Target_Factors_Click()
On Error GoTo Err_Update_Target_Factors_Click

    DoCmd.Requery
        
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Plant_inv_matrix_xtab1b"
    DoCmd.SetWarnings True
        
    DoCmd.OpenForm "NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT"
    Specs_Changed = False
    TARGET_FACTOR_ALT.SetFocus

Exit_Update_Target_Factors_Click:
    Exit Sub

Err_Update_Target_Factors_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Update_Target_Factors_Click
    
End Sub