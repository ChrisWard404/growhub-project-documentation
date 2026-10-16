Option Compare Database

Private Sub Preview_Product_Transaction_Total_by_Loc_Click()

On Error GoTo Err_Preview_Product_Transaction_Total_by_Loc_Click

    Dim stDocName As String

    stDocName = "transaction_Totals_by_location_Type_Agreement_Lot"
    DoCmd.OpenReport stDocName, acPreview
Exit_Preview_Product_Transaction_Total_by_Loc_Click:
    Exit Sub

Err_Preview_Product_Transaction_Total_by_Loc_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Product_Transaction_Total_by_Loc_Click
    
End Sub

Private Sub Preview_Product_Transaction_Total_by_Loc_Detailed_Click()
On Error GoTo Err_Preview_Product_Transaction_Total_by_Loc_Detailed_Click

     Dim stLinkCriteria As String

    stDocName = "transaction_Totals_by_location_Type_Agreement_Lot2"
    DoCmd.OpenReport stDocName, acPreview
Exit_Preview_Product_Transaction_Total_by_Loc_Detailed_Click:
    Exit Sub

Err_Preview_Product_Transaction_Total_by_Loc_Detailed_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Product_Transaction_Total_by_Loc_Detailed_Click
    
End Sub