Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Command17_Click()

    Dim stDocName As String

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        stDocName = "NMIS_SOURCE_Inventory_wtotals_pn_Report"
    Else
        stDocName = "NMIS_SOURCE_Inventory_wtotals_wnotes_Report"
    End If
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Create_Inventory_Xcel_Format_w_loc_Click()
On Error GoTo Err_Create_Inventory_Xcel_Format_w_loc_Click

    Dim stDocName As String

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        stDocName = "NMIS_SOURCE_Inventory_Report_PN_xcel"
    Else
        stDocName = "NMIS_SOURCE_Inventory_Report_xcel_w_loc"
    End If
    
    DoCmd.OpenQuery stDocName ', acPreview
    'MsgBox "Use File/Export to save Spreadsheet in desired folder"
    'MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"

Exit_Create_Inventory_Xcel_Format_w_loc_Click:
    Exit Sub

Err_Create_Inventory_Xcel_Format_w_loc_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Inventory_Xcel_Format_w_loc_Click
  
End Sub

Private Sub inventory_for_germ_retest_all_tests_Click()
On Error GoTo Err_inventory_for_germ_retest_all_tests_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Inventory_Report_by_species_test_date_all_tests"
    DoCmd.OpenReport stDocName, acPreview

Exit_inventory_for_germ_retest_all_tests_Click:
    Exit Sub

Err_inventory_for_germ_retest_all_tests_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_inventory_for_germ_retest_all_tests_Click
    
End Sub

Private Sub inventory_for_germ_retest_Click()
On Error GoTo Err_inventory_for_germ_retest_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Inventory_Report_by_species_test_date"
    DoCmd.OpenReport stDocName, acPreview

Exit_inventory_for_germ_retest_Click:
    Exit Sub

Err_inventory_for_germ_retest_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_inventory_for_germ_retest_Click
    
End Sub

Private Sub inventory_for_germ_retest_spd_Click()
On Error GoTo Err_inventory_for_germ_retest_spd_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_INVENTORY_FOR_RETEST_SPD"
    DoCmd.OpenQuery stDocName
    
Exit_inventory_for_germ_retest_spd_Click:
    Exit Sub

Err_inventory_for_germ_retest_spd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_inventory_for_germ_retest_spd_Click
    
End Sub

Private Sub Inventory_with_grow_estimates_Click()


    Dim stDocName As String

    'stDocName = "NMIS_SOURCE_Inventory_wtotals_and_grow_est Report"
    
    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "040207" Then
        stDocName = "NMIS_SOURCE_Inventory_wtotals_and_grow_est Report_040207"
    Else
        stDocName = "NMIS_SOURCE_Inventory_wtotals_and_grow_est Report"
    End If
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Inventory_XS_SP_Click()
On Error GoTo Err_Inventory_XS_SP_Click

    Dim stDocName As String

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        stDocName = "NMIS_SOURCE_XS_SP_Inventory_wtotals_pn_Report"
    Else
        stDocName = "NMIS_SOURCE_XS_SP_Inventory_wtotals_Report"
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Inventory_XS_SP_Click:
    Exit Sub

Err_Inventory_XS_SP_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Inventory_XS_SP_Click
    
End Sub

Private Sub Inventory_XS_SP_spd_Click()
On Error GoTo Err_Inventory_XS_SP_spd_Click

    Dim stDocName As String

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        stDocName = "NMIS_SOURCE_XS_SP_Inventory_Report_pn_xcel"
    Else
        stDocName = "NMIS_SOURCE_XS_SP_Inventory_Report_xcel"
    End If
    
    DoCmd.OpenQuery stDocName

Exit_Inventory_XS_SP_spd_Click:
    Exit Sub

Err_Inventory_XS_SP_spd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Inventory_XS_SP_spd_Click
    
End Sub

Private Sub Inventory_XS_SP_spd_wLotBal_Click()
On Error GoTo Err_Inventory_XS_SP_spd_wLotBal_Click

    Dim stDocName As String

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        stDocName = "NMIS_SOURCE_XS_SP_Inventory_Report_pn_wLotBal_xcel"
    Else
        stDocName = "NMIS_SOURCE_XS_SP_Inventory_Report_wLotBal_xcel"
    End If
    
    DoCmd.OpenQuery stDocName ', acPreview
    'MsgBox "Use File/Export to save Spreadsheet in desired folder"
    'MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"


Exit_Inventory_XS_SP_spd_wLotBal_Click:
    Exit Sub

Err_Inventory_XS_SP_spd_wLotBal_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Inventory_XS_SP_spd_wLotBal_Click
    
End Sub

Private Sub Preview_Client_Checklist_Click()
On Error GoTo Err_Preview_Client_Checklist_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Inventory_Client_Checklist_Report"
       
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Client_Checklist_Click:
    Exit Sub

Err_Preview_Client_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Client_Checklist_Click
    
End Sub

Private Sub Preview_Quarterly_Report_Click()
On Error GoTo Err_Preview_Quarterly_Report_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Inventory_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Quarterly_Report_Click:
    Exit Sub

Err_Preview_Quarterly_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Quarterly_Report_Click
    
End Sub
Private Sub Inventory_With_Totals_Click()
On Error GoTo Err_Inventory_With_Totals_Click

    Dim stDocName As String

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        stDocName = "NMIS_SOURCE_Inventory_wtotals_pn_Report"
    Else
        stDocName = "NMIS_SOURCE_Inventory_wtotals_Report"
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Inventory_With_Totals_Click:
    Exit Sub

Err_Inventory_With_Totals_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Inventory_With_Totals_Click
    
End Sub
Private Sub Create_Inventory_Xcel_Format_Click()
On Error GoTo Err_Create_Inventory_Xcel_Format_Click

    Dim stDocName As String

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
            stDocName = "NMIS_SOURCE_Inventory_Report_PN_xcel"
    Else
        If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "040207" Then
            stDocName = "NMIS_SOURCE_Inventory_Report_xcel_040207"
    Else
        stDocName = "NMIS_SOURCE_Inventory_Report_xcel"
    End If
    End If
    
    DoCmd.OpenQuery stDocName ', acPreview
    'MsgBox "Use File/Export to save Spreadsheet in desired folder"
    'MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"

Exit_Create_Inventory_Xcel_Format_Click:
    Exit Sub

Err_Create_Inventory_Xcel_Format_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Inventory_Xcel_Format_Click
    
End Sub