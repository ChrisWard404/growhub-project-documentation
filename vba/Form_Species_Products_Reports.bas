Option Compare Database

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

Private Sub Form_Open(Cancel As Integer)

End Sub

Private Sub Species_Products_Click()
On Error GoTo Err_Species_Products_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_SPECIES_PRODUCTS_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview
Exit_Species_Products_Click:
    Exit Sub

Err_Species_Products_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Species_Products_Click
    
End Sub

Private Sub Species_Products_With_Cycles_Click()
On Error GoTo Err_Species_Products_With_Cycles_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_SPECIES_PRODUCTS_AND_CYCLES"
    DoCmd.OpenReport stDocName, acPreview
Exit_Species_Products_With_Cycles_Click:
    Exit Sub

Err_Species_Products_With_Cycles_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Species_Products_With_Cycles_Click
    
End Sub

Private Sub Species_Products_With_Cycles_Current_Crop_Click()
On Error GoTo Err_Species_Products_With_Cycles_Current_Crop_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_SPECIES_PRODUCTS_AND_CYCLES_Current_Crop"
    DoCmd.OpenReport stDocName, acPreview
Exit_Species_Products_With_Cycles_Current_Crop_Click:
    Exit Sub

Err_Species_Products_With_Cycles_Current_Crop_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Species_Products_With_Cycles_Current_Crop_Click
    
End Sub

Private Sub Species_Products_With_Sow_Factors_Click()
On Error GoTo Err_Species_Products_With_Sow_Factors_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_SPECIES_PRODUCTS_AND_FACTORS"
    DoCmd.OpenReport stDocName, acPreview
Exit_Species_Products_With_Sow_Factors_Click:
    Exit Sub

Err_Species_Products_With_Sow_Factors_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Species_Products_With_Sow_Factors_Click
    
End Sub

Private Sub Species_Type_AfterUpdate()

    Filter_for_Species = Null
    
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