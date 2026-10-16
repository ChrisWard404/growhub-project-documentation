# Form: NMIS_PRODUCT_INVENTORIES

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ID_ACTIVITIES`, `NMIS_PRODUCT_INVENTORIES`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Form.NMIS_PRODUCT_INVENTORY_ID_ACTIVITIES subform`, `Form.Agreement_Lot_Total_Containers subform`, `Form.Transaction_Totals_For_Product_Inventory subform`, `Form.Blank subform`, `Form.Agreement_Lot_Inventory_Factors_For_Cycle subform`, `Form.NMIS_PRODUCT_INVENTORY_SAMPLES subform`, `Form.NMIS_PRODUCT_INVENTORIES subform1`, `Form.Blank subform`, `Form.NMIS_PRODUCT_INVENTORY_SIZES subform`, `Form.NMIS_PRODUCT_INVENTORY_TRANSACTIONS_subform`, `Form.Blank subform`, `Form.Agreement_Lot_Default_Factors_For_Cycle subform`, `Form.NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform`, `Form.NMIS_AGREEMENT_LOTS subform`  
**Opens:** `Form:NMIS_AGREEMENT_LOTS`, `Form:NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT`, `Form:NMIS_PRODUCT_INVENTORY_INGROWTH_PCTs_Checklist`, `Form:Plant_Inventory_Worksheets Form`, `Form:Refresh_Close`, `Form:xPlease_Be_Patient_First_Report_Message`, `Report:NMIS_PRODUCT_INVENTORY_INGROWTH_PCTs_Checklist`, `Report:Plant_Inventory_Worksheets Form`, `Report:Plant_inventory_Rpt_Size_Matrix`, `Report:Plant_inventory_Rpt_Size_Matrix_PCT_Only`, `Report:Product_Inventory_Data_Summary`, `Report:Refresh_Close`  
**Form events with code:** Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label16 | Product Inventory |  |  |  | 4.27, 0.04, 2.44, 0.28 |
| Line | Line17 |  |  |  |  | 0.08, 0.35, 8.72, 0.00 |
| TextBox | MODIFIED_BY |  | =[NMIS_ID_ACTIVITIES subform1].Form!CN |  |  | 7.33, 0.07, 0.00, 0.19 |
| CommandButton | Close | Close |  |  | Click | 8.29, 0.04, 0.47, 0.28 |
| TextBox | ID_ACTIVITY_CODE |  | =[NMIS_ID_ACTIVITIES subform1].Form!ACTIVITY_CODE |  |  | 2.12, 0.11, 1.42, 0.19 |
| Label | Default_Date_Label | Default Date: |  |  |  | 0.17, 0.09, 0.92, 0.21 |
| TextBox | Default_Date |  |  |  |  | 1.16, 0.09, 0.62, 0.21 |
| ComboBox | Filter_for_Product_Type |  |  | B;Bareroot Plant;C;Container Plant;*;All Product Types | AfterUpdate | 2.38, 0.09, 1.75, 0.21 |
| Label | Filter_for_Product_Type_Label | Like: |  |  |  | 1.96, 0.09, 0.39, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box105 |  |  |  |  | 0.00, 0.00, 4.21, 0.44 |
| Label | Label92 | Enter or Select An Inventory Activity to Enter or View Inventory Information |  |  |  | 2.32, 3.50, 5.00, 0.20 |
| Subform | NMIS_ID_ACTIVITIES subform1 |  | Form.NMIS_PRODUCT_INVENTORY_ID_ACTIVITIES subform (master: CN → child: AGREEMENT_LOT_CN) |  | Enter | 0.14, 0.72, 8.61, 1.93 |
| ComboBox | SPECIES_PRODUCT | Species Product: | =[cn] | SELECT NMIS_AGREEMENT_LOTS.CN, [PLNTMSTR_SYMBOL] & " " & [SPECIES_PRODUCT_DESC] AS SP FROM NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN=NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN;  |  | 1.38, 0.48, 2.62, 0.21 |
| ComboBox | SOURCE_LOT_CN | Source Lot: | =[cn] | SELECT NMIS_AGREEMENT_LOTS.CN, Source_Lot_ID_and_Source_string.ID_SOURCE2 FROM Source_Lot_ID_and_Source_string INNER JOIN NMIS_AGREEMENT_LOTS ON Source_Lot_ID_and_Source_string.CN=NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN;  |  | 4.92, 0.48, 3.83, 0.21 |
| Label | Label41 | Agreement Lot ID: |  |  |  | 0.12, 0.13, 1.26, 0.21 |
| ComboBox | CN |  |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, [BEGIN_FY] & "-" & [End_fy] AS Beg_End_FY, Source_Lot_ID_and_Source_string.ID_SOURCE2, [Agreement_Lot_What_It_Is Query].Current_Product, Left$(Nz([CATEGORY_CODE],"B"),1) AS Cost_Center FROM ((NMIS_AGREEMENT_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN = Source_Lot_ID_and_Source_string.CN) INNER JOIN Agreement_Lot_End_Product_Type_n_Group ON NMIS_AGREEMENT_LOTS.CN = Agreement_Lot_End_Product_Type_n_Group.CN) INNER JOIN [Agreement_Lot_What_It_Is Query] ON NMIS_AGREEMENT_LOTS.CN = [Agreement_Lot_What_It_Is Query].CN WHERE (((Left$(Nz([CATEGORY_CODE],"B"),1)) Like [Forms]![NMIS_PRODUCT_INVENTORIES]![Filter_for_Product_Type] & "*") AND ((NMIS_AGREEMENT_LOTS.ID) Like Nz([Forms]![NMIS_PRODUCT_INVENTORIES]![Like_Agreement_Lots],"*")) AND ((Agreement_Lot_End_Product_Type_n_Group.PRODUCT_GROUP)="Plant")) ORDER BY [BEGIN_FY] & "-" & [End_fy] DESC , NMIS_AGREEMENT_LOTS.ID; | AfterUpdate, Change, DblClick, Enter | 1.46, 0.09, 1.44, 0.25 |
| ComboBox | TOTAL_REQUEST | Request: | =[cn] | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.TOTAL_REQUEST FROM NMIS_AGREEMENT_LOTS;  |  | 5.57, 0.10, 0.79, 0.21 |
| Subform | Agreement_Lot_Total_Containers subform |  | Form.Agreement_Lot_Total_Containers subform (master: CN → child: Agreement_Lot_CN) |  |  | 6.40, 0.07, 2.33, 0.29 |
| Subform | Transaction_Totals_For_Product_Inventory subform |  | Form.Transaction_Totals_For_Product_Inventory subform |  |  | 1.04, 0.72, 7.71, 1.93 |
| TabControl | TabCtl18 |  |  |  | Click | 0.12, 2.64, 8.83, 4.28 |
| Page | Lot Information |  |  |  | Click | 0.22, 2.93, 8.65, 3.90 |
| Subform | Child109 |  | Form.Blank subform |  |  | 2.17, 3.46, 6.58, 0.29 |
| CheckBox | Count_Only | Count Only or Size Entry |  |  | Click | 4.77, 3.05, 0.00, 0.00 |
| Subform | Agreement_Lot_Inventory_Factors_For_Cycle subform |  | Form.Agreement_Lot_Inventory_Factors_For_Cycle subform |  |  | 7.70, 3.17, 1.03, 0.26 |
| CheckBox | Count_Empties | Count Empties |  |  |  | 6.00, 2.98, 0.00, 0.00 |
| Subform | NMIS_PRODUCT_INVENTORY_SAMPLES subform1 |  | Form.NMIS_PRODUCT_INVENTORY_SAMPLES subform (master: MODIFIED_BY → child: ID_ACTIVITY_CN) |  | Enter, Exit | 4.82, 3.46, 3.95, 3.18 |
| Subform | NMIS_PRODUCT_INVENTORIES subform1 |  | Form.NMIS_PRODUCT_INVENTORIES subform1 (master: MODIFIED_BY → child: ID_ACTIVITY_CN) |  | Enter | 0.23, 3.20, 4.42, 3.46 |
| CheckBox | ConvertCmHtToIn | Convert cm Ht to In |  |  |  | 6.24, 3.27, 0.00, 0.00 |
| CheckBox | Enter_Sizes | Enter Go/No Go Sizes |  |  | Click | 7.55, 2.98, 0.00, 0.00 |
| Page | Inventory Sizes |  |  |  | Click | 0.22, 2.93, 8.65, 3.90 |
| Subform | Child108 |  | Form.Blank subform |  |  | 1.71, 3.46, 5.96, 0.29 |
| Subform | NMIS_PRODUCT_INVENTORY_SIZES subform |  | Form.NMIS_PRODUCT_INVENTORY_SIZES subform (master: MODIFIED_BY → child: ID_ACTIVITY_CN) |  | Enter, Exit | 2.65, 3.26, 3.29, 3.43 |
| Page | Transactions | Transactions |  |  | Click | 0.22, 2.93, 8.65, 3.90 |
| Subform | NMIS_ID_ACTIVITIES_TRANSACTIONS_subform |  | Form.NMIS_PRODUCT_INVENTORY_TRANSACTIONS_subform (master: MODIFIED_BY → child: ID_ACTIVITY_CN) |  | Enter | 0.52, 3.25, 7.91, 3.40 |
| Page | Reports |  |  |  | Click | 0.22, 2.93, 8.65, 3.89 |
| Subform | Blank subform |  | Form.Blank subform |  |  | 2.29, 3.46, 6.31, 0.29 |
| Subform | Agreement_Lot_Default_Factors_For_Cycle subform |  | Form.Agreement_Lot_Default_Factors_For_Cycle subform (master: CN → child: CN) |  |  | 5.43, 3.14, 3.25, 3.69 |
| Subform | NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform |  | Form.NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform (master: ID_ACTIVITY_CODE → child: ACTIVITY_CODE) |  |  | 2.64, 3.27, 2.42, 1.58 |
| Subform | NMIS_AGREEMENT_LOTS subform |  | Form.NMIS_AGREEMENT_LOTS subform (master: CN → child: CN) |  |  | 2.68, 5.06, 2.38, 1.50 |
| CheckBox | Data_Processed | No Location Changes |  |  |  | 0.54, 6.38, 0.00, 0.00 |
| CommandButton | Field_Worksheets... | Plant Inventory Worksheets... |  |  |  | 0.35, 3.66, 1.92, 0.28 |
| CommandButton | Size_Distribution_Report | Size Distribution Report |  |  | Click | 0.35, 3.96, 1.92, 0.28 |
| CommandButton | Data_Summary_Report | Data Summary Report |  |  | Click | 0.35, 4.56, 1.92, 0.28 |
| CommandButton | Ingrowth_Pcts_Checklist | Ingowth Percents Checklist |  |  | Click, Enter | 0.35, 3.36, 1.92, 0.28 |
| CommandButton | Size_Distribution_Report_PCT_Only | Size Distribution Report % Only |  |  | Click | 0.35, 4.26, 1.92, 0.28 |
| Label | Label167 | View Ag. Lots Like |  |  |  | 2.96, 0.04, 1.06, 0.19 |
| TextBox | Like_Agreement_Lots |  |  |  | AfterUpdate, DblClick | 2.97, 0.25, 1.05, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub CN_AfterUpdate()

     [Agreement_Lot_Inventory_Factors_For_Cycle subform].Requery


End Sub

Private Sub CN_Change()

    '[NMIS_ID_ACTIVITIES subform1].SetFocus
    
    'If IsNull([NMIS_ID_ACTIVITIES subform1].Form![Activity_Code]) Then
    '    DoCmd.GoToControl "ACTIVITY_CODE"
    'Else
    '    DoCmd.GoToControl "ACTIVITY_UNITS"
    'End If
    
End Sub

Private Sub CN_DblClick(Cancel As Integer)

    If (Not IsNull([CN]) Or [CN] = "") Then
        DoCmd.OpenForm "NMIS_AGREEMENT_LOTS", acNormal, , _
            "[CN] = Forms![NMIS_PRODUCT_INVENTORIES]![CN]", , acNormal
    End If
End Sub

Private Sub CN_Enter()
    
    [Transaction_Totals_For_Product_Inventory subform].Visible = False
  
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

Private Sub Data_Summary_Report_Click()

    [NMIS_PRODUCT_INVENTORIES subform1].Requery
    
    DoCmd.OpenReport "Product_Inventory_Data_Summary", acPreview
        
End Sub

Private Sub Enter_Sizes_Click()

    If [Enter_Sizes] = True Then
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![SMALL].TabStop = True
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![LARGE].TabStop = True
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![TARGET].TabStop = True
    Else
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![SMALL].TabStop = False
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![LARGE].TabStop = False
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![TARGET].TabStop = False
    End If
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Requery
    
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

    CN = Null
    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Close_Click:
    Exit Sub

Err_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Close_Click
    
End Sub

Private Sub Field_Worksheets____Enter()

        [Transaction_Totals_For_Product_Inventory subform].Visible = False
        
End Sub

Private Sub Filter_for_Product_Type_AfterUpdate()

    CN.Requery
    
End Sub



Private Sub Form_Open(Cancel As Integer)

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "040207" Then
        [ConvertCmHtToIn] = True
    Else
        [ConvertCmHtToIn] = False
    End If
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![SMALL].TabStop = False
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![LARGE].TabStop = False
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![TARGET].TabStop = False
        '[NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Requery
End Sub

Private Sub Ingrowth_Pcts_Checklist_Click()

On Error GoTo Err_Ingrowth_Pcts_Checklist_Click
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_INVENTORY_INGROWTH_PCTs_Checklist"
    DoCmd.OpenReport stDocName, acPreview
Exit_Ingrowth_Pcts_Checklist_Click:
    Exit Sub

Err_Ingrowth_Pcts_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Ingrowth_Pcts_Checklist_Click

End Sub

Private Sub Ingrowth_Pcts_Checklist_Enter()

        [Transaction_Totals_For_Product_Inventory subform].Visible = False
        
End Sub

Private Sub Inventory_Sizes_Click()
    
    [Transaction_Totals_For_Product_Inventory subform].Visible = False
  
End Sub

Private Sub Like_Agreement_Lots_AfterUpdate()

    CN.Requery
    
End Sub

Private Sub Like_Agreement_Lots_DblClick(Cancel As Integer)
On Error GoTo Err_Like_Agreement_Lots_DblClick

    Dim stDocName As String

    MsgBox "Wildcards" & Chr(13) & Chr(10) & Chr(10) & _
        "* Matches any number of characters. It can be used as the first or last character in the character string. -5* finds -5, -56, and -56H" & Chr(13) & Chr(10) & Chr(10) & _
        "? Matches any single alphabetic character. B?ll finds ball, bell, and bill" & Chr(13) & Chr(10) & Chr(10) & _
        "[ ] Matches any single character within the brackets. B[ae]ll finds ball and bell but not bill" & Chr(13) & Chr(10) & Chr(10) & _
        "! Matches any character not in the brackets. b[!ae]ll finds bill and bull but not ball or bell" & Chr(13) & Chr(10) & Chr(10) & _
        "- Matches any one of a range of characters. You must specify the range in ascending order (A to Z, not Z to A). b[a-c]d finds bad, bbd, and bcd" & Chr(13) & Chr(10) & Chr(10) & _
        "# Matches any single numeric character. 1#3 finds 103, 113, 123", vbInformation

Exit_Like_Agreement_Lots_DblClick:
    Exit Sub

Err_Like_Agreement_Lots_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Like_Agreement_Lots_DblClick
    
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
    [Transaction_Totals_For_Product_Inventory subform].Requery
    
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
    '[NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Next_Count] = Nz([NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Max_Sample_No], 0) + 1
    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Requery
    '[NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![TARGET].TabStop = False
        
    
End Sub

Private Sub NMIS_PRODUCT_INVENTORY_SAMPLES_subform1_Exit(Cancel As Integer)

    On Error GoTo Err_NMIS_PRODUCT_INVENTORY_SAMPLES_subform1_Exit

    calculated_target_factor = Round([NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Sum_of_Target] / _
                [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Sum_Of_Total_Sized] * 100, 2)

    If IsNull([NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        If IsNull([NMIS_PRODUCT_INVENTORIES subform1].Form![TARGET_FACTOR]) Then
            [NMIS_PRODUCT_INVENTORIES subform1].Form![TARGET_FACTOR] = calculated_target_factor
        Else
            If calculated_target_factor <> Round([NMIS_PRODUCT_INVENTORIES subform1].Form![TARGET_FACTOR], 2) Then
                Response = MsgBox("Update Computed Target Factor to [" & Nz(calculated_target_factor, "  ") & "]", vbOKCancel)
                If Response = vbOK Then
                    [NMIS_PRODUCT_INVENTORIES subform1].Form![TARGET_FACTOR] = Round(calculated_target_factor, 2)
                End If
            End If
        End If
    End If
    
    'If Not IsNull([NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Max_Sample_No]) Then
        '[NMIS_PRODUCT_INVENTORIES subform1].Form![SAMPLES] = Nz([NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Max_Sample_No], 0)
        '[NMIS_PRODUCT_INVENTORIES subform1].Form![SAMPLES_SPACING] = _
            'Nz([Agreement_Lot_Total_Containers subform].Form![Total_Containers], 1) / _
                '(Nz([NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Max_Sample_No], 0) + 1)
     'End If
    
Exit_NMIS_PRODUCT_INVENTORY_SAMPLES_subform1_Exit:
    Exit Sub

Err_NMIS_PRODUCT_INVENTORY_SAMPLES_subform1_Exit:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_PRODUCT_INVENTORY_SAMPLES_subform1_Exit
    
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
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Plant_inv_matrix_xtab1"
        DoCmd.SetWarnings True
        DoCmd.OpenForm "NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT"
    End If
    
End Sub

Private Sub Page60_Click()
    
    [Transaction_Totals_For_Product_Inventory subform].Visible = False
  
End Sub

Private Sub Reports_Click()

        [Transaction_Totals_For_Product_Inventory subform].Visible = False
        
End Sub

Private Sub Size_Distribution_Report_Click()
On Error GoTo Err_Size_Distribution_Report_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
   
    If IsNull([NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        MsgBox "No Size Measurements have been entered for creating a Size Distribution Report"
    Else
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Plant_inv_matrix_xtab1"
        DoCmd.OpenQuery "Plant_inv_matrix_PCT_xtab1"
        DoCmd.SetWarnings True
        If Not Data_Processed Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
        DoCmd.OpenReport "Plant_inventory_Rpt_Size_Matrix", acPreview
    End If

Exit_Size_Distribution_Report_Click:
    Exit Sub

Err_Size_Distribution_Report_Click:
    DoCmd.SetWarnings True
    MsgBox Err.DESCRIPTION
    Resume Exit_Size_Distribution_Report_Click
    
End Sub

Private Sub Size_Distribution_Report_PCT_Only_Click()
On Error GoTo Err_Size_Distribution_Report_PCT_Only_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
    
    If IsNull([NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        MsgBox "No Size Measurements have been entered for creating a Size Distribution Report"
    Else
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Plant_inv_matrix_xtab1"
        DoCmd.OpenQuery "Plant_inv_matrix_PCT_xtab1_2"
        DoCmd.SetWarnings True
        If Not Data_Processed Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
        DoCmd.OpenReport "Plant_inventory_Rpt_Size_Matrix_PCT_Only", acPreview
    End If

Exit_Size_Distribution_Report_PCT_Only_Click:
    Exit Sub

Err_Size_Distribution_Report_PCT_Only_Click:
    DoCmd.SetWarnings True
    MsgBox Err.DESCRIPTION
    Resume Exit_Size_Distribution_Report_PCT_Only_Click
  
End Sub

Private Sub TabCtl18_Click()

    [Transaction_Totals_For_Product_Inventory subform].Visible = False
    
End Sub

Private Sub Transactions_Click()
    
    [Transaction_Totals_For_Product_Inventory subform].Visible = True
    
End Sub

Private Sub Worksheets_Click()
    
    [Transaction_Totals_For_Product_Inventory subform].Visible = False
    
End Sub
```
