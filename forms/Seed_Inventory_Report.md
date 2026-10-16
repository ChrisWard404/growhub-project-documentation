# Form: Seed_Inventory_Report

**Caption:** Source Inventory Report  
**Backend tables referenced:** `NMIS_CATEGORIES`  
**Opens:** `Report:NMIS_SOURCE_INVENTORY_FOR_RETEST_SPD`, `Report:NMIS_SOURCE_Inventory_Client_Checklist_Report`, `Report:NMIS_SOURCE_Inventory_Report`, `Report:NMIS_SOURCE_Inventory_Report_PN_xcel`, `Report:NMIS_SOURCE_Inventory_Report_by_species_test_date`, `Report:NMIS_SOURCE_Inventory_Report_by_species_test_date_all_tests`, `Report:NMIS_SOURCE_Inventory_Report_xcel`, `Report:NMIS_SOURCE_Inventory_Report_xcel_040207`, `Report:NMIS_SOURCE_Inventory_Report_xcel_w_loc`, `Report:NMIS_SOURCE_Inventory_wtotals_Report`, `Report:NMIS_SOURCE_Inventory_wtotals_and_grow_est Report`, `Report:NMIS_SOURCE_Inventory_wtotals_and_grow_est Report_040207`, `Report:NMIS_SOURCE_Inventory_wtotals_pn_Report`, `Report:NMIS_SOURCE_Inventory_wtotals_wnotes_Report`, `Report:NMIS_SOURCE_XS_SP_Inventory_Report_pn_wLotBal_xcel`, `Report:NMIS_SOURCE_XS_SP_Inventory_Report_pn_xcel`, `Report:NMIS_SOURCE_XS_SP_Inventory_Report_wLotBal_xcel`, `Report:NMIS_SOURCE_XS_SP_Inventory_Report_xcel`, `Report:NMIS_SOURCE_XS_SP_Inventory_wtotals_Report`, `Report:NMIS_SOURCE_XS_SP_Inventory_wtotals_pn_Report`  
**Opened from (VBA):** `Form_Reports_Menu_Source Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Source Inventory Reports |  |  |  | 1.41, 0.08, 2.54, 0.27 |
| TextBox | Like_Client | Like Client: |  |  |  | 1.31, 1.50, 0.79, 0.20 |
| CommandButton | Preview_Quarterly_Report | Inventory Without Totals |  |  | Click | 4.34, 2.88, 0.75, 0.75 |
| Line | Line12 |  |  |  |  | 0.18, 0.58, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.22, 1.12, 4.88, 1.29 |
| CommandButton | Inventory With Totals | Inventory With Totals |  |  | Click | 3.53, 2.88, 0.75, 0.75 |
| CommandButton | Create_Inventory_Xcel_Format | Inventory in Excel Format |  |  | Click | 4.34, 3.68, 0.75, 0.75 |
| CommandButton | Inventory_with_grow_estimates | Inventory With Grow Est. |  |  | Click | 2.71, 2.88, 0.75, 0.75 |
| ComboBox | Category_Code | Like Category: |  | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES ORDER BY NMIS_CATEGORIES.CATEGORY_CODE; |  | 3.64, 1.50, 0.62, 0.21 |
| CommandButton | Command17 | Inventory With Totals/ Notes |  |  | Click | 3.53, 3.68, 0.75, 0.75 |
| ComboBox | Plntmstr_Symbol | Like Species Code: |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY; |  | 3.64, 1.82, 0.80, 0.21 |
| CommandButton | inventory_for_germ_retest | Inventory for Germ Retest |  |  | Click | 0.16, 2.88, 0.75, 0.75 |
| CommandButton | inventory_for_germ_retest_spd | Inventory for Germ Retest spd |  |  | Click | 0.94, 2.88, 0.75, 0.75 |
| ComboBox | diversity | Traditional/Non-Traditional: |  | 0;Traditional;-1;Non-traditional;*;All |  | 3.64, 2.12, 1.38, 0.21 |
| CommandButton | inventory_for_germ_retest_all_tests | Inventory for Germ Retest w/ All Tests |  |  | Click | 1.73, 2.88, 0.75, 0.75 |
| CommandButton | Inventory_XS_SP | Excess/ Surplus Inventory |  |  | Click | 0.17, 3.68, 0.75, 0.75 |
| CommandButton | Inventory_XS_SP_spd | Excess/ Surplus Inv Excel |  |  | Click | 0.95, 3.68, 0.75, 0.75 |
| CommandButton | Inventory_XS_SP_spd_wLotBal | Excess/ Surplus Inv w/Bal Excel... |  |  | Click | 1.74, 3.68, 0.75, 0.75 |
| Rectangle | Box26 |  |  |  |  | 2.64, 2.52, 2.53, 1.98 |
| Label | Label27 | Client Reports |  |  |  | 3.38, 2.60, 1.04, 0.19 |
| CommandButton | Preview_Client_Checklist | Client Checklist |  |  | Click | 0.21, 2.50, 1.12, 0.00 |
| CommandButton | Create_Inventory_Xcel_Format_w_loc | Inventory in Excel Format w/Loc |  |  | Click | 4.34, 4.55, 0.75, 0.75 |

## Code-behind (VBA)

```vb
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
```
