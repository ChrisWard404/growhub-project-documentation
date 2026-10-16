Option Compare Database

Private Sub Preview_Quarterly_Report_Click()

    Dim stDocName As String

    stDocName = "Plant_Quarterly_Rept"
    
    DoCmd.SetWarnings False
    
    If [PRODUCT_CLASS_CONDENSED] = True Then
        DoCmd.OpenQuery "Plant_Quarterly_Rept_All_Age_Classes_Condensed_MT"
        DoCmd.OpenQuery "Plant_Quarterly_Rept_All_Age_Classes_Condensed_AT"
    Else
        DoCmd.OpenQuery "Plant_Quarterly_Rept_All_Age_Classes_MT"
        DoCmd.OpenQuery "Plant_Quarterly_Rept_All_Age_Classes_AT"
    End If
    DoCmd.OpenQuery "Plant_Quarterly_Rept1_mt"
    DoCmd.OpenQuery "Plant_Quarterly_Rept_to_older_age_class1_mt"
    DoCmd.OpenQuery "Plant_Quarterly_Rept_mt"
    
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
    'DoCmd.OpenQuery stDocName
    
End Sub

Private Sub Preview_Quarterly_Report_SPD_Click()

    Dim stDocName As String

    stDocName = "Plant_Quarterly_Rept_SPD"
    
    DoCmd.SetWarnings False
    
    If [PRODUCT_CLASS_CONDENSED] = True Then
        DoCmd.OpenQuery "Plant_Quarterly_Rept_All_Age_Classes_Condensed_MT"
        DoCmd.OpenQuery "Plant_Quarterly_Rept_All_Age_Classes_Condensed_AT"
    Else
        DoCmd.OpenQuery "Plant_Quarterly_Rept_All_Age_Classes_MT"
        DoCmd.OpenQuery "Plant_Quarterly_Rept_All_Age_Classes_AT"
    End If
    DoCmd.OpenQuery "Plant_Quarterly_Rept1_mt"
    DoCmd.OpenQuery "Plant_Quarterly_Rept_to_older_age_class1_mt"
    DoCmd.OpenQuery "Plant_Quarterly_Rept_mt"
    
    DoCmd.SetWarnings True
    
    DoCmd.OpenQuery stDocName
    'DoCmd.OpenQuery stDocName
    
End Sub