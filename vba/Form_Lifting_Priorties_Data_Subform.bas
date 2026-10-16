Option Compare Database

Private Sub Client_Heads_Up_Click()

    Dim stDocName As String

    stDocName = "Processing_Client_Heads_Up"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Command50_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_BY_PRIORITY"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Age_Class_DblClick(Cancel As Integer)
    
    Age_Class.Locked = False
    
End Sub

Private Sub Age_Class_Enter()

    If Not IsNull(Age_Class) Then
        Age_Class.Locked = True
    Else
        Age_Class.Locked = False
    End If
End Sub

Private Sub Age_Class_Label_Click()
On Error GoTo Err_Age_Class_Label_Click

   Forms![Lifting_Priorties]![Sort_By] = "Stock Type"
   DoCmd.Requery
   
Exit_Age_Class_Label_Click:
    Exit Sub

Err_Age_Class_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Age_Class_Label_Click
End Sub

Private Sub Delete_Lifted_Lots_Click()
    
    Response = MsgBox("This will delete lifted lots and add or update orders. Continue?", vbYesNo)
    
    If Response = vbYes Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "TOLIFT_Lift_Priorities_Delete_Lifted_mt"
        DoCmd.OpenQuery "TOLIFT_Lift_Prioities_Clear"
        DoCmd.OpenQuery "TOLIFT_Lift_Priorities_Delete_Lifted_at"
        DoCmd.OpenForm "Lifting_Locations_Form", , , , , acHidden
        DoCmd.OpenQuery "TOLIFT_Lift_Priorities_Append_New_Orders_at"
        DoCmd.OpenQuery "TOLIFT_Lift_Priorities_Update_mt"
        DoCmd.OpenQuery "TOLIFT_Lift_Priorities_Update"
        DoCmd.Close acForm, "LIFTING_LOCATIONS_FORM"
        DoCmd.Requery
        DoCmd.SetWarnings True
    End If

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

Private Sub Max_Priority_DblClick(Cancel As Integer)

    Max_Priority = 98
End Sub

Private Sub Min_Priority_DblClick(Cancel As Integer)

    Min_Priority = 1
    
End Sub

Private Sub LIFTED_DblClick(Cancel As Integer)

    LIFTED.Locked = False
    
End Sub

Private Sub LIFTED_Enter()

    If Not IsNull(LIFTED) Then
        LIFTED.Locked = True
    Else
        LIFTED.Locked = False
    End If
End Sub

Private Sub LOCATION_AfterUpdate()
    Response = MsgBox("Are you Sure you want to change the Location?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [LOCATION] = Location_Backup
        End If
    
End Sub

Private Sub Location_DblClick(Cancel As Integer)

    If IsNull(LOCATION) Then
        LOCATION = "Precooler"
        Priority = 100
    End If
    
End Sub

Private Sub Location_Enter()

    Location_Backup = LOCATION

End Sub

Private Sub Location_Exit(Cancel As Integer)

End Sub

Private Sub Location_Label_Click()
On Error GoTo Err_Location_Label_Click

   Forms![Lifting_Priorties]![Sort_By] = "Location"
   DoCmd.Requery
   
Exit_Location_Label_Click:
    Exit Sub

Err_Location_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Location_Label_Click
End Sub

Private Sub LOT_ID_DblClick(Cancel As Integer)

    Lot_ID.Locked = False
    
End Sub

Private Sub Lot_ID_Enter()

    If Not IsNull(Lot_ID) Then
        Lot_ID.Locked = True
    Else
        Lot_ID.Locked = False
    End If
End Sub

Private Sub Lot_ID_Label_Click()
On Error GoTo Err_Lot_ID_Label_Click

   Forms![Lifting_Priorties]![Sort_By] = "Lot ID"
   DoCmd.Requery
   
Exit_Lot_ID_Label_Click:
    Exit Sub

Err_Lot_ID_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_Label_Click
End Sub

Private Sub Lot_Length_DblClick(Cancel As Integer)

    LOT_LENGTH.Locked = False
    
End Sub

Private Sub Lot_Length_Enter()

    If Not IsNull(LOT_LENGTH) Then
        LOT_LENGTH.Locked = True
    Else
        LOT_LENGTH.Locked = False
    End If
End Sub

Private Sub Lot_Length_Exit(Cancel As Integer)

    If IsNull(LOT_LENGTH) Then
        LOT_LENGTH.Locked = True
    Else
        LOT_LENGTH.Locked = False
    End If
End Sub

Private Sub Net_Inv_DblClick(Cancel As Integer)

    NET_INV.Locked = False
    
End Sub

Private Sub Net_Inv_Enter()

    If Not IsNull(NET_INV) Then
        NET_INV.Locked = True
    Else
        NET_INV.Locked = False
    End If
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

Private Sub Preview_Lifting_Priority_Report_Click()

    Dim stDocName As String

    stDocName = "Lifting_Priorities"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Priority_Change()

    Added = False
    
End Sub

Private Sub Priority_DblClick(Cancel As Integer)

    Priority = 99
    
End Sub

Private Sub Priority_Exit(Cancel As Integer)

    Added = False
    
End Sub

Private Sub Priority_Label_Click()
On Error GoTo Err_Priority_Label_Click

   Forms![Lifting_Priorties]![Sort_By] = "Priority"
   DoCmd.Requery
   
Exit_Priority_Label_Click:
    Exit Sub

Err_Priority_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Priority_Label_Click
End Sub

Private Sub Rebuild_Lifting_Priority_Table_Click()
    
    DoCmd.OpenForm "Lifting_Locations_Form", , , , , acHidden
    DoCmd.OpenForm "Lifting_Priorty_Table_Rebuild_Form"

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

Private Sub Species_Age_Class_DblClick(Cancel As Integer)

    Species_Age_Class.Locked = False
    
End Sub

Private Sub Species_Age_Class_Enter()

    If Not IsNull(Species_Age_Class) Then
        Species_Age_Class.Locked = True
    Else
        Species_Age_Class.Locked = False
    End If
End Sub

Private Sub Species_Age_Class_Label_Click()
On Error GoTo Err_Species_Age_Class_Label_Click

   Forms![Lifting_Priorties]![Sort_By] = "Species"
   DoCmd.Requery
   
Exit_Species_Age_Class_Label_Click:
    Exit Sub

Err_Species_Age_Class_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Species_Age_Class_Label_Click
End Sub