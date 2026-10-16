# Form: **********dbdNMIS_PRODUCT_INVENTORIES

**Caption:** NMIS Product Inventories  
**Record source:**

```sql
NMIS_AGREEMENT_LOTS
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ID_ACTIVITIES`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Form.NMIS_PRODUCT_INVENTORY_ID_ACTIVITIES subform`, `Form.NMIS_PRODUCT_INVENTORIES subform1`, `Form.NMIS_PRODUCT_INVENTORY_SAMPLES subform`, `Form.NMIS_PRODUCT_INVENTORY_SIZES subform`, `Form.NMIS_ID_LOCATIONS subform1`, `Form.NMIS_PRODUCT_INVENTORY_TRANSACTIONS_subform`, `Form.Agreement_Lot_Default_Factors_For_Cycle subform`, `Form.NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform`, `Form.NMIS_AGREEMENT_LOTS subform`, `Form.Agreement_Lot_Total_Containers subform`, `Form.Transaction_Totals_For_Product_Inventory subform`  
**Opens:** `Form:NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT`, `Form:Plant_Inventory_Worksheets Form`, `Form:Refresh_Close`, `Report:Plant_inventory_Rpt_Size_Matrix`, `Report:Product_Inventory_Data_Summary`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label16 | Product Inventory |  |  |  | 3.66, 0.08, 2.44, 0.28 |
| Line | Line17 |  |  |  |  | 0.08, 0.47, 8.72, 0.00 |
| TextBox | MODIFIED_BY |  | =[NMIS_ID_ACTIVITIES subform1].Form!CN |  |  | 7.33, 0.12, 0.00, 0.19 |
| CommandButton | Close | Close |  |  | Click | 8.54, 0.09, 0.47, 0.28 |
| TextBox | ID_ACTIVITY_CODE |  | =[NMIS_ID_ACTIVITIES subform1].Form!ACTIVITY_CODE |  |  | 6.21, 0.25, 1.42, 0.19 |
| Label | Default_Date_Label | Default Date: |  |  |  | 0.14, 0.12, 0.92, 0.21 |
| TextBox | Default_Date |  |  |  |  | 1.12, 0.12, 0.62, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_ID_ACTIVITIES subform1 |  | Form.NMIS_PRODUCT_INVENTORY_ID_ACTIVITIES subform (master: CN → child: CN) |  | Enter | 0.14, 0.57, 8.61, 1.89 |
| ComboBox | SPECIES_PRODUCT | Species Product: | =[cn] | SELECT NMIS_AGREEMENT_LOTS.CN, [PLNTMSTR_SYMBOL] & " " & [SPECIES_PRODUCT_DESC] AS SP FROM NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN=NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN;  |  | 1.46, 0.33, 2.62, 0.21 |
| ComboBox | SOURCE_LOT_CN | Source Lot: | =[cn] | SELECT NMIS_AGREEMENT_LOTS.CN, Source_Lot_ID_and_Source_string.ID_SOURCE2 FROM Source_Lot_ID_and_Source_string INNER JOIN NMIS_AGREEMENT_LOTS ON Source_Lot_ID_and_Source_string.CN=NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN;  |  | 5.04, 0.33, 3.92, 0.21 |
| TabControl | TabCtl18 |  |  |  |  | 0.15, 2.49, 8.86, 4.44 |
| Page | Lot Information |  |  |  | Click | 0.24, 2.78, 8.68, 4.05 |
| Subform | NMIS_PRODUCT_INVENTORIES subform1 |  | Form.NMIS_PRODUCT_INVENTORIES subform1 (master: MODIFIED_BY → child: ID_ACTIVITY_CN) |  | Enter | 0.38, 2.84, 4.16, 3.91 |
| Subform | NMIS_PRODUCT_INVENTORY_SAMPLES subform1 |  | Form.NMIS_PRODUCT_INVENTORY_SAMPLES subform (master: MODIFIED_BY → child: ID_ACTIVITY_CN) |  | Enter, Exit | 4.83, 3.11, 3.88, 3.69 |
| CheckBox | Enter_Sizes | Enter Sizes |  |  | Click | 6.96, 2.89, 0.00, 0.00 |
| CheckBox | Count_Only | Count Only or Size Entry |  |  | Click | 5.67, 2.89, 0.00, 0.00 |
| Page | Inventory Sizes |  |  |  | Click | 0.24, 2.78, 8.68, 4.06 |
| Subform | NMIS_PRODUCT_INVENTORY_SIZES subform |  | Form.NMIS_PRODUCT_INVENTORY_SIZES subform (master: MODIFIED_BY → child: ID_ACTIVITY_CN) |  | Enter, Exit | 2.67, 2.79, 3.29, 4.05 |
| Page | Page60 | Locations |  |  | Click | 0.24, 2.78, 8.68, 4.05 |
| Subform | NMIS_ID_LOCATIONS subform1 |  | Form.NMIS_ID_LOCATIONS subform1 (master: CN → child: AGREEMENT_LOT_CN) |  | Enter | 0.25, 2.89, 8.62, 3.92 |
| Page | Transactions | Transactions |  |  | Click | 0.24, 2.78, 8.68, 4.05 |
| Subform | NMIS_ID_ACTIVITIES_TRANSACTIONS_subform |  | Form.NMIS_PRODUCT_INVENTORY_TRANSACTIONS_subform (master: MODIFIED_BY → child: ID_ACTIVITY_CN) |  | Enter | 0.92, 2.89, 7.25, 3.83 |
| Page | Reports |  |  |  |  | 0.24, 2.78, 8.68, 4.05 |
| CommandButton | Field_Worksheets... | Plant Inventory Worksheets... |  |  |  | 0.38, 3.14, 1.92, 0.28 |
| Subform | Agreement_Lot_Default_Factors_For_Cycle subform |  | Form.Agreement_Lot_Default_Factors_For_Cycle subform (master: CN → child: CN) |  |  | 2.83, 2.96, 3.25, 3.21 |
| Subform | NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform |  | Form.NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform (master: ID_ACTIVITY_CODE → child: ACTIVITY_CODE) |  |  | 6.38, 2.96, 2.42, 1.58 |
| Subform | NMIS_AGREEMENT_LOTS subform |  | Form.NMIS_AGREEMENT_LOTS subform (master: CN → child: CN) |  |  | 6.42, 4.54, 2.38, 1.71 |
| CommandButton | Size_Distribution_Report | Size Distribution Report |  |  | Click | 0.38, 3.44, 1.92, 0.28 |
| CommandButton | Inventory_Data_Summary | Inventory Data Summary |  |  | Click | 0.38, 3.74, 1.92, 0.28 |
| Label | Label41 | Agreement Lot ID: |  |  |  | 0.12, 0.04, 1.26, 0.21 |
| ComboBox | CN |  |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, Source_Lot_ID_and_Source_string.ID_SOURCE2 FROM NMIS_AGREEMENT_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN=Source_Lot_ID_and_Source_string.CN ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID;  | Enter | 1.46, 0.04, 1.44, 0.21 |
| ComboBox | TOTAL_REQUEST | Total Request: | =[cn] | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.TOTAL_REQUEST FROM NMIS_AGREEMENT_LOTS;  |  | 5.42, 0.04, 0.79, 0.21 |
| Subform | Agreement_Lot_Total_Containers subform |  | Form.Agreement_Lot_Total_Containers subform (master: CN → child: Agreement_Lot_CN) |  |  | 6.62, 0.01, 2.33, 0.29 |
| Subform | Transaction_Totals_For_Product_Inventory subform |  | Form.Transaction_Totals_For_Product_Inventory subform (master: CN → child: Agreement_Lot_CN) |  |  | 1.29, 0.57, 7.71, 1.89 |

## Code-behind (VBA)

```vb
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
```
