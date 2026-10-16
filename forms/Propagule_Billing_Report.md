# Form: Propagule_Billing_Report

**Caption:** Propagule Billing  
**Record source:**

```sql
SELECT NMIS_ACCESS_USER_NURSERY.Nursery_Associate_Code, NMIS_ACCESS_USER_NURSERY.Default4N FROM NMIS_ACCESS_USER_NURSERY WHERE (((NMIS_ACCESS_USER_NURSERY.Nursery_Associate_Code)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]));
```

**Backend tables referenced:** `NMIS_ACCESS_USER_NURSERY`  
**Subforms/subreports:** `Form.NMIS_ACCESS_USER_NURSERY subform1`  
**Opens:** `Form:NMIS_Non-WCF_Storage_Billing_Report`, `Form:NMIS_Non-WCF_Storage_Billing_Report_P`, `Form:NMIS_Non-WCF_Storage_Billing_Report_S_Freezer`, `Form:NMIS_PRODUCT_CHARGES2`, `Form:Open_NMIS_PROCESSING_ORDERS_Review`, `Form:Propagule_Billing`, `Form:Propagule_Billing_Table_Edit`, `Form:Propagule_Billing_summary`, `Form:Propagule_Billing_summary_SPD`, `Form:Propagule_Order_Size_Review`, `Form:Seed_Extraction_Billing`, `Form:Seed_Sales_Billing`, `Report:NMIS_Non-WCF_Storage_Billing_Report`, `Report:NMIS_Non-WCF_Storage_Billing_Report_P`, `Report:NMIS_Non-WCF_Storage_Billing_Report_S_Freezer`, `Report:NMIS_PRODUCT_CHARGES2`, `Report:Open_NMIS_PROCESSING_ORDERS_Review`, `Report:Propagule_Billing`, `Report:Propagule_Billing_Table_Edit`, `Report:Propagule_Billing_summary`, `Report:Propagule_Billing_summary_SPD`, `Report:Propagule_Order_Size_Review`, `Report:Seed_Extraction_Billing`, `Report:Seed_Sales_Billing`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Propagule Invoice |  |  |  | 1.78, 0.08, 2.46, 0.28 |
| TextBox | Bill_Date | Bill Date: |  |  | Change | 1.69, 0.86, 0.68, 0.21 |
| TextBox | Overhead_Pct | Overhead %: |  |  |  | 1.73, 1.99, 0.40, 0.20 |
| TextBox | Like_Client | Like Client: |  |  |  | 1.70, 1.19, 0.79, 0.20 |
| Line | Line12 |  |  |  |  | 0.51, 0.58, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.47, 0.69, 5.08, 1.11 |
| Rectangle | Box16 |  |  |  |  | 0.47, 1.90, 5.08, 0.73 |
| CommandButton | Non_WCF_Storage_Billing | Click to Preview Source and Product Invoice |  |  | Click | 4.44, 2.99, 1.08, 0.76 |
| CommandButton | Non_Product_WCF_Storage_Billing | Click to Preview Product Billing |  |  | Click | 3.30, 2.99, 1.08, 0.76 |
| CommandButton | Propagule_Billing | Click to Preview Invoice |  |  | Click | 2.36, 3.00, 1.08, 0.76 |
| CommandButton | Non_Source_WCF_Storage_Billing_Freezer | Click to Preview Source Freezer Invoice |  |  | Click | 0.38, 3.00, 1.08, 0.76 |
| TextBox | Startup_Charge | Startup Charge: |  |  |  | 3.93, 1.19, 0.79, 0.20 |
| TextBox | Bedfeet_Per_Acre | Bed Feet/Acre: |  |  | DblClick | 3.94, 0.86, 0.79, 0.20 |
| TextBox | Signature_Line | Signature Line: |  |  |  | 1.69, 2.04, 3.56, 0.20 |
| TextBox | Title_Line | Title Line: |  |  |  | 1.69, 2.33, 3.56, 0.20 |
| CommandButton | Open NMIS Product_Charges Form | Enter/Edit Product Charges... |  |  | Click | 1.84, 4.17, 1.39, 0.46 |
| CommandButton | Open_NMIS_Order_Review_Form | Enter/Edit Orders... |  |  | Click | 3.34, 4.17, 1.39, 0.46 |
| Subform | NMIS_ACCESS_USER_NURSERY subform1 |  | Form.NMIS_ACCESS_USER_NURSERY subform1 |  |  | 4.17, 0.12, 1.75, 0.79 |
| CommandButton | Propagule_Billing_summary | Click to Preview Invoice Summary |  |  | Click | 3.74, 3.00, 1.08, 0.76 |
| TextBox | Min_Lot_Chg | Minimum Lot Charge: |  |  |  | 3.93, 1.47, 0.79, 0.20 |
| CommandButton | PropaguleOrderSizeReview | Order Size Review |  |  | Click | 0.42, 4.38, 1.21, 0.22 |
| CommandButton | Propagule_Billing_summary_SPD | Click to Preview Invoice Summary SPD |  |  | Click | 0.95, 3.00, 1.08, 0.76 |
| CheckBox | Data_Processed | data_processed |  |  |  | 0.06, 0.05, 0.00, 0.00 |
| CommandButton | Client_Bill_Table_Edit | Command33 |  |  | Click | 0.04, 0.26, 0.17, 0.17 |

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

Private Sub Bedfeet_Per_Acre_DblClick(Cancel As Integer)
    
    Refresh
    [NMIS_ACCESS_USER_NURSERY subform1].[Form]![Default4N] = Bedfeet_Per_Acre
    MsgBox "The Default Bed Feet per Acre has been changed to the current value."
    
End Sub

Private Sub Bill_Date_Change()

    Data_Processed = False
    
End Sub

Private Sub Client_Bill_Table_Edit_Click()
On Error GoTo Err_Client_Bill_Table_Edit_Click

    Dim stDocName As String

    stDocName = "Propagule_Billing_Table_Edit"
    
    DoCmd.OpenQuery stDocName
    
Exit_Client_Bill_Table_Edit_Click:
    Exit Sub

Err_Client_Bill_Table_Edit_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Client_Bill_Table_Edit_Click
    
End Sub

Private Sub Non_Product_WCF_Storage_Billing_Click()

    Dim stDocName As String
    
    stDocName = "NMIS_Non-WCF_Storage_Billing_Report_P"
 
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

Private Sub Open_NMIS_Order_Review_Form_Click()
On Error GoTo Err_Open_NMIS_Order_Review_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Open_NMIS_PROCESSING_ORDERS_Review"
    
    Client_Bill_Data_Processed = False
    DoCmd.RunMacro stDocName
    Forms![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![PRODUCT_GROUP] = "NPROPAGULE"
    Forms![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![ORDER_CN].Requery

Exit_Open_NMIS_Order_Review_Form_Click:
    Exit Sub

Err_Open_NMIS_Order_Review_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Order_Review_Form_Click
   
End Sub

Private Sub Open_NMIS_Product_Charges_Form_Click()
On Error GoTo Err_Open_NMIS_Product_Charges_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_CHARGES2"
    
    Client_Bill_Data_Processed = False
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    Forms![NMIS_PRODUCT_CHARGES2]![Filter_for_Product_Type] = "N"

Exit_Open_NMIS_Product_Charges_Form_Click:
    Exit Sub

Err_Open_NMIS_Product_Charges_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Product_Charges_Form_Click
    
End Sub

Private Sub Propagule_Billing_Click()
On Error GoTo Err_Propagule_Billing_Click

    Dim stDocName As String

    stDocName = "Propagule_Billing"
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Billing_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Propagule_Billing_Click:
    Exit Sub

Err_Propagule_Billing_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Propagule_Billing_Click
    
End Sub

Private Sub Unit_Price_Change()

    Data_Processed = False
End Sub

Private Sub Propagule_Billing_summary_Click()
On Error GoTo Err_Propagule_Billing_summary_Click

    Dim stDocName As String

    stDocName = "Propagule_Billing_summary"
    
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Billing_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Propagule_Billing_summary_Click:
    Exit Sub

Err_Propagule_Billing_summary_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Propagule_Billing_summary_Click
    
End Sub

Private Sub Propagule_Billing_summary_SPD_Click()
On Error GoTo Err_Propagule_Billing_summary_SPD_Click

    Dim stDocName As String
    
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Billing_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If

    stDocName = "Propagule_Billing_summary_SPD"
    DoCmd.OpenQuery stDocName
Exit_Propagule_Billing_summary_SPD_Click:
    Exit Sub

Err_Propagule_Billing_summary_SPD_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Propagule_Billing_summary_SPD_Click
    
End Sub

Private Sub PropaguleOrderSizeReview_Click()
On Error GoTo Err_PropaguleOrderSizeReview_Click

    Dim stDocName As String

    stDocName = "Propagule_Order_Size_Review"
    DoCmd.OpenQuery stDocName, acPreview

Exit_PropaguleOrderSizeReview_Click:
    Exit Sub

Err_PropaguleOrderSizeReview_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_PropaguleOrderSizeReview_Click
    
End Sub
```
