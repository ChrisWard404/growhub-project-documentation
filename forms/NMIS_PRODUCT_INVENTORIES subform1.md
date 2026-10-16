# Form: NMIS_PRODUCT_INVENTORIES subform1

**Caption:** NMIS_PRODUCT_INVENTORIES subform1  
**Record source:**

```sql
SELECT NMIS_PRODUCT_INVENTORIES.* FROM NMIS_PRODUCT_INVENTORIES;
```

**Backend tables referenced:** `NMIS_PRODUCT_INVENTORIES`  
**Embedded in:** `Form:**********dbdNMIS_PRODUCT_INVENTORIES`, `Form:NMIS_PRODUCT_INVENTORIES`  
**Opens:** `Form:NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT`  
**Form events with code:** Current  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| CommandButton | Use_Default_Factors | 1 Click to Use Default Factors |  |  | Click | 0.12, 0.55, 0.92, 0.62 |
| CheckBox | Specs_Changed |  |  |  |  | 1.17, 0.88, 0.20, 0.21 |
| TextBox | ID_ACTIVITY_CN |  | ID_ACTIVITY_CN |  |  | 0.94, 0.61, 2.30, 0.00 |
| TextBox | INV_FACTOR_1 |  | INV_FACTOR_1 |  |  | 2.90, 0.55, 0.40, 0.21 |
| TextBox | INV_FACTOR_2 | Inventory Factor 2: | INV_FACTOR_2 |  |  | 2.90, 0.78, 0.40, 0.21 |
| TextBox | INV_FACTOR_3 | Default Target Factor: | INV_FACTOR_3 |  |  | 2.90, 1.02, 0.40, 0.21 |
| TextBox | NET_INV | Est. Net Inventory: | NET_INV |  | AfterUpdate | 2.90, 2.22, 0.61, 0.21 |
| TextBox | GROSS_INV | Gross Inv: | GROSS_INV |  |  | 2.90, 1.98, 0.61, 0.20 |
| Label | Label34 | % |  |  |  | 3.35, 0.56, 0.18, 0.20 |
| Label | Label35 | % |  |  |  | 3.35, 0.79, 0.18, 0.20 |
| Label | Label36 | % |  |  |  | 3.35, 1.03, 0.18, 0.20 |
| TextBox | TARGET_FACTOR | Computed Target Factor: | TARGET_FACTOR |  | Enter | 2.90, 1.38, 0.40, 0.20 |
| Label | Label38 | % |  |  |  | 3.35, 1.38, 0.18, 0.20 |
| TextBox | SAMPLES | Samples: | SAMPLES |  |  | 2.90, 2.50, 0.59, 0.20 |
| TextBox | SAMPLES_SPACING | Samples Spacing: | SAMPLES_SPACING |  |  | 2.90, 2.73, 0.59, 0.20 |
| TextBox | ADDITIONAL_SAMPLES | Additional Samples: | ADDITIONAL_SAMPLES |  |  | 2.89, 2.96, 0.59, 0.20 |
| TextBox | ADDITIONAL_SAMPLES_SPACING | Additional Samples Spacing: | ADDITIONAL_SAMPLES_SPACING |  |  | 2.89, 3.18, 0.59, 0.20 |
| CommandButton | Calculate_Net | 3 Click for Net |  |  | Click | 0.11, 2.32, 1.20, 0.28 |
| TextBox | Plot_Area | Plot Area: | =Forms!NMIS_PRODUCT_INVENTORIES![Agreement_Lot_Default_Factors_For_Cycle subform].Form!INV_SAMPLES_PER_CONTAINER |  |  | 0.89, 3.30, 1.19, 0.20 |
| TextBox | Net_Per_Unit | Net/U: | =IIf([Forms]![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Total_Containers subform].[Form]![Total_Containers]>0,Round([NET_INV]*1000/[Forms]![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Total_Containers subform].[Form]![Total_Containers],3),0) |  |  | 0.80, 2.90, 0.61, 0.20 |
| TextBox | Gross_Per_Unit | Gross/U: | =IIf([Forms]![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Total_Containers subform].[Form]![Total_Containers]>0,Round([GROSS_INV]*1000/[Forms]![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Total_Containers subform].[Form]![Total_Containers],3),0) |  |  | 0.80, 2.66, 0.61, 0.20 |
| TextBox | Shipping_Factor | Shipping Factor: | =NZ(([INV_FACTOR_1]/100*[INV_FACTOR_2]/100*IIf(IsNull([TARGET_FACTOR]),[INV_FACTOR_3]/100,[TARGET_FACTOR]/100))*100,100) |  |  | 2.90, 1.62, 0.40, 0.20 |
| Label | Label63 | % |  |  |  | 3.35, 1.65, 0.18, 0.20 |
| CommandButton | Calculate_Gross | 2 Click for Gross |  |  | Click | 0.11, 1.76, 1.20, 0.28 |
| TextBox | SPEC_MIN | Ht. Min: | SPEC_MIN |  | Change | 1.20, 0.04, 0.42, 0.21 |
| TextBox | SPEC_MAX | Ht. Max: | SPEC_MAX |  | Change | 2.38, 0.04, 0.38, 0.21 |
| Line | Line68 |  |  |  |  | 0.08, 0.51, 4.04, 0.00 |
| TextBox | CALIPER_MIN | Caliper Min: | CALIPER_MIN |  | Change | 3.73, 0.04, 0.38, 0.21 |
| TextBox | SPEC_MIN_ALT | Ht. Min: | SPEC_MIN_ALT |  | Change | 1.20, 0.28, 0.42, 0.21 |
| TextBox | SPEC_MAX_ALT | Ht. Max: | SPEC_MAX_ALT |  | Change | 2.38, 0.28, 0.38, 0.21 |
| TextBox | CALIPER_MIN_ALT | Caliper Min: | CALIPER_MIN_ALT |  | Change | 3.73, 0.28, 0.38, 0.21 |
| Label | Label79 | Std: |  |  |  | 0.18, 0.04, 0.32, 0.21 |
| Label | Label80 | Alt: |  |  |  | 0.18, 0.28, 0.32, 0.21 |
| Label | Label81 | Alt Spec |  |  |  | 3.66, 1.12, 0.62, 0.21 |
| TextBox | TARGET_FACTOR_ALT |  | TARGET_FACTOR_ALT |  | Enter | 3.66, 1.38, 0.44, 0.20 |
| Label | Label84 | % |  |  |  | 4.16, 1.39, 0.18, 0.20 |
| TextBox | Shipping_Factor_Alt |  | =IIf(Not IsNull([TARGET_FACTOR_ALT]),NZ(([INV_FACTOR_1]/100*[INV_FACTOR_2]/100*IIf(IsNull([TARGET_FACTOR_ALT]),[INV_FACTOR_3]/100,[TARGET_FACTOR_ALT]/100))*100,100),Null) |  |  | 3.67, 1.62, 0.44, 0.20 |
| Label | Label87 | % |  |  |  | 4.16, 1.63, 0.18, 0.20 |
| TextBox | NET_INV_ALT |  | NET_INV_ALT |  |  | 3.66, 2.22, 0.61, 0.21 |
| Label | Label90 | Alt Net |  |  |  | 3.66, 1.97, 0.65, 0.21 |
| Rectangle | Box91 |  |  |  |  | 3.59, 1.08, 0.79, 1.41 |
| TextBox | FACTOR1_CODE |  | =[Forms]![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Default_Factors_For_Cycle subform].[Form]![INV_1_FACTOR_CODE] |  |  | 3.57, 0.56, 0.76, 0.20 |
| Label | Label92 | Inventory Factor 1: |  |  |  | 1.50, 0.56, 1.31, 0.20 |
| TextBox | FACTOR2_CODE |  | =[Forms]![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Default_Factors_For_Cycle subform].[Form]![INV_2_FACTOR_CODE] |  |  | 3.57, 0.79, 0.76, 0.20 |
| Label | Factor_Updated | Click on Click for Net |  |  |  | 0.00, 2.08, 1.44, 0.21 |
| Label | Update_Target_Factors | Specs Changed Click to Update Target Factors |  |  | Click | 0.12, 0.56, 0.98, 0.71 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Calculate_Gross_Click()

On Error GoTo Err_Calculate_Gross_Click

    If IsNull(Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form!Sum_of_Sample_Count) Then
        MsgBox "You Must enter Sample Counts First!"
    Else
        Gross_Per_Unit_calculated = Nz(Round((Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form!Sum_of_Sample_Count / _
            Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form!Max_Sample_No) * [Plot_Area], 3), 0)
        If Forms!NMIS_PRODUCT_INVENTORIES![Agreement_Lot_Total_Containers subform].Form!Total_Containers > 0 Then
            GROSS_INV = Nz(Round(Gross_Per_Unit_calculated * Forms!NMIS_PRODUCT_INVENTORIES![Agreement_Lot_Total_Containers subform].Form!Total_Containers / 1000, 3), 0)
        End If
    End If
    
    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Max_Sample_No]) Then
        [SAMPLES] = Nz(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Max_Sample_No], 0)
        '[SAMPLES_SPACING] = Nz([Agreement_Lot_Total_Containers subform].Form![Total_Containers], 1) / _
        '(Nz(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Max_Sample_No], 0) + 1)
     End If

Exit_Calculate_Gross_Click:
    Exit Sub

Err_Calculate_Gross_Click:
    MsgBox "Check to see if lot has been mapped"
    Resume Exit_Calculate_Gross_Click
    
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
        [Factor_Updated].Visible = False
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

Private Sub Form_Current()
    
    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![CN]) Then
        FACTOR1_CODE.Visible = True
        FACTOR2_CODE.Visible = True
    Else
        FACTOR1_CODE.Visible = False
        FACTOR2_CODE.Visible = False
    End If
    
    If Not IsNull([NET_INV]) Then
        Net_Per_Unit.Visible = True
        Gross_Per_Unit.Visible = True
    Else
        Net_Per_Unit.Visible = False
        Gross_Per_Unit.Visible = False
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

Private Sub Update_Target_Factors1_Click()

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
```
