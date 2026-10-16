# Form: SOW_REQUEST_REPORTS

**Caption:** Sowing Request Reports  
**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_ASSOCIATES`, `NMIS_CONTACTS`, `NMIS_FISCAL_YEARS`  
**Opens:** `Report:OutYears_Report_Detailed_by_Forest`, `Report:OutYears_Report_SPD_Query`, `Report:OutYears_Report_Summary_Forest_Dist_species`, `Report:OutYears_Report_Summary_Forest_Species`, `Report:OutYears_Report_Summary_Grand_by_Region`, `Report:OutYears_Report_Summary_Species`, `Report:OutYears_Report_Summary_by_Forest_Dist_Species_Product`, `Report:OutYears_Report_Summary_by_Region`, `Report:OutYears_Report_Summary_by_Region2`, `Report:OutYears_Report_Summary_grand`, `Report:OutYears_Report_Summary_grand_Forest_Sub`, `Report:OutYears_Report_Summary_grand_Species_Sub`, `Report:OutYears_Report_Summary_grand_by_Product`, `Report:OutYears_Report_Summary_grand_by_Product2`  
**Opened from (VBA):** `Form_REPORTS Form`, `Form_Reports_Menu_Misc Subform`, `Form_Reports_Menu_Production Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Sowing Request Reports |  |  |  | 1.12, 0.08, 3.29, 0.27 |
| CommandButton | OutYears_Report_Detailed_by_Forest | Forest and District with Lot Detail |  |  | Click | 0.25, 2.14, 1.52, 0.43 |
| Line | Line12 |  |  |  |  | 0.08, 0.42, 5.09, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.12, 0.54, 5.08, 1.48 |
| ComboBox | Begin_FY | Begin FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  |  | 1.45, 0.61, 0.68, 0.20 |
| ComboBox | End_FY | >= End FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  |  | 1.45, 0.88, 0.68, 0.20 |
| CommandButton | OutYears_Report_Summary_Grand_Species_Sub | Summary by Species |  |  | Click | 1.93, 2.14, 1.52, 0.43 |
| ComboBox | Plntmstr_Symbol | Species Code: |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY; |  | 3.66, 1.12, 0.80, 0.21 |
| ComboBox | Like_Client | Like Client: |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME; | AfterUpdate, DblClick | 3.66, 0.61, 0.79, 0.21 |
| CommandButton | OutYears_Report_Summary_by_Forest_Dist_Species_Product | Forest and District by Species Product |  |  | Click | 0.25, 2.59, 1.52, 0.43 |
| CommandButton | OutYears_Report_Summary_by_Forest_Dist_by_Species | Forest and District Summary by Species |  |  | Click | 0.25, 3.05, 1.52, 0.43 |
| CommandButton | OutYears_Report_Summary_by_Forestt_by_Species | Forest Summary by Species |  |  | Click | 0.25, 3.51, 1.52, 0.43 |
| CommandButton | OutYears_Report_Summary_Grand_Client_Sub | Summary by Client |  |  | Click | 1.93, 2.59, 1.52, 0.43 |
| CommandButton | OutYears_Report_Summary_Grand | Grand Summary |  |  | Click | 1.93, 3.05, 1.52, 0.43 |
| CommandButton | OutYears_Report_Summary_Grand_by_Product | Grand Summary by Product by Begin Year |  |  | Click | 1.93, 3.51, 1.52, 0.43 |
| CommandButton | Regional_Summary_With_Forest_Level_Detail | Regional Summary by Forest Level Detail |  |  | Click | 3.59, 2.14, 1.52, 0.43 |
| CommandButton | Regional_Summary | Summary by Region without Stocktype |  |  | Click | 3.59, 2.59, 1.52, 0.43 |
| TextBox | Comment | Comments: |  |  |  | 1.45, 1.68, 3.01, 0.21 |
| CommandButton | Regional_Summary_Without_Forest_Level_Detail | Summary by Region With Stocktype |  |  | Click | 3.59, 3.05, 1.52, 0.43 |
| CommandButton | OutYears_Report_Summary_Grand_by_Product2 | Grand Sum by Product |  |  | Click | 1.93, 3.97, 1.52, 0.43 |
| ComboBox | Diverse | Traditional/Non-Traditonal Species |  | 0;Traditional;-1;Non-Traditional;*;All | AfterUpdate, DblClick | 3.66, 1.39, 1.12, 0.21 |
| ComboBox | Contact_CN |  Like Contact: |  | SELECT NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] AS Name FROM NMIS_CONTACTS INNER JOIN NMIS_AGREEMENTS ON NMIS_CONTACTS.CN = NMIS_AGREEMENTS.CONTACT_CN WHERE (((NMIS_CONTACTS.HISTORICAL)=False) AND ((NMIS_AGREEMENTS.CLIENT_ASSOCIATE) Like [Forms]![SOW_REQUEST_REPORTS]![Like_Client] & "*")) GROUP BY NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] ORDER BY [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name]; | DblClick, Enter | 3.66, 0.87, 1.48, 0.21 |
| CommandButton | OutYears_Report_Summary_by_Species | Species Summary |  |  | Click | 3.59, 3.51, 1.52, 0.43 |
| CommandButton | OutYears_Report_Summary_Grand_by_Product_SPD | Grand Sum by Product Spreadsheet |  |  | Click | 1.93, 4.44, 1.52, 0.43 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)
    
    CONTACT_CN = Null
    
End Sub

Private Sub Contact_CN_Enter()

    CONTACT_CN.Requery
    
End Sub

Private Sub Diverse_AfterUpdate()

    Plntmstr_Symbol = "*"
    Plntmstr_Symbol.Requery
    
End Sub

Private Sub Diverse_DblClick(Cancel As Integer)

    DIVERSE = "*"
    
End Sub

Private Sub Like_Client_AfterUpdate()

    CONTACT_CN = Null
    CONTACT_CN.Requery
    
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)

Like_Client = "*"
CONTACT_CN = Null

End Sub

Private Sub OutYears_Report_Detailed_by_Forest_Click()
On Error GoTo Err_OutYears_Report_Detailed_by_Forest_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Detailed_by_Forest"
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

    stDocName = "OutYears_Report_Summary_Forest_Dist_species"
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

    stDocName = "OutYears_Report_Summary_by_Forest_Dist_Species_Product"
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

Private Sub OutYears_Report_Summary_by_Species_Click()
On Error GoTo Err_OutYears_Report_Summary_by_Species_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_Species"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_by_Species_Click:
    Exit Sub

Err_OutYears_Report_Summary_by_Species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_by_Species_Click
    
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

Private Sub OutYears_Report_Summary_Grand_by_Product_SPD_Click()
On Error GoTo Err_OutYears_Report_Summary_Grand_by_Product_SPD_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_SPD_Query"
    DoCmd.OpenQuery stDocName

Exit_OutYears_Report_Summary_Grand_by_Product_SPD_Click:
    Exit Sub

Err_OutYears_Report_Summary_Grand_by_Product_SPD_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_Grand_by_Product_SPD_Click
    
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

    stDocName = "OutYears_Report_Summary_grand"
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

    stDocName = "OutYears_Report_Summary_grand_Forest_Sub"
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

    stDocName = "OutYears_Report_Summary_grand_Species_Sub"
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
