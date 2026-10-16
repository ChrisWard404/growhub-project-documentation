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