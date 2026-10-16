# Form: Reports_Menu_Production Subform

**Caption:** Reports_Menu_Production Subform  
**Record source:**

```sql
NMIS_FISCAL_YEARS
```

**Backend tables referenced:** `NMIS_FISCAL_YEARS`  
**Embedded in:** `Form:REPORTS Form`  
**Opens:** `Form:**NMIS_Source_Non-WCF_Storage_Billing_Report`, `Form:AgreementLotSowingByDaterange`, `Form:Balances_By_Age_Class_and_End_Date`, `Form:Balances_By_Age_Class_and_End_Date2`, `Form:Balances_By_Age_Class_and_End_Date2_no_net`, `Form:Balances_By_Age_Class_and_End_Date_w_Lots`, `Form:BeginFY_EndFY_Associate_Species_Input_Inv_SPD`, `Form:Clients_Not_Currently_Growing`, `Form:Field_Form_Plants`, `Form:Field_Form_Plants_For_Inventory_Sizing`, `Form:Field_Form_Propagule`, `Form:Field_Form_Propagule_Condensed_by_Client`, `Form:Field_Form_Propagule_Condensed_by_Species`, `Form:Field_Form_Propagule_Condensed_w_acres`, `Form:Field_Form_Propagule_Landscape_Legal`, `Form:Field_Form_Propagule_Landscape_letter`, `Form:Field_Form_Propagule_by_ID_Condensed`, `Form:Field_Form_Propagule_for_Xcel`, `Form:Field_Location_Worksheet`, `Form:Field_Map Form`, `Form:Field_Tags`, `Form:Field_tag_pairs_TP_BR`, `Form:Field_tag_pairs_TP_BRCO`, `Form:Inv_act_tot_vs_trans_total_checklist`, `Form:NMIS_AGREEMENTS_Holdover_Report`, `Form:NMIS_AGREEMENTS_Holdover_Report_by_product`, `Form:NMIS_AGREEMENTS_wo_sow_xplt_xfer_Report`, `Form:NMIS_AGREEMENT_LOTS_REQUEST_SUMMARY`, `Form:NMIS_AGREEMENT_LOTS_Report`, `Form:NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE`, `Form:NMIS_AGREEMENT_LOT_SELECT`, `Form:NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check`, `Form:NMIS_ASSOCIATES_AND_CONTACTS_current_fy_CHECKLIST`, `Form:NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_growing_CHECKLIST`, `Form:NMIS_PRODUCT_INVENTORY_Client_Summary_Report`, `Form:NMIS_PRODUCT_INVENTORY_FORM`, `Form:NMIS_PRODUCT_INVENTORY_MATRIX`, `Form:NMIS_PRODUCT_INVENTORY_Summary_Report`, `Form:NMIS_PRODUCT_INVENTORY_byAgeClassLongSumByParent_Report`, `Form:NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_Report`, `Form:NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate2_Report`, `Form:NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate_Report`, `Form:NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_Loc`, `Form:NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_contact`, `Form:NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report`, `Form:NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report2`, `Form:NMIS_PRODUCT_INVENTORY_by_Age_Class_Report`, `Form:NMIS_PRODUCT_INVENTORY_by_Age_Class_Summary_Report`, `Form:NMIS_PRODUCT_INVENTORY_by_end_fy_Summary_Report`, `Form:NMIS_PRODUCT_INVENTORY_by_end_fy_Summary_Report_w_parent`, `Form:NMIS_SOURCE_Inventory_wtotals_and_grow_est Report`, `Form:NMIS_SOWING_ORDER`, `Form:Plant_Inventory_Worksheet_Blank`, `Form:Plant_Inventory_Worksheets Form`, `Form:Product_Inventory_Daily_Checklist`, `Form:Request_Checklist_Summary_by_Age_Class`, `Form:Request_Checklist_by_Age_Class`, `Form:Request_Checklist_by_Age_Class_End_Year`, `Form:Request_Checklist_by_Age_Class_End_Year_Summary`, `Form:SOW_REQUEST_REPORTS`, `Form:Source_Material_Work_List`, `Form:Source_Material_Work_Order_By_Lot_ID_Range`, `Form:SowTrans_act_tot_vs_trans_total_checklist`, `Form:Stock_Location_Worksheet`, `Form:Stock_Location_Worksheet_Container`, `Form:Stock_Location_Worksheet_id_change`, `Form:Transplant_Checklist`, `Form:Transplant_Checklist_Spreadsheet Query`, `Form:Transplant_Checklist_Spreadsheet_fieldform Query`, `Form:Transplant_Checklist_W_Subtotals`, `Form:Transplant_Checklist_by_Stocktype_and_Species`, `Form:Transplant_Checklist_by_Stocktype_and_Species_W_Subtotals`, `Form:foreign_Source_Request`, `Form:transaction_Totals_by_End_FY_location_Type_and_Product_Class`, `Form:transaction_Totals_by_location`, `Form:transaction_Totals_by_location_Type`, `Form:transaction_Totals_by_location_Type_Agreement_Lot_TP`, `Form:transaction_Totals_by_location_Type_and_Product_Class`, `Report:**NMIS_Source_Non-WCF_Storage_Billing_Report`, `Report:AgreementLotSowingByDaterange`, `Report:Balances_By_Age_Class_and_End_Date`, `Report:Balances_By_Age_Class_and_End_Date2`, `Report:Balances_By_Age_Class_and_End_Date2_no_net`, `Report:Balances_By_Age_Class_and_End_Date_w_Lots`, `Report:BeginFY_EndFY_Associate_Species_Input_Inv_SPD`, `Report:Clients_Not_Currently_Growing`, `Report:Field_Form_Plants`, `Report:Field_Form_Plants_For_Inventory_Sizing`, `Report:Field_Form_Propagule`, `Report:Field_Form_Propagule_Condensed_by_Client`, `Report:Field_Form_Propagule_Condensed_by_Species`, `Report:Field_Form_Propagule_Condensed_w_acres`, `Report:Field_Form_Propagule_Landscape_Legal`, `Report:Field_Form_Propagule_Landscape_letter`, `Report:Field_Form_Propagule_by_ID_Condensed`, `Report:Field_Form_Propagule_for_Xcel`, `Report:Field_Location_Worksheet`, `Report:Field_Map Form`, `Report:Field_Tags`, `Report:Field_tag_pairs_TP_BR`, `Report:Field_tag_pairs_TP_BRCO`, `Report:Inv_act_tot_vs_trans_total_checklist`, `Report:NMIS_AGREEMENTS_Holdover_Report`, `Report:NMIS_AGREEMENTS_Holdover_Report_by_product`, `Report:NMIS_AGREEMENTS_wo_sow_xplt_xfer_Report`, `Report:NMIS_AGREEMENT_LOTS_REQUEST_SUMMARY`, `Report:NMIS_AGREEMENT_LOTS_Report`, `Report:NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE`, `Report:NMIS_AGREEMENT_LOT_SELECT`, `Report:NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check`, `Report:NMIS_ASSOCIATES_AND_CONTACTS_current_fy_CHECKLIST`, `Report:NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_growing_CHECKLIST`, `Report:NMIS_PRODUCT_INVENTORY_Client_Summary_Report`, `Report:NMIS_PRODUCT_INVENTORY_FORM`, `Report:NMIS_PRODUCT_INVENTORY_MATRIX`, `Report:NMIS_PRODUCT_INVENTORY_Summary_Report`, `Report:NMIS_PRODUCT_INVENTORY_byAgeClassLongSumByParent_Report`, `Report:NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_Report`, `Report:NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate2_Report`, `Report:NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate_Report`, `Report:NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_Loc`, `Report:NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_contact`, `Report:NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report`, `Report:NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report2`, `Report:NMIS_PRODUCT_INVENTORY_by_Age_Class_Report`, `Report:NMIS_PRODUCT_INVENTORY_by_Age_Class_Summary_Report`, `Report:NMIS_PRODUCT_INVENTORY_by_end_fy_Summary_Report`, `Report:NMIS_PRODUCT_INVENTORY_by_end_fy_Summary_Report_w_parent`, `Report:NMIS_SOURCE_Inventory_wtotals_and_grow_est Report`, `Report:NMIS_SOWING_ORDER`, `Report:Plant_Inventory_Worksheet_Blank`, `Report:Plant_Inventory_Worksheets Form`, `Report:Product_Inventory_Daily_Checklist`, `Report:Request_Checklist_Summary_by_Age_Class`, `Report:Request_Checklist_by_Age_Class`, `Report:Request_Checklist_by_Age_Class_End_Year`, `Report:Request_Checklist_by_Age_Class_End_Year_Summary`, `Report:SOW_REQUEST_REPORTS`, `Report:Source_Material_Work_List`, `Report:Source_Material_Work_Order_By_Lot_ID_Range`, `Report:SowTrans_act_tot_vs_trans_total_checklist`, `Report:Stock_Location_Worksheet`, `Report:Stock_Location_Worksheet_Container`, `Report:Stock_Location_Worksheet_id_change`, `Report:Transplant_Checklist`, `Report:Transplant_Checklist_Spreadsheet Query`, `Report:Transplant_Checklist_Spreadsheet_fieldform Query`, `Report:Transplant_Checklist_W_Subtotals`, `Report:Transplant_Checklist_by_Stocktype_and_Species`, `Report:Transplant_Checklist_by_Stocktype_and_Species_W_Subtotals`, `Report:foreign_Source_Request`, `Report:transaction_Totals_by_End_FY_location_Type_and_Product_Class`, `Report:transaction_Totals_by_location`, `Report:transaction_Totals_by_location_Type`, `Report:transaction_Totals_by_location_Type_Agreement_Lot_TP`, `Report:transaction_Totals_by_location_Type_and_Product_Class`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TabControl | TabCtl2 |  |  |  |  | 0.16, 0.08, 8.50, 6.03 |
| Page | Agreements Tab | Agreements |  |  |  | 0.25, 0.38, 8.31, 5.65 |
| CommandButton | Source Lot Work Order | Source Withdrawal Request... |  |  | Click | 2.31, 0.46, 2.00, 0.00 |
| CommandButton | Agreement Lots | Agreement Confirmations... |  |  | Click | 0.25, 0.46, 2.00, 0.00 |
| CommandButton | Foreign Source Request | Foreign Source Request... |  |  | Click | 2.31, 1.00, 2.00, 0.00 |
| CommandButton | Lots_for_Transplant_Checklist | Field Transplants... |  |  | Click | 2.31, 1.27, 2.00, 0.00 |
| CommandButton | Agreement Lots Held Over - Update | Agreement Lots Held Over... |  |  |  | 0.25, 2.62, 2.00, 0.00 |
| CommandButton | Agreement_Lots_FY_Summary | Agreement Lots FY Summary |  |  | Click | 0.25, 2.35, 2.00, 0.00 |
| CommandButton | Lots_for_Transplant_Checklist_with_totals | Field Transplants w/Totals... |  |  | Click | 2.31, 1.54, 2.00, 0.00 |
| CommandButton | Agreement_Lot_Summary_by_Client | Agreement Lot Sum by Client... |  |  | Click | 0.25, 1.27, 2.00, 0.00 |
| CommandButton | Agreement_Lot_Summary_by_Age_Class | Agreement Lot Sum by  Class |  |  | Click | 0.25, 1.54, 2.00, 0.00 |
| CommandButton | Request_Checklist_by_Age_Class_End_Year_Summary | Agreement Lot Sum  by End FY... |  |  | Click | 0.25, 2.08, 2.00, 0.00 |
| CommandButton | Request_Checklist_by_Age_Class_End_Year | Agreement Lots by End FY... |  |  | Click | 0.25, 1.81, 2.00, 0.00 |
| CommandButton | Sowing_Request_Reports | Sowing Request Reports... |  |  | Click | 0.25, 3.17, 2.00, 0.00 |
| CommandButton | Source Lot Work Order_list | Source Withdrawal List... |  |  | Click | 2.31, 0.73, 2.00, 0.00 |
| CommandButton | Lots_for_Transplant_Spreadsheet | Field Transplant  XCEL |  |  | Click | 2.31, 2.35, 2.00, 0.00 |
| CommandButton | Lots_for_Transplant_Spreadsheet_for Field | Field Transplant  XCEL Field Form |  |  | Click | 2.31, 2.62, 2.00, 0.00 |
| CommandButton | Lots_for_Transplant_Checklist_by_Stocktype_Species | Field Transplants 2... |  |  | Click | 2.31, 1.81, 2.00, 0.00 |
| CommandButton | Lots_for_Transplant_Checklist_by_Stocktype_Species_wTotals | Field Transplants 2 w/Totals... |  |  | Click | 2.31, 2.08, 2.00, 0.00 |
| CommandButton | Contacts_for_Current_Sow_Req | Contacts for Current Crop... |  |  | Click | 0.25, 3.44, 2.00, 0.00 |
| CommandButton | Agreement Lots Held Over - Update_By Product | Agreement Lots Held Over2... |  |  |  | 0.25, 2.90, 2.00, 0.00 |
| CommandButton | Open_Sowing_Order_Form | Edit Sowing Group Order |  |  | Click | 2.31, 2.90, 2.00, 0.00 |
| CommandButton | Agreement Lots2 | Agreement Lot Sow Order... |  |  | Click | 0.25, 1.00, 2.00, 0.00 |
| CommandButton | clients_not_currently_growing | Clients Not Currently Growing |  |  |  | 0.25, 3.98, 2.00, 0.00 |
| CommandButton | Contacts_for_Current_fy_Sow_Req | Contacts for Current Begin FY... |  |  | Click | 0.25, 3.71, 2.00, 0.00 |
| CommandButton | NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check | Lot Totals <> Agreement Totals |  |  | Click | 0.25, 0.73, 2.00, 0.00 |
| Page | Activities Tab | Activities |  |  |  | 0.25, 0.38, 8.31, 5.65 |
| CommandButton | Agreement_lot_Activities_Transactions | Agreement Lot Act/Trans... |  |  | Click | 0.25, 0.46, 2.00, 0.00 |
| CommandButton | Agreement_lot_Act_Tran_Balances | Agreemt Lot Act/Trans Balance... |  |  | Click | 0.25, 0.73, 2.00, 0.00 |
| CommandButton | Review_SowTrans_Act_vs_Trans_totals | Review Sow Act vs Trans Totals |  |  | Click | 0.25, 1.03, 2.00, 0.00 |
| Page | Inventory Tab | Inventory |  |  |  | 0.25, 0.38, 8.31, 5.65 |
| CommandButton | Open_Plant_Inventory_Worksheet_Form | Product Inventory Worksheets... |  |  | Click | 0.25, 0.46, 2.00, 0.00 |
| CommandButton | Plant_Inventory_Worksheet_Blank | Product Inv Worksheet Blank |  |  | Click | 0.25, 0.73, 2.00, 0.00 |
| CommandButton | Open_Daily_Checklist_Form | Inventory Daily Checklist... |  |  | Click | 0.25, 1.27, 2.00, 0.00 |
| CommandButton | Product_Inventory | Inventory for Associates... |  |  | Click | 6.44, 0.73, 2.00, 0.00 |
| CommandButton | inventory_by_location_type | Totals by Location Type |  |  | Click | 2.31, 0.46, 2.00, 0.00 |
| CommandButton | inventory_by_location_type_and_lot | Totals by Loc Type/Lot... |  |  | Click | 2.31, 1.27, 2.00, 0.00 |
| CommandButton | Product_Inventory_Age_Class Report | Inventory by Age Class... |  |  | Click | 2.31, 2.06, 2.00, 0.00 |
| CommandButton | Product_Inventory_Age_Class_Summary_Report | Inv Summary Age Class Cond |  |  | Click | 2.31, 4.47, 2.00, 0.00 |
| CommandButton | Inventory_Report_by_End_FY | Regional Inv Sum by End FY... |  |  | Click | 2.31, 4.74, 2.00, 0.00 |
| CommandButton | inventory_by_location_type_and_lot3 | Transplant Totals by Lot |  |  | Click | 2.31, 1.54, 2.00, 0.00 |
| CommandButton | Product_Inventory_Age_Class_Detailed_Report2 | Inv Summary Age Class2... |  |  | Click | 2.31, 3.95, 2.00, 0.00 |
| CommandButton | Product_Inventory_Age_Class_Lot_ID_Report | Inv Sum Age Class  Lot ID1... |  |  | Click | 2.31, 2.33, 2.00, 0.00 |
| CommandButton | inventory_by_location_type_product | Totals by Loc Type/Product |  |  | Click | 2.31, 0.73, 2.00, 0.00 |
| CommandButton | Product_Inventory_Spreadsheet | Inv Spreadsheet for Associates... |  |  | Click | 6.44, 1.00, 2.00, 0.00 |
| CommandButton | Product_Inventory_Age_Class_Client | Inv Summary Age Class/Client... |  |  | Click | 2.33, 5.47, 2.00, 0.00 |
| CommandButton | Balance_By_End_Date | Balance by End Date... |  |  | Click | 4.36, 0.46, 2.00, 0.00 |
| CommandButton | Command74 | Inv Sum Age Class  Lot ID2... |  |  | Click | 2.31, 2.60, 2.00, 0.00 |
| CommandButton | Field_Form_For_Inventory_Sizing | Field Form for Counts or Sizing... |  |  | Click | 0.25, 1.00, 2.00, 0.00 |
| CommandButton | Product_Size_Distribution_Report | Inv Size Distrbution Report... |  |  | Click | 6.44, 1.27, 2.00, 0.00 |
| Rectangle | Box79 |  |  |  |  | 6.41, 0.39, 2.10, 4.94 |
| Label | Label80 | Client Reports |  |  |  | 6.98, 0.44, 1.19, 0.24 |
| CommandButton | Product_Inventory_Age_Class_Lot_ID_Report_wClient | Inv Sum Age Class  Lot ID3... |  |  | Click | 2.31, 3.15, 2.00, 0.00 |
| CommandButton | Product_Inventory_Age_Class_Lot_ID_Report_wContact | Inv Sum Age Class  Lot ID4... |  |  | Click | 2.31, 3.42, 2.00, 0.00 |
| CommandButton | Command92 | Inv Sum Age Class  Lot ID2B... |  |  | Click | 2.31, 2.88, 2.00, 0.00 |
| CommandButton | Inventory_By_Age_Class_or_Species | Inventory by Age Class/Species... |  |  | Click | 2.31, 1.80, 2.00, 0.00 |
| CommandButton | Product_Inventory_Age_Class_Detailed_Report | Inv Summary Age Class... |  |  | Click | 2.31, 3.69, 2.00, 0.00 |
| Label | Label104 | <--Needs to be Fixed |  |  |  | 4.33, 5.52, 1.43, 0.19 |
| CommandButton | Review_Inv_Act_vs_Trans_totals | Review Activity vs Trans Totals |  |  | Click | 0.25, 1.54, 2.00, 0.00 |
| CommandButton | Lots_without_sow_xplt_or_xfer_act | Lots Not Mapped Checklist |  |  | Click | 0.25, 1.81, 2.00, 0.00 |
| CommandButton | Balance_By_End_Date2 | Balance by End Date2... |  |  | Click | 4.36, 1.00, 2.00, 0.00 |
| CommandButton | Balance_By_End_Date_no_net | Balance by End Date2b... |  |  | Click | 4.36, 1.27, 2.00, 0.00 |
| CommandButton | Inventory_Report_by_End_FY_w_parent | Regional Inv Sum by End FY2... |  |  | Click | 2.31, 5.01, 2.00, 0.00 |
| CommandButton | Balance_By_End_Date_w_Lots | Balance by End Date w Lots... |  |  | Click | 4.36, 0.73, 2.00, 0.00 |
| CommandButton | inventory_by_End_FY_location_type_product | Totals by End FY/Loc Type/Prod |  |  | Click | 2.31, 1.00, 2.00, 0.00 |
| CommandButton | AgreementLotsBySowDateRange | Agrmt Lot by Sow Date Range.. |  |  | Click | 0.25, 2.06, 2.00, 0.00 |
| CommandButton | Product_Inventory_Parent_and_Age_Class_Detailed_Report | Inv Summary Age Class3... |  |  | Click | 2.29, 4.21, 2.00, 0.00 |
| Page | Labels Tab | Maps/Tags |  |  |  | 0.25, 0.38, 8.31, 5.65 |
| CommandButton | Field Lot Tags | Lot Tags... |  |  | Click | 2.31, 0.46, 2.00, 0.00 |
| CommandButton | Field_Map | Grow Locations Index... |  |  | Click | 0.25, 0.46, 2.00, 0.00 |
| CommandButton | Transplant_Tags_Nursery_Owned | TP Tags - Nursery Owned |  |  | Click | 2.31, 0.72, 2.00, 0.00 |
| CommandButton | Transplant_Tags_Client_Owned | TP Tags - Client Owned/Qplug |  |  | Click | 2.31, 1.00, 2.00, 0.00 |
| CommandButton | Field_Form_Propagule |  Propagule Field Form... |  |  | Click | 0.25, 2.08, 2.00, 0.00 |
| CommandButton | Field_Form_Propagule_Condensed | Propagule Field Form Cond |  |  | Click | 0.25, 2.36, 2.00, 0.00 |
| CommandButton | Field_Form_Plants | Stock Monitor Checklist - Plants... |  |  | Click | 0.25, 1.81, 2.00, 0.00 |
| CommandButton | Field_Form_Propagule_Landscape_Letter | Propagule Field Form Wide |  |  | Click | 0.25, 3.43, 2.00, 0.00 |
| CommandButton | Field_Form_Propagule_Landscape_Legal | Propagule Field Form Wide Legal |  |  | Click | 0.25, 3.70, 2.00, 0.00 |
| CommandButton | Field_Form_Propagule_Condensed_by_Client | Propagule Field Frm by Client... |  |  | Click | 0.25, 2.89, 2.00, 0.00 |
| CommandButton | Field_Form_Propagule_for_Xcel | Propagule Field Form for Xcel |  |  | Click | 0.25, 3.98, 2.00, 0.00 |
| CommandButton | Stock_Location_Worksheet | BR Stock Locationt Worksheet |  |  | Click | 0.25, 1.00, 2.00, 0.00 |
| CommandButton | Stock_Location_Worksheet_id_change | BR Stock Location Worksheet2 |  |  | Click | 0.25, 1.27, 2.00, 0.00 |
| CommandButton | Stock_Location_Worksheet_Container | Cont Stock Location Worksheet |  |  | Click | 0.25, 1.55, 2.00, 0.00 |
| CommandButton | Field_Form_Propagule_by_ID_Condensed | Propagule Field Frm by ID Cond |  |  | Click | 0.25, 2.62, 2.00, 0.00 |
| CommandButton | BR_Grow_Location_Worksheet | BR Loc Planning Worksheet... |  |  | Click | 0.25, 0.73, 2.00, 0.00 |
| CommandButton | Field_Form_Propagule_Condensed_by_Species | Propagule Field Frm by Species... |  |  | Click | 0.25, 3.16, 2.00, 0.00 |
| CommandButton | Lots_without_sow_xplt_or_xfer_act2 | Lots Not Mapped Checklist |  |  | Click | 4.35, 0.46, 2.00, 0.00 |

## Code-behind (VBA)

```vb
Private Sub Agreement_lot_Act_Tran_Balances_Click()

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE"
    DoCmd.OpenForm stDocName
 
End Sub

Private Sub Agreement_lot_Activities_Transactions_Click()

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENT_LOT_SELECT"
    DoCmd.OpenForm stDocName
    
End Sub

Private Sub Agreement_Lot_Summary_by_Age_Class_Click()
    
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Request_Checklist_by_Age_Class"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Agreement_Lot_Summary_by_Client_Click()
    
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_AGREEMENT_LOTS_REQUEST_SUMMARY"
    
    DoCmd.OpenForm stDocName
    
End Sub

Private Sub Agreement_Lots_FY_Summary_Click()
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Request_Checklist_Summary_by_Age_Class"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Agreement_Lots_Held_Over___Update_By_Product_Click()
On Error GoTo Err_Agreement_Lots_Held_Over___Update_By_Product_Click
    
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_AGREEMENTS_Holdover_Report_by_product"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Agreement_Lots_Held_Over___Update_By_Product_Click:
    Exit Sub

Err_Agreement_Lots_Held_Over___Update_By_Product_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Agreement_Lots_Held_Over___Update_By_Product_Click

End Sub

Private Sub Agreement_Lots_Held_Over___Update_Click()
On Error GoTo Err_Agreement_Lots_Held_Over___Update_Click
    
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_AGREEMENTS_Holdover_Report"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Agreement_Lots_Held_Over___Update_Click:
    Exit Sub

Err_Agreement_Lots_Held_Over___Update_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Agreement_Lots_Held_Over___Update_Click

End Sub

Private Sub Command44_Click()
'NMIS_SOURCE_Inventory_wtotals_and_grow_est Report
End Sub

Private Sub Agreement_Lots2_Click()
On Error GoTo Err_Agreement_Lots2_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_AGREEMENT_LOTS_Report"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Agreement_Lots2_Click:
    Exit Sub

Err_Agreement_Lots2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Agreement_Lots2_Click
    
End Sub

Private Sub AgreementLotsBySowDateRange_Click()
On Error GoTo Err_AgreementLotsBySowDateRange_Click

    Dim stDocName As String
    
    DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Location_Processed = True
    DoCmd.SetWarnings True

    stDocName = "AgreementLotSowingByDaterange"
    DoCmd.OpenQuery stDocName, acPreview

Exit_AgreementLotsBySowDateRange_Click:
    Exit Sub

Err_AgreementLotsBySowDateRange_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_AgreementLotsBySowDateRange_Click
    
End Sub

Private Sub Balance_By_End_Date_Click()
On Error GoTo Err_Balance_By_End_Date_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Balances_By_Age_Class_and_End_Date"
    DoCmd.OpenReport stDocName, acPreview

Exit_Balance_By_End_Date_Click:
    Exit Sub

Err_Balance_By_End_Date_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Balance_By_End_Date_Click
    
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

Private Sub Balance_By_End_Date_w_Lots_Click()
On Error GoTo Err_Balance_By_End_Date_w_Lots_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Balances_By_Age_Class_and_End_Date_w_Lots"
    DoCmd.OpenReport stDocName, acPreview

Exit_Balance_By_End_Date_w_Lots_Click:
    Exit Sub

Err_Balance_By_End_Date_w_Lots_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Balance_By_End_Date_w_Lots_Click
    
End Sub

Private Sub Balance_By_End_Date2_Click()
On Error GoTo Err_Balance_By_End_Date2_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Balances_By_Age_Class_and_End_Date2"
    DoCmd.OpenReport stDocName, acPreview

Exit_Balance_By_End_Date2_Click:
    Exit Sub

Err_Balance_By_End_Date2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Balance_By_End_Date2_Click
    
End Sub

Private Sub BR_Grow_Location_Worksheet_Click()
On Error GoTo Err_BR_Grow_Location_Worksheet_Click

    Dim stDocName As String

    stDocName = "Field_Location_Worksheet"
    DoCmd.OpenForm stDocName

Exit_BR_Grow_Location_Worksheet_Click:
    Exit Sub

Err_BR_Grow_Location_Worksheet_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_BR_Grow_Location_Worksheet_Click
End Sub

Private Sub Clients_not_currently_growing_Click()
On Error GoTo Err_Clients_not_currently_growing_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Clients_Not_Currently_Growing"
    DoCmd.OpenReport stDocName, acPreview

Exit_Clients_not_currently_growing_Click:
    Exit Sub

Err_Clients_not_currently_growing_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Clients_not_currently_growing_Click
    
End Sub

Private Sub Command74_Click()

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate_Report"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Command92_Click()

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate2_Report"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Contacts_for_Current_fy_Sow_Req_Click()
On Error GoTo Err_Contacts_for_Current_fy_Sow_Req_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ASSOCIATES_AND_CONTACTS_current_fy_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview

Exit_Contacts_for_Current_fy_Sow_Req_Click:
    Exit Sub

Err_Contacts_for_Current_fy_Sow_Req_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Contacts_for_Current_fy_Sow_Req_Click
    
End Sub

Private Sub Contacts_for_Current_Sow_Req_Click()
On Error GoTo Err_Contacts_for_Current_Sow_Req_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_growing_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview

Exit_Contacts_for_Current_Sow_Req_Click:
    Exit Sub

Err_Contacts_for_Current_Sow_Req_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Contacts_for_Current_Sow_Req_Click
    
End Sub

Private Sub Field_Form_For_Inventory_Sizing_Click()
On Error GoTo Err_Field_Form_For_Inventory_Sizing_Click

    
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Form_Plants_For_Inventory_Sizing"
    
    DoCmd.OpenForm stDocName

Exit_Field_Form_For_Inventory_Sizing_Click:
    Exit Sub

Err_Field_Form_For_Inventory_Sizing_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Form_For_Inventory_Sizing_Click
    
End Sub

Private Sub Field_Form_Plants_Click()
On Error GoTo Err_Field_Form_Plants_Click

    
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Form_Plants"
    
    DoCmd.OpenForm stDocName

Exit_Field_Form_Plants_Click:
    Exit Sub

Err_Field_Form_Plants_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Form_Plants_Click
    
End Sub


Private Sub Field_Form_Propagule_by_ID_Condensed_Click()
On Error GoTo Err_Field_Form_Propagule_by_ID_Condensed_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Form_Propagule_by_ID_Condensed"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Field_Form_Propagule_by_ID_Condensed_Click:
    Exit Sub

Err_Field_Form_Propagule_by_ID_Condensed_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Form_Propagule_by_ID_Condensed_Click
    
End Sub

Private Sub Field_Form_Propagule_Click()
On Error GoTo Err_Field_Form_Propagule_Click


    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Form_Propagule"
    
    DoCmd.OpenReport stDocName, acPreview
Exit_Field_Form_Propagule_Click:
    Exit Sub

Err_Field_Form_Propagule_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Form_Propagule_Click
    

End Sub

Private Sub Field_Form_Propagule_Condensed_by_Client_Click()
On Error GoTo Err_Field_Form_Propagule_Condensed_by_Client_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Form_Propagule_Condensed_by_Client"
    DoCmd.OpenReport stDocName, acPreview

Exit_Field_Form_Propagule_Condensed_by_Client_Click:
    Exit Sub

Err_Field_Form_Propagule_Condensed_by_Client_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Form_Propagule_Condensed_by_Client_Click
    
End Sub

Private Sub Field_Form_Propagule_Condensed_by_Species_Click()
On Error GoTo Err_Field_Form_Propagule_Condensed_by_Species_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Form_Propagule_Condensed_by_Species"
    DoCmd.OpenReport stDocName, acPreview

Exit_Field_Form_Propagule_Condensed_by_Species_Click:
    Exit Sub

Err_Field_Form_Propagule_Condensed_by_Species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Form_Propagule_Condensed_by_Species_Click
    
End Sub

Private Sub Field_Form_Propagule_Condensed_Click()
On Error GoTo Err_Field_Form_Propagule_Condensed_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Form_Propagule_Condensed_w_acres"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Field_Form_Propagule_Condensed_Click:
    Exit Sub

Err_Field_Form_Propagule_Condensed_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Form_Propagule_Condensed_Click

End Sub

Private Sub Field_Form_Propagule_for_Xcel_Click()
On Error GoTo Err_Field_Form_Propagule_for_Xcel_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Form_Propagule_for_Xcel"
    DoCmd.OpenQuery stDocName, acViewPreview

Exit_Field_Form_Propagule_for_Xcel_Click:
    Exit Sub

Err_Field_Form_Propagule_for_Xcel_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Form_Propagule_for_Xcel_Click
End Sub

Private Sub Field_Form_Propagule_Landscape_Legal_Click()
On Error GoTo Err_Field_Form_Propagule_Landscape_Legal_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Form_Propagule_Landscape_Legal"
    
    DoCmd.OpenReport stDocName, acPreview
Exit_Field_Form_Propagule_Landscape_Legal_Click:
    Exit Sub

Err_Field_Form_Propagule_Landscape_Legal_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Form_Propagule_Landscape_Legal_Click
    
End Sub

Private Sub Field_Form_Propagule_Landscape_Letter_Click()
On Error GoTo Err_Field_Form_Propagule_Landscape_Letter_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Form_Propagule_Landscape_letter"
    
    DoCmd.OpenReport stDocName, acPreview
Exit_Field_Form_Propagule_Landscape_Letter_Click:
    Exit Sub

Err_Field_Form_Propagule_Landscape_Letter_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Form_Propagule_Landscape_Letter_Click
    
End Sub

Private Sub Field_Lot_Tags_Click()
On Error GoTo Err_Field_Lot_Tags_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Tags"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Field_Lot_Tags_Click:
    Exit Sub

Err_Field_Lot_Tags_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Lot_Tags_Click
    
End Sub

Private Sub Field_Map_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Map Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

End Sub

Private Sub Inventory_By_Age_Class_or_Species_Click()
On Error GoTo Err_Inventory_By_Age_Class_or_Species_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_FORM"
    DoCmd.OpenForm stDocName
    Forms![NMIS_PRODUCT_INVENTORY_FORM]![Preview_Report_Species_AgeClass].Visible = True
    Forms![NMIS_PRODUCT_INVENTORY_FORM]![Preview_Report_AgeClass_Species].Visible = True
    Forms![NMIS_PRODUCT_INVENTORY_FORM]![Preview_Report_No_Subtotals].Visible = False
    Forms![NMIS_PRODUCT_INVENTORY_FORM]![Preview_Report].Visible = False
    Forms![NMIS_PRODUCT_INVENTORY_FORM]![Preview_Report2].Visible = False

Exit_Inventory_By_Age_Class_or_Species_Click:
    Exit Sub

Err_Inventory_By_Age_Class_or_Species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Inventory_By_Age_Class_or_Species_Click
    
End Sub

Private Sub inventory_by_End_FY_location_type_product_Click()
   
    Dim stLinkCriteria As String

    stDocName = "transaction_Totals_by_End_FY_location_Type_and_Product_Class"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub inventory_by_location_type_and_lot_Click()

    Dim stLinkCriteria As String

    stDocName = "transaction_Totals_by_location"
    DoCmd.OpenForm stDocName
    
End Sub

Private Sub inventory_by_location_type_and_lot3_Click()

    Dim stLinkCriteria As String

    stDocName = "transaction_Totals_by_location_Type_Agreement_Lot_TP"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub inventory_by_location_type_Click()
    
    Dim stLinkCriteria As String

    stDocName = "transaction_Totals_by_location_Type"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub inventory_by_location_type_product_Click()
   
    Dim stLinkCriteria As String

    stDocName = "transaction_Totals_by_location_Type_and_Product_Class"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Inventory_Report_by_End_FY_Click()
    
    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_by_end_fy_Summary_Report"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Inventory_Report_by_End_FY_w_parent_Click()
    
    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_by_end_fy_Summary_Report_w_parent"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Lots_for_Transplant_Checklist_by_Stocktype_Species_Click()
On Error GoTo Err_Lots_for_Transplant_Checklist_by_Stocktype_Species_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Transplant_Checklist_by_Stocktype_and_Species"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    DoCmd.SetWarnings True
    DoCmd.OpenReport stDocName, acPreview

Exit_Lots_for_Transplant_Checklist_by_Stocktype_Species_Click:
    Exit Sub

Err_Lots_for_Transplant_Checklist_by_Stocktype_Species_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_Lots_for_Transplant_Checklist_by_Stocktype_Species_Click
    
End Sub

Private Sub Lots_for_Transplant_Checklist_by_Stocktype_Species_wTotals_Click()
On Error GoTo Err_Lots_for_Transplant_Checklist_by_Stocktype_Species_wTotals_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Transplant_Checklist_by_Stocktype_and_Species_W_Subtotals"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    DoCmd.SetWarnings True
    DoCmd.OpenReport stDocName, acPreview

Exit_Lots_for_Transplant_Checklist_by_Stocktype_Species_wTotals_Click:
    Exit Sub

Err_Lots_for_Transplant_Checklist_by_Stocktype_Species_wTotals_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_Lots_for_Transplant_Checklist_by_Stocktype_Species_wTotals_Click
    
End Sub

Private Sub Lots_for_Transplant_Checklist_Click()
On Error GoTo Err_Lots_for_Transplant_Checklist_Click

    Dim stLinkCriteria As String

    stDocName = "Transplant_Checklist"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    DoCmd.SetWarnings True
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Lots_for_Transplant_Checklist_Click:
    Exit Sub

Err_Lots_for_Transplant_Checklist_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_Lots_for_Transplant_Checklist_Click
End Sub

Private Sub Lots_for_Transplant_Checklist_with_totals_Click()
On Error GoTo Err_Lots_for_Transplant_Checklist_with_totals_Click

    Dim stLinkCriteria As String

    stDocName = "Transplant_Checklist_W_Subtotals"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    DoCmd.SetWarnings True
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Lots_for_Transplant_Checklist_with_totals_Click:
    Exit Sub

Err_Lots_for_Transplant_Checklist_with_totals_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_Lots_for_Transplant_Checklist_with_totals_Click
End Sub

Private Sub Lots_for_Transplant_Spreadsheet_Click()
On Error GoTo Err_Lots_for_Transplant_Spreadsheet_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Transplant_Checklist_Spreadsheet Query"
    DoCmd.OpenQuery stDocName ', acPreview

Exit_Lots_for_Transplant_Spreadsheet_Click:
    Exit Sub

Err_Lots_for_Transplant_Spreadsheet_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lots_for_Transplant_Spreadsheet_Click
    
End Sub

Private Sub Lots_for_Transplant_Spreadsheet_for_Field_Click()
On Error GoTo Err_Lots_for_Transplant_Spreadsheet_for_Field_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Transplant_Checklist_Spreadsheet_fieldform Query"
    DoCmd.OpenQuery stDocName ', acPreview

Exit_Lots_for_Transplant_Spreadsheet_for_Field_Click:
    Exit Sub

Err_Lots_for_Transplant_Spreadsheet_for_Field_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lots_for_Transplant_Spreadsheet_for_Field_Click
    
End Sub

Private Sub Lots_without_sow_xplt_or_xfer_act_Click()
On Error GoTo Err_Lots_without_sow_xplt_or_xfer_act_Click

    Dim stDocName As String
    
    stDocName = "NMIS_AGREEMENTS_wo_sow_xplt_xfer_Report"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Lots_without_sow_xplt_or_xfer_act_Click:
    Exit Sub

Err_Lots_without_sow_xplt_or_xfer_act_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lots_without_sow_xplt_or_xfer_act_Click
    
End Sub

Private Sub Lots_without_sow_xplt_or_xfer_act2_Click()
On Error GoTo Err_Lots_without_sow_xplt_or_xfer_act2_Click

    Dim stDocName As String
    
    stDocName = "NMIS_AGREEMENTS_wo_sow_xplt_xfer_Report"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Lots_without_sow_xplt_or_xfer_act2_Click:
    Exit Sub

Err_Lots_without_sow_xplt_or_xfer_act2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lots_without_sow_xplt_or_xfer_act2_Click
    
End Sub

Private Sub NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check_Click()
On Error GoTo Err_NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check"
    DoCmd.OpenReport stDocName, acViewPreview
    
Exit_NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check_Click:
    Exit Sub

Err_NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check_Click
    
End Sub

Private Sub Open_Plant_Inventory_Worksheet_Form_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Plant_Inventory_Worksheets Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

End Sub

Private Sub Product_Inv_with_grow_est_Click()

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Inventory_wtotals_and_grow_est Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Product_Inventory_Click:
    Exit Sub

End Sub

Private Sub Open_Sowing_Order_Form_Click()
On Error GoTo Err_Open_Sowing_Order_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOWING_ORDER"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Sowing_Order_Form_Click:
    Exit Sub

Err_Open_Sowing_Order_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Sowing_Order_Form_Click
    
End Sub

Private Sub Product_Inventory_Age_Class_Client_Click()
On Error GoTo Err_Product_Inventory_Age_Class_Client_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_INVENTORY_Client_Summary_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Product_Inventory_Age_Class_Client_Click:
    Exit Sub

Err_Product_Inventory_Age_Class_Client_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Inventory_Age_Class_Client_Click
    
End Sub

Private Sub Product_Inventory_Age_Class_Detailed_Report_Click()
On Error GoTo Err_Product_Inventory_Age_Class_Detailed_Report_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Product_Inventory_Age_Class_Detailed_Report_Click:
    Exit Sub

Err_Product_Inventory_Age_Class_Detailed_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Inventory_Age_Class_Detailed_Report_Click
 
End Sub

Private Sub Product_Inventory_Age_Class_Detailed_Report2_Click()
On Error GoTo Err_Product_Inventory_Age_Class_Detailed_Report2_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report2"
    DoCmd.OpenReport stDocName, acPreview

Exit_Product_Inventory_Age_Class_Detailed_Report2_Click:
    Exit Sub

Err_Product_Inventory_Age_Class_Detailed_Report2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Inventory_Age_Class_Detailed_Report2_Click
 
End Sub

Private Sub Product_Inventory_Age_Class_Lot_ID_Report_Click()

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_Report"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Product_Inventory_Age_Class_Lot_ID_Report_wClient_Click()
On Error GoTo Err_Product_Inventory_Age_Class_Lot_ID_Report_wClient_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_Loc"
    DoCmd.OpenReport stDocName, acPreview

Exit_Product_Inventory_Age_Class_Lot_ID_Report_wClient_Click:
    Exit Sub

Err_Product_Inventory_Age_Class_Lot_ID_Report_wClient_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Inventory_Age_Class_Lot_ID_Report_wClient_Click
    
End Sub

Private Sub Product_Inventory_Age_Class_Lot_ID_Report_wContact_Click()
On Error GoTo Err_Product_Inventory_Age_Class_Lot_ID_Report_wContact_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_contact"
    DoCmd.OpenReport stDocName, acPreview

Exit_Product_Inventory_Age_Class_Lot_ID_Report_wContact_Click:
    Exit Sub

Err_Product_Inventory_Age_Class_Lot_ID_Report_wContact_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Inventory_Age_Class_Lot_ID_Report_wContact_Click
    
End Sub

Private Sub Product_Inventory_Age_Class_Report_Click()

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_by_Age_Class_Report"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Product_Inventory_Age_Class_Summary_Report_Click()
    
    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_by_Age_Class_Summary_Report"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Product_Inventory_Parent_and_Age_Class_Detailed_Report_Click()
On Error GoTo Err_Product_Inventory_Parent_and_Age_Class_Detailed_Report_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_byAgeClassLongSumByParent_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Product_Inventory_Parent_and_Age_Class_Detailed_Report_Click:
    Exit Sub

Err_Product_Inventory_Parent_and_Age_Class_Detailed_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Inventory_Parent_and_Age_Class_Detailed_Report_Click
 
End Sub

Private Sub Product_Inventory_Spreadsheet_Click()
On Error GoTo Err_Product_Inventory_Spreadsheet_Click

    Dim stDocName As String

    stDocName = "BeginFY_EndFY_Associate_Species_Input_Inv_SPD"
    DoCmd.OpenForm stDocName
Exit_Product_Inventory_Spreadsheet_Click:
    Exit Sub

Err_Product_Inventory_Spreadsheet_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Inventory_Spreadsheet_Click
    
End Sub

Private Sub Product_Size_Distribution_Report_Click()
On Error GoTo Err_Product_Size_Distribution_Report_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_MATRIX"
    
    DoCmd.OpenForm stDocName
    
Exit_Product_Size_Distribution_Report_Click:
    Exit Sub

Err_Product_Size_Distribution_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Size_Distribution_Report_Click
    
End Sub

Private Sub Request_Checklist_by_Age_Class_End_Year_Click()
    
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Request_Checklist_by_Age_Class_End_Year"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Request_Checklist_by_Age_Class_End_Year_Summary_Click()
    
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Request_Checklist_by_Age_Class_End_Year_Summary"
    DoCmd.OpenReport stDocName, acPreview

End Sub


Private Sub Review_Inv_Act_vs_Trans_totals_Click()
On Error GoTo Err_Review_Inv_Act_vs_Trans_totals_Click

    Dim stDocName As String
    
    stDocName = "Inv_act_tot_vs_trans_total_checklist"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Review_Inv_Act_vs_Trans_totals_Click:
    Exit Sub

Err_Review_Inv_Act_vs_Trans_totals_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Review_Inv_Act_vs_Trans_totals_Click
    
End Sub

Private Sub Review_SowTrans_Act_vs_Trans_totals_Click()
On Error GoTo Err_Review_SowTrans_Act_vs_Trans_totals_Click

    Dim stDocName As String
    
    stDocName = "SowTrans_act_tot_vs_trans_total_checklist"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Review_SowTrans_Act_vs_Trans_totals_Click:
    Exit Sub

Err_Review_SowTrans_Act_vs_Trans_totals_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Review_SowTrans_Act_vs_Trans_totals_Click
    
End Sub

Private Sub Source_Lot_Work_Order_Click()
On Error GoTo Err_Source_Lot_Work_Order_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Source_Material_Work_Order_By_Lot_ID_Range"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Source_Lot_Work_Order_Click:
    Exit Sub

Err_Source_Lot_Work_Order_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Source_Lot_Work_Order_Click
    
End Sub
Private Sub Agreement_Lots_Click()
On Error GoTo Err_Agreement_Lots_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_AGREEMENT_LOTS_Report"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Agreement_Lots_Click:
    Exit Sub

Err_Agreement_Lots_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Agreement_Lots_Click
    
End Sub
Private Sub Foreign_Source_Request_Click()
On Error GoTo Err_Foreign_Source_Request_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "foreign_Source_Request"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Foreign_Source_Request_Click:
    Exit Sub

Err_Foreign_Source_Request_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Foreign_Source_Request_Click
    
End Sub
Private Sub Plant_Inventory_Worksheet_Blank_Click()
On Error GoTo Err_Plant_Inventory_Worksheet_Blank_Click

    Dim stDocName As String

    stDocName = "Plant_Inventory_Worksheet_Blank"
    DoCmd.OpenReport stDocName, acPreview

Exit_Plant_Inventory_Worksheet_Blank_Cli:
    Exit Sub

Err_Plant_Inventory_Worksheet_Blank_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Plant_Inventory_Worksheet_Blank_Cli
    
End Sub
Private Sub Open_Daily_Checklist_Form_Click()
On Error GoTo Err_Open_Daily_Checklist_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Product_Inventory_Daily_Checklist"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Daily_Checklist_Form_Click:
    Exit Sub

Err_Open_Daily_Checklist_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Daily_Checklist_Form_Click
    
End Sub
Private Sub Product_Inventory_Click()
On Error GoTo Err_Product_Inventory_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_FORM"
    DoCmd.OpenForm stDocName
    Forms![NMIS_PRODUCT_INVENTORY_FORM]![Preview_Report_Species_AgeClass].Visible = False
    Forms![NMIS_PRODUCT_INVENTORY_FORM]![Preview_Report_AgeClass_Species].Visible = False
    Forms![NMIS_PRODUCT_INVENTORY_FORM]![Preview_Report_No_Subtotals].Visible = True
    Forms![NMIS_PRODUCT_INVENTORY_FORM]![Preview_Report].Visible = True
    Forms![NMIS_PRODUCT_INVENTORY_FORM]![Preview_Report2].Visible = True

Exit_Product_Inventory_Click:
    Exit Sub

Err_Product_Inventory_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Inventory_Click
    
End Sub
Private Sub Preview_Production_inventory_Summary_Report_Click()
On Error GoTo Err_Preview_Production_inventory_Summary_Report_Click

    Dim stDocName As String

    stDocName = "**NMIS_Source_Non-WCF_Storage_Billing_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Production_inventory_Summar:
    Exit Sub

Err_Preview_Production_inventory_Summary_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Production_inventory_Summar
    
End Sub
Private Sub Preview_Product_Inventory_Summary_Click()
On Error GoTo Err_Preview_Product_Inventory_Summary_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_Summary_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Product_Inventory_Summary_C:
    Exit Sub

Err_Preview_Product_Inventory_Summary_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Product_Inventory_Summary_C
    
End Sub

Private Sub Source_Lot_Work_Order_list_Click()
On Error GoTo Err_Source_Lot_Work_Order_list_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Source_Material_Work_List"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Source_Lot_Work_Order_list_Click:
    Exit Sub

Err_Source_Lot_Work_Order_list_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Source_Lot_Work_Order_list_Click
    
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

Private Sub Stock_Location_Worksheet_Click()
On Error GoTo Err_Stock_Location_Worksheet_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Stock_Location_Worksheet"
    DoCmd.OpenReport stDocName, acPreview

Exit_Stock_Location_Worksheet_Click:
    Exit Sub

Err_Stock_Location_Worksheet_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Stock_Location_Worksheet_Click
    
End Sub

Private Sub Stock_Location_Worksheet_Container_Click()
On Error GoTo Err_Stock_Location_Worksheet_Container_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Stock_Location_Worksheet_Container"
    DoCmd.OpenReport stDocName, acPreview

Exit_Stock_Location_Worksheet_Container_Click:
    Exit Sub

Err_Stock_Location_Worksheet_Container_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Stock_Location_Worksheet_Container_Click
    
End Sub

Private Sub Stock_Location_Worksheet_id_change_Click()
On Error GoTo Err_Stock_Location_Worksheet_id_change_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Stock_Location_Worksheet_id_change"
    DoCmd.OpenReport stDocName, acPreview

Exit_Stock_Location_Worksheet_id_change_Click:
    Exit Sub

Err_Stock_Location_Worksheet_id_change_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Stock_Location_Worksheet_id_change_Click
    
End Sub

Private Sub Transplant_Tags_Client_Owned_Click()
On Error GoTo Err_Transplant_Tags_Client_Owned_Click

    Dim stDocName As String

    stDocName = "Field_tag_pairs_TP_BRCO"
    DoCmd.OpenReport stDocName, acPreview

Exit_Transplant_Tags_Client_Owned_Click:
    Exit Sub

Err_Transplant_Tags_Client_Owned_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Transplant_Tags_Client_Owned_Click
    
End Sub

Private Sub Transplant_Tags_Nursery_Owned_Click()
On Error GoTo Err_Transplant_Tags_Nursery_Owned_Click


    Dim stDocName As String

    stDocName = "Field_tag_pairs_TP_BR"
    DoCmd.OpenReport stDocName, acPreview

Exit_Transplant_Tags_Nursery_Owned_Click:
    Exit Sub

Err_Transplant_Tags_Nursery_Owned_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Transplant_Tags_Nursery_Owned_Click
    
End Sub
```
