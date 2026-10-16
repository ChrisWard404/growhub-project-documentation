Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub



Private Sub inventory_for_germ_retest_all_tests_Click()
On Error GoTo Err_inventory_for_germ_retest_all_tests_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Needs_Inv_Report1b_PN_xcel"
    DoCmd.OpenQuery stDocName, acPreview

Exit_inventory_for_germ_retest_all_tests_Click:
    Exit Sub

Err_inventory_for_germ_retest_all_tests_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_inventory_for_germ_retest_all_tests_Click
    
End Sub

Private Sub inventory_for_germ_retest_Click()
On Error GoTo Err_inventory_for_germ_retest_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Needs_Inv_Report1_PN_xcel"
    DoCmd.OpenQuery stDocName, acPreview

Exit_inventory_for_germ_retest_Click:
    Exit Sub

Err_inventory_for_germ_retest_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_inventory_for_germ_retest_Click
    
End Sub



Private Sub Inventory_with_grow_estimates_Click()


    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Needs_Inv_Report1c_PN_xcel"
    DoCmd.OpenQuery stDocName, acPreview

End Sub


Private Sub Inventory_With_Totals_Click()
On Error GoTo Err_Inventory_With_Totals_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Needs_Inv_Report1d_PN_xcel"
    
    DoCmd.OpenQuery stDocName, acPreview

Exit_Inventory_With_Totals_Click:
    Exit Sub

Err_Inventory_With_Totals_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Inventory_With_Totals_Click
    
End Sub