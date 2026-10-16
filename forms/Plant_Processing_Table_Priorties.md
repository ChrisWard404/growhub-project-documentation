# Form: Plant_Processing_Table_Priorties

**Subforms/subreports:** `Form.Plant_Processing_Table_Priorties_Data_Subform`  
**Opens:** `Report:Lifting_Priorties_Specs`, `Report:NMIS_PROCESS_QI_LABELS_from_table_priorities`, `Report:Plant_Processing_Table_Priorities`, `Report:Plant_Processing_Table_Priorities_pc`, `Report:Plant_Processing_Table_Priorities_pms`, `Report:Processing_Table_Assignments_Detailed`, `Report:TOLIFT_Lift_Priorities_Reset_Priorities_to_99`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  
**Form events with code:** Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label22 | Plant Processing Table Assignments |  |  |  | 3.77, 0.07, 3.60, 0.28 |
| TextBox | Like_Processing_FY | Like Processing FY: |  |  |  | 9.03, 0.08, 0.58, 0.21 |
| TextBox | Default_Date | Processing Date: |  |  | AfterUpdate | 1.39, 0.11, 0.58, 0.21 |
| TextBox | Like_Table | Like Table: |  |  | AfterUpdate, DblClick | 2.91, 0.12, 0.34, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TabControl | TabCtl51 |  |  |  |  | 0.08, 0.04, 10.67, 6.02 |
| Page | Data |  |  |  |  | 0.18, 0.33, 10.48, 5.64 |
| Subform | Lifting_Priorties_Subform |  | Form.Plant_Processing_Table_Priorties_Data_Subform |  | Enter | 0.18, 0.33, 10.46, 5.64 |
| Page | Reports |  |  |  | Click | 0.18, 0.33, 10.48, 5.64 |
| TextBox | Processing_Date | Process Date |  |  | Enter | 1.32, 0.50, 0.65, 0.21 |
| CommandButton | Preview_Table_Assignment_Report | Table Assignment Report |  |  | Click | 0.46, 2.06, 2.00, 0.29 |
| Rectangle | Box56 |  |  |  |  | 0.32, 0.94, 6.34, 2.06 |
| CommandButton | Command59 | Table Assignment - Precooler |  |  | Click | 2.74, 2.53, 2.00, 0.29 |
| TextBox | General_Comments | Comments: |  |  |  | 1.35, 1.58, 5.19, 0.21 |
| CheckBox | Data_Processed | Data Processed |  |  |  | 0.46, 4.15, 0.58, 0.00 |
| CommandButton | Processing_Table_Assignments_detailed | Table Assignment - Detailed |  |  | Click | 0.46, 2.53, 2.00, 0.29 |
| CheckBox | Data_Processed_detailed | Data Processed Detailed |  |  |  | 0.46, 4.40, 0.58, 0.00 |
| Rectangle | Box89 |  |  |  |  | 6.86, 0.94, 3.59, 2.06 |
| Label | Label95 | Table Assignment Reports |  |  |  | 2.21, 1.02, 2.18, 0.25 |
| Label | Label94 | Quality Monitoring Labels |  |  |  | 7.67, 1.02, 2.19, 0.25 |
| ComboBox | Table_QT | Table: |  | *;All;1;Table 1;2;Table 2;3;Table 3;ss;Side Sort |  | 8.35, 1.59, 1.22, 0.21 |
| CommandButton | Command80 | Table Assignment - PMS |  |  | Click | 2.71, 2.06, 2.00, 0.29 |
| CommandButton | Quality_monitor_labels | Click for Labels |  |  | Click | 7.77, 2.44, 2.00, 0.29 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Feet_To_Lift_Exit(Cancel As Integer)

    If ([Feet To Lift] + [LIFTED]) < [LOT_LENGTH] Then
        Partial_Lift = -1
    End If
    DoCmd.GoToControl "Priority"
    
End Sub

Private Sub Command59_Click()

    Dim stDocName As String

    stDocName = "Plant_Processing_Table_Priorities_pc"
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Max_Priority_DblClick(Cancel As Integer)

    Max_Priority = 98
End Sub

Private Sub Min_Priority_DblClick(Cancel As Integer)

    Min_Priority = 1
    
End Sub

Private Sub Net_Note_DblClick(Cancel As Integer)
    
    Net_Note = "Destroy"
    
End Sub

Private Sub Net_Order_DblClick(Cancel As Integer)

    [Net Order] = [Net Inv]
    [Feet To Lift] = [LOT_LENGTH] - [LIFTED]
    [ft note] = "All"
    Partial_Lift = 0
    
End Sub

Private Sub Open_Specs_Click()

    DoCmd.OpenReport "Lifting_Priorties_Specs", acPreview
    
End Sub

Private Sub Command80_Click()
  
    Dim stDocName As String

    stDocName = "Plant_Processing_Table_Priorities_pms"
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Default_Date_AfterUpdate()
    
    [Lifting_Priorties_Subform].Requery
    [Processing_Date] = Default_Date
    
End Sub

Private Sub Like_Harvest_FY_AfterUpdate()

    [Lifting_Priorties_Subform].Form.Requery
    
End Sub

Private Sub Like_Harvest_FY_Enter()
If Val([Forms]![Propagule_Harvest_Priorties]![NMIS_PROPAGULE_HARVEST_MAX_FY].[Form]![Max_FY]) < _
    Val([Forms]![Switchboard]![FY_For_Reports]) Then
        [Lifting_Priorties_Subform].Form![Add_Current_FY_Lots].Visible = True
    Else
        [Lifting_Priorties_Subform].Form![Add_Current_FY_Lots].Visible = False
    End If
End Sub

Private Sub Form_Open(Cancel As Integer)

    [Default_Date].Visible = True
    Like_Table.Visible = True
    Like_Processing_FY.Visible = True

End Sub

Private Sub Lifting_Priorties_Subform_Enter()
    
    [Default_Date].Visible = True
    Like_Table.Visible = True
    Like_Processing_FY.Visible = True
    
End Sub

Private Sub Like_Table_AfterUpdate()

    [Lifting_Priorties_Subform].Form.Requery
    
End Sub

Private Sub Like_Table_DblClick(Cancel As Integer)

    Like_Table = "*"
    [Lifting_Priorties_Subform].Form.Requery
    
End Sub

Private Sub Priority_DblClick(Cancel As Integer)

    Priority = 99
    
End Sub
Private Sub Reset_Priorities_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Lift_Priorities_Reset_Priorities_to_99"
    
    Response = MsgBox("Are you sure you want reset ALL to priority 99?", vbYesNo)
    
    DoCmd.Requery
    If Response = vbYes Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery stDocName
        DoCmd.Requery
        DoCmd.SetWarnings True
    End If

End Sub

Private Sub Preview_Table_Assignment_Report_Click()

    Dim stDocName As String

    stDocName = "Plant_Processing_Table_Priorities"
    
    If Not [Data_Processed] Then
    
    ' turns warning (about to update...) off
    DoCmd.SetWarnings False

    'Update Lot_Lift_CNTNR and Lot_Lift_CNTNR Tables
    DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
    DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
    DoCmd.SetWarnings True
    'Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Processing_Date_Enter()
    
    [Default_Date].Visible = False
    Like_Table.Visible = False
    Like_Processing_FY.Visible = False
    
End Sub

Private Sub Processing_Table_Assignments_detailed_Click()

    
    Dim stDocName As String

    stDocName = "Processing_Table_Assignments_Detailed"
    
    If Not [Data_Processed_detailed] Then
    
    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    DoCmd.OpenQuery "ORDER_FORM_Table_Priority MT Query"
    'DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
    'DoCmd.OpenQuery "Order_Form_LOC mt Query"
    'DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
    'DoCmd.OpenQuery "Order_Form_QI mt Query"
    'DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
    'DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
    DoCmd.OpenQuery "Order_Form_Specs mt Query"
    'DoCmd.OpenQuery "Order_Form_MCODES mt Query"
    DoCmd.OpenQuery "Order_form_Contacts mt Query"
    DoCmd.OpenQuery "Order_form_Contacts at Query"
    'DoCmd.OpenQuery "Order_Form_PKC mt Query"
    'DoCmd.OpenQuery "Order_Form_PKT mt Query"
    'oCmd.OpenQuery "Field_Location_Inv_Subform_MT"
    
    DoCmd.SetWarnings True
    Data_Processed_detailed = True
    Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Quality_monitor_labels_Click()
  
    Dim stDocName As String

    stDocName = "NMIS_PROCESS_QI_LABELS_from_table_priorities"
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Reports_Click()

    [Default_Date].Visible = False
    Beep
End Sub
```
