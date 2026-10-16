Option Compare Database

Private Sub All_Prices_Click()
On Error GoTo Err_All_Prices_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCTS_All_Price_CHECKLIST"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_CHARGES_Dist_Subreport_MT"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
Exit_All_Prices_Click:
    Exit Sub

Err_All_Prices_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_All_Prices_Click
    
End Sub

Private Sub All_Prices_SPD_Click()
On Error GoTo Err_All_Prices_SPD_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCTS_All_Price_CHECKLIST_SPD"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_CHARGES_Dist_Subreport_MT"
    DoCmd.SetWarnings True
    
    DoCmd.OpenQuery stDocName
Exit_All_Prices_SPD_Click:
    Exit Sub

Err_All_Prices_SPD_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_All_Prices_SPD_Click
    
End Sub

Private Sub Filter_For_Product_Change()

    Filter_for_Species = "*"
    
End Sub

Private Sub Filter_For_Product_Enter()
    
    Filter_For_Product.Requery
    
End Sub

Private Sub Filter_for_Product_Type_Change()

    Filter_For_Product = "*"
    
End Sub

Private Sub Filter_for_Species_Enter()

    Filter_for_Species.Requery
    
End Sub

Private Sub No_Product_Charges_Click()
On Error GoTo Err_No_Product_Charges_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCTS_NO_Charges_CHECKLIST"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_CHARGES_Dist_Subreport_MT"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
Exit_No_Product_Charges_Click:
    Exit Sub

Err_No_Product_Charges_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_No_Product_Charges_Click
    
End Sub

Private Sub Products_Non_Pack_Or_Destroy_Prices_Click()

On Error GoTo Err_Products_Non_Pack_Or_Destroy_Prices_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCTS_Non_Product_Grade_Price_CHECKLIST"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_CHARGES_Dist_Subreport_MT"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
Exit_Products_Non_Pack_Or_Destroy_Prices_Click:
    Exit Sub

Err_Products_Non_Pack_Or_Destroy_Prices_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Products_Non_Pack_Or_Destroy_Prices_Click
    
End Sub

Private Sub Products_Pack_or_Destroy_Prices_Click()

On Error GoTo Err_Products_Pack_or_Destroy_Prices_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCTS_With_Product_Grade_Price_CHECKLIST"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_CHARGES_Dist_Subreport_MT"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
Exit_Products_Pack_or_Destroy_Prices_Click:
    Exit Sub

Err_Products_Pack_or_Destroy_Prices_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Products_Pack_or_Destroy_Prices_Click
    
End Sub

Private Sub Wildcard_Tip_Click()
On Error GoTo Err_Wildcard_Tip_Click

    Dim stDocName As String

    MsgBox "Wildcards" & Chr(13) & Chr(10) & Chr(10) & _
        "* Matches any number of characters. It can be used as the first or last character in the character string. wh* finds what, white, and why" & Chr(13) & Chr(10) & Chr(10) & _
        "? Matches any single alphabetic character. B?ll finds ball, bell, and bill" & Chr(13) & Chr(10) & Chr(10) & _
        "[ ] Matches any single character within the brackets. B[ae]ll finds ball and bell but not bill" & Chr(13) & Chr(10) & Chr(10) & _
        "! Matches any character not in the brackets. b[!ae]ll finds bill and bull but not ball or bell" & Chr(13) & Chr(10) & Chr(10) & _
        "- Matches any one of a range of characters. You must specify the range in ascending order (A to Z, not Z to A). b[a-c]d finds bad, bbd, and bcd" & Chr(13) & Chr(10) & Chr(10) & _
        "# Matches any single numeric character. 1#3 finds 103, 113, 123", vbInformation

Exit_Wildcard_Tip_Click:
    Exit Sub

Err_Wildcard_Tip_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Wildcard_Tip_Click
    
End Sub