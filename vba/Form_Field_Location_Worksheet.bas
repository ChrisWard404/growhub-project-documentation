Option Compare Database

Private Sub Print_Field_Stock_Location_Spd_Click()
On Error GoTo Err_Print_Field_Stock_Location_Spd_Click

    Dim stDocName As String

    If [Data_Processed] = False Then
        'update location species table
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "location_species_string_mt", acNormal, acEdit
        DoCmd.OpenQuery "location_species_mt", acNormal, acEdit
        DoCmd.OpenQuery "location_species_string_update", acNormal, acEdit
        DoCmd.SetWarnings True
        [Data_Processed] = True
    End If
        
    stDocName = "Field_Location_Worksheet_SPD"
    
    If Not IsNull(Begin_Location) Then
    If Begin_Location > End_Location Then
        MsgBox "END Entry Order MUST be Greater than Begin Entry Order", vbExclamation
    Else
        If IsNull(End_Location) Then
            'End_ID = Begin_ID
        End If
    
        DoCmd.OpenQuery stDocName
    End If
    Else
        MsgBox "Must Enter a BEGIN LOCATION", vbExclamation
    End If

Exit_Print_Field_Stock_Location_Spd_Click:
    Exit Sub

Err_Print_Field_Stock_Location_Spd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Field_Stock_Location_Spd_Click
    
End Sub

Private Sub Print_Work_Orders_Click()
On Error GoTo Err_Print_Work_Orders_Click

    Dim stDocName As String

    If [Data_Processed] = False Then
        'update location species table
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "location_species_string_mt", acNormal, acEdit
        DoCmd.OpenQuery "location_species_mt", acNormal, acEdit
        DoCmd.OpenQuery "location_species_string_update", acNormal, acEdit
        DoCmd.SetWarnings True
        [Data_Processed] = True
    End If
        
    stDocName = "Field_Location_Worksheet"
    
    If Not IsNull(Begin_Location) Then
    If Begin_Location > End_Location Then
        MsgBox "END Entry Order MUST be Greater than Begin Entry Order", vbExclamation
    Else
        If IsNull(End_Location) Then
            'End_ID = Begin_ID
        End If
    
        DoCmd.OpenReport stDocName, acViewPreview
    End If
    Else
        MsgBox "Must Enter a BEGIN LOCATION", vbExclamation
    End If

Exit_Print_Work_Orders_Click:
    Exit Sub

Err_Print_Work_Orders_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Work_Orders_Click
    
End Sub

Private Sub Print_Work_Orders_Condensed_Click()
On Error GoTo Err_Print_Work_Orders_Condensed_Click

    Dim stDocName As String

    If [Data_Processed] = False Then
        'update location species table
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "location_species_string_mt", acNormal, acEdit
        DoCmd.OpenQuery "location_species_mt", acNormal, acEdit
        DoCmd.OpenQuery "location_species_string_update", acNormal, acEdit
        DoCmd.SetWarnings True
        [Data_Processed] = True
    End If
        
    stDocName = "Field_Location_Worksheet_condensed"
    
    If Not IsNull(Begin_Location) Then
    If Begin_Location > End_Location Then
        MsgBox "END Entry Order MUST be Greater than Begin Entry Order", vbExclamation
    Else
        If IsNull(End_Location) Then
            'End_ID = Begin_ID
        End If
    
        DoCmd.OpenReport stDocName, acViewPreview
    End If
    Else
        MsgBox "Must Enter a BEGIN LOCATION", vbExclamation
    End If

Exit_Print_Work_Orders_Condensed_Click:
    Exit Sub

Err_Print_Work_Orders_Condensed_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Work_Orders_Condensed_Click
End Sub

Private Sub Print_Work_Orders_Condensed_spd_Click()
On Error GoTo Err_Print_Work_Orders_Condensed_spd_Click

    Dim stDocName As String

    If [Data_Processed] = False Then
        'update location species table
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "location_species_string_mt", acNormal, acEdit
        DoCmd.OpenQuery "location_species_mt", acNormal, acEdit
        DoCmd.OpenQuery "location_species_string_update", acNormal, acEdit
        DoCmd.SetWarnings True
        [Data_Processed] = True
    End If
        
    stDocName = "Field_Location_Worksheet_condensed_spd"
    
    If Not IsNull(Begin_Location) Then
    If Begin_Location > End_Location Then
        MsgBox "END Entry Order MUST be Greater than Begin Entry Order", vbExclamation
    Else
        If IsNull(End_Location) Then
            'End_ID = Begin_ID
        End If
        DoCmd.OpenQuery stDocName ', acViewPreview
    End If
    Else
        MsgBox "Must Enter a BEGIN LOCATION", vbExclamation
    End If

Exit_Print_Work_Orders_Condensed_spd_Click:
    Exit Sub

Err_Print_Work_Orders_Condensed_spd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Work_Orders_Condensed_spd_Click
End Sub