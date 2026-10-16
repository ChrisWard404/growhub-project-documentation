# Form: Seed_Non_WCF_Billing_Report

**Backend tables referenced:** `NMIS_CATEGORIES`  
**Subforms/subreports:** `Form.NMIS_ACCESS_USER_NURSERY subform1`  
**Opens:** `Form:Seed_Billing_Change_Defaults`, `Report:NMIS_Source_Non-WCF_Storage_Billing_Report`, `Report:SEED_BILLING_NON_WCF_BILLING_TABLE_Edit`, `Report:Seed_Extraction_Billing`, `Report:Seed_Non_WCF_Billing`, `Report:Seed_Non_WCF_Billing2`, `Report:Seed_Non_WCF_Billing2_summary`, `Report:Seed_Non_WCF_Billing3`, `Report:Seed_Non_WCF_Billing3_summary`, `Report:Seed_Sales_Billing`, `Report:Seed_Sown_for_Other_Than_Storage_Parent`, `Report:Seed_billing_summary_Spd`  
**Opened from (VBA):** `Form_Reports_Menu_Source Subform`  
**Form events with code:** Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Begin_Date | Begin Date: |  |  | AfterUpdate | 1.62, 0.72, 0.68, 0.21 |
| TextBox | End_Date | End Date: |  |  | AfterUpdate | 1.62, 0.98, 0.68, 0.21 |
| ComboBox | Category_Code | Category: |  | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES GROUP BY NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC HAVING (((NMIS_CATEGORIES.CATEGORY_CODE) Not Like "gsp") AND ((NMIS_CATEGORIES.CATEGORY_DESC) Like "*wcf*seed*")); | AfterUpdate | 1.21, 0.04, 2.42, 0.20 |
| TextBox | Overhead_Pct | Overhead %: |  |  |  | 1.75, 2.93, 0.40, 0.20 |
| TextBox | Like_Client | Like Client: |  |  | DblClick | 1.62, 1.24, 0.79, 0.20 |
| CommandButton | Create_Extraction_Billing_Report | Click to Preview Extraction by Hr Invoice Report |  |  | Click | 0.15, 3.75, 1.08, 0.75 |
| Line | Line12 |  |  |  |  | 0.53, 0.58, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.21, 0.67, 5.54, 2.12 |
| Rectangle | Box16 |  |  |  |  | 0.38, 2.86, 5.20, 0.73 |
| CommandButton | Create_Seed_Billing_Report | Click to Preview Invoice Lot Detail Report |  |  | Click | 2.50, 3.75, 1.08, 0.75 |
| CommandButton | Create_Seed_Billing_Species_Report | Click to Preview Invoice Species Detail Report |  |  | Click | 3.66, 3.75, 1.08, 0.75 |
| TextBox | Signature_Line | Signature Line: |  |  |  | 1.79, 2.97, 3.56, 0.20 |
| TextBox | Title_Line | Title Line: |  |  |  | 1.78, 3.26, 3.56, 0.20 |
| CommandButton | Sown_for_other_than_stored_for | Click for Seed Sown for other than Stored For |  |  | Click | 1.32, 3.75, 1.08, 0.75 |
| TextBox | Storage_bill_Date | Storage Billing Date: |  |  | AfterUpdate, DblClick | 4.81, 1.33, 0.81, 0.21 |
| TextBox | Unit_Price_Freezer | Freezer Unit Price: |  |  | AfterUpdate, DblClick | 4.81, 1.85, 0.79, 0.20 |
| TextBox | Unit_Price_Cooler | Cooler Unit Price: |  |  | AfterUpdate, DblClick | 4.81, 2.14, 0.79, 0.20 |
| CheckBox | data_processed | data_processed |  |  |  | 0.10, 0.03, 0.00, 0.00 |
| Subform | NMIS_ACCESS_USER_NURSERY subform1 |  | Form.NMIS_ACCESS_USER_NURSERY subform1 |  |  | 4.25, 0.08, 1.75, 0.79 |
| CommandButton | Create_Seed_Billing_non_detail_Report | Click to Preview Invoice Non-Detail Report |  |  | Click | 4.83, 3.75, 1.08, 0.75 |
| Label | Label28 | Billable Activities Only |  |  |  | 0.95, 2.49, 1.55, 0.21 |
| Rectangle | Box29 |  |  |  |  | 3.22, 0.99, 2.46, 1.47 |
| CheckBox | Non_WCF_Storage_Only |  |  |  | AfterUpdate | 2.62, 2.51, 0.00, 0.00 |
| Label | Label33 | Non-WCF Storage |  |  |  | 3.92, 1.08, 1.24, 0.21 |
| TextBox | min_lot_wt | Minimum Lot Wt (LB): |  |  | AfterUpdate, DblClick | 4.82, 1.59, 0.79, 0.20 |
| Label | Label34 | WCF Seed Invoice Only |  |  |  | 0.88, 2.21, 1.62, 0.21 |
| CheckBox | WCF_Seed_Bill_Only |  |  |  | AfterUpdate | 2.62, 2.23, 0.00, 0.00 |
| Rectangle | Box36 |  |  |  |  | 0.25, 2.11, 2.88, 0.67 |
| CommandButton | bill_summary_spd | Click to Preview Invoice Summary Spreadsheet |  |  | Click | 2.50, 4.58, 1.08, 0.75 |
| ComboBox | Diverse | Species Type |  | 0;Traditional;-1;Non-Traditional;*;All |  | 3.94, 0.71, 1.12, 0.21 |
| Label | Label0 | Seed Invoice Reports |  |  |  | 1.73, 0.08, 2.56, 0.28 |
| CommandButton | Create_Seed_Billing_Species__summary_Report | Click to Preview Invoice Species Summary Report |  |  | Click | 3.66, 4.59, 1.08, 0.75 |
| CommandButton | Create_Seed_Billing_non_detail_summary_Report | Click to Preview Invoice Non-Detail Summary Report |  |  | Click | 4.83, 4.59, 1.08, 0.75 |
| TextBox | LikeJobcode | Like Job Code: |  |  | DblClick | 1.62, 1.50, 0.79, 0.20 |
| CommandButton | Client_Bill_Table_Edit | Command33 |  |  | Click | 0.08, 0.24, 0.17, 0.17 |
| TextBox | NotLikeJC | Not Like Job Code: |  |  |  | 1.62, 1.76, 0.79, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Begin_Date_AfterUpdate()
   
    Data_Processed = False
  
End Sub

Private Sub bill_summary_spd_Click()
On Error GoTo Err_bill_summary_spd_Click

    Dim stDocName As String

    'If [CATEGORY_CODE] = "S" Or [CATEGORY_CODE] = "SWCF" Or [CATEGORY_CODE] = "WCF4" Then
        'If Not Data_Processed Then
            'DoCmd.SetWarnings False
            'DoCmd.OpenQuery "SEED_BILLING_MT QUERY"
            'DoCmd.SetWarnings True
            'Data_Processed = True
        'End If
        'stDocName = "Seed_Sales_Billing"
    'Else
        stDocName = "Seed_billing_summary_Spd"
        If Not Data_Processed Then
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "SEED_BILLING_NON_WCF_MT_QUERY"
            DoCmd.OpenQuery "Non_WCF_Source_Storage_Billing_at"
            DoCmd.OpenQuery "Non_WCF_Product_Storage_Billing2_AT"
            DoCmd.OpenQuery "SEED_BILLING2_at QUERY"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
    'End If
    DoCmd.OpenQuery stDocName ', acPreview
Exit_bill_summary_spd_Click:
    Exit Sub

Err_bill_summary_spd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_bill_summary_spd_Click

End Sub

Private Sub Category_Code_AfterUpdate()

    If CATEGORY_CODE = "S" Then
        Storage_bill_Date.Visible = False
        Unit_Price_Freezer.Visible = False
        Unit_Price_Cooler.Visible = False
    Else
        Storage_bill_Date.Visible = True
        Unit_Price_Freezer.Visible = True
        Unit_Price_Cooler.Visible = True
    End If
    Data_Processed = False
    
End Sub

Private Sub Client_Bill_Table_Edit_Click()
On Error GoTo Err_Client_Bill_Table_Edit_Click

    Dim stDocName As String

    stDocName = "SEED_BILLING_NON_WCF_BILLING_TABLE_Edit"
    DoCmd.OpenQuery stDocName, acNormal, acEdit

Exit_Client_Bill_Table_Edit_Click:
    Exit Sub

Err_Client_Bill_Table_Edit_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Client_Bill_Table_Edit_Click
    
End Sub

Private Sub Create_Extraction_Billing_Report_Click()
On Error GoTo Err_Create_Extraction_Billing_Report_Click

    Dim stDocName As String
    Dim stCreateTable As String
    
    stDocName = "Seed_Extraction_Billing"
    stCreateTable = "Extraction_Billing_By_MGMT_Code Query"
    
    DoCmd.SetWarnings off
    DoCmd.OpenQuery stCreateTable
    DoCmd.SetWarnings (WarningsOn)
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Create_Extraction_Billing_Report_Click:
    Exit Sub

Err_Create_Extraction_Billing_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Extraction_Billing_Report_Click


End Sub

Private Sub Create_Seed_Billing_non_detail_Report_Click()
On Error GoTo Err_Create_Seed_Billing_non_detail_Report_Click

    Dim stDocName As String

    'If [CATEGORY_CODE] = "S" Or [CATEGORY_CODE] = "SWCF" Or [CATEGORY_CODE] = "WCF4" Then
        'If Not Data_Processed Then
            'DoCmd.SetWarnings False
            'DoCmd.OpenQuery "SEED_BILLING_MT QUERY"
            'DoCmd.SetWarnings True
            'Data_Processed = True
        'End If
        'stDocName = "Seed_Sales_Billing"
    'Else
        stDocName = "Seed_Non_WCF_Billing3"
        If Not Data_Processed Then
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "SEED_BILLING_NON_WCF_MT_QUERY"
            DoCmd.OpenQuery "Non_WCF_Source_Storage_Billing_at"
            DoCmd.OpenQuery "Non_WCF_Product_Storage_Billing2_AT"
            DoCmd.OpenQuery "SEED_BILLING2_at QUERY"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
    'End If
    DoCmd.OpenReport stDocName, acPreview
Exit_Create_Seed_Billing_non_detail_Report_Click:
    Exit Sub

Err_Create_Seed_Billing_non_detail_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Seed_Billing_non_detail_Report_Click

End Sub

Private Sub Create_Seed_Billing_non_detail_summary_Report_Click()
On Error GoTo Err_Create_Seed_Billing_non_detail_summary_Report_Click

    Dim stDocName As String

    'If [CATEGORY_CODE] = "S" Or [CATEGORY_CODE] = "SWCF" Or [CATEGORY_CODE] = "WCF4" Then
        'If Not Data_Processed Then
            'DoCmd.SetWarnings False
            'DoCmd.OpenQuery "SEED_BILLING_MT QUERY"
            'DoCmd.SetWarnings True
            'Data_Processed = True
        'End If
        'stDocName = "Seed_Sales_Billing"
    'Else
        stDocName = "Seed_Non_WCF_Billing3_summary"
        If Not Data_Processed Then
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "SEED_BILLING_NON_WCF_MT_QUERY"
            DoCmd.OpenQuery "Non_WCF_Source_Storage_Billing_at"
            DoCmd.OpenQuery "Non_WCF_Product_Storage_Billing2_AT"
            DoCmd.OpenQuery "SEED_BILLING2_at QUERY"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
    'End If
    DoCmd.OpenReport stDocName, acPreview
Exit_Create_Seed_Billing_non_detail_summary_Report_Click:
    Exit Sub

Err_Create_Seed_Billing_non_detail_summary_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Seed_Billing_non_detail_summary_Report_Click
End Sub

Private Sub Create_Seed_Billing_Report_Click()
On Error GoTo Err_Create_Seed_Billing_Report_Click

    Dim stDocName As String

    'If [CATEGORY_CODE] = "S" Or [CATEGORY_CODE] = "SWCF" Or [CATEGORY_CODE] = "WCF4" Then
        'If Not Data_Processed Then
            'DoCmd.SetWarnings False
            'DoCmd.OpenQuery "SEED_BILLING_MT QUERY"
            'DoCmd.SetWarnings True
            'Data_Processed = True
        'End If
        'stDocName = "Seed_Sales_Billing"
    'Else
        stDocName = "Seed_Non_WCF_Billing"
        If Not Data_Processed Then
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "SEED_BILLING_NON_WCF_MT_QUERY"
            DoCmd.OpenQuery "Non_WCF_Source_Storage_Billing_at"
            DoCmd.OpenQuery "Non_WCF_Product_Storage_Billing2_AT"
            DoCmd.OpenQuery "SEED_BILLING2_at QUERY"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
    'End If
    DoCmd.OpenReport stDocName, acPreview
Exit_Create_Seed_Billing_Report_Click:
    Exit Sub

Err_Create_Seed_Billing_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Seed_Billing_Report_Click

End Sub

Private Sub Create_Seed_Billing_Species__summary_Report_Click()
On Error GoTo Err_Create_Seed_Billing_Species__summary_Report_Click

    Dim stDocName As String

    'If [CATEGORY_CODE] = "S" Or [CATEGORY_CODE] = "SWCF" Or [CATEGORY_CODE] = "WCF4" Then
        'If Not Data_Processed Then
            'DoCmd.SetWarnings False
            'DoCmd.OpenQuery "SEED_BILLING_MT QUERY"
            'DoCmd.SetWarnings True
            'Data_Processed = True
        'End If
        'stDocName = "Seed_Sales_Billing"
    'Else
        stDocName = "Seed_Non_WCF_Billing2_summary"
        If Not Data_Processed Then
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "SEED_BILLING_NON_WCF_MT_QUERY"
            DoCmd.OpenQuery "Non_WCF_Source_Storage_Billing_at"
            DoCmd.OpenQuery "Non_WCF_Product_Storage_Billing2_AT"
            DoCmd.OpenQuery "SEED_BILLING2_at QUERY"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
    'End If
    DoCmd.OpenReport stDocName, acPreview
Exit_Create_Seed_Billing_Species__summary_Report_Click:
    Exit Sub

Err_Create_Seed_Billing_Species__summary_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Seed_Billing_Species__summary_Report_Click
End Sub

Private Sub Create_Seed_Billing_Species_Report_Click()
On Error GoTo Err_Create_Seed_Billing_Species_Report_Click

    Dim stDocName As String

    'If [CATEGORY_CODE] = "S" Or [CATEGORY_CODE] = "SWCF" Or [CATEGORY_CODE] = "WCF4" Then
        'If Not Data_Processed Then
            'DoCmd.SetWarnings False
            'DoCmd.OpenQuery "SEED_BILLING_MT QUERY"
            'DoCmd.SetWarnings True
            'Data_Processed = True
        'End If
        'stDocName = "Seed_Sales_Billing"
    'Else
        stDocName = "Seed_Non_WCF_Billing2"
        If Not Data_Processed Then
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "SEED_BILLING_NON_WCF_MT_QUERY"
            DoCmd.OpenQuery "Non_WCF_Source_Storage_Billing_at"
            DoCmd.OpenQuery "Non_WCF_Product_Storage_Billing2_AT"
            DoCmd.OpenQuery "SEED_BILLING2_at QUERY"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
    'End If
    DoCmd.OpenReport stDocName, acPreview
Exit_Create_Seed_Billing_Species_Report_Click:
    Exit Sub

Err_Create_Seed_Billing_Species_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Seed_Billing_Species_Report_Click


End Sub

Private Sub End_Date_AfterUpdate()
   
    Data_Processed = False
  
End Sub

Private Sub END_DATE_Exit(Cancel As Integer)

    If [BEGIN_DATE] > [END_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
        MsgBox BEGIN_DATE
        MsgBox END_DATE
        DoCmd.GoToControl "end_date"
    End If
    
End Sub
Private Sub Non_WCF_Storage_Billing_Click()
On Error GoTo Err_Non_WCF_Storage_Billing_Click

    Dim stDocName As String
    Dim stResponse As String
    
'***
    stResponse = MsgBox("Category must be for Non-WCF Seed ", vbOKCancel)
    
    If stResponse = vbOK Then
        
    stDocName = "NMIS_Source_Non-WCF_Storage_Billing_Report"
    DoCmd.OpenReport stDocName, acPreview
        
    Else
        MsgBox "Canceling Report Request"
    End If

'***

Exit_Non_WCF_Storage_Billing_Click:
    Exit Sub

Err_Non_WCF_Storage_Billing_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Non_WCF_Storage_Billing_Click
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    'Storage_bill_Date.Visible = False
    'Unit_Price_Freezer.Visible = False
    'Unit_Price_Cooler.Visible = False
        
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)
    
    Like_Client = "*"

    
End Sub

Private Sub LikeJobcode_DblClick(Cancel As Integer)

    LikeJobcode = ""
    
End Sub

Private Sub min_lot_wt_AfterUpdate()

    Data_Processed = False
    
End Sub

Private Sub min_lot_wt_DblClick(Cancel As Integer)

    DoCmd.OpenForm "Seed_Billing_Change_Defaults"
    DoCmd.GoToControl "Min_Lot_Wt"
    
End Sub

Private Sub Non_WCF_Storage_Only_AfterUpdate()

    If Non_WCF_Storage_Only Then
        WCF_Seed_Bill_Only = False
    End If
    
End Sub

Private Sub Sown_for_other_than_stored_for_Click()
On Error GoTo Err_Sown_For_Other_Than_Stored_For_Click

    Dim stDocName As String

    stDocName = "Seed_Sown_for_Other_Than_Storage_Parent"
    DoCmd.OpenReport stDocName, acViewPreview

Exit_Sown_For_Other_Than_Stored_For_Click:
    Exit Sub

Err_Sown_For_Other_Than_Stored_For_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Sown_For_Other_Than_Stored_For_Click
    
End Sub

Private Sub Storage_bill_Date_AfterUpdate()
   
    '[NMIS_ACCESS_USER_NURSERY subform1].Form![storge_date] = Storage_bill_Date
    Data_Processed = False
  
End Sub

Private Sub Storage_bill_Date_DblClick(Cancel As Integer)

    DoCmd.OpenForm "Seed_Billing_Change_Defaults"
    DoCmd.GoToControl "Storage_Date"
 
End Sub

Private Sub Unit_Price_Cooler_AfterUpdate()
   
    '[NMIS_ACCESS_USER_NURSERY subform1].[Form]![cooler] = Unit_Price_Cooler
    Data_Processed = False
  
End Sub

Private Sub Unit_Price_Cooler_DblClick(Cancel As Integer)

    DoCmd.OpenForm "Seed_Billing_Change_Defaults"
    DoCmd.GoToControl "cooler"
    
End Sub

Private Sub Unit_Price_Freezer_AfterUpdate()

    '[NMIS_ACCESS_USER_NURSERY subform1].[Form]![FREEZER] = Unit_Price_Freezer
    Data_Processed = False
  
End Sub

Private Sub Unit_Price_Freezer_DblClick(Cancel As Integer)

    DoCmd.OpenForm "Seed_Billing_Change_Defaults"
    DoCmd.GoToControl "freezer"
    
End Sub

Private Sub WCF_Seed_Bill_Only_AfterUpdate()

    If WCF_Seed_Bill_Only Then
        Non_WCF_Storage_Only = False
    End If
    
End Sub
```
