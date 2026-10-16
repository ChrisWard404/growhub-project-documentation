Option Compare Database

Private Sub Rebuild_Lift_Priorities_Table_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Lift_Priorities_at"
    
    Response = MsgBox("Rebuild Lifting Priorities?", vbYesNo)
    
    If Response = vbYes Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "TOLIFT_Lift_Prioities_Clear"
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.OpenQuery stDocName
        DoCmd.SetWarnings True
        Forms![Lifting_Priorties]![Lifting_Priorties_Subform].Requery
        'DoCmd.OpenForm "Lifting_Priorties"
    Else
        MsgBox "Request Cancelled"
    End If
    DoCmd.Close acForm, "Lifting_Locations_Form"
    DoCmd.Close acForm, "Lifting_Priorty_Table_Rebuild_Form"
    
End Sub