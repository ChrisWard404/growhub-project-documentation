Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Preview_Quarterly_Checklist_by_for_Report_Click()
On Error GoTo Err_Preview_Quarterly_Checklist_by_for_Report_Click

    Dim stDocName As String
    
    stDocName = "NMIS_SOURCE_Quarterly_Report_by_forest_Checklist"
    
    If IsNull(BEGIN_DATE) Then
        MsgBox "Must enter a Begin Date"
        DoCmd.GoToControl "begin_Date"
    Else
    If IsNull(END_DATE) Then
        MsgBox "Must enter an End Date"
        DoCmd.GoToControl "End_Date"
    Else
    DoCmd.OpenReport stDocName, acPreview
    End If
    End If

Exit_Preview_Quarterly_Checklist_by_for_Report_Click:
    Exit Sub

Err_Preview_Quarterly_Checklist_by_for_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Quarterly_Checklist_by_for_Report_Click
    
End Sub

Private Sub Preview_Quarterly_Checklist_by_for_Species_Report_Click()
On Error GoTo Err_Preview_Quarterly_Checklist_by_for_Species_Report_Click

    Dim stDocName As String
    
    stDocName = "NMIS_SOURCE_Quarterly_Report_by_species_Checklist"
    
    If IsNull(BEGIN_DATE) Then
        MsgBox "Must enter a Begin Date", vbExclamation
        DoCmd.GoToControl "begin_Date"
    Else
    If IsNull(END_DATE) Then
        MsgBox "Must enter an End Date", vbExclamation
        DoCmd.GoToControl "End_Date"
    Else
    DoCmd.OpenReport stDocName, acPreview
    End If
    End If

Exit_Preview_Quarterly_Checklist_by_for_Species_Report_Click:
    Exit Sub

Err_Preview_Quarterly_Checklist_by_for_Species_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Quarterly_Checklist_by_for_Species_Report_Click
    
End Sub

Private Sub Preview_Quarterly_Report_Click()
On Error GoTo Err_Preview_Quarterly_Report_Click

    Dim stDocName As String
    
    Select Case [SPECIES_GROUP]
    Case 1
        stDocName = "Seed_Quarterly_Report"
    Case 2
        stDocName = "Seed_Quarterly_Report_NON_Diverse"
    Case 3
        stDocName = "Seed_Quarterly_Report_Diverse"
    End Select
    
    If IsNull(BEGIN_DATE) Then
        MsgBox "Must enter a Begin Date", vbExclamation
        DoCmd.GoToControl "begin_Date"
    Else
    If IsNull(END_DATE) Then
        MsgBox "Must enter an End Date", vbExclamation
        DoCmd.GoToControl "End_Date"
    Else
    If Not IsNull([CATEGORY_CODE]) Then
        DoCmd.OpenReport stDocName, acPreview
    Else
        MsgBox "Please Enter a Category Code", vbExclamation
        DoCmd.GoToControl "[Category_Code]"
    End If
    End If
    End If

Exit_Preview_Quarterly_Report_Click:
    Exit Sub

Err_Preview_Quarterly_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Quarterly_Report_Click
    
End Sub

Private Sub Spreadsheet_Report_Click()
On Error GoTo Err_Spreadsheet_Report_Click

    Dim stDocName As String
    
    Select Case [SPECIES_GROUP]
    Case 1
        stDocName = "Seed_Quarterly_Report Query"
    Case 2
        stDocName = "Seed_Quarterly_Report_NON_Diverse Query"
    Case 3
        stDocName = "Seed_Quarterly_Report_Diverse Query"
    End Select
    If IsNull(BEGIN_DATE) Then
        MsgBox "Must enter a Begin Date", vbExclamation
        DoCmd.GoToControl "begin_Date"
    Else
    If IsNull(END_DATE) Then
        MsgBox "Must enter an End Date", vbExclamation
        DoCmd.GoToControl "End_Date"
    Else
    
    If Not IsNull([CATEGORY_CODE]) Then
        DoCmd.OpenQuery stDocName, acPreview
    Else
        MsgBox "Please Enter a Category Code", vbExclamation
        DoCmd.GoToControl "[Category_Code]"
    End If
    End If
    End If

Exit_Spreadsheet_Report_Click:
    Exit Sub

Err_Spreadsheet_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Spreadsheet_Report_Click
    
End Sub