# Form: Propagule_Harvest_Priorties

**Caption:** Lifting_Priorties  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_PROPAGULE_HARVEST_PRIORITIES`, `NMIS_SOURCE_LOTS`  
**Subforms/subreports:** `Form.Propagule_Harvest_Priorties_Data_Subform`, `Form.PROPAGULE_HARVEST_PRIORITIES_MAX_FY_SUBFORM`, `Form.NMIS_ACCESS_USER_NURSERY subform1`  
**Opens:** `Report:Lifting_Priorties_Specs`, `Report:Processing_Client_Heads_Up`, `Report:Propagule_Destroy_Priorities`, `Report:Propagule_Harvest_Priorities`, `Report:Propagule_Harvest_Priorities_Checklist`, `Report:Propagule_Harvest_Priorities_Harvested`, `Report:Propagule_Harvest_Priorities_Harvested_by_Date`, `Report:Propagule_Harvest_Priorities_by_Client_loc_Checklist`, `Report:Propagule_Harvest_Priorities_by_loc_Checklist`, `Report:Propagule_Harvest_Priorities_no_Harvest`, `Report:TOLIFT_Lift_Priorities_Reset_Priorities_to_99`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  
**Form events with code:** Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Green_Background_Box |  |  |  |  | 0.03, 0.03, 4.11, 0.45 |
| Label | Label22 | Propagule Harvest Priorities |  |  |  | 4.25, 0.07, 2.78, 0.28 |
| TextBox | Like_Harvest_FY | Like Harvest FY: |  |  | AfterUpdate, Enter | 1.33, 0.12, 0.58, 0.21 |
| ComboBox | like_species | Like Species: |  | SELECT NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACULAR, Count(NMIS_SOURCE_LOTS.CN) AS CountOfCN FROM NMIS_PROPAGULE_HARVEST_PRIORITIES INNER JOIN (NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query INNER JOIN (NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN) ON NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) ON NMIS_PROPAGULE_HARVEST_PRIORITIES.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN WHERE (((NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_FY)=[Forms]![Propagule_Harvest_Priorties]![Like_Harvest_FY])) GROUP BY NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACULAR; | AfterUpdate, DblClick | 3.27, 0.12, 0.78, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TabControl | TabCtl51 |  |  |  |  | 0.08, 0.04, 10.62, 6.02 |
| Page | Data |  |  |  |  | 0.14, 0.09, 10.52, 5.92 |
| Subform | Lifting_Priorties_Subform |  | Form.Propagule_Harvest_Priorties_Data_Subform |  |  | 0.21, 0.33, 10.38, 5.64 |
| Page | Reports |  |  |  |  | 0.14, 0.09, 10.52, 5.92 |
| TextBox | Harvest_Date | Harvest Date |  |  |  | 1.35, 0.68, 0.65, 0.21 |
| CommandButton | Preview_Lifting_Priority_Report | Harvest  Priority Report |  |  | Click | 0.46, 1.62, 2.00, 0.29 |
| CommandButton | Command50 | Lots Harvested Report |  |  | Click | 0.46, 3.83, 2.00, 0.29 |
| Rectangle | Box56 |  |  |  |  | 0.32, 0.50, 7.55, 1.54 |
| CommandButton | Command59 | Harvest Priority Checklist by Lot |  |  | Click | 0.46, 2.58, 2.00, 0.29 |
| TextBox | General_Comments | Comments: |  |  |  | 1.35, 0.95, 6.33, 0.54 |
| CheckBox | Data_Processed | Data Processed |  |  |  | 3.21, 2.35, 0.58, 0.00 |
| Subform | NMIS_PROPAGULE_HARVEST_MAX_FY |  | Form.PROPAGULE_HARVEST_PRIORITIES_MAX_FY_SUBFORM |  |  | 3.21, 2.88, 4.67, 1.54 |
| CommandButton | Harvest_Priority_Checklist_by_Loc | Harvest Priority Checklist by Loc |  |  | Click | 0.46, 2.90, 2.00, 0.29 |
| CommandButton | Command73 | Lots Harvested Report by Date |  |  | Click | 0.46, 4.15, 2.00, 0.29 |
| CommandButton | Not_To_Be_Harvested | Lots not to be Harvested Report |  |  | Click | 0.46, 3.52, 2.00, 0.29 |
| CommandButton | Preview_Destroy_Priority_Report | Destroy  Priority Report |  |  | Click | 5.67, 1.62, 2.00, 0.29 |
| CommandButton | Harvest_Priority_Checklist_by_client_Loc | Harvest Checklist by Client/Loc |  |  | Click | 0.45, 3.21, 2.00, 0.29 |
| Subform | NMIS_ACCESS_USER_NURSERY subform1 |  | Form.NMIS_ACCESS_USER_NURSERY subform1 |  |  | 8.25, 3.21, 1.75, 0.79 |

## Code-behind (VBA)

```vb
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
```
