Option Compare Database

Private Sub Preview_Field_Index_Click()
    Dim stDocName As String
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Total_Bed_Ft"
    DoCmd.SetWarnings True
    
    stDocName = "Field_Location_Index"
    DoCmd.OpenReport stDocName, acPreview


End Sub

Private Sub Command28_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Condensed_By_Major_Client"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Lift_Locations_Field_Form_By_Client_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Condensed_by_major_client_Field_Form"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_By_Age_Class_Remaining_Click()
    Dim stDocName As String

    stDocName = "TOLIFT_Remaining"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_By_Age_Class_Remaining_w_notes_Click()
    Dim stDocName As String

    stDocName = "TOLIFT_Remaining_w_notes"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_By_Age_Class_w_Detail_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_by_age_class_species"
    
       
    DoCmd.Requery
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "TOLIFT_ORDER_MT Query"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_by_Age_Class_wo_Detail1_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Condensed3"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_Hold_w_Detail_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Holdover"
    
       
    DoCmd.Requery
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "TOLIFT_ORDER_MT Query"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_Spreadsheet_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Lift_Priorities_at"
    Response = MsgBox("Edit Existing Priorties?", vbYesNo)
    
    If Response = vbYes Then
        DoCmd.OpenForm "Lifting_Priorties"
    Else
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "TOLIFT_Lift_Prioities_Clear"
        DoCmd.OpenQuery stDocName
        DoCmd.SetWarnings True
        DoCmd.OpenForm "Lifting_Priorties"
    End If
  
End Sub

Private Sub Preview_Lift_Locations_w_Detail_Click()

    Dim stDocName As String

    stDocName = "TOLIFT"
    
       
    DoCmd.Requery
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "TOLIFT_ORDER_MT Query"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_wo_Detail1_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Condensed"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_wo_Detail2_By_Major_Client_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Condensed_by_major_client_w_Detail"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub


Private Sub Preview_Lift_Locations_wo_Detail2_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Condensed2"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_wo_Detail2_sum_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Condensed2_Sum"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub