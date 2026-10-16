Option Compare Database

Private Sub CN_Enter()
    
    [Transaction_Totals_For_Product_Inventory subform].Visible = False
    '[NMIS_PRODUCT_INVENTORIES subform1].Form![Gross_Per_Unit] = Null
    '[NMIS_PRODUCT_INVENTORIES subform1].Form![Net_Per_Unit] = Null
  
End Sub

Private Sub Count_Only_Click()

    If [Count_Only] = True Then
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![SMALL].TabStop = False
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![LARGE].TabStop = False
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![TARGET].TabStop = False
    Else
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![SMALL].TabStop = True
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![LARGE].TabStop = True
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![TARGET].TabStop = True
    End If
    
End Sub

Private Sub Enter_Sizes_Click()

    If [Enter_Sizes] = True Then
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![SMALL].TabStop = False
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![LARGE].TabStop = False
    Else
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![SMALL].TabStop = True
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![LARGE].TabStop = True
    End If
    
End Sub

Private Sub Field_Worksheets____Click()
On Error GoTo Err_Field_Worksheets____Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Plant_Inventory_Worksheets Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Field_Worksheets____Click:
    Exit Sub

Err_Field_Worksheets____Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Worksheets____Click
    
End Sub
Private Sub Close_Click()
On Error GoTo Err_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Close_Click:
    Exit Sub

Err_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Close_Click
    
End Sub

Private Sub Inventory_Data_Summary_Click()
    
    'If Not IsNull([NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        DoCmd.OpenReport "Product_Inventory_Data_Summary", acPreview
    'Else
        'MsgBox "No Size Measurements have been entered for creating this report"
    'End If
   
End Sub

Private Sub Inventory_Sizes_Click()
    
    [Transaction_Totals_For_Product_Inventory subform].Visible = False
  
End Sub

Private Sub Lot_Information_Click()

    [Transaction_Totals_For_Product_Inventory subform].Visible = False
    
End Sub

Private Sub NMIS_ID_ACTIVITIES_subform1_Enter()
    
    [Transaction_Totals_For_Product_Inventory subform].Visible = False
    If IsNull([CN]) Then
        MsgBox "Must enter Agreement Lot ID first!"
        CN.SetFocus
    End If
  
End Sub

Private Sub NMIS_ID_ACTIVITIES_TRANSACTIONS_subform_Enter()

    If IsNull([NMIS_PRODUCT_INVENTORIES subform1].Form![GROSS_INV]) Then
        MsgBox "You must enter a value for Gross Inventory!"
    Else
       ' [NMIS_PRODUCT_INVENTORIES subform1].Form!NET_INV = Nz(Round([NMIS_PRODUCT_INVENTORIES subform1].Form!GROSS_INV * [NMIS_PRODUCT_INVENTORIES subform1].Form!Shipping_Factor / 100, 3), 0)
        '[NMIS_PRODUCT_INVENTORIES subform1].Form!Gross_Per_Unit = Nz(([NMIS_PRODUCT_INVENTORIES subform1].Form!GROSS_INV / Nz(Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Total_Containers subform].Form![Total_Containers], 1) * 1000), 0)
        '[NMIS_PRODUCT_INVENTORIES subform1].Form!Net_Per_Unit = Round([NMIS_PRODUCT_INVENTORIES subform1].Form!Gross_Per_Unit * ([NMIS_PRODUCT_INVENTORIES subform1].Form!Shipping_Factor / 100), 3)
    End If
    
    [Transaction_Totals_For_Product_Inventory subform].Visible = True
    
End Sub

Private Sub NMIS_ID_LOCATIONS_subform1_Enter()
    
    [Transaction_Totals_For_Product_Inventory subform].Visible = False
  
End Sub

Private Sub NMIS_PRODUCT_INVENTORIES_subform1_Enter()

    If IsNull([CN]) Then
        MsgBox "Must enter Agreement Lot ID first!"
        CN.SetFocus
    Else
    If IsNull([NMIS_ID_ACTIVITIES subform1].Form![ACTIVITY_DATE]) Then
        MsgBox "Must enter Inventory Activity first!"
        [NMIS_ID_ACTIVITIES subform1].SetFocus
        DoCmd.GoToControl "[ACTIVITY_DATE]"
    End If
    
    If [NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform].Form![PARENT_ACTIVITY_CODE] <> "PLNINV" Then
        MsgBox "Must be an Inventory Activity"
        [NMIS_ID_ACTIVITIES subform1].SetFocus
        DoCmd.GoToControl "[ACTIVITY_DATE]"
    End If
    End If
 
    [Transaction_Totals_For_Product_Inventory subform].Visible = False
  
End Sub

Private Sub NMIS_PRODUCT_INVENTORY_SAMPLES_subform1_Enter()
    
    If IsNull([CN]) Then
        MsgBox "Must enter Agreement Lot ID first!"
        CN.SetFocus
    Else
    If IsNull([NMIS_ID_ACTIVITIES subform1].Form![ACTIVITY_DATE]) Then
        MsgBox "Must enter Inventory Activity first!"
        [NMIS_ID_ACTIVITIES subform1].SetFocus
        DoCmd.GoToControl "[ACTIVITY_DATE]"
    End If
    
    If [NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform].Form![PARENT_ACTIVITY_CODE] <> "PLNINV" Then
        MsgBox "Must be an Inventory Activity"
        [NMIS_ID_ACTIVITIES subform1].SetFocus
        DoCmd.GoToControl "[ACTIVITY_DATE]"
    End If
    End If
    
    [Transaction_Totals_For_Product_Inventory subform].Visible = False
    [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Next_Count] = Nz([NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Max_Sample_No], 0) + 1
    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Requery
    '[NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![TARGET].TabStop = False
        
    
End Sub

Private Sub NMIS_PRODUCT_INVENTORY_SAMPLES_subform1_Exit(Cancel As Integer)

    If IsNull([NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![TARGET_FACTOR] = _
            Round([NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Sum_of_Target] / _
            [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Sum_Of_Total_Sized], 2) * 100
    End If
    
    If Not IsNull([NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Max_Sample_No]) Then
        [NMIS_PRODUCT_INVENTORIES subform1].Form![SAMPLES] = Nz([NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Max_Sample_No], 0)
        [NMIS_PRODUCT_INVENTORIES subform1].Form![SAMPLES_SPACING] = _
            Nz([Agreement_Lot_Total_Containers subform].Form![Total_Containers], 1) / _
                (Nz([NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Max_Sample_No], 0) + 1)
    End If
    
End Sub

Private Sub NMIS_PRODUCT_INVENTORY_SIZES_subform_Enter()
        
    If IsNull([CN]) Then
        MsgBox "Must enter Agreement Lot ID first!"
        CN.SetFocus
    Else
    If IsNull([NMIS_ID_ACTIVITIES subform1].Form![ACTIVITY_DATE]) Then
        MsgBox "Must enter Inventory Activity first!"
        [NMIS_ID_ACTIVITIES subform1].SetFocus
        DoCmd.GoToControl "[ACTIVITY_DATE]"
    End If
    
    If [NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform].Form![PARENT_ACTIVITY_CODE] <> "PLNINV" Then
        MsgBox "Must be an Inventory Activity"
        [NMIS_ID_ACTIVITIES subform1].SetFocus
        DoCmd.GoToControl "[ACTIVITY_DATE]"
    End If
    End If
    [Transaction_Totals_For_Product_Inventory subform].Visible = False
  
End Sub

Private Sub NMIS_PRODUCT_INVENTORY_SIZES_subform_Exit(Cancel As Integer)
    
    If Not IsNull([NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        DoCmd.OpenForm "NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT"
    End If
    
End Sub

Private Sub Page60_Click()
    
    [Transaction_Totals_For_Product_Inventory subform].Visible = False
  
End Sub

Private Sub Size_Distribution_Report_Click()
    
    If Not IsNull([NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Plant_inv_matrix_xtab1"
        DoCmd.OpenQuery "Plant_inv_matrix_PCT_xtab1"
        DoCmd.SetWarnings True
        DoCmd.OpenReport "Plant_inventory_Rpt_Size_Matrix", acPreview
    Else
        MsgBox "No Size Measurements have been entered for creating a Size Distribution Report"
    End If
    
End Sub

Private Sub Transactions_Click()
    
    [Transaction_Totals_For_Product_Inventory subform].Visible = True
    
End Sub

Private Sub Worksheets_Click()
    
    [Transaction_Totals_For_Product_Inventory subform].Visible = False
    
End Sub