# Form: Plant_Quarterly_Report

**Opens:** `Report:Plant_Quarterly_Rept`, `Report:Plant_Quarterly_Rept_SPD`  
**Opened from (VBA):** `Form_Reports_Menu_Misc Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Plant Book Inventory Report |  |  |  | 1.34, 0.08, 2.77, 0.29 |
| TextBox | Begin_Date | Begin Date: | =IIf([quarter]="1A" Or [quarter]="1" Or [quarter]="Y","10/01/" & [fy_Select]-1,IIf([quarter]=2,"01/01/" & [fy_Select],IIf([quarter]=3,"04/01/" & [fy_Select],"07/01/" & [fy_Select]))) |  |  | 1.04, 2.75, 0.83, 0.21 |
| TextBox | End_Date | End Date: | =IIf([quarter]="1A","09/30/" & [fy_Select]-1,IIf([quarter]="1","12/31/" & [fy_Select]-1,IIf([quarter]="2","03/31/" & [fy_Select],IIf([quarter]="3","06/30/" & [fy_Select],"09/30/" & [fy_Select])))) |  |  | 1.04, 3.04, 0.83, 0.21 |
| ComboBox | Category_Code | Category Code: |  | WCF;WCF;SP;Special Projects |  | 2.62, 1.55, 2.50, 0.25 |
| TextBox | FY_Select | Fiscal Year: |  |  |  | 2.62, 1.22, 0.58, 0.24 |
| CommandButton | Preview_Quarterly_Report | Click to Preview/Print Report |  |  | Click | 2.16, 2.81, 1.58, 0.92 |
| Line | Line12 |  |  |  |  | 0.19, 0.58, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.14, 1.11, 5.24, 1.43 |
| TextBox | End_Date_for_Previous_FY | Ending Date for Previous Fiscal Year: | ="09/30/" & [fy_Select]-1 |  |  | 2.82, 0.75, 0.83, 0.21 |
| ComboBox | Quarter | Report: |  | 1A;"First Quarter Age Class Adjust";1;"First Quarter";2;"Second Quarter";3;"Third Quarter";4;"Fourth Quarter";"Y";Yearly |  | 2.62, 1.88, 2.50, 0.24 |
| TextBox | FY |  | =[FY_Select]-1 |  |  | 3.58, 1.25, 0.58, 0.24 |
| CheckBox | Product_Class_Condensed | Class Condensed |  |  |  | 2.79, 2.28, 0.17, 0.08 |
| CommandButton | Preview_Quarterly_Report_SPD | Spreadsheet |  |  | Click | 2.16, 3.83, 1.58, 0.33 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Preview_Quarterly_Report_Click()

    Dim stDocName As String

    stDocName = "Plant_Quarterly_Rept"
    
    DoCmd.SetWarnings False
    
    If [PRODUCT_CLASS_CONDENSED] = True Then
        DoCmd.OpenQuery "Plant_Quarterly_Rept_All_Age_Classes_Condensed_MT"
        DoCmd.OpenQuery "Plant_Quarterly_Rept_All_Age_Classes_Condensed_AT"
    Else
        DoCmd.OpenQuery "Plant_Quarterly_Rept_All_Age_Classes_MT"
        DoCmd.OpenQuery "Plant_Quarterly_Rept_All_Age_Classes_AT"
    End If
    DoCmd.OpenQuery "Plant_Quarterly_Rept1_mt"
    DoCmd.OpenQuery "Plant_Quarterly_Rept_to_older_age_class1_mt"
    DoCmd.OpenQuery "Plant_Quarterly_Rept_mt"
    
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
    'DoCmd.OpenQuery stDocName
    
End Sub

Private Sub Preview_Quarterly_Report_SPD_Click()

    Dim stDocName As String

    stDocName = "Plant_Quarterly_Rept_SPD"
    
    DoCmd.SetWarnings False
    
    If [PRODUCT_CLASS_CONDENSED] = True Then
        DoCmd.OpenQuery "Plant_Quarterly_Rept_All_Age_Classes_Condensed_MT"
        DoCmd.OpenQuery "Plant_Quarterly_Rept_All_Age_Classes_Condensed_AT"
    Else
        DoCmd.OpenQuery "Plant_Quarterly_Rept_All_Age_Classes_MT"
        DoCmd.OpenQuery "Plant_Quarterly_Rept_All_Age_Classes_AT"
    End If
    DoCmd.OpenQuery "Plant_Quarterly_Rept1_mt"
    DoCmd.OpenQuery "Plant_Quarterly_Rept_to_older_age_class1_mt"
    DoCmd.OpenQuery "Plant_Quarterly_Rept_mt"
    
    DoCmd.SetWarnings True
    
    DoCmd.OpenQuery stDocName
    'DoCmd.OpenQuery stDocName
    
End Sub
```
