# Form: Reports_Menu_Misc Subform

**Caption:** Reports_Menu_Misc Subform  
**Record source:**

```sql
NMIS_FISCAL_YEARS
```

**Backend tables referenced:** `NMIS_FISCAL_YEARS`  
**Embedded in:** `Form:REPORTS Form`  
**Opens:** `Form:Annual_Report_Plant_Inventory_Detailed_Summary report`, `Form:Annual_Report_Plant_Inventory_Summary report`, `Form:Annual_Report_Plant_Inventory_Summary_by_class_species report`, `Form:Balances_By_Age_Class_and_End_Date2_no_net`, `Form:Contract_Payment_Estimate_Invoice`, `Form:Contract_Work_Order`, `Form:NMIS_ORDERS Review_CItems`, `Form:NMIS_ORDERS Without_CItems`, `Form:NMIS_PRODUCT_Projected_Charges_by_Category_Unit`, `Form:NMIS_PRODUCT_Projected_Charges_by_Category_Unit2`, `Form:NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot`, `Form:NMIS_PRODUCT_Projected_Charges_by_Unit`, `Form:NMIS_PRODUCT_Projected_Charges_by_Unit_Category`, `Form:NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot`, `Form:NMIS_PRODUCT_Projected_Container_Income_from_Bareroot_by_lot`, `Form:NMIS_PRODUCT_Projected_Income`, `Form:NMIS_PRODUCT_Projected_Income2`, `Form:NMIS_PRODUCT_Projected_Income_by_lot`, `Form:NMIS_PRODUCT_Projected_Income_by_lot2`, `Form:Non_WCF_Storage_Billing_Report`, `Form:PLANT_INVENTORY_REPORTS`, `Form:PROCESS_PAYMENT_ESTIMATE_INVOICE`, `Form:PROOF_ALL_From_Billing_Form`, `Form:Plant_Quarterly_Report`, `Form:Review_Orders_DBSRT_Contract_Items`, `Form:Review_Pack_Activities_Not_Equal_Order`, `Form:Review_Pack_Activities_vs_ActivityCI_NE_TransactionCI`, `Form:SOW_REQUEST_REPORTS`, `Form:TREEBOOK`, `Report:ACCOMPLISHMENT_REPORT`, `Report:ACCOMPLISHMENT_REPORT_region`, `Report:Annual_Report_Plant_Inventory_Detailed_Summary report`, `Report:Annual_Report_Plant_Inventory_Summary report`, `Report:Annual_Report_Plant_Inventory_Summary_by_class_species report`, `Report:Balances_By_Age_Class_and_End_Date2_no_net`, `Report:Contract_Payment_Estimate_Invoice`, `Report:Contract_Work_Order`, `Report:NMIS_ORDERS Review_CItems`, `Report:NMIS_ORDERS Without_CItems`, `Report:NMIS_PRODUCT_Projected_Charges_by_Category_Unit`, `Report:NMIS_PRODUCT_Projected_Charges_by_Category_Unit2`, `Report:NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot`, `Report:NMIS_PRODUCT_Projected_Charges_by_Unit`, `Report:NMIS_PRODUCT_Projected_Charges_by_Unit_Category`, `Report:NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot`, `Report:NMIS_PRODUCT_Projected_Container_Income_from_Bareroot_by_lot`, `Report:NMIS_PRODUCT_Projected_Income`, `Report:NMIS_PRODUCT_Projected_Income2`, `Report:NMIS_PRODUCT_Projected_Income_by_lot`, `Report:NMIS_PRODUCT_Projected_Income_by_lot2`, `Report:Non_WCF_Storage_Billing_Report`, `Report:PLANT_INVENTORY_REPORTS`, `Report:PROCESS_PAYMENT`, `Report:PROCESS_PAYMENT_ESTIMATE_INVOICE`, `Report:PROCESS_PAYMENT_INCREMENTAL`, `Report:PROOF_ALL_From_Billing_Form`, `Report:Plant_Quarterly_Report`, `Report:Review_Orders_DBSRT_Contract_Items`, `Report:Review_Pack_Activities_Not_Equal_Order`, `Report:Review_Pack_Activities_vs_ActivityCI_NE_TransactionCI`, `Report:SOW_REQUEST_REPORTS`, `Report:TREEBOOK`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TabControl | TabCtl2 |  |  |  |  | 0.14, 0.05, 8.49, 5.42 |
| Page | Annual_Report | Annual Report |  |  |  | 0.23, 0.34, 8.30, 5.03 |
| CommandButton | Annual_Report_Product_Inventory_Summary | Product Inventory Summary... |  |  | Click | 0.25, 0.46, 2.00, 0.00 |
| CommandButton | Annual_Report_Product_Inventory_Detailed | Product Inventory Detailed... |  |  | Click | 0.25, 1.00, 2.00, 0.00 |
| CommandButton | Accomplishment_Report | Accomplishment Report |  |  | Click | 0.25, 1.27, 2.00, 0.00 |
| CommandButton | Sowing_Request_Reports | Sowing Request Reports... |  |  | Click | 0.25, 1.81, 2.00, 0.00 |
| CommandButton | Annual_Report_Product_Inventory_Summary_by_class_species | Product Inventory Summary2... |  |  | Click | 0.25, 0.73, 2.00, 0.00 |
| CommandButton | Balance_By_End_Date_no_net | Plant Gross Est. by End Date... |  |  | Click | 0.25, 2.08, 2.00, 0.00 |
| CommandButton | Accomplishment_Report_Region | Accomplishment Report - Region |  |  | Click | 0.25, 1.54, 2.00, 0.00 |
| Page | Misc 2 Tab | Tree Book |  |  |  | 0.23, 0.34, 8.30, 5.03 |
| CommandButton | CmdTreeBook | Tree Book Inventory Report |  |  | Click | 0.25, 0.46, 2.00, 0.00 |
| CommandButton | Plant_Quarterly_Report | "Tree"  Book Inventory Report... |  |  | Click | 0.25, 0.73, 2.00, 0.00 |
| CommandButton | Plant_Inventory_Reports | Plant  Inventory Reports... |  |  | Click | 0.25, 1.00, 2.00, 0.00 |
| Page | Misc 3 Tab | Contracts, Billing  etc. |  |  |  | 0.23, 0.34, 8.30, 5.03 |
| CommandButton | Contract_Payment_Estimate_Invoice | Contract Pay Est FS-6300-30... |  |  | Click | 0.25, 2.35, 2.00, 0.00 |
| CommandButton | Non_WCF_Billing_Report | Non-WCF Storage Billing... |  |  | Click | 2.30, 0.45, 2.00, 0.00 |
| CommandButton | Contract_Work_Order | Contract Work Order FS-6300-12... |  |  | Click | 0.25, 2.62, 2.00, 0.00 |
| CommandButton | NMIS_Product_Projected_Income | Plant Projected Income Sum1... |  |  | Click | 4.35, 0.45, 2.00, 0.00 |
| CommandButton | NMIS_Product_Projected_Income_Sum2 | Plant Projected Income sum2... |  |  | Click | 4.35, 0.72, 2.00, 0.00 |
| CommandButton | NMIS_Product_Projected_Income_by_Lot1 | Plant Projected Income by Lot1... |  |  | Click | 4.35, 0.99, 2.00, 0.00 |
| CommandButton | NMIS_Product_Projected_Income_by_Lot2 | Plant Projected Income by Lot2... |  |  | Click | 4.35, 1.26, 2.00, 0.00 |
| CommandButton | NMIS_Product_Projected_Income_Cont_from_BR | Cont Projected Income from BR... |  |  | Click | 4.35, 1.53, 2.00, 0.00 |
| CommandButton | NMIS_PRODUCT_Projected_Charges_by_Unit_Category | Plant Projected Charges2... |  |  | Click | 6.41, 0.73, 2.00, 0.00 |
| CommandButton | NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot | Plant Projected Charges1... |  |  | Click | 6.41, 0.45, 2.00, 0.00 |
| CommandButton | NMIS_PRODUCT_Projected_Charges_by_Unit | Plant Projected Charges3... |  |  | Click | 6.41, 1.00, 2.00, 0.00 |
| CommandButton | NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot | Plant Projected Charges4... |  |  | Click | 6.41, 1.27, 2.00, 0.00 |
| CommandButton | NMIS_PRODUCT_Projected_Charges_by_Category_Unit | Plant Projected Charges5... |  |  | Click | 6.41, 1.54, 2.00, 0.00 |
| CommandButton | NMIS_PRODUCT_Projected_Charges_by_Category_Unit2 | Plant Projected Charges6... |  |  | Click | 6.41, 1.81, 2.00, 0.00 |
| CommandButton | Contract_Payment | Process Pay Est Calculations... |  |  | Click | 0.25, 2.08, 2.00, 0.00 |
| CommandButton | Review_Orders_without_Contract_Items2 | Review Orders -  No Contact Item |  |  | Click | 0.25, 0.73, 2.00, 0.00 |
| CommandButton | Review_Double_sort_CI2 | Review Orders - Double Sort CI |  |  | Click | 0.25, 1.27, 2.00, 0.00 |
| CommandButton | Review_Order_Contract_Item2 | Review Orders - Review Ctr Item |  |  | Click | 0.25, 1.00, 2.00, 0.00 |
| CommandButton | CmdProofAll | Review All Processing Data... |  |  | Click | 0.25, 0.46, 2.00, 0.00 |
| CommandButton | Review_Order_Act_vs_Activity_AC | Review Activity Codes O vs A |  |  | Click | 0.25, 1.54, 2.00, 0.00 |
| CommandButton | Sowing_Request_Reports2 | Sowing Request Reports... |  |  | Click | 4.35, 1.81, 2.00, 0.00 |
| CommandButton | Review_Order_Act_vs_Transaction | Review Activity Codes A vs T |  |  | Click | 0.25, 1.81, 2.00, 0.00 |

## Code-behind (VBA)

```vb
Private Sub Accomplishment_Report_Click()

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "associates1 mt"
    DoCmd.OpenQuery "associates2 at"
    DoCmd.OpenQuery "ACCOMPLISHMENT mt"
    DoCmd.OpenQuery "ACCOMPLISHMENT2 at"
    DoCmd.OpenQuery "ACCOMPLISHMENT3 at"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport "ACCOMPLISHMENT_REPORT", acViewPreview
    
End Sub

Private Sub Accomplishment_Report_Region_Click()

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "associates1 mt"
    DoCmd.OpenQuery "associates2 at"
    DoCmd.OpenQuery "ACCOMPLISHMENT_region mt"
    DoCmd.OpenQuery "ACCOMPLISHMENT2_region at"
    DoCmd.OpenQuery "ACCOMPLISHMENT3_region at"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport "ACCOMPLISHMENT_REPORT_region", acViewPreview
    
End Sub

Private Sub Annual_Report_Product_Inventory_Detailed_Click()

    Dim stDocName As String

    stDocName = "Annual_Report_Plant_Inventory_Detailed_Summary report"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Annual_Report_Product_Inventory_Summary_by_class_species_Click()
On Error GoTo Err_Annual_Report_Product_Inventory_Summary_by_class_species_Click

    Dim stDocName As String

    stDocName = "Annual_Report_Plant_Inventory_Summary_by_class_species report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Annual_Report_Product_Inventory_Summary_by_class_species_Click:
    Exit Sub

Err_Annual_Report_Product_Inventory_Summary_by_class_species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Annual_Report_Product_Inventory_Summary_by_class_species_Click
    
End Sub

Private Sub Annual_Report_Product_Inventory_Summary_Click()
On Error GoTo Err_Annual_Report_Product_Inventory_Summary_Click

    Dim stDocName As String

    stDocName = "Annual_Report_Plant_Inventory_Summary report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Annual_Report_Product_Inventory_Sum:
    Exit Sub

Err_Annual_Report_Product_Inventory_Summary_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Annual_Report_Product_Inventory_Sum
    
End Sub

Private Sub Balance_By_End_Date_no_net_Click()
On Error GoTo Err_Balance_By_End_Date_no_net_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Balances_By_Age_Class_and_End_Date2_no_net"
    DoCmd.OpenReport stDocName, acPreview

Exit_Balance_By_End_Date_no_net_Click:
    Exit Sub

Err_Balance_By_End_Date_no_net_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Balance_By_End_Date_no_net_Click
    
End Sub

Private Sub CmdProofAll_Click()
On Error GoTo Err_CmdProofAll_Click

    stDocName = "PROOF_ALL_From_Billing_Form"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdProofAll_Click:
    Exit Sub

Err_CmdProofAll_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdProofAll_Click
    
End Sub

Private Sub CmdTreeBook_Click()
On Error GoTo Err_CmdTreeBook_Click

   '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "TREEBOOK_1 mt"
    DoCmd.OpenQuery "TREEBOOK_2 at"
    DoCmd.OpenQuery "TREEBOOK_3 at"
    DoCmd.OpenQuery "TREEBOOK_4 at"
    DoCmd.OpenQuery "TREEBOOK_SHIP at"

    Dim stDocName As String

    stDocName = "TREEBOOK"
    DoCmd.SendObject acReport, stDocName
    
    DoCmd.SetWarnings True

Exit_CmdTreeBook_Click:
    Exit Sub

Err_CmdTreeBook_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdTreeBook_Click
    
End Sub

Private Sub Contract_Payment_Click()

    'DoCmd.SetWarnings False
    'DoCmd.OpenQuery "nmis_pack_amounts_del"
    'DoCmd.OpenQuery "nmis_pack_amounts_ins"
    'DoCmd.OpenQuery "nmis_pack_amount_new_net1"
    'DoCmd.OpenQuery "nmis_pack_amount_new_net"
    'DoCmd.OpenQuery "nmis_pack_amounts_update"
    'DoCmd.OpenQuery "nmis_pack_payment_del"
    'DoCmd.OpenQuery "nmis_pack_payment_ins"
    'DoCmd.OpenReport "PROCESS_PAYMENT", acPreview
    'DoCmd.OpenQuery "PROCESSING_INCREMENTAL_TEMP_MT"
    'DoCmd.OpenReport "PROCESS_PAYMENT_INCREMENTAL", acPreview
    'DoCmd.SetWarnings True
    'PROCESS_PAYMENT_ESTIMATE_INVOICE
    
    Dim stDocName As String

    stDocName = "PROCESS_PAYMENT_ESTIMATE_INVOICE"
    DoCmd.OpenForm stDocName
  
End Sub

Private Sub Contract_Payment_Estimate_Invoice_Click()

    Dim stDocName As String

    stDocName = "Contract_Payment_Estimate_Invoice"
    DoCmd.OpenForm stDocName
    Forms![Contract_Payment_Estimate_Invoice]![Processing_Calcs].Visible = True
    Forms![Contract_Payment_Estimate_Invoice]!Update_Lift_Items.Visible = True
    Forms![Contract_Payment_Estimate_Invoice]!Update_Pack_Items.Visible = True

End Sub

Private Sub Contract_Work_Order_Click()

    Dim stDocName As String

    stDocName = "Contract_Work_Order"
    DoCmd.OpenForm stDocName
  
End Sub

Private Sub NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Click()
On Error GoTo Err_NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_Projected_Charges_by_Category_Unit"
    DoCmd.OpenReport stDocName, acViewPreview
            
Exit_NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Click:
    Exit Sub

Err_NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Click
End Sub

Private Sub NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot_Click()
On Error GoTo Err_NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot"
    DoCmd.OpenReport stDocName, acViewPreview
            
Exit_NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot_Click:
    Exit Sub

Err_NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot_Click
End Sub

Private Sub NMIS_PRODUCT_Projected_Charges_by_Category_Unit2_Click()
On Error GoTo Err_NMIS_PRODUCT_Projected_Charges_by_Category_Unit2_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_Projected_Charges_by_Category_Unit2"
    DoCmd.OpenReport stDocName, acViewPreview
            
Exit_NMIS_PRODUCT_Projected_Charges_by_Category_Unit2_Click:
    Exit Sub

Err_NMIS_PRODUCT_Projected_Charges_by_Category_Unit2_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_PRODUCT_Projected_Charges_by_Category_Unit2_Click
End Sub

Private Sub NMIS_Product_Projected_Income_by_Lot1_Click()
On Error GoTo Err_NMIS_Product_Projected_Income_by_Lot1_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_Projected_Income_by_lot"
    DoCmd.OpenReport stDocName, acViewPreview
            
Exit_NMIS_Product_Projected_Income_by_Lot1_Click:
    Exit Sub

Err_NMIS_Product_Projected_Income_by_Lot1_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_Product_Projected_Income_by_Lot1_Click
    
End Sub

Private Sub NMIS_Product_Projected_Income_by_Lot2_Click()
On Error GoTo Err_NMIS_Product_Projected_Income_by_Lot2_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_Projected_Income_by_lot2"
    DoCmd.OpenReport stDocName, acViewPreview
            
Exit_NMIS_Product_Projected_Income_by_Lot2_Click:
    Exit Sub

Err_NMIS_Product_Projected_Income_by_Lot2_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_Product_Projected_Income_by_Lot2_Click
    
End Sub

Private Sub NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Click()
On Error GoTo Err_NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_Projected_Charges_by_Unit_Category"
    DoCmd.OpenReport stDocName, acViewPreview
            
Exit_NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Click:
    Exit Sub

Err_NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Click
    
End Sub

Private Sub NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot_Click()
On Error GoTo Err_NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot"
    DoCmd.OpenReport stDocName, acViewPreview
            
Exit_NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot_Click:
    Exit Sub

Err_NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot_Click
End Sub

Private Sub NMIS_PRODUCT_Projected_Charges_by_Unit_Click()
On Error GoTo Err_NMIS_PRODUCT_Projected_Charges_by_Unit_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_Projected_Charges_by_Unit"
    DoCmd.OpenReport stDocName, acViewPreview
            
Exit_NMIS_PRODUCT_Projected_Charges_by_Unit_Click:
    Exit Sub

Err_NMIS_PRODUCT_Projected_Charges_by_Unit_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_PRODUCT_Projected_Charges_by_Unit_Click
End Sub

Private Sub NMIS_Product_Projected_Income_Click()
On Error GoTo Err_NMIS_Product_Projected_Income_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_Projected_Income"
    DoCmd.OpenReport stDocName, acViewPreview
            
Exit_NMIS_Product_Projected_Income_Click:
    Exit Sub

Err_NMIS_Product_Projected_Income_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_Product_Projected_Income_Click
    
End Sub

Private Sub NMIS_Product_Projected_Income_Cont_from_BR_Click()
On Error GoTo Err_NMIS_Product_Projected_Income_Cont_from_BR_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_Projected_Container_Income_from_Bareroot_by_lot"
    DoCmd.OpenReport stDocName, acViewPreview
    
Exit_NMIS_Product_Projected_Income_Cont_from_BR:
    Exit Sub

Err_NMIS_Product_Projected_Income_Cont_from_BR_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_Product_Projected_Income_Cont_from_BR
    
End Sub

Private Sub NMIS_Product_Projected_Income_Sum2_Click()
On Error GoTo Err_NMIS_Product_Projected_Income_Sum2_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_Projected_Income2"
    DoCmd.OpenReport stDocName, acViewPreview
        
Exit_NMIS_Product_Projected_Income_Sum2_Click:
    Exit Sub

Err_NMIS_Product_Projected_Income_Sum2_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_Product_Projected_Income_Sum2_Click
    
End Sub

Private Sub Non_WCF_Billing_Report_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Non_WCF_Storage_Billing_Report"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

End Sub

Private Sub Plant_Inventory_Reports_Click()
On Error GoTo Err_Plant_Inventory_Reports_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "PLANT_INVENTORY_REPORTS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Plant_Inventory_Reports_Click:
    Exit Sub

Err_Plant_Inventory_Reports_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Plant_Inventory_Reports_Click
    
End Sub

Private Sub Plant_Quarterly_Report_Click()
    Dim stDocName As String

    stDocName = "Plant_Quarterly_Report"
    
    DoCmd.OpenForm stDocName
    
End Sub

Private Sub Review_Double_sort_CI2_Click()

    Dim stDocName As String

    stDocName = "Review_Orders_DBSRT_Contract_Items"
    DoCmd.OpenQuery stDocName ', acPreview
    
End Sub

Private Sub Review_Order_Act_vs_Activity_AC_Click()

    Dim stDocName As String

    stDocName = "Review_Pack_Activities_Not_Equal_Order"
    DoCmd.OpenQuery stDocName ', acPreview
    
End Sub

Private Sub Review_Order_Act_vs_Transaction_Click()

    Dim stDocName As String

    stDocName = "Review_Pack_Activities_vs_ActivityCI_NE_TransactionCI"
    DoCmd.OpenQuery stDocName ', acPreview
    
End Sub

Private Sub Review_Order_Contract_Item2_Click()

    Dim stDocName As String

    stDocName = "NMIS_ORDERS Review_CItems"
    DoCmd.OpenQuery stDocName ', acPreview
    
End Sub

Private Sub Review_Orders_without_Contract_Items2_Click()

    Dim stDocName As String

    stDocName = "NMIS_ORDERS Without_CItems"
    DoCmd.OpenQuery stDocName ', acPreview

End Sub

Private Sub Sowing_Request_Reports_Click()
On Error GoTo Err_Sowing_Request_Reports_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "SOW_REQUEST_REPORTS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Sowing_Request_Reports_Click:
    Exit Sub

Err_Sowing_Request_Reports_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Sowing_Request_Reports_Click
    
End Sub

Private Sub Sowing_Request_Reports2_Click()
On Error GoTo Err_Sowing_Request_Reports2_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "SOW_REQUEST_REPORTS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Sowing_Request_Reports2_Click:
    Exit Sub

Err_Sowing_Request_Reports2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Sowing_Request_Reports2_Click
    
End Sub
```
