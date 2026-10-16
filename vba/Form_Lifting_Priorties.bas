Option Compare Database

Private Sub Client_Heads_Up_Click()

    Dim stDocName As String

    stDocName = "Processing_Client_Heads_Up"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Command50_Click()

    Dim stDocName As String

    stDocName = "Lifting_priorities_detailed"
    
    DoCmd.Requery
    If Not Data_Processed Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
            DoCmd.SetWarnings True
            Data_Processed = True
    End If
    DoCmd.SetWarnings False
    'Update Order_Services_String Table
    'Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    'Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    'Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdi
    DoCmd.OpenQuery "TOLIFT_BY_PRIORITY_MT Query"
    DoCmd.OpenQuery "TOLIFT_ORDER_MT Query"
    DoCmd.SetWarnings True
    
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

    stDocName = "Lifting_Priorities_Checklist"
    
    DoCmd.Requery
    If Not Data_Processed Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
            DoCmd.SetWarnings True
            Data_Processed = True
    End If
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Form_Open(Cancel As Integer)

[Sort_By].Visible = True
Tip_on_Sorting.Visible = True
[Lifting_Priorties_Subform].SetFocus
'DoCmd.GoToControl "[Priority]"

End Sub

Private Sub Hide_zero_tolift_AfterUpdate()

    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Lifting_Priorties_Subform_Enter()

Forms![Lifting_Priorties]![Select_For_Species].Visible = True
Forms![Lifting_Priorties]![Select_For_Stock_Type].Visible = True
Forms![Lifting_Priorties]![Select_Like_Location].Visible = True
Forms![Lifting_Priorties]![Select_For_Lot_ID].Visible = True
Forms![Lifting_Priorties]![View_All].Visible = True
Forms![Lifting_Priorties]![View_Label].Visible = True
Forms![Lifting_Priorties]![Sort_By].Visible = True
Forms![Lifting_Priorties]!Tip_on_Sorting.Visible = True
Forms![Lifting_Priorties]![Box153].Visible = True
[Hide_zero_tolift].Visible = True

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

Private Sub Min_Priority_Enter()

Forms![Lifting_Priorties]![Sort_By].Visible = False
Forms![Lifting_Priorties]!Tip_on_Sorting.Visible = False

End Sub

Private Sub Min_Priority_GotFocus()
        
    Forms![Lifting_Priorties]![Select_For_Species].Visible = False
    Forms![Lifting_Priorties]![Select_For_Stock_Type].Visible = False
    Forms![Lifting_Priorties]![Select_Like_Location].Visible = False
    Forms![Lifting_Priorties]![Select_For_Lot_ID].Visible = False
    Forms![Lifting_Priorties]![View_All].Visible = False
    Forms![Lifting_Priorties]![View_Label].Visible = False
    Forms![Lifting_Priorties]![Box153].Visible = False
    'Forms![Lifting_Priorties]![Sort_By].Visible = False
    Forms![Lifting_Priorties]!Tip_on_Sorting.Visible = False
    [Hide_zero_tolift].Visible = False
    
End Sub

Private Sub Preview_Lifting_Priority_Precooler_Report_Click()

    Dim stDocName As String

    stDocName = "Lifting_Priorities_Precooler"
    
    DoCmd.Requery
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Lifting_Priority_Report_Click()

    Dim stDocName As String

    stDocName = "Lifting_Priorities"
    If Not Data_Processed Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
    DoCmd.Requery
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

Private Sub Reports_Click()

    [Hide_zero_tolift].Visible = False
    MsgBox "here"
    
End Sub

Private Sub Select_For_Lot_ID_AfterUpdate()

    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Select_For_Lot_ID_Enter()

    Select_For_Stock_Type = Null
    Select_For_Species = Null
    Select_Like_Location = "*"
    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Select_For_Species_AfterUpdate()

    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Select_For_Species_Enter()

    Select_For_Lot_ID = Null
    Select_Like_Location = "*"
    Select_For_Species.Requery
    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Select_For_Stock_Type_AfterUpdate()

    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Select_For_Stock_Type_Enter()

    Select_For_Lot_ID = Null
    Select_Like_Location = "*"
    Select_For_Stock_Type.Requery
    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Select_Like_Location_AfterUpdate()

    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Select_Like_Location_Enter()

    Select_For_Lot_ID = Null
    Select_For_Stock_Type = Null
    Select_For_Species = Null
    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Sort_By_Click()

    Sort_By.Visible = False
    
End Sub

Private Sub Tip_on_Sorting_Click()

    MsgBox "Click on one of the following Column Headings to sort by that Column." _
        & vbCrLf & "" _
        & vbCrLf & "Priority" _
        & vbCrLf & "Location" _
        & vbCrLf & "Lot ID" _
        & vbCrLf & "Species" _
        & vbCrLf & "Stock Type", vbInformation
   
End Sub
Private Sub View_All_Click()
On Error GoTo Err_View_All_Click

    Select_For_Stock_Type = Null
    Select_For_Species = Null
    Select_Like_Location = "*"
    Select_For_Lot_ID = Null
    [Lifting_Priorties_Subform].Requery

Exit_View_All_Click:
    Exit Sub

Err_View_All_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_View_All_Click
    
End Sub