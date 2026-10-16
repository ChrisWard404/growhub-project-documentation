# Form: PLANT_INVENTORY_REPORTS

**Caption:** Sowing Request Reports  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_FISCAL_YEARS`  
**Opens:** `Report:OutYears_Report_Summary_Forest_Species`, `Report:OutYears_Report_Summary_Grand_by_Region`, `Report:OutYears_Report_Summary_by_Region`, `Report:OutYears_Report_Summary_by_Region2`, `Report:OutYears_Report_Summary_grand_by_Product`, `Report:OutYears_Report_Summary_grand_by_Product2`, `Report:Plant_Inventory_Report_Detailed_Species_Product`, `Report:Plant_Inventory_Report_Detailed__Product`, `Report:Plant_Inventory_Report_Detailed_by_Forest`, `Report:Plant_Inventory_Report_by_End_Year_by_Product`, `Report:Plant_Inventory_Report_by_Forest_by_Product`, `Report:Plant_Inventory_Report_by_Forest_by_Species_Product`  
**Opened from (VBA):** `Form_Reports_Menu_Misc Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Plant Inventory Reports |  |  |  | 1.44, 0.08, 2.33, 0.28 |
| CommandButton | OutYears_Report_Detailed_by_Forest | Forest and District with Lot Detail |  |  | Click | 1.03, 2.14, 1.52, 0.43 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.12, 0.73, 4.88, 1.29 |
| ComboBox | Begin_FY | Begin FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  |  | 1.45, 0.90, 0.68, 0.20 |
| ComboBox | End_FY | >= End FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  |  | 1.45, 1.20, 0.68, 0.20 |
| CommandButton | OutYears_Report_Summary_Grand_Species_Sub | Summary by Species Product with Lot Detail |  |  | Click | 2.71, 2.14, 1.52, 0.43 |
| ComboBox | Plntmstr_Symbol | Species Code: |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY; |  | 3.67, 1.20, 0.80, 0.21 |
| ComboBox | Like_Client | Like Client: |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME; |  | 3.67, 0.90, 0.79, 0.21 |
| CommandButton | OutYears_Report_Summary_by_Forest_Dist_Species_Product | Forest and District by Species Product |  |  | Click | 1.03, 2.59, 1.52, 0.43 |
| CommandButton | OutYears_Report_Summary_by_Forest_Dist_by_Species | Forest and District Summary by Product |  |  | Click | 1.03, 3.05, 1.52, 0.43 |
| CommandButton | OutYears_Report_Summary_Grand_Client_Sub | Summary by Product with Lot Detail |  |  | Click | 2.71, 2.59, 1.52, 0.43 |
| CommandButton | OutYears_Report_Summary_Grand | Summary by  Product |  |  | Click | 2.71, 3.05, 1.52, 0.43 |
| TextBox | Comment | Comments: |  |  |  | 1.45, 1.62, 3.01, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub OutYears_Report_Detailed_by_Forest_Click()
On Error GoTo Err_OutYears_Report_Detailed_by_Forest_Click

    Dim stDocName As String

    stDocName = "Plant_Inventory_Report_Detailed_by_Forest"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Detailed_by_Forest_Click:
    Exit Sub

Err_OutYears_Report_Detailed_by_Forest_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Detailed_by_Forest_Click
    
End Sub

Private Sub OutYears_Report_Summary_by_Forest_Dist_by_Species_Click()
On Error GoTo Err_OutYears_Report_Summary_by_Forest_Dist_by_Species_Click

    Dim stDocName As String

    stDocName = "Plant_Inventory_Report_by_Forest_by_Product"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_by_Forest_Dist_by_Species_Click:
    Exit Sub

Err_OutYears_Report_Summary_by_Forest_Dist_by_Species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_by_Forest_Dist_by_Species_Click
    
End Sub

Private Sub OutYears_Report_Summary_by_Forest_Dist_Species_Product_Click()
On Error GoTo Err_OutYears_Report_Summary_by_Forest_Dist_Species_Product_Click

    Dim stDocName As String

    stDocName = "Plant_Inventory_Report_by_Forest_by_Species_Product"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_by_Forest_Dist_Species_Product_Click:
    Exit Sub

Err_OutYears_Report_Summary_by_Forest_Dist_Species_Product_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_by_Forest_Dist_Species_Product_Click
    
End Sub

Private Sub OutYears_Report_Summary_by_Forestt_by_Species_Click()
On Error GoTo Err_OutYears_Report_Summary_by_Forestt_by_Species_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_Forest_Species"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_by_Forestt_by_Species_Click:
    Exit Sub

Err_OutYears_Report_Summary_by_Forestt_by_Species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_by_Forestt_by_Species_Click
    
End Sub

Private Sub OutYears_Report_Summary_Grand_by_Product_Click()
On Error GoTo Err_OutYears_Report_Summary_Grand_by_Product_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_grand_by_Product"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_Grand_by_Product_Click:
    Exit Sub

Err_OutYears_Report_Summary_Grand_by_Product_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_Grand_by_Product_Click
    
End Sub

Private Sub OutYears_Report_Summary_Grand_by_Product2_Click()
On Error GoTo Err_OutYears_Report_Summary_Grand_by_Product2_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_grand_by_Product2"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_Grand_by_Product2_Click:
    Exit Sub

Err_OutYears_Report_Summary_Grand_by_Product2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_Grand_by_Product2_Click
    
End Sub

Private Sub OutYears_Report_Summary_Grand_Click()
On Error GoTo Err_OutYears_Report_Summary_Grand_Click

    Dim stDocName As String

    stDocName = "Plant_Inventory_Report_by_End_Year_by_Product"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_Grand_Click:
    Exit Sub

Err_OutYears_Report_Summary_Grand_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_Grand_Click
    
End Sub

Private Sub OutYears_Report_Summary_Grand_Client_Sub_Click()
On Error GoTo Err_OutYears_Report_Summary_Grand_Client_Sub_Click

    Dim stDocName As String

    stDocName = "Plant_Inventory_Report_Detailed__Product"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_Grand_Client_Sub_Click:
    Exit Sub

Err_OutYears_Report_Summary_Grand_Client_Sub_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_Grand_Client_Sub_Click
    
End Sub

Private Sub OutYears_Report_Summary_Grand_Species_Sub_Click()
On Error GoTo Err_OutYears_Report_Summary_Grand_Species_Sub_Click

    Dim stDocName As String

    stDocName = "Plant_Inventory_Report_Detailed_Species_Product"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_Grand_Species_Sub_Click:
    Exit Sub

Err_OutYears_Report_Summary_Grand_Species_Sub_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_Grand_Species_Sub_Click
    
End Sub

Private Sub Regional_Summary_Click()
On Error GoTo Err_Regional_Summary_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_Grand_by_Region"
    DoCmd.OpenReport stDocName, acPreview

Exit_Regional_Summary_Click:
    Exit Sub

Err_Regional_Summary_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Regional_Summary_Click
    
End Sub

Private Sub Regional_Summary_With_Forest_Level_Detail_Click()
On Error GoTo Err_Regional_Summary_With_Forest_Level_Detail_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_by_Region"
    DoCmd.OpenReport stDocName, acPreview

Exit_Regional_Summary_With_Forest_Level_Detail_Click:
    Exit Sub

Err_Regional_Summary_With_Forest_Level_Detail_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Regional_Summary_With_Forest_Level_Detail_Click
    
End Sub

Private Sub Regional_Summary_Without_Forest_Level_Detail_Click()
On Error GoTo Err_egional_Summary_Without_Forest_Level_Detail_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_by_Region2"
    DoCmd.OpenReport stDocName, acPreview

Exit_egional_Summary_Without_Forest_Level_Detail_Click:
    Exit Sub

Err_egional_Summary_Without_Forest_Level_Detail_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_egional_Summary_Without_Forest_Level_Detail_Click
    
End Sub
```
