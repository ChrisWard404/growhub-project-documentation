# Legacy NMIS forms (reachable only) (part 2 of 2)

Each reachable Access form: caption, menu path, record source SQL, navigation, and every data control with its binding, row-source SQL, tab page and VBA events. "→ GrowHub" shows the mapped GrowHub column and its approval state from the mapping sheet. The VBA code is in the 04_legacy_vba files.

## Form: Reports_Menu_Production Subform
- **Caption:** Reports_Menu_Production Subform
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform
- **Record source:** NMIS_FISCAL_YEARS
- **Backend tables:** NMIS_FISCAL_YEARS
- **Opens:** Form:**NMIS_Source_Non-WCF_Storage_Billing_Report, Form:AgreementLotSowingByDaterange, Form:Balances_By_Age_Class_and_End_Date, Form:Balances_By_Age_Class_and_End_Date2, Form:Balances_By_Age_Class_and_End_Date2_no_net, Form:Balances_By_Age_Class_and_End_Date_w_Lots, Form:BeginFY_EndFY_Associate_Species_Input_Inv_SPD, Form:Clients_Not_Currently_Growing, Form:Field_Form_Plants, Form:Field_Form_Plants_For_Inventory_Sizing, Form:Field_Form_Propagule, Form:Field_Form_Propagule_Condensed_by_Client, Form:Field_Form_Propagule_Condensed_by_Species, Form:Field_Form_Propagule_Condensed_w_acres, Form:Field_Form_Propagule_Landscape_Legal, Form:Field_Form_Propagule_Landscape_letter, Form:Field_Form_Propagule_by_ID_Condensed, Form:Field_Form_Propagule_for_Xcel, Form:Field_Location_Worksheet, Form:Field_Map Form, Form:Field_Tags, Form:Field_tag_pairs_TP_BR, Form:Field_tag_pairs_TP_BRCO, Form:Inv_act_tot_vs_trans_total_checklist, Form:NMIS_AGREEMENTS_Holdover_Report, Form:NMIS_AGREEMENTS_Holdover_Report_by_product, Form:NMIS_AGREEMENTS_wo_sow_xplt_xfer_Report, Form:NMIS_AGREEMENT_LOTS_REQUEST_SUMMARY, Form:NMIS_AGREEMENT_LOTS_Report, Form:NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE, Form:NMIS_AGREEMENT_LOT_SELECT, Form:NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check, Form:NMIS_ASSOCIATES_AND_CONTACTS_current_fy_CHECKLIST, Form:NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_growing_CHECKLIST, Form:NMIS_PRODUCT_INVENTORY_Client_Summary_Report, Form:NMIS_PRODUCT_INVENTORY_FORM, Form:NMIS_PRODUCT_INVENTORY_MATRIX, Form:NMIS_PRODUCT_INVENTORY_Summary_Report, Form:NMIS_PRODUCT_INVENTORY_byAgeClassLongSumByParent_Report, Form:NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_Report, Form:NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate2_Report, Form:NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate_Report, Form:NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_Loc, Form:NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_contact, Form:NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report, Form:NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report2, Form:NMIS_PRODUCT_INVENTORY_by_Age_Class_Report, Form:NMIS_PRODUCT_INVENTORY_by_Age_Class_Summary_Report, Form:NMIS_PRODUCT_INVENTORY_by_end_fy_Summary_Report, Form:NMIS_PRODUCT_INVENTORY_by_end_fy_Summary_Report_w_parent, Form:NMIS_SOURCE_Inventory_wtotals_and_grow_est Report, Form:NMIS_SOWING_ORDER, Form:Plant_Inventory_Worksheet_Blank, Form:Plant_Inventory_Worksheets Form, Form:Product_Inventory_Daily_Checklist, Form:Request_Checklist_Summary_by_Age_Class, Form:Request_Checklist_by_Age_Class, Form:Request_Checklist_by_Age_Class_End_Year, Form:Request_Checklist_by_Age_Class_End_Year_Summary, Form:SOW_REQUEST_REPORTS, Form:Source_Material_Work_List, Form:Source_Material_Work_Order_By_Lot_ID_Range, Form:SowTrans_act_tot_vs_trans_total_checklist, Form:Stock_Location_Worksheet, Form:Stock_Location_Worksheet_Container, Form:Stock_Location_Worksheet_id_change, Form:Transplant_Checklist, Form:Transplant_Checklist_Spreadsheet Query, Form:Transplant_Checklist_Spreadsheet_fieldform Query, Form:Transplant_Checklist_W_Subtotals, Form:Transplant_Checklist_by_Stocktype_and_Species, Form:Transplant_Checklist_by_Stocktype_and_Species_W_Subtotals, Form:foreign_Source_Request, Form:transaction_Totals_by_End_FY_location_Type_and_Product_Class, Form:transaction_Totals_by_location, Form:transaction_Totals_by_location_Type, Form:transaction_Totals_by_location_Type_Agreement_Lot_TP, Form:transaction_Totals_by_location_Type_and_Product_Class, Report:**NMIS_Source_Non-WCF_Storage_Billing_Report, Report:AgreementLotSowingByDaterange, Report:Balances_By_Age_Class_and_End_Date, Report:Balances_By_Age_Class_and_End_Date2, Report:Balances_By_Age_Class_and_End_Date2_no_net, Report:Balances_By_Age_Class_and_End_Date_w_Lots, Report:BeginFY_EndFY_Associate_Species_Input_Inv_SPD, Report:Clients_Not_Currently_Growing, Report:Field_Form_Plants, Report:Field_Form_Plants_For_Inventory_Sizing, Report:Field_Form_Propagule, Report:Field_Form_Propagule_Condensed_by_Client, Report:Field_Form_Propagule_Condensed_by_Species, Report:Field_Form_Propagule_Condensed_w_acres, Report:Field_Form_Propagule_Landscape_Legal, Report:Field_Form_Propagule_Landscape_letter, Report:Field_Form_Propagule_by_ID_Condensed, Report:Field_Form_Propagule_for_Xcel, Report:Field_Location_Worksheet, Report:Field_Map Form, Report:Field_Tags, Report:Field_tag_pairs_TP_BR, Report:Field_tag_pairs_TP_BRCO, Report:Inv_act_tot_vs_trans_total_checklist, Report:NMIS_AGREEMENTS_Holdover_Report, Report:NMIS_AGREEMENTS_Holdover_Report_by_product, Report:NMIS_AGREEMENTS_wo_sow_xplt_xfer_Report, Report:NMIS_AGREEMENT_LOTS_REQUEST_SUMMARY, Report:NMIS_AGREEMENT_LOTS_Report, Report:NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE, Report:NMIS_AGREEMENT_LOT_SELECT, Report:NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check, Report:NMIS_ASSOCIATES_AND_CONTACTS_current_fy_CHECKLIST, Report:NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_growing_CHECKLIST, Report:NMIS_PRODUCT_INVENTORY_Client_Summary_Report, Report:NMIS_PRODUCT_INVENTORY_FORM, Report:NMIS_PRODUCT_INVENTORY_MATRIX, Report:NMIS_PRODUCT_INVENTORY_Summary_Report, Report:NMIS_PRODUCT_INVENTORY_byAgeClassLongSumByParent_Report, Report:NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_Report, Report:NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate2_Report, Report:NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate_Report, Report:NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_Loc, Report:NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_contact, Report:NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report, Report:NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report2, Report:NMIS_PRODUCT_INVENTORY_by_Age_Class_Report, Report:NMIS_PRODUCT_INVENTORY_by_Age_Class_Summary_Report, Report:NMIS_PRODUCT_INVENTORY_by_end_fy_Summary_Report, Report:NMIS_PRODUCT_INVENTORY_by_end_fy_Summary_Report_w_parent, Report:NMIS_SOURCE_Inventory_wtotals_and_grow_est Report, Report:NMIS_SOWING_ORDER, Report:Plant_Inventory_Worksheet_Blank, Report:Plant_Inventory_Worksheets Form, Report:Product_Inventory_Daily_Checklist, Report:Request_Checklist_Summary_by_Age_Class, Report:Request_Checklist_by_Age_Class, Report:Request_Checklist_by_Age_Class_End_Year, Report:Request_Checklist_by_Age_Class_End_Year_Summary, Report:SOW_REQUEST_REPORTS, Report:Source_Material_Work_List, Report:Source_Material_Work_Order_By_Lot_ID_Range, Report:SowTrans_act_tot_vs_trans_total_checklist, Report:Stock_Location_Worksheet, Report:Stock_Location_Worksheet_Container, Report:Stock_Location_Worksheet_id_change, Report:Transplant_Checklist, Report:Transplant_Checklist_Spreadsheet Query, Report:Transplant_Checklist_Spreadsheet_fieldform Query, Report:Transplant_Checklist_W_Subtotals, Report:Transplant_Checklist_by_Stocktype_and_Species, Report:Transplant_Checklist_by_Stocktype_and_Species_W_Subtotals, Report:foreign_Source_Request, Report:transaction_Totals_by_End_FY_location_Type_and_Product_Class, Report:transaction_Totals_by_location, Report:transaction_Totals_by_location_Type, Report:transaction_Totals_by_location_Type_Agreement_Lot_TP, Report:transaction_Totals_by_location_Type_and_Product_Class

**Controls**
- TabControl TabCtl2
- CommandButton Source Lot Work Order "Source Withdrawal Request..." · tab Agreements Tab · events: Click
- CommandButton Agreement Lots "Agreement Confirmations..." · tab Agreements Tab · events: Click
- CommandButton Foreign Source Request "Foreign Source Request..." · tab Agreements Tab · events: Click
- CommandButton Lots_for_Transplant_Checklist "Field Transplants..." · tab Agreements Tab · events: Click
- CommandButton Agreement Lots Held Over - Update "Agreement Lots Held Over..." · tab Agreements Tab
- CommandButton Agreement_Lots_FY_Summary "Agreement Lots FY Summary" · tab Agreements Tab · events: Click
- CommandButton Lots_for_Transplant_Checklist_with_totals "Field Transplants w/Totals..." · tab Agreements Tab · events: Click
- CommandButton Agreement_Lot_Summary_by_Client "Agreement Lot Sum by Client..." · tab Agreements Tab · events: Click
- CommandButton Agreement_Lot_Summary_by_Age_Class "Agreement Lot Sum by  Class" · tab Agreements Tab · events: Click
- CommandButton Request_Checklist_by_Age_Class_End_Year_Summary "Agreement Lot Sum  by End FY..." · tab Agreements Tab · events: Click
- CommandButton Request_Checklist_by_Age_Class_End_Year "Agreement Lots by End FY..." · tab Agreements Tab · events: Click
- CommandButton Sowing_Request_Reports "Sowing Request Reports..." · tab Agreements Tab · events: Click
- CommandButton Source Lot Work Order_list "Source Withdrawal List..." · tab Agreements Tab · events: Click
- CommandButton Lots_for_Transplant_Spreadsheet "Field Transplant  XCEL" · tab Agreements Tab · events: Click
- CommandButton Lots_for_Transplant_Spreadsheet_for Field "Field Transplant  XCEL Field Form" · tab Agreements Tab · events: Click
- CommandButton Lots_for_Transplant_Checklist_by_Stocktype_Species "Field Transplants 2..." · tab Agreements Tab · events: Click
- CommandButton Lots_for_Transplant_Checklist_by_Stocktype_Species_wTotals "Field Transplants 2 w/Totals..." · tab Agreements Tab · events: Click
- CommandButton Contacts_for_Current_Sow_Req "Contacts for Current Crop..." · tab Agreements Tab · events: Click
- CommandButton Agreement Lots Held Over - Update_By Product "Agreement Lots Held Over2..." · tab Agreements Tab
- CommandButton Open_Sowing_Order_Form "Edit Sowing Group Order" · tab Agreements Tab · events: Click
- CommandButton Agreement Lots2 "Agreement Lot Sow Order..." · tab Agreements Tab · events: Click
- CommandButton clients_not_currently_growing "Clients Not Currently Growing" · tab Agreements Tab
- CommandButton Contacts_for_Current_fy_Sow_Req "Contacts for Current Begin FY..." · tab Agreements Tab · events: Click
- CommandButton NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check "Lot Totals <> Agreement Totals" · tab Agreements Tab · events: Click
- CommandButton Agreement_lot_Activities_Transactions "Agreement Lot Act/Trans..." · tab Activities Tab · events: Click
- CommandButton Agreement_lot_Act_Tran_Balances "Agreemt Lot Act/Trans Balance..." · tab Activities Tab · events: Click
- CommandButton Review_SowTrans_Act_vs_Trans_totals "Review Sow Act vs Trans Totals" · tab Activities Tab · events: Click
- CommandButton Open_Plant_Inventory_Worksheet_Form "Product Inventory Worksheets..." · tab Inventory Tab · events: Click
- CommandButton Plant_Inventory_Worksheet_Blank "Product Inv Worksheet Blank" · tab Inventory Tab · events: Click
- CommandButton Open_Daily_Checklist_Form "Inventory Daily Checklist..." · tab Inventory Tab · events: Click
- CommandButton Product_Inventory "Inventory for Associates..." · tab Inventory Tab · events: Click
- CommandButton inventory_by_location_type "Totals by Location Type" · tab Inventory Tab · events: Click
- CommandButton inventory_by_location_type_and_lot "Totals by Loc Type/Lot..." · tab Inventory Tab · events: Click
- CommandButton Product_Inventory_Age_Class Report "Inventory by Age Class..." · tab Inventory Tab · events: Click
- CommandButton Product_Inventory_Age_Class_Summary_Report "Inv Summary Age Class Cond" · tab Inventory Tab · events: Click
- CommandButton Inventory_Report_by_End_FY "Regional Inv Sum by End FY..." · tab Inventory Tab · events: Click
- CommandButton inventory_by_location_type_and_lot3 "Transplant Totals by Lot" · tab Inventory Tab · events: Click
- CommandButton Product_Inventory_Age_Class_Detailed_Report2 "Inv Summary Age Class2..." · tab Inventory Tab · events: Click
- CommandButton Product_Inventory_Age_Class_Lot_ID_Report "Inv Sum Age Class  Lot ID1..." · tab Inventory Tab · events: Click
- CommandButton inventory_by_location_type_product "Totals by Loc Type/Product" · tab Inventory Tab · events: Click
- CommandButton Product_Inventory_Spreadsheet "Inv Spreadsheet for Associates..." · tab Inventory Tab · events: Click
- CommandButton Product_Inventory_Age_Class_Client "Inv Summary Age Class/Client..." · tab Inventory Tab · events: Click
- CommandButton Balance_By_End_Date "Balance by End Date..." · tab Inventory Tab · events: Click
- CommandButton Command74 "Inv Sum Age Class  Lot ID2..." · tab Inventory Tab · events: Click
- CommandButton Field_Form_For_Inventory_Sizing "Field Form for Counts or Sizing..." · tab Inventory Tab · events: Click
- CommandButton Product_Size_Distribution_Report "Inv Size Distrbution Report..." · tab Inventory Tab · events: Click
- CommandButton Product_Inventory_Age_Class_Lot_ID_Report_wClient "Inv Sum Age Class  Lot ID3..." · tab Inventory Tab · events: Click
- CommandButton Product_Inventory_Age_Class_Lot_ID_Report_wContact "Inv Sum Age Class  Lot ID4..." · tab Inventory Tab · events: Click
- CommandButton Command92 "Inv Sum Age Class  Lot ID2B..." · tab Inventory Tab · events: Click
- CommandButton Inventory_By_Age_Class_or_Species "Inventory by Age Class/Species..." · tab Inventory Tab · events: Click
- CommandButton Product_Inventory_Age_Class_Detailed_Report "Inv Summary Age Class..." · tab Inventory Tab · events: Click
- CommandButton Review_Inv_Act_vs_Trans_totals "Review Activity vs Trans Totals" · tab Inventory Tab · events: Click
- CommandButton Lots_without_sow_xplt_or_xfer_act "Lots Not Mapped Checklist" · tab Inventory Tab · events: Click
- CommandButton Balance_By_End_Date2 "Balance by End Date2..." · tab Inventory Tab · events: Click
- CommandButton Balance_By_End_Date_no_net "Balance by End Date2b..." · tab Inventory Tab · events: Click
- CommandButton Inventory_Report_by_End_FY_w_parent "Regional Inv Sum by End FY2..." · tab Inventory Tab · events: Click
- CommandButton Balance_By_End_Date_w_Lots "Balance by End Date w Lots..." · tab Inventory Tab · events: Click
- CommandButton inventory_by_End_FY_location_type_product "Totals by End FY/Loc Type/Prod" · tab Inventory Tab · events: Click
- CommandButton AgreementLotsBySowDateRange "Agrmt Lot by Sow Date Range.." · tab Inventory Tab · events: Click
- CommandButton Product_Inventory_Parent_and_Age_Class_Detailed_Report "Inv Summary Age Class3..." · tab Inventory Tab · events: Click
- CommandButton Field Lot Tags "Lot Tags..." · tab Labels Tab · events: Click
- CommandButton Field_Map "Grow Locations Index..." · tab Labels Tab · events: Click
- CommandButton Transplant_Tags_Nursery_Owned "TP Tags - Nursery Owned" · tab Labels Tab · events: Click
- CommandButton Transplant_Tags_Client_Owned "TP Tags - Client Owned/Qplug" · tab Labels Tab · events: Click
- CommandButton Field_Form_Propagule " Propagule Field Form..." · tab Labels Tab · events: Click
- CommandButton Field_Form_Propagule_Condensed "Propagule Field Form Cond" · tab Labels Tab · events: Click
- CommandButton Field_Form_Plants "Stock Monitor Checklist - Plants..." · tab Labels Tab · events: Click
- CommandButton Field_Form_Propagule_Landscape_Letter "Propagule Field Form Wide" · tab Labels Tab · events: Click
- CommandButton Field_Form_Propagule_Landscape_Legal "Propagule Field Form Wide Legal" · tab Labels Tab · events: Click
- CommandButton Field_Form_Propagule_Condensed_by_Client "Propagule Field Frm by Client..." · tab Labels Tab · events: Click
- CommandButton Field_Form_Propagule_for_Xcel "Propagule Field Form for Xcel" · tab Labels Tab · events: Click
- CommandButton Stock_Location_Worksheet "BR Stock Locationt Worksheet" · tab Labels Tab · events: Click
- CommandButton Stock_Location_Worksheet_id_change "BR Stock Location Worksheet2" · tab Labels Tab · events: Click
- CommandButton Stock_Location_Worksheet_Container "Cont Stock Location Worksheet" · tab Labels Tab · events: Click
- CommandButton Field_Form_Propagule_by_ID_Condensed "Propagule Field Frm by ID Cond" · tab Labels Tab · events: Click
- CommandButton BR_Grow_Location_Worksheet "BR Loc Planning Worksheet..." · tab Labels Tab · events: Click
- CommandButton Field_Form_Propagule_Condensed_by_Species "Propagule Field Frm by Species..." · tab Labels Tab · events: Click
- CommandButton Lots_without_sow_xplt_or_xfer_act2 "Lots Not Mapped Checklist" · tab Labels Tab · events: Click

## Form: Reports_Menu_Shipping Subform
- **Caption:** Reports Menu Shipping
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Shipping Subform
- **Record source:** NMIS_FISCAL_YEARS
- **Backend tables:** NMIS_FISCAL_YEARS
- **Opens:** Form:Agreement_Lot_Ship_Totals_by_FY, Form:Destroy_act_tot_vs_trans_total_checklist, Form:NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC, Form:PRODUCT_ticket2b, Form:Processing_and_Shipping_Record_Report, Form:Processing_and_Shipping_Record_for_TP_Report, Form:Product_Storage_Summary, Form:Ship_Ticket_Summary_by_Category, Form:Ship_Ticket_Summary_by_Ticket_No, Form:Ship_Ticket_Summary_by_Ticket_No_TSO, Form:Ship_act_tot_vs_trans_total_checklist, Form:Shipping_Summary_By_Stocktype, Form:Shipping_Summary_By_Stocktype_Species2, Form:transaction_Totals_by_location, Report:Agreement_Lot_Ship_Totals_by_FY, Report:Destroy_act_tot_vs_trans_total_checklist, Report:NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC, Report:PRODUCT_ticket2b, Report:Processing_and_Shipping_Record_Report, Report:Processing_and_Shipping_Record_for_TP_Report, Report:Product_Storage_Summary, Report:Ship_Ticket_Summary_by_Category, Report:Ship_Ticket_Summary_by_Ticket_No, Report:Ship_Ticket_Summary_by_Ticket_No_TSO, Report:Ship_act_tot_vs_trans_total_checklist, Report:Shipping_Summary_By_Parent_Associate, Report:Shipping_Summary_By_Stocktype, Report:Shipping_Summary_By_Stocktype_Species2, Report:transaction_Totals_by_location

**Controls**
- TabControl TabCtl2
- CommandButton CmdProdShpTkt "Product Shipping Ticket..." · tab Shipping · events: Click
- CommandButton Prod_Ship_Ticket_list_by_Tkt_No "Prod Ship Ticket List by Tkt No..." · tab Shipping · events: Click
- CommandButton Prod_Ship_Ticket_List_by_Categ "Prod Ship Ticket List by Cat..." · tab Shipping · events: Click
- CommandButton Processing_and_Shipping_Record_Report "Processing and Shipping Log..." · tab Shipping · events: Click
- CommandButton Processing_and_Shipping_Record_for_TP_Report "Processing and Xplant  Log..." · tab Shipping · events: Click
- CommandButton Shipping_Summary_By_Parent_Associate "Shipping Summary by Parent..." · tab Shipping · events: Click
- CommandButton Shipping_Summary_By_Stocktype_Species "Ship Sum Stocktype/Species..." · tab Shipping · events: Click
- CommandButton inventory_by_location_type_and_lot "Totals by Location Type by Lot..." · tab Shipping · events: Click
- CommandButton Prod_Ship_Ticket_list_by_Tkt_No_TSO "Prod Ship Ticket List w/ TSO's..." · tab Shipping · events: Click
- CommandButton Shipping_Summary_By_Stocktype_Species2 "Ship Sum Stocktype/Species2..." · tab Shipping · events: Click
- CommandButton Product_Storage_Summary "Product Storage Summary..." · tab Shipping · events: Click
- CommandButton Shipping_Summary_By_Stocktype "Ship Sum Stocktype..." · tab Shipping · events: Click
- CommandButton Shipping_Summary_By_Stocktype_SPD "Ship Sum Stocktype by FY SPD..." · tab Shipping · events: Click
- CommandButton Mailing_Labels_Intermec "Mailing Labels (Intermec 4X6)..." · events: Click
- CommandButton Review_Pack_Act_vs_Trans_totals_Ship "Review Ship Act  vs Trans Totals" · tab Misc Tab · events: Click
- CommandButton Review_Destroy_Act_vs_Trans_totals "Review Dest Act vs Trans Totals" · tab Misc Tab · events: Click

## Form: Reports_Menu_Source Subform
- **Caption:** Reports_Menu_Source Subform
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Source Subform
- **Record source:** NMIS_FISCAL_YEARS
- **Backend tables:** NMIS_FISCAL_YEARS
- **Opens:** Form:ConeStorageSPD, Form:Lot_ID_Input_Form2, Form:Lot_ID_Input_Form2d, Form:Lot_ID_Input_Form2e, Form:NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC, Form:NMIS_SEED_TICKETS_CHECKLIST, Form:NMIS_SEED_TICKETS_CHECKLIST2, Form:NMIS_SOURCE_LOT_SELECT, Form:NMIS_SOURCE_Location_by_ID_Report, Form:NMIS_SOURCE_Location_by_ID_Report2, Form:NMIS_SOURCE_Location_by_ID_Report3, Form:NMIS_SOURCE_Location_by_ID_Report3b, Form:NMIS_SOURCE_Location_by_Loc_Report, Form:NMIS_SOURCE_Zero_Bal_by_Col_Yr_Stor_For_Report, Form:NMIS_SOURCE_Zero_Balance_Report, Form:Product_Storage_Summary, Form:Seed_Inventory_Report, Form:Seed_Needs_Report, Form:Seed_Non_WCF_Billing_Report, Form:Seed_QR_Activity_Breakdown Query, Form:Seed_QR_Activity_Breakdown_by_lot Query, Form:Seed_Quarterly_Report, Form:Seed_Sown_for_Other_Than_Storage_Parent, Form:Seedlots_with_negative_balance, Report:ConeStorageSPD, Report:Lot_ID_Input_Form2, Report:Lot_ID_Input_Form2d, Report:Lot_ID_Input_Form2e, Report:NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC, Report:NMIS_SEED_TICKETS_CHECKLIST, Report:NMIS_SEED_TICKETS_CHECKLIST2, Report:NMIS_SOURCE_LOT_SELECT, Report:NMIS_SOURCE_Location_by_ID_Report, Report:NMIS_SOURCE_Location_by_ID_Report2, Report:NMIS_SOURCE_Location_by_ID_Report3, Report:NMIS_SOURCE_Location_by_ID_Report3b, Report:NMIS_SOURCE_Location_by_Loc_Report, Report:NMIS_SOURCE_Zero_Bal_by_Col_Yr_Stor_For_Report, Report:NMIS_SOURCE_Zero_Balance_Report, Report:Product_Storage_Summary, Report:Seed_Inventory_Report, Report:Seed_Needs_Report, Report:Seed_Non_WCF_Billing_Report, Report:Seed_QR_Activity_Breakdown Query, Report:Seed_QR_Activity_Breakdown_by_lot Query, Report:Seed_Quarterly_Report, Report:Seed_Sown_for_Other_Than_Storage_Parent, Report:Seedlots_with_negative_balance
- **Form events with code:** Open

**Controls**
- TabControl TabCtl2
- CommandButton Non_WCF_Billing_Report "Billings..." · tab Extraction Tab · events: Click
- CommandButton Sow_For_Other_Than_Stored_For "Sowing Billing Checklist" · tab Extraction Tab · events: Click
- CommandButton Source_Lot_Report "Source History Report..." · tab Activities Tab · events: Click
- CommandButton Preview_Seed_Ticket_Checklist "Source Ticket Checklist..." · tab Activities Tab · events: Click
- CommandButton Preview_Seed_Ticket_Checklist2 "Source Ticket Checklist2..." · tab Activities Tab · events: Click
- CommandButton Seed Inventory Report "Source Inventory Reports..." · tab Inventory Tab · events: Click
- CommandButton Product_Storage_Summary "Product Storage Summary..." · tab Inventory Tab · events: Click
- CommandButton NMIS_SOURCE_Location_by_ID "Storage Location by Lot ID..." · tab Inventory Tab · events: Click
- CommandButton NMIS_SOURCE_Location_by_Loc "Storage Location by Location..." · tab Inventory Tab · events: Click
- CommandButton Source_Needs_Reports "R5 Seed Need Reports..." · tab Inventory Tab · events: Click
- CommandButton Zero_Balance_Report "Zero Balance Lots by FY" · tab Inventory Tab · events: Click
- CommandButton Zero_Balance_Report_by_Crop_Yr_Stor_For "Zero Balance Lots by FY, CY, For" · tab Inventory Tab · events: Click
- CommandButton NMIS_SOURCE_Location_by_ID2 "Storage Location by Lot ID2..." · tab Inventory Tab · events: Click
- CommandButton NMIS_SOURCE_Location_by_ID3 "Storage Location by Lot ID3..." · tab Inventory Tab · events: Click
- CommandButton NMIS_SOURCE_Location_by_ID3b "Storage Location by Lot ID3b..." · tab Inventory Tab · events: Click
- CommandButton ConeStorageSpd "Cone Storage SPD" · tab Inventory Tab · events: Click
- CommandButton Seed Box Labels "Seed Box Labels..." · tab Labels Tab · events: Click
- CommandButton Mailing_Labels_Intermec "Mailing Labels (Intermec 4X6)..." · tab Labels Tab · events: Click
- CommandButton Seed Box Mini Labels "Seed Box Mini Labels..." · tab Labels Tab · events: Click
- CommandButton Two Lots per Seed Box Label "2 Lots per Seed Box Label..." · tab Labels Tab · events: Click
- CommandButton seed Quarterly Report "Source Quarterly Report..." · tab Quarterly Tab · events: Click
- CommandButton Negative_Balance_Lots "Negative Balance Lots" · tab Quarterly Tab · events: Click
- CommandButton Activity_by_Species "Activity by Species..." · tab Quarterly Tab · events: Click
- CommandButton Activity_by_Species_Lot "Activity by Species and Lot..." · tab Quarterly Tab · events: Click

## Form: Sample_Input_JHSN
- **Caption:** Sample_Input_JHSN
- **Menu path:** Switchboard › NMIS_PROCESS_QUALITY_SAMPLES › Sample_Input_JHSN
- **Record source:** SELECT Processing_QI_Samples_Table_Sorting_Quality1b.SAMPLE_DATE, Processing_QI_Samples_Table_Sorting_Quality1b.SAMPLE_STATION, Processing_QI_Samples_Table_Sorting_Quality1b.SAMPLE_MODE, Processing_QI_Samples_Table_Sorting_Quality1b.CALIPER_HALF, Processing_QI_Samples_Table_Sorting_Quality1b.SAMPLE_TIME, Processing_QI_Samples_Table_Sorting_Quality1b.SAMPLE_SIZE, Processing_QI_Samples_Table_Sorting_Quality1b.Count, Processing_QI_Samples_Table_Sorting_Quality1b.Top_Size, Processing_QI_Samples_Table_Sorting_Quality1b.Roots, Processing_QI_Samples_Table_Sorting_Quality1b.Vigor, Processing_QI_Samples_Table_Sorting_Quality1b.Pest_Damage, Processing_QI_Samples_Table_Sorting_Quality1b.Mechanical_Damage, IIf(nz([sample_size],0)>0,Round(([sample_size]-([count]+[Top_size]+[roots]+[vigor]+[Pest_damage]+[Mechanical_Damage]))/[sample_size]*100,2)) AS Pct, Processing_QI_Samples_Table_Sorting_Quality1b.Order, Processing_QI_Samples_Table_Sorting_Quality1b.SHELF FROM Processing_QI_Samples_Table_Sorting_Quality1b WHERE (((Processing_QI_Samples_Table_Sorting_Quality1b.Order)=[Forms]![NMIS_PROCESS_QUALITY_SAMPLES]![Order_CN])) ORDER BY Processing_QI_Samples_Table_Sorting_Quality1b.SAMPLE_DATE, Processing_QI_Samples_Table_Sorting_Quality1b.SAMPLE_STATION, Processing_QI_Samples_Table_Sorting_Quality1b.SAMPLE_MODE, Processing_QI_Samples_Table_Sorting_Quality1b.CALIPER_HALF, Processing_QI_Samples_Table_Sorting_Quality1b.SAMPLE_TIME;
- **Form events with code:** BeforeInsert, BeforeUpdate, Error
- **Migration:** 0 of 14 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox Default_Station · default `"T1"`  [FormHeader]
- TextBox Default_Mode · default `"T"`  [FormHeader]
- TextBox Default_Sample_Size  [FormHeader]
- TextBox Text106 "Time:" = `=Time$()`  [FormHeader]
- TextBox Last_Shelf · default `0`  [FormHeader]
- TextBox SAMPLE_DATE = `SAMPLE_DATE` · default `=[Forms]![NMIS_PROCESS_QUALITY_SAMPLES]![Default_Date]`
- TextBox SAMPLE_STATION = `SAMPLE_STATION` · default `[Default_Station]` · events: BeforeUpdate, DblClick, Exit
- TextBox SAMPLE_TIME = `SAMPLE_TIME` · default `=IIf(Mid$(Time$(),2,1)=":","0" & Left$(Time$(),1),Left$(Time$(),2)) & IIf(Mid$(Time$(),2,1)=":",IIf(Mid$(Time$(),4,1)=":","0" & Mid$(Time$(),3,1),Mid$(Time$(),3,2)),Mid$(Time$(),4,2)) & IIf(Mid$(Time$(),9,1)=" ",Mid$(Time$(),7,2),Mid$(Time$(),6,2))`
- TextBox Order ID = `=IIf(Not IsNull([CN]),Left$([CN],Len([CN])-7))`
- TextBox SAMPLE_SIZE = `SAMPLE_SIZE` · default `=[Default_Sample_Size]` · events: DblClick, Enter, Exit
- TextBox Counts = `Count` · events: Click, DblClick, Enter
- TextBox Top_Size = `Top_Size` · events: Click, DblClick, Enter
- TextBox Roots = `Roots` · events: Click, DblClick, Enter
- TextBox Vigor = `Vigor` · events: Click, DblClick, Enter
- TextBox Pest_Damage = `Pest_Damage` · events: Click, DblClick, Enter
- TextBox Mechanical_Damage = `Mechanical_Damage` · events: Click, DblClick, Enter
- TextBox Pct = `Pct`
- TextBox CN = `Order` · default `[Forms]![NMIS_PROCESS_QUALITY_SAMPLES]![Order_CN]`
- TextBox SAMPLE_MODE = `SAMPLE_MODE` · default `[Default_Mode]` · events: Enter, Exit
- TextBox Shelf = `SHELF` · events: Enter, Exit
- TextBox Samples "Number of Samples:" = `=Count([sample_station])`  [FormFooter]
- TextBox Sum_samples = `=Sum([SAMPLE_SIZE])` · default `=[Default_Sample_Size]`  [FormFooter]
- TextBox Sum_count = `=Sum([Count])`  [FormFooter]
- TextBox Sum_top = `=Sum([Top_Size])`  [FormFooter]
- TextBox Sum_roots = `=Sum([Roots])`  [FormFooter]
- TextBox Sum_vigor = `=Sum([Vigor])`  [FormFooter]
- TextBox Sum_pest = `=Sum([Pest_Damage])`  [FormFooter]
- TextBox sum_Mechanical = `=Sum([Mechanical_Damage])`  [FormFooter]
- TextBox avg_pct = `=(Sum([sample_size])-(Sum([Count])+Sum([top_size])+Sum([roots])+Sum([vigor])+Sum([pest_damage])+Sum([mechanical_damage])))/Sum([sample_size])*100`  [FormFooter]

## Form: Seed_Balance Query subform
- **Caption:** Seed_Balance Query subform
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_AGREEMENTS › Seed_Balance Query subform
- **Record source:** **Seed_Balance_Table
- **Migration:** 0 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox Sum Of ACTIVITY_UNITS = `Sum Of ACTIVITY_UNITS`
- TextBox Text4 = `LastOfUNIT_CODE`

## Form: Seed_Balance2 Query subform
- **Caption:** Seed_Balance Query subform
- **Menu path:** Switchboard › NMIS_ID_LOCATIONS_SOURCE_LOTS › Seed_Balance2 Query subform
- **Record source:** Seed_Balance2b Query
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox Sum Of ACTIVITY_UNITS = `Sum Of ACTIVITY_UNITS`
- TextBox Text4 = `UNIT_CODE`
- TextBox Text6 = `ID`
- TextBox CATEGORY_CODE = `CATEGORY_CODE`

## Form: Seed_Billing_Change_Defaults
- **Caption:** Change Defaults
- **Menu path:** Switchboard › Seed_Non_WCF_Billing_Report › Seed_Billing_Change_Defaults
- **Record source:** SELECT NMIS_ACCESS_USER_NURSERY.Default1N, NMIS_ACCESS_USER_NURSERY.Default2N, NMIS_ACCESS_USER_NURSERY.Default1D, NMIS_ACCESS_USER_NURSERY.Default3N FROM NMIS_ACCESS_USER_NURSERY WHERE (((NMIS_ACCESS_USER_NURSERY.Set_As_User)=True));
- **Backend tables:** NMIS_ACCESS_USER_NURSERY
- **Opened from:** Form_Seed_Non_WCF_Billing_Report
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox Cooler "Cooler Unit Price Default" = `Default1N`
- TextBox Freezer "Freezer Unit Price Default" = `Default2N` · events: AfterUpdate
- TextBox Storage_Date "Non-WCF Storage Date Default" = `Default1d` · events: AfterUpdate
- TextBox Min_Lot_WT "Freezer Unit Price Default" = `Default3N`

## Form: Seed_Inventory_Report
- **Caption:** Source Inventory Report
- **Menu path:** Switchboard › Seed_Inventory_Report
- **Backend tables:** NMIS_CATEGORIES
- **Opens:** Report:NMIS_SOURCE_INVENTORY_FOR_RETEST_SPD, Report:NMIS_SOURCE_Inventory_Client_Checklist_Report, Report:NMIS_SOURCE_Inventory_Report, Report:NMIS_SOURCE_Inventory_Report_PN_xcel, Report:NMIS_SOURCE_Inventory_Report_by_species_test_date, Report:NMIS_SOURCE_Inventory_Report_by_species_test_date_all_tests, Report:NMIS_SOURCE_Inventory_Report_xcel, Report:NMIS_SOURCE_Inventory_Report_xcel_040207, Report:NMIS_SOURCE_Inventory_Report_xcel_w_loc, Report:NMIS_SOURCE_Inventory_wtotals_Report, Report:NMIS_SOURCE_Inventory_wtotals_and_grow_est Report, Report:NMIS_SOURCE_Inventory_wtotals_and_grow_est Report_040207, Report:NMIS_SOURCE_Inventory_wtotals_pn_Report, Report:NMIS_SOURCE_Inventory_wtotals_wnotes_Report, Report:NMIS_SOURCE_XS_SP_Inventory_Report_pn_wLotBal_xcel, Report:NMIS_SOURCE_XS_SP_Inventory_Report_pn_xcel, Report:NMIS_SOURCE_XS_SP_Inventory_Report_wLotBal_xcel, Report:NMIS_SOURCE_XS_SP_Inventory_Report_xcel, Report:NMIS_SOURCE_XS_SP_Inventory_wtotals_Report, Report:NMIS_SOURCE_XS_SP_Inventory_wtotals_pn_Report
- **Opened from:** Form_Reports_Menu_Source Subform

**Controls**
- TextBox Like_Client "Like Client:" · default `"*"`
- CommandButton Preview_Quarterly_Report "Inventory Without Totals" · events: Click
- CommandButton Inventory With Totals "Inventory With Totals" · events: Click
- CommandButton Create_Inventory_Xcel_Format "Inventory in Excel Format" · events: Click
- CommandButton Inventory_with_grow_estimates "Inventory With Grow Est." · events: Click
- ComboBox Category_Code "Like Category:" · rows: `SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES ORDER BY NMIS_CATEGORIES.CATEGORY_CODE;` · default `"*"`
- CommandButton Command17 "Inventory With Totals/ Notes" · events: Click
- ComboBox Plntmstr_Symbol "Like Species Code:" · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY;` · default `"*"`
- CommandButton inventory_for_germ_retest "Inventory for Germ Retest" · events: Click
- CommandButton inventory_for_germ_retest_spd "Inventory for Germ Retest spd" · events: Click
- ComboBox diversity "Traditional/Non-Traditional:" · rows: `0;Traditional;-1;Non-traditional;*;All` · default `"*"`
- CommandButton inventory_for_germ_retest_all_tests "Inventory for Germ Retest w/ All Tests" · events: Click
- CommandButton Inventory_XS_SP "Excess/ Surplus Inventory" · events: Click
- CommandButton Inventory_XS_SP_spd "Excess/ Surplus Inv Excel" · events: Click
- CommandButton Inventory_XS_SP_spd_wLotBal "Excess/ Surplus Inv w/Bal Excel..." · events: Click
- CommandButton Preview_Client_Checklist "Client Checklist" · events: Click
- CommandButton Create_Inventory_Xcel_Format_w_loc "Inventory in Excel Format w/Loc" · events: Click

## Form: Seed_Needs_Report
- **Caption:** Source Inventory Report
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Source Subform › Seed_Needs_Report
- **Backend tables:** NMIS_CATEGORIES
- **Opened from:** Form_Reports_Menu_Source Subform

**Controls**
- TextBox Like_Client "Like Client:" · default `"05*"`
- CommandButton Inventory With Totals "Needs Report 4" · events: Click
- CommandButton Inventory_with_grow_estimates "Needs Report 3" · events: Click
- ComboBox Category_Code "Like Category:" · rows: `SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES ORDER BY NMIS_CATEGORIES.CATEGORY_CODE;` · default `"*"`
- ComboBox Plntmstr_Symbol "Like Species Code:" · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY;` · default `"*"`
- CommandButton inventory_for_germ_retest "Needs Report 1" · events: Click
- ComboBox diversity "Traditional/Non-Traditional:" · rows: `0;Traditional;-1;Non-traditional;*;All` · default `"*"`
- CommandButton inventory_for_germ_retest_all_tests "Needs Report 2" · events: Click

## Form: Seed_Non_WCF_Billing_Report
- **Menu path:** Switchboard › Seed_Non_WCF_Billing_Report
- **Backend tables:** NMIS_CATEGORIES
- **Subforms:** Form.NMIS_ACCESS_USER_NURSERY subform1
- **Opens:** Form:Seed_Billing_Change_Defaults, Report:NMIS_Source_Non-WCF_Storage_Billing_Report, Report:SEED_BILLING_NON_WCF_BILLING_TABLE_Edit, Report:Seed_Extraction_Billing, Report:Seed_Non_WCF_Billing, Report:Seed_Non_WCF_Billing2, Report:Seed_Non_WCF_Billing2_summary, Report:Seed_Non_WCF_Billing3, Report:Seed_Non_WCF_Billing3_summary, Report:Seed_Sales_Billing, Report:Seed_Sown_for_Other_Than_Storage_Parent, Report:Seed_billing_summary_Spd
- **Opened from:** Form_Reports_Menu_Source Subform
- **Form events with code:** Open

**Controls**
- TextBox Begin_Date "Begin Date:" · default `="07/01/" & Right([Forms]![Switchboard]![FY_For_Reports]-1,2)` · events: AfterUpdate
- TextBox End_Date "End Date:" · default `="06/30/" & Right([Forms]![Switchboard]![FY_For_Reports],2)` · events: AfterUpdate
- ComboBox Category_Code "Category:" · rows: `SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES GROUP BY NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC HAVING (((NMIS_CATEGORIES.CATEGORY_CODE) Not Like "gsp") AND ((NMIS_CATEGORIES.CATEGORY_DESC) Like "*wcf*seed*"));` · default `"s"` · events: AfterUpdate
- TextBox Overhead_Pct "Overhead %:" · default `25`
- TextBox Like_Client "Like Client:" · default `"*"` · events: DblClick
- CommandButton Create_Extraction_Billing_Report "Click to Preview Extraction by Hr Invoice Report" · events: Click
- CommandButton Create_Seed_Billing_Report "Click to Preview Invoice Lot Detail Report" · events: Click
- CommandButton Create_Seed_Billing_Species_Report "Click to Preview Invoice Species Detail Report" · events: Click
- TextBox Signature_Line "Signature Line:"
- TextBox Title_Line "Title Line:"
- CommandButton Sown_for_other_than_stored_for "Click for Seed Sown for other than Stored For" · events: Click
- TextBox Storage_bill_Date "Storage Billing Date:" · default `=Left$([NMIS_ACCESS_USER_NURSERY subform1].[Form]![storge_date],6) & Right$([Forms]![Switchboard]![FY_For_Reports],2)` · events: AfterUpdate, DblClick
- TextBox Unit_Price_Freezer "Freezer Unit Price:" · default `=[NMIS_ACCESS_USER_NURSERY subform1].[Form]![freezer]` · events: AfterUpdate, DblClick
- TextBox Unit_Price_Cooler "Cooler Unit Price:" · default `=[NMIS_ACCESS_USER_NURSERY subform1].[Form]![cooler]` · events: AfterUpdate, DblClick
- CheckBox data_processed "data_processed" · default `False`
- Subform NMIS_ACCESS_USER_NURSERY subform1 subform `Form.NMIS_ACCESS_USER_NURSERY subform1` (master  → child )
- CommandButton Create_Seed_Billing_non_detail_Report "Click to Preview Invoice Non-Detail Report" · events: Click
- CheckBox Non_WCF_Storage_Only · default `False` · events: AfterUpdate
- TextBox min_lot_wt "Minimum Lot Wt (LB):" · default `=[NMIS_ACCESS_USER_NURSERY subform1].[Form]![Min_Lot_Wt]` · events: AfterUpdate, DblClick
- CheckBox WCF_Seed_Bill_Only · default `True` · events: AfterUpdate
- CommandButton bill_summary_spd "Click to Preview Invoice Summary Spreadsheet" · events: Click
- ComboBox Diverse "Species Type" · rows: `0;Traditional;-1;Non-Traditional;*;All` · default `"*"`
- CommandButton Create_Seed_Billing_Species__summary_Report "Click to Preview Invoice Species Summary Report" · events: Click
- CommandButton Create_Seed_Billing_non_detail_summary_Report "Click to Preview Invoice Non-Detail Summary Report" · events: Click
- TextBox LikeJobcode "Like Job Code:" · default `="*"` · events: DblClick
- CommandButton Client_Bill_Table_Edit "Command33" · events: Click
- TextBox NotLikeJC "Not Like Job Code:"

## Form: Seed_Quarterly_Report
- **Caption:** Seed Quarterly Report
- **Menu path:** Switchboard › Seed_Quarterly_Report
- **Backend tables:** NMIS_CATEGORIES, NMIS_SOURCE_LOTS
- **Opens:** Report:NMIS_SOURCE_Quarterly_Report_by_forest_Checklist, Report:NMIS_SOURCE_Quarterly_Report_by_species_Checklist, Report:Seed_Quarterly_Report, Report:Seed_Quarterly_Report Query, Report:Seed_Quarterly_Report_Diverse, Report:Seed_Quarterly_Report_Diverse Query, Report:Seed_Quarterly_Report_NON_Diverse, Report:Seed_Quarterly_Report_NON_Diverse Query
- **Opened from:** Form_Reports_Menu_Source Subform

**Controls**
- TextBox Begin_Date "Begin Date:"
- TextBox End_Date "End Date:"
- ComboBox Category_Code "Category:" · rows: `SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES INNER JOIN NMIS_SOURCE_LOTS ON (NMIS_CATEGORIES.CATEGORY_CODE = NMIS_SOURCE_LOTS.CATEGORY_CODE) AND (NMIS_CATEGORIES.CATEGORY_CODE = NMIS_SOURCE_LOTS.CATEGORY_CODE) WHERE (((NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code])) GROU`
- TextBox Like_Client "Like Client:" · default `=Left$([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code],2) & "*"`
- CommandButton Preview_Quarterly_Report "Click to Preview/Print Report" · events: Click
- ComboBox Plntmstr_Symbol "Species Code:" · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY;` · default `"*"`
- ComboBox Species_Group "Species Group:" · rows: `1;Traditional and Non-Traditional;2;Traditional;3;Non-Traditional` · default `1`
- CommandButton Preview_Quarterly_Checklist_by_for_Species_Report "Forest and Species Checklist" · events: Click
- CommandButton Preview_Quarterly_Checklist_by_for_Report "Forest  Checklist" · events: Click
- CheckBox Forest_By_Page "Page for Each "Forest"" · default `False`
- CommandButton Spreadsheet_Report "Click for Spreadsheet Report" · events: Click

## Form: Seed_Ship_Ticket_ID_ACTIVITIES subform
- **Caption:** Seed_Ship_Ticked_ID_ACTIVITIES subform
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › Seed_Ship_Ticket_ID_ACTIVITIES subform
- **Record source:** SELECT NMIS_SOURCE_LOTS.ID, NMIS_ID_ACTIVITIES.ACTIVITY_DATE, NMIS_ID_ACTIVITIES.CN, NMIS_ID_ACTIVITIES.FISCAL_YEAR, NMIS_ID_ACTIVITIES.ACTIVITY_CODE, NMIS_ID_ACTIVITIES.ACTIVITY_UNITS, NMIS_ID_ACTIVITIES.ACTIVITY_UNITS_PRESCRIBED, NMIS_ID_ACTIVITIES.ACTIVITY_TIME, NMIS_ID_ACTIVITIES.ACTIVITY_HOURS, NMIS_ID_ACTIVITIES.AMT_PER_UNIT, NMIS_ID_ACTIVITIES.UNIT_CODE, NMIS_ID_ACTIVITIES.TREATMENT_PRODUCT_ID, NMIS_ID_ACTIVITIES.CONTRACT_ITEM, NMIS_ID_ACTIVITIES.CHARGE_PER_HOUR_OVERRIDE, NMIS_ID_ACTIVITIES.CHARGE_PER_AMT_OVERRIDE, NMIS_ID_ACTIVITIES.CHARGE_PER_UNIT_OVERRIDE, NMIS_ID_ACTIVITIES.CHARGE_PER_ACTIVITY_OVERRIDE, NMIS_ID_ACTIVITIES.NOTE, NMIS_ID_ACTIVITIES.DESTINATION_ASSOCIATE, NMIS_ID_ACTIVITIES.SOURCE_LOT_CN, NMIS_ID_ACTIVITIES.AGREEMENT_LOT_CN, NMIS_ID_ACTIVITIES.ORDER_CN, NMIS_ID_ACTIVITIES.TICKET_CN, NMIS_ACTIVITY_CODES.ACTIVITY_NAME AS ACTIVITY_NO_NAME, NMIS_ID_ACTIVITIES.Index, NMIS_ACTIVITY_CODES.BALANCE_EFFECT, NMIS_ID_ACTIVITIES.AMT_PER_UNIT, (IIf([BALANCE_EFFECT]="NOEFFECT",0,1))*[ACTIVITY_UNITS] AS ACTIVITY_UNITS_TO_SUM FROM NMIS_SOURCE_LOTS INNER JOIN (NMIS_ACTIVITY_CODES INNER JOIN NMIS_ID_ACTIVITIES ON NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ID_ACTIVITIES.ACTIVITY_CODE) ON NMIS_SOURCE_LOTS.CN = NMIS_ID_ACTIVITIES.SOURCE_LOT_CN WHERE (((NMIS_SOURCE_LOTS.ID) Like [Forms]![Seed_Shipping_Ticket Subform]![View_Lot] & "*")) ORDER BY NMIS_SOURCE_LOTS.ID, NMIS_ID_ACTIVITIES.ACTIVITY_DATE, NMIS_ID_ACTIVITIES.CN;
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_FISCAL_YEARS, NMIS_ID_ACTIVITIES, NMIS_SOURCE_LOTS, NMIS_TICKETS, NMIS_UNITS
- **Opens:** Form:NMIS_ACTIVITY_CODES, Form:NMIS_ID_ACTIVITIES_MORE_INFO_Ship_Tkt_FORM, Form:NMIS_ID_LOCATIONS_for_Source_Withdrawal subform, Form:NMIS_ID_MGMT_CODES_Ship_Ticket subform, Form:NMIS_SOURCE_TESTS_Ship_Ticket Form, Form:seed_shipping_lot_label, Form:seed_shipping_lot_label_040207, Report:NMIS_ACTIVITY_CODES, Report:NMIS_ID_ACTIVITIES_MORE_INFO_Ship_Tkt_FORM, Report:NMIS_ID_LOCATIONS_for_Source_Withdrawal subform, Report:NMIS_ID_MGMT_CODES_Ship_Ticket subform, Report:NMIS_SOURCE_TESTS_Ship_Ticket Form, Report:seed_shipping_lot_label, Report:seed_shipping_lot_label_040207
- **Form events with code:** AfterInsert, Current
- **Migration:** 11 of 14 bound fields mapped. Main GrowHub screens: /source-lots/new (5)

**Controls**
- ComboBox FISCAL_YEAR = `FISCAL_YEAR` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![Seed_Shipping_Ticket Subform]![FY]`
- ComboBox ACTIVITY_CODE = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.BALANCE_EFFECT, NMIS_ACTIVITY_CODES.NOTE, NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) In ("CONE","SDEXTR","SDTRAN","SDTRMT"))) OR (((NMIS_ACTIVITY_CODES.ACTIVITY_CODE) Like "TST*" Or (NMIS_ACT` · default `=[Forms]![Seed_Shipping_Ticket Subform].[Form]![Default_Activity_Code]` · events: DblClick, Enter → GrowHub processing_activity.activityType (yes)
- TextBox ACTIVITY_UNITS = `ACTIVITY_UNITS` · events: Click, DblClick, Enter, Exit → GrowHub processing_activity.quantity (yes)
- TextBox ACTIVITY_DATE = `ACTIVITY_DATE` · default `=[Forms]![Seed_Shipping_Ticket Subform].[Form]![DESIRED_DATE]` → GrowHub processing_activity.activityDate (yes)
- ComboBox UNIT_CODE = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS;` · default `"LB"` → GrowHub processing_activity.unitOfMeasurement (yes)
- TextBox Index = `Index`
- ComboBox SOURCE_LOT_CN = `SOURCE_LOT_CN` · rows: `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE FROM NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN WHERE (((NMIS_SOURCE_LOTS.ID) Not Like "@*") AND ((NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE) Like IIf(IsNull([Forms]![Seed_Shipping_Ticket Subform]![Seed_Ship_Ticked_ID_ACTIVITIES subform].[F` · events: Enter, Exit → GrowHub lot_slip.sourceLotUuid (yes)
- ComboBox Combo19 = `SOURCE_LOT_CN` · rows: `SELECT NMIS_SOURCE_LOTS.CN, Source_Lot_ID_and_Source_string.SOURCE, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN ORDER BY Source_Lot_ID_and_Source_string.SOURCE;` → GrowHub lot_slip.sourceLotUuid (yes)
- TextBox NOTE = `NOTE` · default `=[Forms]![Seed_Shipping_Ticket Subform].[Form]![NOTE]` → GrowHub processing_activity.notes (yes)
- TextBox AMT_PER_UNIT = `AMT_PER_UNIT` · default `1`
- TextBox New_CN = `=[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code`
- TextBox CN = `CN` → GrowHub source_lot.accessLegacyId (yes)
- TextBox DESTINATION_ASSOCIATE = `DESTINATION_ASSOCIATE` · default `=[Forms]![Seed_Shipping_Ticket Subform]![DELIVERED_TO_ASSOCIATE]`
- ComboBox TICKET_CN = `TICKET_CN` · rows: `SELECT NMIS_TICKETS.CN, NMIS_TICKETS.TKT_NO FROM NMIS_TICKETS WHERE (((NMIS_TICKETS.TICKET_TYPE) Like "S*")) ORDER BY NMIS_TICKETS.FY DESC , NMIS_TICKETS.TKT_NO DESC;` · default `=[Forms]![Seed_Shipping_Ticket]![CN]` · events: AfterUpdate, DblClick, Exit
- CommandButton Open_Jobcode_Form "JC" · events: Click
- CommandButton Open_Storage_Location_Form "Loc" · events: Click
- CommandButton Open_More_Info_Form "+" · events: Click
- CommandButton open_source_test_entry_form " Enter/Edit Test Data" · events: Click
- CommandButton Print_Lot_Label "Tag" · events: Click
- TextBox ID = `ID` → GrowHub source_lot.lotId (yes)

## Form: Seed_Shipping_Ticket Subform
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_ASSOCIATES, NMIS_CONTACTS, NMIS_FISCAL_YEARS, NMIS_ID_ACTIVITIES, NMIS_SOURCE_LOTS, NMIS_TICKETS
- **Subforms:** Form.Seed_Balance2 Query subform, Form.Seed_Ship_Ticket_ID_ACTIVITIES subform
- **Opens:** Form:Close_Form, Form:Lot_ID_Input_Form2, Form:Lot_ID_Input_Form2c, Form:NMIS_ASSOCIATES, Form:NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC_shipping, Form:NMIS_CONTACTS, Form:NMIS_SOURCE_Card_2_TKT_S, Form:NMIS_SOURCE_Card_BACK, Form:Seed_Bank_Receiving_Work_List, Form:Seed_Bank_Work_Order_Ship_list, Form:Seed_Bank_Work_Order_Ship_list_by_Loc, Form:seed_combo_ticket, Form:seed_receiving_ticket, Form:seed_shipping_bag_tags, Form:seed_shipping_lot_label_040207, Form:seed_shipping_lot_label_by_Ticket, Form:seed_shipping_ticket, Form:seed_shipping_ticket_with_Test_Data, Report:Close_Form, Report:Lot_ID_Input_Form2, Report:Lot_ID_Input_Form2c, Report:NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC_shipping, Report:NMIS_CONTACTS, Report:NMIS_SOURCE_Card_2_TKT_S, Report:NMIS_SOURCE_Card_BACK, Report:Seed_Bank_Receiving_Work_List, Report:Seed_Bank_Work_Order_Ship_list, Report:Seed_Bank_Work_Order_Ship_list_by_Loc, Report:seed_combo_ticket, Report:seed_receiving_ticket, Report:seed_shipping_bag_tags, Report:seed_shipping_lot_label_040207, Report:seed_shipping_lot_label_by_Ticket, Report:seed_shipping_ticket, Report:seed_shipping_ticket_with_Test_Data
- **Migration:** 8 of 17 bound fields mapped. Main GrowHub screens: /shipping/create (3), /source-lots/new (1)

**Controls**
- ComboBox Find_Ticket "Find Ticket:" · rows: `SELECT NMIS_TICKETS.TKT_NO, NMIS_TICKETS.DESIRED_DATE, "(" & [DELIVERED_TO_ASSOCIATE] & ") " & [ASSOCIATE_NAME] & IIf([Historical],"  *Historical*") AS [TO], NMIS_TICKETS.EXT_DOC_REF, NMIS_TICKETS.NOTE FROM NMIS_TICKETS LEFT JOIN NMIS_ASSOCIATES ON NMIS_TICKETS.DELIVERED_TO_ASSOCIATE = NMIS_ASSOCIATES.ASSOCIATE WHERE (((NMIS_TICKETS.TICKET_TYPE)="s") AND ((NMIS_TICKETS.FY)=[View_FY])) ORDER BY NMI` · events: AfterUpdate, Enter  [FormHeader]
- ComboBox View_FY " View FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER DESC;` · default `=[Forms]![Switchboard]![FY_For_Reports]`  [FormHeader]
- CommandButton New_Ticket "New Ticket" · events: Click  [FormHeader]
- CommandButton Close "Close" · events: Click  [FormHeader]
- TextBox DELIVERED_TO_ASSOCIATE_backup  [FormHeader]
- Subform Seed_Balance2_ subform subform `Form.Seed_Balance2 Query subform` (master SOURCE_LOT_CN → child SOURCE_LOT_CN)  [FormHeader]
- TextBox Source_Lot_CN = `=[Seed_Ship_Ticked_ID_ACTIVITIES subform].[Form]![SOURCE_LOT_CN]`  [FormHeader]
- ComboBox View_Lot " View Lot:" · rows: `SELECT NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_LOTS.CATEGORY_CODE, NMIS_ID_ACTIVITIES.ACTIVITY_UNITS, NMIS_ID_ACTIVITIES.TICKET_CN FROM NMIS_SOURCE_LOTS INNER JOIN NMIS_ID_ACTIVITIES ON NMIS_SOURCE_LOTS.CN = NMIS_ID_ACTIVITIES.SOURCE_LOT_CN GROUP BY NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_LOTS.CATEGORY_CODE, NMIS_ID_ACTIVITIES.ACTIVITY_UNITS, NMIS_ID_ACTIVITIES.TICKET_CN HAVING (((NMIS_ID_ACTIVITIES.TICKET_CN)=` · default `"*"` · events: AfterUpdate, DblClick, Enter  [FormHeader]
- TextBox DESIRED_DATE "Date" = `DESIRED_DATE` · events: DblClick, Enter → GrowHub source_shipment.shipDate (yes)
- TextBox CHARGE_PER_TICKET "Charge Per Ticket" = `CHARGE_PER_TICKET` → GrowHub source_shipment.shippingFees (yes)
- TextBox GBL_PCT "GBL %" = `GBL_PCT`
- ComboBox DELIVERED_TO_ASSOCIATE "Code" = `DELIVERED_TO_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," *Historical*") AS AN, NMIS_ASSOCIATES.DEPARTMENT FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.HISTORICAL) Like IIf(Not ([NMIS_ASSOCIATES].[HISTORICAL])=IsNull([Forms]![Seed_Shipping_Ticket Subform]![DELIVERED_TO_ASSOCIATE]),"*",False))) ORDER BY NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," *Historical*");` · events: AfterUpdate, DblClick, Enter
- ComboBox DELIVERED_BY_ASSOCIATE "Delivered By " = `DELIVERED_BY_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;` · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]`
- TextBox NOTE "Note" = `NOTE` → GrowHub processing_activity.notes (yes)
- ComboBox NURSERY_ASSOCIATE "Nursery Associate" = `NURSERY_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.NURSERY)=Yes)) ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;` · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]` → GrowHub source_shipment.shippedFrom (yes)
- Subform Seed_Ship_Ticked_ID_ACTIVITIES subform subform `Form.Seed_Ship_Ticket_ID_ACTIVITIES subform` (master CN → child TICKET_CN) · events: Enter
- TextBox Index = `Index`
- TextBox CN = `CN` → GrowHub source_lot.accessLegacyId (yes)
- TextBox FY "FY:" = `FY` · default `=[View_FY]` · events: DblClick, Enter
- TextBox TKT_NO "Ticket ID:" = `TKT_NO` · events: DblClick, Enter, Exit
- TextBox EXT_DOC_REF "Ship Ref:" = `EXT_DOC_REF` → GrowHub source_shipment.carrierTrackingInfo (yes)
- ComboBox NURSERY_CONTACT_CN "Nursery Contact:" = `NURSERY_CONTACT_CN` · rows: `SELECT NMIS_CONTACTS.CN, [LAST_NAME] & ", " & [FIRST_NAME] & IIf([historical]," (hist)") AS Name FROM NMIS_CONTACTS WHERE (((NMIS_CONTACTS.HISTORICAL) Like IIf(IsNull([Forms]![Seed_Shipping_Ticket Subform]![NURSERY_CONTACT_CN]),"0","*")) AND ((NMIS_CONTACTS.HOME_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code])) ORDER BY [LAST_NAME] & ", " & [` · events: Enter
- CommandButton Create Shipping Ticket "Ship Ticket" · events: Click
- ComboBox Default_Activity_Code · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.NOTE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) In ("CONE","SDEXTR","SDTRAN","SDTRMT"))) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;`
- TextBox Default_No_Boxes · default `1`
- ComboBox Default_Payee · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;`
- TextBox Default_Mgmt_Code
- ComboBox DELIVERED_TO_ASSOCIATE_Name " Associate Name" = `DELIVERED_TO_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," *Historical*") AS AN, NMIS_ASSOCIATES.DEPARTMENT FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.HISTORICAL) Like IIf(Not ([NMIS_ASSOCIATES].[HISTORICAL])=IsNull([Forms]![Seed_Shipping_Ticket Subform]![DELIVERED_TO_ASSOCIATE]),"*",False))) ORDER BY [ASSOCIATE_NAME] & IIf([historical]," *Historical*");` · events: AfterUpdate, DblClick, Enter, Exit, GotFocus
- TextBox Text50 "Text50:" = `TKT_NO`
- TextBox New_CN = `=[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code`
- CommandButton Create_Shipping_Ticket_with_Test_Data "Ship Ticket with Test Data"
- CommandButton Create_Withdrawal_form "Withdrawal Form" · events: Click
- CommandButton Shipping_Bag_Tags "Shipping Bag Tags" · events: Click
- CheckBox Show_All_Activities "Show All Activities" · default `False`
- ComboBox Combo73 = `TICKET_TYPE` · rows: `S;Ship/Retest/Etc;SW;Sow Withdrawal` · default `"S"`
- CommandButton Mailing_Labels_Intermec "Mailing Label (Intermec)" · events: Click
- CommandButton NMIS_SOURCE_CARD "Source Card 2" · events: Click
- CommandButton NMIS_SOURCE_CARD_BACK "Source Card Back" · events: Click
- CommandButton Create Combo Ticket "Combo Ticket" · events: Click
- CommandButton Create_Receive_Ticket "Receive Ticket" · events: Click
- CommandButton Seed_Box_Label "Seed Box Label" · events: Click
- CommandButton Seed_Box_Mini_Label "Seed Box Mini-Label" · events: Click
- ComboBox Client_Contact_CN "Client Contact:" = `CONTACT_CN` · rows: `SELECT NMIS_CONTACTS.CN, [LAST_NAME] & ", " & [FIRST_NAME] & IIf([historical]," (hist)") AS Name FROM NMIS_CONTACTS WHERE (((NMIS_CONTACTS.HISTORICAL) Like IIf(IsNull([Forms]![Seed_Shipping_Ticket Subform]![NURSERY_CONTACT_CN]),"0","*"))) ORDER BY [LAST_NAME] & ", " & [FIRST_NAME] & IIf([historical]," (hist)");` · events: DblClick
- CommandButton Create_Withdrawal_form2 "Withdrawal Form2" · events: Click
- CommandButton Receive_Form "Receive Form" · events: Click
- CommandButton Lot_Labels_by_Ticket "Lot Labels" · events: Click

## Form: Seed_Sow_Withdrawal_Ticket Subform
- **Caption:** Seed Sowing Withdrawal Ticket
- **Menu path:** Switchboard › Seed_Sow_Withdrawal_Ticket Subform
- **Record source:** NMIS_TICKETS
- **Order by:** NMIS_TICKETS.TKT_NO
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_ASSOCIATES, NMIS_CONTACTS, NMIS_FISCAL_YEARS, NMIS_ID_ACTIVITIES, NMIS_SOURCE_LOTS, NMIS_TICKETS
- **Subforms:** Form.Seed_Balance2 Query subform, Form.Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform
- **Opens:** Report:Close_Form, Report:NMIS_SOURCE_Card_2_TKT_SW, Report:NMIS_SOURCE_Card_BACK, Report:Seed_Bank_Stratification_Record, Report:Seed_Bank_Work_Order_Sow_list, Report:Seed_Bank_Work_Order_Sow_list2, Report:seed_sow_withdrawal_ticket, Report:seed_sow_withdrawal_ticket_with_Test_Data
- **Migration:** 13 of 22 bound fields mapped. Main GrowHub screens: /shipping/create (5), /source-lots/new (1)

**Controls**
- ComboBox Find_Ticket "Find Ticket:" · rows: `SELECT NMIS_TICKETS.TKT_NO, NMIS_TICKETS.NOTE FROM NMIS_ASSOCIATES RIGHT JOIN NMIS_TICKETS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_TICKETS.DELIVERED_TO_ASSOCIATE WHERE (((NMIS_TICKETS.TICKET_TYPE)="sw") AND ((NMIS_TICKETS.FY)=[View_FY])) ORDER BY NMIS_TICKETS.TKT_NO DESC;` · events: AfterUpdate, Enter  [FormHeader]
- ComboBox View_FY " View FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER DESC;` · default `=[Forms]![Switchboard]![FY_For_Reports]`  [FormHeader]
- CommandButton New_Ticket "New Ticket" · events: Click  [FormHeader]
- CommandButton Close "Close" · events: Click  [FormHeader]
- Subform Seed_Balance2_ subform subform `Form.Seed_Balance2 Query subform` (master SOURCE_LOT_CN → child SOURCE_LOT_CN)  [FormHeader]
- TextBox Source_Lot_CN = `=[Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].[Form]![SOURCE_LOT_CN]`  [FormHeader]
- ComboBox View_Lot " View Lot:" · rows: `SELECT NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_LOTS.CATEGORY_CODE FROM NMIS_SOURCE_LOTS INNER JOIN NMIS_ID_ACTIVITIES ON NMIS_SOURCE_LOTS.CN = NMIS_ID_ACTIVITIES.SOURCE_LOT_CN GROUP BY NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_LOTS.CATEGORY_CODE, NMIS_ID_ACTIVITIES.TICKET_CN HAVING (((NMIS_ID_ACTIVITIES.TICKET_CN)=[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![CN]));` · default `"*"` · events: AfterUpdate, DblClick, Enter  [FormHeader]
- TextBox DESIRED_DATE "Act. Date:" = `DESIRED_DATE` · events: DblClick, Enter → GrowHub source_shipment.shipDate (yes)
- TextBox CHARGE_PER_TICKET "Charge Per Ticket" = `CHARGE_PER_TICKET` → GrowHub source_shipment.shippingFees (yes)
- TextBox GBL_PCT "GBL %" = `GBL_PCT`
- ComboBox DELIVERED_TO_ASSOCIATE "To Code" = `DELIVERED_TO_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;` · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]`
- ComboBox DELIVERED_BY_ASSOCIATE "Delivered By Associate" = `DELIVERED_BY_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;` · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]`
- TextBox NOTE "Note" = `NOTE` → GrowHub processing_activity.notes (yes)
- ComboBox NURSERY_ASSOCIATE "Nursery Associate" = `NURSERY_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_ASSOCIATES.NURSERY FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.NURSERY)=Yes));` · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]` → GrowHub source_shipment.shippedFrom (yes)
- Subform Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform subform `Form.Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform` (master CN → child TICKET_CN) · events: Enter
- TextBox Index = `Index`
- TextBox CN = `CN` → GrowHub source_lot.accessLegacyId (yes)
- TextBox FY "FY:" = `FY` · default `=[View_FY]` · events: DblClick, Enter
- TextBox TKT_NO "Ticket ID:" = `TKT_NO` · events: DblClick, Enter, Exit
- TextBox EXT_DOC_REF "Ship Ref:" = `EXT_DOC_REF` → GrowHub source_shipment.carrierTrackingInfo (yes)
- ComboBox NURSERY_CONTACT_CN "Nursery Contact:" = `NURSERY_CONTACT_CN` · rows: `SELECT NMIS_CONTACTS.CN, [LAST_NAME] & ", " & [FIRST_NAME] & IIf([historical]," (hist)") AS Name FROM NMIS_CONTACTS WHERE (((NMIS_CONTACTS.HOME_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]) AND ((NMIS_CONTACTS.HISTORICAL) Like IIf(IsNull([Forms]![Seed_Sow_Withdrawal_Ticket Subform]![NURSERY_CONTACT_CN]),"0","*"))) ORDER BY [LAST_NAME] & ",` · events: Enter
- CommandButton Create Shipping Ticket "Withdraw Ticket" · events: Click
- ComboBox Default_Activity_Code · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.NOTE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) In ("CONE","SDEXTR","SDTRAN","SDTRMT"))) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;`
- TextBox Default_No_Boxes · default `1`
- ComboBox Default_Payee · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;`
- TextBox Default_Mgmt_Code
- ComboBox Combo45 " Sow Associate Name" = `DELIVERED_TO_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;` · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]`
- TextBox New_CN = `=[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code`
- CommandButton Create Shipping Ticket_with_test_data "Withdraw Ticket With Test Data" · events: Click
- CommandButton Click_to_View_Stratification_Record_Form "Stratification Record Form" · events: Click
- CheckBox Show_All_Activities "Show All Activities" · default `False`
- CommandButton Create_Withdrawal_form "Withdrawal Form" · events: Click
- ComboBox Ticket_Type = `TICKET_TYPE` · rows: `S;Ship/Retest/Etc;SW;Sow Withdrawal` · default `"SW"` · events: DblClick, Enter, Exit
- TextBox Desired_Date2 "Date" = `DESIRED_DATE` · default `=Date()` · events: DblClick, Enter → GrowHub source_shipment.shipDate (yes)
- TextBox Text62 "Charge Per Ticket" = `CHARGE_PER_TICKET` → GrowHub source_shipment.shippingFees (yes)
- TextBox Text64 "GBL %" = `GBL_PCT`
- ComboBox Combo66 "Code" = `DELIVERED_TO_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_ASSOCIATES.DEPARTMENT FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME;` · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]`
- ComboBox Combo68 "Delivered By " = `DELIVERED_BY_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;` · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]`
- ComboBox Combo70 "Nursery Associate" = `NURSERY_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.NURSERY)=Yes)) ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;` · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]` → GrowHub source_shipment.shippedFrom (yes)
- ComboBox DELIVERED_TO_ASSOCIATE_Name " Associate Name" = `DELIVERED_TO_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_ASSOCIATES.DEPARTMENT FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;` · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]`
- CommandButton NMIS_SOURCE_CARD "Source Card 2" · events: Click
- CommandButton NMIS_SOURCE_CARD_BACK "Source Card Back" · events: Click
- TextBox Default_Strat_Date
- TextBox Default_Activity_Date "Activity Date:" · default `=Date()`
- CommandButton Create_Withdrawal_form2 "Withdrawal Form 2" · events: Click

## Form: Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform
- **Caption:** Seed_Ship_Ticked_ID_ACTIVITIES subform
- **Menu path:** Switchboard › Seed_Sow_Withdrawal_Ticket Subform › Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform
- **Record source:** SELECT NMIS_SOURCE_LOTS.ID, NMIS_ID_ACTIVITIES.AGREEMENT_LOT_CN, NMIS_ID_ACTIVITIES.ACTIVITY_DATE, NMIS_ID_ACTIVITIES.FISCAL_YEAR, NMIS_ID_ACTIVITIES.ACTIVITY_CODE, NMIS_ID_ACTIVITIES.ACTIVITY_UNITS, NMIS_ID_ACTIVITIES.ACTIVITY_UNITS_PRESCRIBED, NMIS_ID_ACTIVITIES.ACTIVITY_TIME, NMIS_ID_ACTIVITIES.ACTIVITY_HOURS, NMIS_ID_ACTIVITIES.AMT_PER_UNIT, NMIS_ID_ACTIVITIES.UNIT_CODE, NMIS_ID_ACTIVITIES.TREATMENT_PRODUCT_ID, NMIS_ID_ACTIVITIES.CONTRACT_ITEM, NMIS_ID_ACTIVITIES.CHARGE_PER_HOUR_OVERRIDE, NMIS_ID_ACTIVITIES.CHARGE_PER_AMT_OVERRIDE, NMIS_ID_ACTIVITIES.CHARGE_PER_UNIT_OVERRIDE, NMIS_ID_ACTIVITIES.CHARGE_PER_ACTIVITY_OVERRIDE, NMIS_ID_ACTIVITIES.NOTE, NMIS_ID_ACTIVITIES.DESTINATION_ASSOCIATE, NMIS_ID_ACTIVITIES.SOURCE_LOT_CN, NMIS_ID_ACTIVITIES.AGREEMENT_LOT_CN, NMIS_ID_ACTIVITIES.ORDER_CN, NMIS_ID_ACTIVITIES.TICKET_CN, NMIS_ACTIVITY_CODES.ACTIVITY_NAME AS ACTIVITY_NO_NAME, NMIS_ID_ACTIVITIES.Index, NMIS_ACTIVITY_CODES.BALANCE_EFFECT, NMIS_ID_ACTIVITIES.AMT_PER_UNIT, (IIf([BALANCE_EFFECT]="NOEFFECT",0,1))*[ACTIVITY_UNITS] AS ACTIVITY_UNITS_TO_SUM, NMIS_ID_ACTIVITIES.CN FROM NMIS_SOURCE_LOTS INNER JOIN (NMIS_ACTIVITY_CODES INNER JOIN NMIS_ID_ACTIVITIES ON NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ID_ACTIVITIES.ACTIVITY_CODE) ON NMIS_SOURCE_LOTS.CN = NMIS_ID_ACTIVITIES.SOURCE_LOT_CN WHERE (((NMIS_SOURCE_LOTS.ID) Like [Forms]![Seed_Sow_Withdrawal_Ticket Subform]![View_Lot] & "*")) ORDER BY NMIS_SOURCE_LOTS.ID, NMIS_ID_ACTIVITIES.AGREEMENT_LOT_CN, NMIS_ID_ACTIVITIES.ACTIVITY_DATE, NMIS_ID_ACTIVITIES.AGREEMENT_LOT_CN;
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_AGREEMENT_LOTS, NMIS_FISCAL_YEARS, NMIS_ID_ACTIVITIES, NMIS_SOURCE_LOTS, NMIS_SPECIES_PRODUCTS, NMIS_TICKETS, NMIS_UNITS
- **Opens:** Form:NMIS_ACTIVITY_CODES, Form:NMIS_AGREEMENT_LOTS, Form:NMIS_ID_ACTIVITIES_MORE_INFO_Ship_Tkt_FORM, Form:NMIS_ID_LOCATIONS_for_Sow_Withdrawal subform, Form:NMIS_ID_MGMT_CODES_Ship_Ticket subform, Form:NMIS_ID_MGMT_CODES_Sow_Withdrawal_Ticket subform, Form:seed_shipping_lot_label_SW, Form:seed_shipping_lot_label_sw_040207, Report:NMIS_ACTIVITY_CODES, Report:NMIS_ID_ACTIVITIES_MORE_INFO_Ship_Tkt_FORM, Report:NMIS_ID_LOCATIONS_for_Sow_Withdrawal subform, Report:NMIS_ID_MGMT_CODES_Ship_Ticket subform, Report:NMIS_ID_MGMT_CODES_Sow_Withdrawal_Ticket subform, Report:seed_shipping_lot_label_SW, Report:seed_shipping_lot_label_sw_040207
- **Form events with code:** AfterInsert, BeforeInsert, BeforeUpdate
- **Migration:** 9 of 14 bound fields mapped. Main GrowHub screens: /source-lots/new (5), /orders/new (2)

**Controls**
- TextBox LastActivityCN  [FormHeader]
- ComboBox FISCAL_YEAR = `FISCAL_YEAR` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![FY]`
- ComboBox ACTIVITY_CODE = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.BALANCE_EFFECT, NMIS_ACTIVITY_CODES.NOTE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) In ("CONE","SDEXTR","SDTRAN","SDTRMT"))) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;` · default `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![Default_Activity_Code]` · events: DblClick, Enter → GrowHub processing_activity.activityType (yes)
- TextBox ACTIVITY_UNITS = `ACTIVITY_UNITS` · events: Enter, Exit → GrowHub processing_activity.quantity (yes)
- TextBox ACTIVITY_DATE = `ACTIVITY_DATE` · default `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![Default_Activity_Date]` → GrowHub processing_activity.activityDate (yes)
- ComboBox UNIT_CODE = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS;` · default `"LB"` → GrowHub processing_activity.unitOfMeasurement (yes)
- ComboBox SOURCE_LOT_CN = `SOURCE_LOT_CN` · rows: `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE, NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE FROM NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN WHERE (((NMIS_SOURCE_LOTS.ID) Not Like "@*")) ORDER BY NMIS_SOURCE_LOTS.ID;` · events: Enter, Exit → GrowHub order_cycle_planning.sourceLotUuid (blank)
- ComboBox Combo19 = `SOURCE_LOT_CN` · rows: `SELECT NMIS_SOURCE_LOTS.CN, Source_Lot_ID_and_Source_string.SOURCE, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN ORDER BY Source_Lot_ID_and_Source_string.SOURCE;` → GrowHub order_cycle_planning.sourceLotUuid (blank)
- TextBox NOTE = `NOTE` · default `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![NOTE]` → GrowHub processing_activity.notes (yes)
- TextBox New_CN = `=[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code`
- TextBox CN = `CN` → GrowHub source_lot.accessLegacyId (yes)
- ComboBox AGREEMENT_LOT_CN = `AGREEMENT_LOT_CN` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.ID_ORIGINAL, [Species_Product_and _Products].Class, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY, NMIS_AGREEMENT_LOTS.SOURCE_REQUIRED FROM NMIS_AGREEMENT_LOTS INNER JOIN [Species_Product_and _Products] ON NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN = [Species_Product_and _Products].CN WHERE (((NMIS_AGREEMENT_LOTS.BEG` · events: DblClick, Enter
- ComboBox Combo121 = `AGREEMENT_LOT_CN` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_SPECIES_PRODUCTS.SOWING_GROUP FROM NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN=NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN;`
- TextBox DESTINATION_ASSOCIATE = `DESTINATION_ASSOCIATE`
- ComboBox TICKET_CN = `TICKET_CN` · rows: `SELECT NMIS_TICKETS.CN, NMIS_TICKETS.TKT_NO FROM NMIS_TICKETS WHERE (((NMIS_TICKETS.TICKET_TYPE) Like "s*")) ORDER BY NMIS_TICKETS.FY DESC , NMIS_TICKETS.TKT_NO DESC;` · default `=[Forms]![Seed_Sow_Withdrawal_Ticket]![CN]` · events: AfterUpdate, DblClick, Exit
- CommandButton Open_Jobcode_Form "JC" · events: Click
- CommandButton Open_Storage_Location_Form "Loc" · events: Click
- CommandButton Open_More_Info_Form "+" · events: Click
- TextBox Index = `Index`
- CommandButton Enter_Strat_Activity "Enter Strat Activity" · events: Click
- CommandButton Print_Lot_Label "Tag" · events: Click

## Form: SOURCE_CODE_TYPE Subform
- **Caption:** SOURCE_CODE_TYPE Subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › SOURCE_CODE_TYPE Subform
- **Record source:** SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.SOURCE_CODE_TYPE FROM NMIS_ASSOCIATES;
- **Backend tables:** NMIS_ASSOCIATES
- **Migration:** 1 of 2 bound fields mapped. Main GrowHub screens: /admin/client-management/new (1), /source-lots/new (1), /financial-management/invoicing/create (1)

**Controls**
- TextBox ASSOCIATE = `ASSOCIATE` → GrowHub client.clientId (blank)
- ComboBox SOURCE_CODE_TYPE = `SOURCE_CODE_TYPE` · rows: `R1;R5;R6;R9;BLM`

## Form: Source_Material_Work_List
- **Caption:** Source Material Work Order List
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Source_Material_Work_List
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_PRODUCTS, NMIS_SOURCE_LOTS, NMIS_SPECIES_PRODUCTS
- **Opens:** Report:NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE, Report:Seed_Bank_Work_Order_Checklist, Report:Seed_Bank_Work_Order_list
- **Opened from:** Form_Reports_Menu_Production Subform

**Controls**
- ComboBox Plntmstr_Symbol "Like Species:" · rows: `SELECT NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM (NMIS_PRODUCTS INNER JOIN ((NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) INNER JOIN NMIS_SPECIES_PL` · default `"*"` · events: Enter, Exit
- ComboBox Product_Class "Like Stock Type:" · rows: `SELECT NMIS_PRODUCTS.PRODUCT_CLASS FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) Like [Forms]![Source_Material_Work_List]![Plntmstr_Symbol]) AND ((Left$([nmis_products].[CATEGORY_CODE],1)) ` · default `"*"` · events: Exit
- CommandButton Print Work Orders "Click to Preview/Print Withdrawal Requests" · events: Click
- ComboBox BorC "Cost Center:" · rows: `*;Bareroot and Container;B;Bareroot;C;Container` · default `"*"`
- CheckBox Hide Withdrawn Lots "Hide Withdrawn Lots" · default `True`
- CommandButton Print Work Orders_Checklist "Click to Preview/Print Withdrawal Checklist" · events: Click
- TextBox Ordered_By "Ordered by:"
- TextBox Ticket_ID "Order #:"
- TextBox Date "Date:"

## Form: Source_Material_Work_Order_By_Lot_ID_Range
- **Caption:** Source Material Work Order
- **Menu path:** Switchboard › Source_Material_Work_Order_By_Lot_ID_Range
- **Backend tables:** NMIS_AGREEMENTS, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_SOURCE_LOTS
- **Opens:** Report:NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE, Report:Seed_Bank_Work_Order_by_ID_Range
- **Opened from:** Form_Reports_Menu_Production Subform

**Controls**
- ComboBox Stored_At_Associate "Stored At Associate:" · rows: `SELECT [NMIS_SOURCE_LOTS].[STORED_AT_ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES INNER JOIN (NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENTS ON [NMIS_SOURCE_LOTS].[CN]=[NMIS_AGREEMENTS].[SOURCE_LOT_CN]) ON ([NMIS_ASSOCIATES].[ASSOCIATE]=[NMIS_SOURCE_LOTS].[STORED_AT_ASSOCIATE]) AND ([NMIS_ASSOCIATES].[ASSOCIATE]=[NMIS_SOURCE_LOTS].[STORED_AT_ASSOCIATE]) GROUP BY [NMIS_SOURCE_LO`
- ComboBox Begin_ID "Begin ID / Entry Order:" · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, [ID] & " / " & [index] AS [ID / Ent Ord], NMIS_AGREEMENT_LOTS.Index AS [Entry Order], Source_Lot_ID_and_Source_string.ID_SOURCE2 AS Source, NMIS_AGREEMENT_LOTS.BEGIN_FY AS [Begin FY], NMIS_AGREEMENT_LOTS.INSERTED_DATE FROM Source_Lot_ID_and_Source_string INNER JOIN NMIS_AGREEMENT_LOTS ON Source_Lot_ID_and_Source_string.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN WHERE (((` · events: Change, Enter
- ComboBox End_ID "End ID / Entry Order:" · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, [ID] & " / " & [index] AS [ID / Ent Ord], NMIS_AGREEMENT_LOTS.Index AS [Entry Order], Source_Lot_ID_and_Source_string.ID_SOURCE2 AS Source, NMIS_AGREEMENT_LOTS.BEGIN_FY AS [Begin FY], NMIS_AGREEMENT_LOTS.INSERTED_DATE FROM Source_Lot_ID_and_Source_string INNER JOIN NMIS_AGREEMENT_LOTS ON Source_Lot_ID_and_Source_string.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN WHERE (((` · events: Enter
- CommandButton Print Work Orders "Click to Preview/Print Requests" · events: Click
- TextBox FY "FY:" · default `=[Forms]![Switchboard]![FY_For_Reports]`
- CheckBox Sort_By_Entry_Order "By Entry Order:" · default `True`

## Form: SOW_REQUEST_REPORTS
- **Caption:** Sowing Request Reports
- **Menu path:** Switchboard › REPORTS Form › SOW_REQUEST_REPORTS
- **Backend tables:** NMIS_AGREEMENTS, NMIS_ASSOCIATES, NMIS_CONTACTS, NMIS_FISCAL_YEARS
- **Opens:** Report:OutYears_Report_Detailed_by_Forest, Report:OutYears_Report_SPD_Query, Report:OutYears_Report_Summary_Forest_Dist_species, Report:OutYears_Report_Summary_Forest_Species, Report:OutYears_Report_Summary_Grand_by_Region, Report:OutYears_Report_Summary_Species, Report:OutYears_Report_Summary_by_Forest_Dist_Species_Product, Report:OutYears_Report_Summary_by_Region, Report:OutYears_Report_Summary_by_Region2, Report:OutYears_Report_Summary_grand, Report:OutYears_Report_Summary_grand_Forest_Sub, Report:OutYears_Report_Summary_grand_Species_Sub, Report:OutYears_Report_Summary_grand_by_Product, Report:OutYears_Report_Summary_grand_by_Product2
- **Opened from:** Form_REPORTS Form, Form_Reports_Menu_Misc Subform, Form_Reports_Menu_Production Subform

**Controls**
- CommandButton OutYears_Report_Detailed_by_Forest "Forest and District with Lot Detail" · events: Click
- ComboBox Begin_FY "Begin FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `"*"`
- ComboBox End_FY ">= End FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![Switchboard]![FY_For_Reports]+1`
- CommandButton OutYears_Report_Summary_Grand_Species_Sub "Summary by Species" · events: Click
- ComboBox Plntmstr_Symbol "Species Code:" · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY;` · default `"*"`
- ComboBox Like_Client "Like Client:" · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;` · default `"*"` · events: AfterUpdate, DblClick
- CommandButton OutYears_Report_Summary_by_Forest_Dist_Species_Product "Forest and District by Species Product" · events: Click
- CommandButton OutYears_Report_Summary_by_Forest_Dist_by_Species "Forest and District Summary by Species" · events: Click
- CommandButton OutYears_Report_Summary_by_Forestt_by_Species "Forest Summary by Species" · events: Click
- CommandButton OutYears_Report_Summary_Grand_Client_Sub "Summary by Client" · events: Click
- CommandButton OutYears_Report_Summary_Grand "Grand Summary" · events: Click
- CommandButton OutYears_Report_Summary_Grand_by_Product "Grand Summary by Product by Begin Year" · events: Click
- CommandButton Regional_Summary_With_Forest_Level_Detail "Regional Summary by Forest Level Detail" · events: Click
- CommandButton Regional_Summary "Summary by Region without Stocktype" · events: Click
- TextBox Comment "Comments:"
- CommandButton Regional_Summary_Without_Forest_Level_Detail "Summary by Region With Stocktype" · events: Click
- CommandButton OutYears_Report_Summary_Grand_by_Product2 "Grand Sum by Product" · events: Click
- ComboBox Diverse "Traditional/Non-Traditonal Species" · rows: `0;Traditional;-1;Non-Traditional;*;All` · default `"*"` · events: AfterUpdate, DblClick
- ComboBox Contact_CN " Like Contact:" · rows: `SELECT NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] AS Name FROM NMIS_CONTACTS INNER JOIN NMIS_AGREEMENTS ON NMIS_CONTACTS.CN = NMIS_AGREEMENTS.CONTACT_CN WHERE (((NMIS_CONTACTS.HISTORICAL)=False) AND ((NMIS_AGREEMENTS.CLIENT_ASSOCIATE) Like [Forms]![SOW_REQUEST_REPORTS]![Like_Client] & "*")) GROUP BY NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name])` · events: DblClick, Enter
- CommandButton OutYears_Report_Summary_by_Species "Species Summary" · events: Click
- CommandButton OutYears_Report_Summary_Grand_by_Product_SPD "Grand Sum by Product Spreadsheet" · events: Click

## Form: Species_Product_End_Product_Group  subform
- **Caption:** Species_Product_End_Product_Group  subform
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › Species_Product_End_Product_Group  subform
- **Record source:** SELECT [NMIS_AGREEMENT_LOTS].[CN] AS NMIS_AGREEMENT_LOTS_CN, [NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN], [Species_Product_End_Prod_Group_and_Desc].[CN] AS Species_Product_End_Prod_Group_and_Desc_CN, [Species_Product_End_Prod_Group_and_Desc].[PRODUCT_GROUP] FROM Species_Product_End_Prod_Group_and_Desc INNER JOIN NMIS_AGREEMENT_LOTS ON [Species_Product_End_Prod_Group_and_Desc].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN];
- **Backend tables:** NMIS_AGREEMENT_LOTS
- **Migration:** 0 of 1 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox PRODUCT_GROUP = `PRODUCT_GROUP`

## Form: Species_Products_Reports
- **Caption:** Species Products Reports
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › Species_Products_Reports
- **Backend tables:** NMIS_PRODUCTS, NMIS_PRODUCT_TYPES, NMIS_SPECIES_PRODUCTS
- **Opens:** Report:NMIS_SPECIES_PRODUCTS_AND_CYCLES, Report:NMIS_SPECIES_PRODUCTS_AND_CYCLES_Current_Crop, Report:NMIS_SPECIES_PRODUCTS_AND_FACTORS, Report:NMIS_SPECIES_PRODUCTS_CHECKLIST
- **Opened from:** Form_Reports_Menu_Maintenance Subform
- **Form events with code:** Open

**Controls**
- CommandButton Species_Products_With_Sow_Factors "Species Products With Sow Factors" · events: Click
- CommandButton Species_Products_With_Cycles "Species Products With Inventory Cycles" · events: Click
- ComboBox Filter_for_Species · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.DIVERSE FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY` · default `"*"` · events: Enter
- ComboBox Filter_For_Product · rows: `SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & IIf([nmis_products].[historical]," (Historical)") AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.PRODUCT_CLASS, [NMIS_PRODUCT_TYPES].[PRODUCT_TYPE_DESC] & " " AS [Begin Product], [NMIS_PRODUCT_TYPES_1].[PRODUCT_TYPE_DESC] & " " AS [End Product], [CATEGORY_CODE] & " " AS Category, NMIS_PRODUCTS.HISTORICAL FROM NMIS_PRODUCT_TYPES AS NMIS_PRODUCT_TYPES_1 INNER JOIN (N` · default `"*"` · events: Change, Enter
- ComboBox Filter_for_Product_Type · rows: `B;Bareroot Plant;C;Container Plant;N;Native Propagules;*;All Product Types` · default `"*"` · events: Change
- CommandButton Species_Products "Species Products " · events: Click
- CheckBox Hide_Historical "Hide Historical" · default `True`
- ComboBox Species_Type · rows: `*;Traditional and Non-Traditional;0;Traditional;-1;Non-Traditional` · default `"*"` · events: AfterUpdate
- TextBox Like_Grow_Unit · default `"*"`
- CommandButton Wildcard_Tip "Wildcard Tip" · events: Click
- CommandButton Species_Products_With_Cycles_Current_Crop "Species Products With Inv Cycles-Current Crop Only" · events: Click
- CheckBox Show_Lots "Show Lots" · default `False`
- TextBox Like_Description · default `"*"`

## Form: SpeciesProductAgreementLotSubform
- **Caption:** NMIS TREATMENT PRODUCTS
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_SPECIES_PRODUCTS Form › SpeciesProductAgreementLotSubform
- **Record source:** SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN, NMIS_AGREEMENT_LOTS.INSERTED_BY, NMIS_AGREEMENT_LOTS.INSERTED_DATE, NMIS_AGREEMENT_LOTS.MODIFIED_BY, NMIS_AGREEMENT_LOTS.MODIFIED_DATE FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.END_FY DESC , NMIS_AGREEMENT_LOTS.ID;
- **Backend tables:** NMIS_AGREEMENT_LOTS
- **Migration:** 2 of 7 bound fields mapped. Main GrowHub screens: /orders/new (1)

**Controls**
- TextBox TREATMENT_PRODUCT_ID = `ID` → GrowHub grow_request.growLotId (blank)
- TextBox TREATMENT_PRODUCT_DESC = `BEGIN_FY` → GrowHub order_cycle_planning.plannedSowDate (blank)
- TextBox Text11 = `End_FY`
- TextBox Text15 = `Inserted_by`
- TextBox Text17 = `Modified_by`
- TextBox Text19 = `Inserted_Date`
- TextBox Text21 = `Modified_Date`

## Form: Switchboard
- **Caption:** Main Switchboard
- **Menu path:** Switchboard
- **Record source:** Switchboard Items
- **Subforms:** Form.NMIS_ACCESS_USER_NURSERY subform, Form.NMIS_ACCESS_VERSION subform, Form.NMIS_FISCAL_YEAR_Current
- **Opened from:** Form_Lookup_Tables_Menu Subform, Form_xAbout_Splash_Screen, Form_xLookup_Tables_Menu, Form_xnot_implemented, Form_xnot_not_valid_double_click_to_to_update
- **Form events with code:** Current, Open

**Controls**
- CommandButton Option1 "Source..."
- CommandButton Option2 "Production..."
- CommandButton Option3 "Processing..."
- CommandButton Option4 "Shipping..."
- CommandButton Option5 "Reports and Forms..."
- CommandButton Option6 "Maintenance..."
- CommandButton Option7 "Exit NMIS"
- CommandButton Option8
- Subform NMIS_ACCESS_SET_USER_NURSERY subform subform `Form.NMIS_ACCESS_USER_NURSERY subform` (master  → child )
- Subform NMIS_2000_VERSION subform subform `Form.NMIS_ACCESS_VERSION subform` (master  → child )
- TextBox Current_User_Name
- Subform NMIS_FISCAL_YEAR_Current subform `Form.NMIS_FISCAL_YEAR_Current` (master  → child )
- TextBox FY_For_Reports "FY for Reports:" · default `=[NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_TEXT]`
- TextBox Current FY: "Current FY:" · default `=[NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_TEXT]`
- ObjectFrame OLEUnbound52

## Form: Ticket_Container_Summary
- **Caption:** Ticket/TSO Unit Summary
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › Ticket_Container_Summary
- **Opened from:** Form_NMIS_SHIPPING_TICKET subform
- **Migration:** 0 of 6 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox Ticket_No = `=IIf(IsNull([Forms]![NMIS_SHIPPING_TICKET subform]![EXT_DOC_REF]),"Ticket " & [Forms]![NMIS_SHIPPING_TICKET subform]![TKT_NO],"TSO " & [Forms]![NMIS_SHIPPING_TICKET subform]![EXT_DOC_REF])`  [FormHeader]
- CommandButton Print_Ticket_Container_Summary_Form "Command24" · events: Click  [FormHeader]
- TextBox Units = `Units`
- TextBox UNIT_CODE = `UNIT_CODE`
- TextBox UNIT_DESC = `UNIT_DESC`
- TextBox Text18 = `Rack Est`
- TextBox Text21 = `AREA_PER_CONTAINER`
- TextBox TKT_NO = `TKT_NO`
- TextBox Text15 = `=Sum([Units])`  [FormFooter]
- TextBox Text19 = `=Sum([Rack Est])`  [FormFooter]

## Form: Transaction_Totals_By_Location_and_amt_per_unit1a subform
- **Caption:** Transaction_Totals_By_Location_and_amt_per_unit1 subform
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › Transaction_Totals_By_Location_and_amt_per_unit1a subform
- **Record source:** Transaction_Totals_for_ID_ACT_TRANS_FORM
- **Backend tables:** NMIS_UNITS
- **Form events with code:** Open
- **Migration:** 0 of 5 bound fields mapped. Main GrowHub screens: none

**Controls**
- ComboBox Like_Unit_Type "Unit Type:" · rows: `G;Grow;L;Lift Container;S;Store;*;All` · default `"*"` · events: AfterUpdate  [FormHeader]
- TextBox Sum_of_Activity_Units = `Total_Activity_Units`
- TextBox Net_Density = `Net_Density`
- TextBox Gross_Density = `Gross_Density`
- TextBox Net_M = `=Round([Total_Activity_Units]*Round([Net_Density],3)/[UNIT_MULTIPLIER],3)` · events: DblClick
- TextBox LOCATION_CN = `LOCATION2`
- TextBox Gross_M = `=Round([Total_Activity_Units]*Round([Gross_Density],3)/[UNIT_MULTIPLIER],3)`
- ComboBox UNIT_CODE = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC FROM NMIS_UNITS;`
- CommandButton Zero "Zero" · events: Click
- TextBox Sum_Net_M = `=Sum(Round([Total_Activity_Units]*Round([Net_Density],3)/[UNIT_MULTIPLIER],3))` · events: DblClick  [FormFooter]
- TextBox Sum_Gross_M = `=Sum(Round([Total_Activity_Units]*Round([Gross_Density],3)/[UNIT_MULTIPLIER],3))`  [FormFooter]
- TextBox Text27 = `=Sum([Total_Activity_Units])`  [FormFooter]

## Form: Transaction_Totals_For_Product_Inventory subform
- **Caption:** Transaction_Totals_By_Location_and_amt_per_unit1 subform
- **Menu path:** Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Transaction_Totals_For_Product_Inventory subform
- **Record source:** Transaction_Totals_for_Product_Inv_FORM
- **Backend tables:** NMIS_UNITS
- **Migration:** 0 of 5 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox SUM_OF_ACTIVITY_UNITS_T  [FormHeader]
- TextBox ID_LOCATION_CN_T  [FormHeader]
- TextBox Sum_of_Activity_Units = `Total_Activity_Units`
- TextBox Net_Density = `Net_Density`
- TextBox Gross_Density = `Gross_Density`
- TextBox Net_M = `=Round([Total_Activity_Units]*Round([Net_Density],3)/[UNIT_MULTIPLIER],3)`
- TextBox LOCATION_CN = `LOCATION2`
- TextBox Gross_M = `=Round([Total_Activity_Units]*Round([Gross_Density],3)/[UNIT_MULTIPLIER],3)`
- ComboBox UNIT_CODE = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC FROM NMIS_UNITS;`
- CommandButton Zero "Update" · events: Click
- TextBox Sum_Net_M = `=Sum(Round([Total_Activity_Units]*Round([Net_Density],3)/[UNIT_MULTIPLIER],3))`  [FormFooter]
- TextBox Sum_Gross_M = `=Sum(Round([Total_Activity_Units]*Round([Gross_Density],3)/[UNIT_MULTIPLIER],3))`  [FormFooter]

## Form: TSO_Container_Summary
- **Caption:** TSO_Container_Summary
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_TICKETS_charge_per_ticket1 › TSO_Container_Summary
- **Record source:** SELECT NMIS_TICKETS.EXT_DOC_REF, Sum(Abs([NUMBER_OF_ACTIVITY_UNITS])) AS Units, NMIS_ID_LOCATIONS.UNIT_CODE, NMIS_UNITS.UNIT_DESC FROM NMIS_UNITS INNER JOIN ((NMIS_TICKETS INNER JOIN (NMIS_ID_ACTIVITIES INNER JOIN NMIS_TRANSACTIONS ON NMIS_ID_ACTIVITIES.CN = NMIS_TRANSACTIONS.ID_ACTIVITY_CN) ON NMIS_TICKETS.CN = NMIS_ID_ACTIVITIES.TICKET_CN) INNER JOIN NMIS_ID_LOCATIONS ON NMIS_TRANSACTIONS.ID_LOCATION_CN = NMIS_ID_LOCATIONS.CN) ON (NMIS_UNITS.UNIT_CODE = NMIS_ID_LOCATIONS.UNIT_CODE) AND (NMIS_UNITS.UNIT_CODE = NMIS_ID_LOCATIONS.UNIT_CODE) GROUP BY NMIS_TICKETS.EXT_DOC_REF, NMIS_ID_LOCATIONS.UNIT_CODE, NMIS_UNITS.UNIT_DESC HAVING (((NMIS_TICKETS.EXT_DOC_REF) Is Not Null));
- **Backend tables:** NMIS_ID_ACTIVITIES, NMIS_ID_LOCATIONS, NMIS_TICKETS, NMIS_TRANSACTIONS, NMIS_UNITS
- **Migration:** 1 of 3 bound fields mapped. Main GrowHub screens: /source-lots/new (1)

**Controls**
- TextBox Units = `Units`
- TextBox UNIT_CODE = `UNIT_CODE` → GrowHub processing_activity.unitOfMeasurement (yes)
- TextBox UNIT_DESC = `UNIT_DESC`

## Form: xLabel_Click_Error
- **Caption:** Clicked a Label Error Message
- **Menu path:** Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_AGREEMENT_LOTS › Error_Messages.Label_click_error › xLabel_Click_Error
- **Opened from:** Error_Messages

**Controls**
- CommandButton Close form "I Promise NEVER To Do That Again"

## Form: xLookup_Tables_Menu
- **Caption:** Lookup Tables  Menu
- **Menu path:** Switchboard › xLookup_Tables_Menu
- **Opens:** Form:NMIS_ACTIVITY_CHARGES, Form:NMIS_ACTIVITY_CODES, Form:NMIS_ASSOCIATES, Form:NMIS_CATEGORIES, Form:NMIS_CONTACTS, Form:NMIS_CONTRACTS, Form:NMIS_FACTOR_CODES, Form:NMIS_FISCAL_YEARS, Form:NMIS_GROUPS, Form:NMIS_LOCATION_TYPES, Form:NMIS_OYJORD_SETTINGS, Form:NMIS_PRODUCTS, Form:NMIS_PRODUCT_CHARGES2, Form:NMIS_SEASONS, Form:NMIS_SOURCE_PRICE_RATES, Form:NMIS_SOURCE_PRICE_RATES_BASE, Form:NMIS_SOURCE_PROCESSING_RATES, Form:NMIS_SPECIES, Form:NMIS_SPECIES_PRODUCTS Form, Form:NMIS_TEST_TYPES, Form:NMIS_TREATMENT_PRODUCTS, Form:NMIS_UNITS, Form:Open_Swichboard, Form:Switchboard, Form:xPlease_Be_Patient_Message
- **Form events with code:** Current, Open

**Controls**
- CommandButton Open NMIS Associates Menu "Associates..." · events: Click
- CommandButton Open Main Switchboard "Return To Main Menu" · events: Click
- CommandButton Open Contacts Form "Contacts..." · events: Click
- CommandButton Close Lookup Table Window "Return To Previous Menu" · events: Click
- CommandButton Open Activity Charges Form "Activity Charges..." · events: Click
- CommandButton Open Activity Code Form "Activity Codes..." · events: Click
- CommandButton Open Species Form "Species..." · events: Click
- CommandButton Open Groups Form "Associate Groups..." · events: Click
- CommandButton Open Catagories Form "Category Codes..." · events: Click
- CommandButton Open NMIS Products Form "Products..." · events: Click
- CommandButton Open Contract Items Form "Contracts..." · events: Click
- CommandButton Open Seasons Form "Season Codes..." · events: Click
- CommandButton Open Unit Codes Subform "Unit Codes..." · events: Click
- CommandButton Open Location Types Form "Location Codes..." · events: Click
- CommandButton Open Factor Codes Form "Factor Codes..." · events: Click
- CommandButton Open Ojyord Form "Oyjord..." · events: Click
- CommandButton Open Treatment Products Form "Treatment Products..." · events: Click
- CommandButton Open Test Types Form "Types of Tests..." · events: Click
- CommandButton Open Source Price Rates Form "Source Price Rates..." · events: Click
- CommandButton Open Source Price Base Form "Source Price Base..." · events: Click
- CommandButton Open NMIS_FISCAL_YEARS "FY's..." · events: Click
- CommandButton Open_Species_Products_Form "Species Products..." · events: Click
- ObjectFrame OLEUnbound52
- CommandButton Open NMIS Product_Charges Form "Product Charges..." · events: Click
- CommandButton Open Source Proc Rates Form "Source Proc Rates..." · events: Click

## Form: xnot_implemented
- **Caption:** Option Not Implemented
- **Menu path:** Switchboard › xnot_implemented
- **Opens:** Form:Switchboard

**Controls**
- CommandButton Open_Switchboard "OK" · events: Click

## Form: xOyjord_Calibration_Error
- **Caption:** Calibration Error Message
- **Menu path:** Switchboard › Oyjord_Calibration › Oyjord_Calibration subform › xOyjord_Calibration_Error
- **Opened from:** Form_Oyjord_Calibration subform, Form_Oyjord_Calibration subform2

**Controls**
- CommandButton Close form "Drop Dead You Stupid Computer"

## Form: xPlease_Be_Patient_First_Report_Message
- **Caption:** Please Wait
- **Menu path:** Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › xPlease_Be_Patient_First_Report_Message
- **Opened from:** Form_BeginFY_EndFY_Associate_Species_Input_Inv_SPD, Form_BeginFY_EndFY_Associate_Species_Input_Inv_rpt, Form_Field_Form_Plants, Form_Field_Form_Plants_For_Inventory_Sizing, Form_Lifting_Priorties, Form_NMIS_ORDER_COMFIRMATION_FORM, Form_NMIS_PRODUCT_INVENTORIES, Form_NMIS_PRODUCT_INVENTORY_FORM, Form_NMIS_PRODUCT_INVENTORY_MATRIX, Form_Processing_Orders_To_Client_Form

**Controls**
(none)

## Form: xPlease_Be_Patient_Message
- **Caption:** Please Wait
- **Menu path:** Switchboard › xLookup_Tables_Menu › xPlease_Be_Patient_Message
- **Opened from:** Form_Drying_Tray_Input_Form, Form_Reports_Menu_Maintenance Subform, Form_xLookup_Tables_Menu

**Controls**
(none)
