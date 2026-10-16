Option Compare Database

Private Sub Client_Heads_Up_Click()

    Dim stDocName As String

    stDocName = "Processing_Client_Heads_Up"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Command50_Click()

    Dim stDocName As String

    stDocName = "Propagule_Harvest_Priorities_Harvested"
    
    DoCmd.Requery
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Harvest_Priorities_Lot_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Feet_To_Lift_DblClick(Cancel As Integer)

    [Feet To Lift] = [LOT_LENGTH] - [LIFTED]
    [Net Order] = [Net Inv]
    [ft note] = "All"
    Partial_Lift = 0
    
End Sub

Private Sub Feet_To_Lift_Exit(Cancel As Integer)

    If ([Feet To Lift] + [LIFTED]) < [LOT_LENGTH] Then
        Partial_Lift = -1
    End If
    DoCmd.GoToControl "Priority"
    
End Sub

Private Sub Command59_Click()

    Dim stDocName As String

    stDocName = "Propagule_Harvest_Priorities_Checklist"
    
    DoCmd.Requery
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Harvest_Priorities_Lot_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
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

Private Sub Command73_Click()
    
On Error GoTo Err_Command73_Click
    Dim stDocName As String

    stDocName = "Propagule_Harvest_Priorities_Harvested_by_Date"
    
    DoCmd.Requery
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Harvest_Priorities_Lot_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    DoCmd.OpenReport stDocName, acPreview
    

Exit_Command73_Click:
    Exit Sub

Err_Command73_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command73_Click
    
End Sub



Private Sub Form_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Agreement_Lot_Min_Field_Location_mt"
    DoCmd.SetWarnings True
    
End Sub

Private Sub Harvest_Priority_Checklist_by_client_Loc_Click()

    Dim stDocName As String

    stDocName = "Propagule_Harvest_Priorities_by_Client_loc_Checklist"
    
    DoCmd.Requery
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Harvest_Priorities_Lot_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Harvest_Priority_Checklist_by_Loc_Click()

    Dim stDocName As String

    stDocName = "Propagule_Harvest_Priorities_by_loc_Checklist"
    
    DoCmd.Requery
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Harvest_Priorities_Lot_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    DoCmd.OpenReport stDocName, acPreview

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

Private Sub like_species_AfterUpdate()

    [Lifting_Priorties_Subform].Form.Requery
    
End Sub

Private Sub like_species_DblClick(Cancel As Integer)

    Like_Species = "*"
    [Lifting_Priorties_Subform].Form.Requery
    
End Sub

Private Sub Not_To_Be_Harvested_Click()

    Dim stDocName As String

    stDocName = "Propagule_Harvest_Priorities_no_Harvest"
    
    DoCmd.Requery
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Harvest_Priorities_Lot_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Destroy_Priority_Report_Click()

    Dim stDocName As String

    stDocName = "Propagule_Destroy_Priorities"
    
    DoCmd.Requery
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Harvest_Priorities_Lot_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Lifting_Priority_Report_Click()

    Dim stDocName As String

    stDocName = "Propagule_Harvest_Priorities"
    
    DoCmd.Requery
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Harvest_Priorities_Lot_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    DoCmd.OpenReport stDocName, acPreview

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