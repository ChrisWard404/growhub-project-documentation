# Form: Non_WCF_Storage_Billing_Report

**Subforms/subreports:** `Form.NMIS_ACCESS_USER_NURSERY subform1`  
**Opens:** `Report:NMIS_Non-WCF_Storage_Billing_Report`, `Report:NMIS_Non-WCF_Storage_Billing_Report_P`, `Report:NMIS_Non-WCF_Storage_Billing_Report_S`, `Report:NMIS_Non-WCF_Storage_Billing_Report_S_Freezer`, `Report:NMIS_Non-WCF_Storage_Billing_Report_S_Freezer_summary`, `Report:NMIS_Non-WCF_Storage_Billing_Report_S_not_freezer`, `Report:NMIS_Non-WCF_Storage_Billing_Summary_Report`, `Report:NMIS_Non-WCF_Storage_Billing_w_lots_Report`, `Report:NMIS_Non_WCF_Storage_Billing_Summary_SPD`, `Report:SEED_BILLING_NON_WCF_BILLING_TABLE_Edit2`, `Report:Seed_Extraction_Billing`, `Report:Seed_Sales_Billing`  
**Opened from (VBA):** `Form_Reports_Menu_Misc Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| CommandButton | Non_Product_WCF_Storage_Billing | Click to Preview Product Billing |  |  | Click | 3.30, 3.34, 1.08, 0.76 |
| Label | Label0 | Non-WCF Storage Invoice |  |  |  | 1.75, 0.08, 2.52, 0.28 |
| TextBox | Bill_Date | Invoice Date: |  |  | Change | 1.69, 0.79, 0.68, 0.21 |
| TextBox | Overhead_Pct | Overhead %: |  |  |  | 1.73, 2.33, 0.40, 0.20 |
| TextBox | Like_Client | Like Client: |  |  |  | 1.70, 1.05, 0.79, 0.20 |
| Line | Line12 |  |  |  |  | 0.51, 0.58, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.47, 0.69, 5.08, 1.42 |
| Rectangle | Box16 |  |  |  |  | 0.47, 2.25, 5.08, 0.93 |
| CommandButton | Non_WCF_Storage_Billing | Click to Preview Source and Product Invoice |  |  | Click | 3.66, 3.46, 1.08, 0.76 |
| TextBox | Unit_Price_Freezer | Freezer Unit Price: |  |  | AfterUpdate, DblClick | 4.45, 1.29, 0.79, 0.20 |
| CommandButton | Non_Source_WCF_Storage_Billing | Click to Preview All Source Billing |  |  | Click | 1.83, 4.16, 1.08, 0.76 |
| CommandButton | Non_Source_WCF_Storage_Billing_Freezer | Click to Preview Source Freezer Billing |  |  | Click | 0.59, 3.34, 1.08, 0.76 |
| CommandButton | Non_Source_WCF_Storage_Billing_Non_Freezer | Click to Preview Source Non-Freezer Billing |  |  | Click | 1.80, 3.34, 1.08, 0.76 |
| CommandButton | Non_Source_WCF_Storage_Billing_Freezer_Summary | Click to Preview Source Freezer Summary Billing |  |  | Click | 0.59, 4.16, 1.08, 0.76 |
| TextBox | Unit_Price_Cooler | Cooler Unit Price: |  |  | AfterUpdate, DblClick | 4.45, 1.53, 0.79, 0.20 |
| TextBox | Signature_Line | Signature Line: |  |  |  | 1.71, 2.61, 3.56, 0.20 |
| TextBox | Title_Line | Title Line: |  |  |  | 1.71, 2.90, 3.56, 0.20 |
| CommandButton | Non_WCF_Storage_Billing_w_lots | Click to Preview Source and Product Invoice with Lots |  |  | Click | 2.39, 3.46, 1.08, 0.76 |
| Subform | NMIS_ACCESS_USER_NURSERY subform1 |  | Form.NMIS_ACCESS_USER_NURSERY subform1 |  |  | 4.25, 0.04, 1.75, 0.79 |
| TextBox | Storage_bill_Date | Storage Invoice Date: |  |  | AfterUpdate, DblClick | 4.45, 0.79, 0.79, 0.21 |
| TextBox | min_lot_wt | Minimum Lot Wt (LB): |  |  | AfterUpdate, DblClick | 4.45, 1.04, 0.79, 0.20 |
| CheckBox | Non_Traditional | Non-Traditional Only |  |  | Click | 2.12, 1.35, 0.00, 0.00 |
| CheckBox | traditional | Traditional Only |  |  | Click | 2.12, 1.61, 0.00, 0.00 |
| TextBox | Min_Bill_Amt | Minimum Invoice Amt: |  |  | AfterUpdate, DblClick | 4.45, 1.78, 0.79, 0.20 |
| CommandButton | Non_WCF_Storage_Billing_Summary | Click to Preview Source and Product Invoice Summary |  |  | Click | 1.11, 3.46, 1.08, 0.76 |
| CommandButton | Non_WCF_Storage_Billing_Summary_SPD | Click to Preview Source and Product Invoice Summary SPD |  |  | Click | 1.11, 4.27, 1.08, 0.76 |
| CheckBox | data_processed | data_processed |  |  |  | 0.04, 0.05, 0.00, 0.00 |
| CommandButton | Client_Bill_Table_Edit | Command33 |  |  | Click | 0.02, 0.26, 0.17, 0.17 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Create_Extraction_Billing_Report_Click()

    Dim stDocName As String
    Dim stCreateTable As String
    
    stDocName = "Seed_Extraction_Billing"
    stCreateTable = "Extraction_Billing_By_MGMT_Code Query"
    
    DoCmd.SetWarnings off
    DoCmd.OpenQuery stCreateTable
    DoCmd.OpenReport stDocName, acPreview
    DoCmd.SetWarnings (WarningsOn)

End Sub

Private Sub Create_Seed_Billing_Report_Click()

    Dim stDocName As String

    stDocName = "Seed_Sales_Billing"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Bill_Date_Change()

    Data_Processed = False
    
End Sub


Private Sub Client_Bill_Table_Edit_Click()
On Error GoTo Err_Client_Bill_Table_Edit_Click

    Dim stDocName As String

    stDocName = "SEED_BILLING_NON_WCF_BILLING_TABLE_Edit2"
    DoCmd.OpenQuery stDocName, acNormal, acEdit

Exit_Client_Bill_Table_Edit_Click:
    Exit Sub

Err_Client_Bill_Table_Edit_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Client_Bill_Table_Edit_Click
    
End Sub

Private Sub Min_Bill_Amt_AfterUpdate()
            
    Data_Processed = False
    
End Sub

Private Sub Min_Bill_Amt_DblClick(Cancel As Integer)
   
    DoCmd.GoToControl "Storage_bill_Date"
    [NMIS_ACCESS_USER_NURSERY subform1].Form![Client_min_bill_amt] = Min_Bill_Amt
    DoCmd.GoToControl "Min_Bill_Amt"
    MsgBox "The Default has been set to the Current Value"

End Sub

Private Sub min_lot_wt_AfterUpdate()
        
    Data_Processed = False
    
End Sub

Private Sub min_lot_wt_DblClick(Cancel As Integer)
       
    DoCmd.GoToControl "Storage_bill_Date"
    [NMIS_ACCESS_USER_NURSERY subform1].Form![min_lot_wt] = min_lot_wt
    DoCmd.GoToControl "min_lot_wt"
    MsgBox "The Default has been set to the Current Value"

End Sub

Private Sub Non_Product_WCF_Storage_Billing_Click()

    Dim stDocName As String
    
    stDocName = "NMIS_Non-WCF_Storage_Billing_Report_P"
 
    DoCmd.OpenReport stDocName, acPreview
 
End Sub

Private Sub Non_Source_WCF_Storage_Billing_Click()

    Dim stDocName As String
    
    stDocName = "NMIS_Non-WCF_Storage_Billing_Report_S"
        
    DoCmd.OpenReport stDocName, acPreview
 
End Sub

Private Sub Non_Source_WCF_Storage_Billing_Freezer_Click()
On Error GoTo Err_Non_Source_WCF_Storage_Billing_Freezer_Click

    Dim stDocName As String

    stDocName = "NMIS_Non-WCF_Storage_Billing_Report_S_Freezer"
    DoCmd.OpenReport stDocName, acPreview

Exit_Non_Source_WCF_Storage_Billing_Freezer_Click:
    Exit Sub

Err_Non_Source_WCF_Storage_Billing_Freezer_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Non_Source_WCF_Storage_Billing_Freezer_Click
    
End Sub

Private Sub Non_Source_WCF_Storage_Billing_Freezer_Summary_Click()
On Error GoTo Err_Non_Source_WCF_Storage_Billing_Freezer_Summary_Click

    Dim stDocName As String

    stDocName = "NMIS_Non-WCF_Storage_Billing_Report_S_Freezer_summary"
    DoCmd.OpenReport stDocName, acPreview

Exit_Non_Source_WCF_Storage_Billing_Freezer_Summary_Click:
    Exit Sub

Err_Non_Source_WCF_Storage_Billing_Freezer_Summary_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Non_Source_WCF_Storage_Billing_Freezer_Summary_Click
    
End Sub

Private Sub Non_Source_WCF_Storage_Billing_Non_Freezer_Click()
On Error GoTo Err_Non_Source_WCF_Storage_Billing_Non_Freezer_Click

    Dim stDocName As String

    stDocName = "NMIS_Non-WCF_Storage_Billing_Report_S_not_freezer"
    DoCmd.OpenReport stDocName, acPreview

Exit_Non_Source_WCF_Storage_Billing_Non_Freezer_Click:
    Exit Sub

Err_Non_Source_WCF_Storage_Billing_Non_Freezer_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Non_Source_WCF_Storage_Billing_Non_Freezer_Click
    
End Sub

Private Sub Non_Traditional_Click()

    If Non_Traditional Then
        traditional = False
    End If
    
End Sub

Private Sub Non_WCF_Storage_Billing_Click()

    Dim stDocName As String
    
    stDocName = "NMIS_Non-WCF_Storage_Billing_Report"
    
        If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Non_WCF_Source_Storage_Billing_MT"
        DoCmd.OpenQuery "Non_WCF_Product_Storage_Billing_AT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview
          
End Sub

Private Sub Unit_Price_Change()

    Data_Processed = False
    
End Sub

Private Sub Non_WCF_Storage_Billing_Summary_Click()

    Dim stDocName As String
    
    stDocName = "NMIS_Non-WCF_Storage_Billing_Summary_Report"
    
        If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Non_WCF_Source_Storage_Billing_MT"
        DoCmd.OpenQuery "Non_WCF_Product_Storage_Billing_AT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview
          
End Sub

Private Sub Non_WCF_Storage_Billing_Summary_SPD_Click()

    Dim stDocName As String
    
    stDocName = "NMIS_Non_WCF_Storage_Billing_Summary_SPD"
    
        If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Non_WCF_Source_Storage_Billing_MT"
        DoCmd.OpenQuery "Non_WCF_Product_Storage_Billing_AT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenQuery stDocName
          
End Sub

Private Sub Non_WCF_Storage_Billing_w_lots_Click()
On Error GoTo Err_Non_WCF_Storage_Billing_w_lots_Click
    Dim stDocName As String
    
    stDocName = "NMIS_Non-WCF_Storage_Billing_w_lots_Report"
    
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Non_WCF_Source_Storage_Billing_MT"
        DoCmd.OpenQuery "Non_WCF_Product_Storage_Billing_AT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview
          
Exit_Non_WCF_Storage_Billing_w_lots_Click:
    Exit Sub

Err_Non_WCF_Storage_Billing_w_lots_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Non_WCF_Storage_Billing_w_lots_Click
    
End Sub

Private Sub Storage_bill_Date_AfterUpdate()
        
    Data_Processed = False
    
End Sub

Private Sub Storage_bill_Date_DblClick(Cancel As Integer)
   
    DoCmd.GoToControl "Unit_Price_Cooler"
    [NMIS_ACCESS_USER_NURSERY subform1].Form![storge_date] = Storage_bill_Date
    DoCmd.GoToControl "Storage_bill_Date"
    MsgBox "The Default has been set to the Current Value"

    
    
End Sub

Private Sub traditional_Click()
    
    If traditional Then
        Non_Traditional = False
    End If
    
End Sub

Private Sub Unit_Price_Cooler_AfterUpdate()
        
    Data_Processed = False
    
End Sub

Private Sub Unit_Price_Cooler_DblClick(Cancel As Integer)
   
    DoCmd.GoToControl "Storage_bill_Date"
    [NMIS_ACCESS_USER_NURSERY subform1].Form![cooler] = Unit_Price_Cooler
    DoCmd.GoToControl "Unit_Price_Cooler"
    MsgBox "The Default has been set to the Current Value"

End Sub

Private Sub Unit_Price_Freezer_AfterUpdate()
        
    Data_Processed = False
    
End Sub

Private Sub Unit_Price_Freezer_DblClick(Cancel As Integer)
   
    DoCmd.GoToControl "Storage_bill_Date"
    [NMIS_ACCESS_USER_NURSERY subform1].Form![FREEZER] = Unit_Price_Freezer
    DoCmd.GoToControl "Unit_Price_Freezer"
    MsgBox "The Default has been set to the Current Value"

End Sub
```
