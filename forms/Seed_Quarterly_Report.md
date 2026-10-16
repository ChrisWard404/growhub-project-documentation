# Form: Seed_Quarterly_Report

**Caption:** Seed Quarterly Report  
**Backend tables referenced:** `NMIS_CATEGORIES`, `NMIS_SOURCE_LOTS`  
**Opens:** `Report:NMIS_SOURCE_Quarterly_Report_by_forest_Checklist`, `Report:NMIS_SOURCE_Quarterly_Report_by_species_Checklist`, `Report:Seed_Quarterly_Report`, `Report:Seed_Quarterly_Report Query`, `Report:Seed_Quarterly_Report_Diverse`, `Report:Seed_Quarterly_Report_Diverse Query`, `Report:Seed_Quarterly_Report_NON_Diverse`, `Report:Seed_Quarterly_Report_NON_Diverse Query`  
**Opened from (VBA):** `Form_Reports_Menu_Source Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Seed Quarterly Report |  |  |  | 1.48, 0.08, 2.32, 0.29 |
| TextBox | Begin_Date | Begin Date: |  |  |  | 0.94, 1.11, 0.68, 0.21 |
| TextBox | End_Date | End Date: |  |  |  | 0.94, 1.42, 0.68, 0.21 |
| ComboBox | Category_Code | Category: |  | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES INNER JOIN NMIS_SOURCE_LOTS ON (NMIS_CATEGORIES.CATEGORY_CODE = NMIS_SOURCE_LOTS.CATEGORY_CODE) AND (NMIS_CATEGORIES.CATEGORY_CODE = NMIS_SOURCE_LOTS.CATEGORY_CODE) WHERE (((NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code])) GROUP BY NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC HAVING (((NMIS_CATEGORIES.CATEGORY_DESC) Like "*seed*" And (NMIS_CATEGORIES.CATEGORY_DESC) Not Like "*Product*")) ORDER BY NMIS_CATEGORIES.CATEGORY_CODE DESC; |  | 2.85, 1.12, 2.27, 0.20 |
| TextBox | Like_Client | Like Client: |  |  |  | 0.94, 1.73, 0.79, 0.20 |
| CommandButton | Preview_Quarterly_Report | Click to Preview/Print Report |  |  | Click | 1.96, 2.83, 1.50, 0.83 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.04, 0.93, 5.13, 1.61 |
| ComboBox | Plntmstr_Symbol | Species Code: |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY; |  | 2.85, 1.72, 0.80, 0.21 |
| ComboBox | Species_Group | Species Group: |  | 1;Traditional and Non-Traditional;2;Traditional;3;Non-Traditional |  | 2.88, 1.43, 2.27, 0.20 |
| CommandButton | Preview_Quarterly_Checklist_by_for_Species_Report | Forest and Species Checklist |  |  | Click | 0.21, 2.79, 1.25, 0.42 |
| CommandButton | Preview_Quarterly_Checklist_by_for_Report | Forest  Checklist |  |  | Click | 0.21, 3.38, 1.25, 0.42 |
| CheckBox | Forest_By_Page | Page for Each "Forest" |  |  |  | 1.17, 2.12, 0.00, 0.00 |
| CommandButton | Spreadsheet_Report | Click for Spreadsheet Report |  |  | Click | 3.71, 2.79, 1.25, 0.58 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Preview_Quarterly_Checklist_by_for_Report_Click()
On Error GoTo Err_Preview_Quarterly_Checklist_by_for_Report_Click

    Dim stDocName As String
    
    stDocName = "NMIS_SOURCE_Quarterly_Report_by_forest_Checklist"
    
    If IsNull(BEGIN_DATE) Then
        MsgBox "Must enter a Begin Date"
        DoCmd.GoToControl "begin_Date"
    Else
    If IsNull(END_DATE) Then
        MsgBox "Must enter an End Date"
        DoCmd.GoToControl "End_Date"
    Else
    DoCmd.OpenReport stDocName, acPreview
    End If
    End If

Exit_Preview_Quarterly_Checklist_by_for_Report_Click:
    Exit Sub

Err_Preview_Quarterly_Checklist_by_for_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Quarterly_Checklist_by_for_Report_Click
    
End Sub

Private Sub Preview_Quarterly_Checklist_by_for_Species_Report_Click()
On Error GoTo Err_Preview_Quarterly_Checklist_by_for_Species_Report_Click

    Dim stDocName As String
    
    stDocName = "NMIS_SOURCE_Quarterly_Report_by_species_Checklist"
    
    If IsNull(BEGIN_DATE) Then
        MsgBox "Must enter a Begin Date", vbExclamation
        DoCmd.GoToControl "begin_Date"
    Else
    If IsNull(END_DATE) Then
        MsgBox "Must enter an End Date", vbExclamation
        DoCmd.GoToControl "End_Date"
    Else
    DoCmd.OpenReport stDocName, acPreview
    End If
    End If

Exit_Preview_Quarterly_Checklist_by_for_Species_Report_Click:
    Exit Sub

Err_Preview_Quarterly_Checklist_by_for_Species_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Quarterly_Checklist_by_for_Species_Report_Click
    
End Sub

Private Sub Preview_Quarterly_Report_Click()
On Error GoTo Err_Preview_Quarterly_Report_Click

    Dim stDocName As String
    
    Select Case [SPECIES_GROUP]
    Case 1
        stDocName = "Seed_Quarterly_Report"
    Case 2
        stDocName = "Seed_Quarterly_Report_NON_Diverse"
    Case 3
        stDocName = "Seed_Quarterly_Report_Diverse"
    End Select
    
    If IsNull(BEGIN_DATE) Then
        MsgBox "Must enter a Begin Date", vbExclamation
        DoCmd.GoToControl "begin_Date"
    Else
    If IsNull(END_DATE) Then
        MsgBox "Must enter an End Date", vbExclamation
        DoCmd.GoToControl "End_Date"
    Else
    If Not IsNull([CATEGORY_CODE]) Then
        DoCmd.OpenReport stDocName, acPreview
    Else
        MsgBox "Please Enter a Category Code", vbExclamation
        DoCmd.GoToControl "[Category_Code]"
    End If
    End If
    End If

Exit_Preview_Quarterly_Report_Click:
    Exit Sub

Err_Preview_Quarterly_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Quarterly_Report_Click
    
End Sub

Private Sub Spreadsheet_Report_Click()
On Error GoTo Err_Spreadsheet_Report_Click

    Dim stDocName As String
    
    Select Case [SPECIES_GROUP]
    Case 1
        stDocName = "Seed_Quarterly_Report Query"
    Case 2
        stDocName = "Seed_Quarterly_Report_NON_Diverse Query"
    Case 3
        stDocName = "Seed_Quarterly_Report_Diverse Query"
    End Select
    If IsNull(BEGIN_DATE) Then
        MsgBox "Must enter a Begin Date", vbExclamation
        DoCmd.GoToControl "begin_Date"
    Else
    If IsNull(END_DATE) Then
        MsgBox "Must enter an End Date", vbExclamation
        DoCmd.GoToControl "End_Date"
    Else
    
    If Not IsNull([CATEGORY_CODE]) Then
        DoCmd.OpenQuery stDocName, acPreview
    Else
        MsgBox "Please Enter a Category Code", vbExclamation
        DoCmd.GoToControl "[Category_Code]"
    End If
    End If
    End If

Exit_Spreadsheet_Report_Click:
    Exit Sub

Err_Spreadsheet_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Spreadsheet_Report_Click
    
End Sub
```
