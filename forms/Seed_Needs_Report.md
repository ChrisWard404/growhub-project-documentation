# Form: Seed_Needs_Report

**Caption:** Source Inventory Report  
**Backend tables referenced:** `NMIS_CATEGORIES`  
**Opened from (VBA):** `Form_Reports_Menu_Source Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | R5 Source Needs Report |  |  |  | 1.35, 0.08, 2.47, 0.28 |
| TextBox | Like_Client | Like Client: |  |  |  | 1.08, 1.50, 0.79, 0.20 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 4.86, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.12, 1.12, 4.78, 1.29 |
| CommandButton | Inventory With Totals | Needs Report 4 |  |  | Click | 4.25, 2.54, 0.75, 0.75 |
| CommandButton | Inventory_with_grow_estimates | Needs Report 3 |  |  | Click | 3.92, 2.67, 0.75, 0.75 |
| ComboBox | Category_Code | Like Category: |  | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES ORDER BY NMIS_CATEGORIES.CATEGORY_CODE; |  | 3.41, 1.50, 0.62, 0.21 |
| ComboBox | Plntmstr_Symbol | Like Species Code: |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY; |  | 3.41, 1.82, 0.80, 0.21 |
| CommandButton | inventory_for_germ_retest | Needs Report 1 |  |  | Click | 1.71, 2.79, 0.75, 0.75 |
| ComboBox | diversity | Traditional/Non-Traditional: |  | 0;Traditional;-1;Non-traditional;*;All |  | 3.41, 2.12, 1.38, 0.21 |
| CommandButton | inventory_for_germ_retest_all_tests | Needs Report 2 |  |  | Click | 2.71, 2.79, 0.75, 0.75 |

## Code-behind (VBA)

```vb
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
```
