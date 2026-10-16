Option Compare Database

Private Sub Preview_Storage_Detailed_Summary_By_Client_Report_Click()

    Dim stDocName As String

    stDocName = "Product_Storage_Detailed_Summary"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Storage_Detailed_Summary_By_Client_Report_w_notes_Click()

    Dim stDocName As String

    stDocName = "Product_Storage_Detailed_Summary_with_notes"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Storage_Lot_Index_Click()
On Error GoTo Err_Preview_Storage_Lot_Index_Click

    Dim stDocName As String

    stDocName = "Product_Storage_Lot_Index"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Storage_Lot_Index_Click:
    Exit Sub

Err_Preview_Storage_Lot_Index_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Storage_Lot_Index_Click
    
End Sub

Private Sub Preview_Storage_Summary_By_Client_Report_Click()

    Dim stDocName As String

    stDocName = "Product_Storage_Summary"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Storage_Summary_By_Client_Report_with_Totals_Click()
    
    Dim stDocName As String

    stDocName = "Product_Storage_Summary2"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Storage_Summary_By_Species_Report_Click()
On Error GoTo Err_Preview_Storage_Summary_By_Species_Report_Click

    Dim stDocName As String

    stDocName = "Product_Storage_Summary3"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Storage_Summary_By_Species_Report_Click:
    Exit Sub

Err_Preview_Storage_Summary_By_Species_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Storage_Summary_By_Species_Report_Click
    
End Sub