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