# Legacy NMIS: menus and which screens are reachable

Switchboard menu tree, and every form/report reachable from it (349 forms, 578 reports). Objects not listed here are dead copies or retired screens.

## Menu: Main Switchboard (#1)
- Source...: go to menu 7
- Production...: go to menu 3
- Processing...: go to menu 4
- Shipping...: go to menu 15
- Client Invoice...: go to menu 18
- Reports and Forms...: open form REPORTS Form
- Maintenance...: go to menu 5
- Exit NMIS: run macro Quit Access

## Menu: Production (#3)
- Agreement Lots...: run code Open_Agreement_Lots_Form_From_Switchboard
- Agreements...: run code Open_Agreements_Form_From_Switchboard
- Activities...: go to menu 16
- Inventory...: run macro Open_Product_Inventories_Form
- Locations...: go to menu 17
- Oyjord Calibration...: open form Oyjord_Calibration
- Return To Main Menu: go to menu 1

## Menu: Processing (#4)
- Order Entry/Edit...: go to menu 14
- Activities and Transactions...: run code Open_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_FOR_PROCESSING
- Labels...: open form NMIS_PROCESS_LABELS_MAIN
- Quality...: open form (add) NMIS_PROCESS_QUALITY_SAMPLES
- Enter Lift/Field Destroy Data...: open form Husky_lpro_data_input_check_form
- Enter Storage Location Changes...: open form NMIS_ID_LOCATIONS_storage_locchg
- Return To Main Menu: go to menu 1

## Menu: Maintenance (#5)
- Lookup Tables...: open form xLookup_Tables_Menu
- Utilities...: go to menu 9
- Return To Main Menu: go to menu 1

## Menu: Source (#7)
- Source Data Management...: open form NMIS_SOURCE_LOTS
- Source Lot Entry/Edit...: open form NMIS_SOURCE_LOTS_INPUT
- Ship/Retest/Receive Ticket...: open form Seed_Shipping_Ticket Subform
- Sowing Withdrawal Ticket...: open form Seed_Sow_Withdrawal_Ticket Subform
- ID Location Entry/Edit...: open form NMIS_ID_LOCATIONS_SOURCE_LOTS
- Return to Main Menu: go to menu 1

## Menu: Reports (#8)
- Source Reports...: go to menu 13
- Agreement Reports...: go to menu 10
- Inventory Reports...: open form (add) xnot_implemented
- Activity Reports...: open form (add) xnot_implemented
- Label Reports...: open form (add) xnot_implemented
- Lookup Table Reports...: open form (add) xnot_implemented
- Return To Main Menu: go to menu 1

## Menu: Utilities (#9)
- Sowing Order Table: open form NMIS_SOWING_ORDER
- Husky Pathnames...: open form HUSKY_PATHNAMES
- Set User Nursery: open form NMIS_ACCESS_SET_USER_NURSERY
- Version History Maintenance: open form NMIS_ACCESS_VERSION_TABLE
- Update Source Performance Table: run code Update_Source_Performance
- Rollover Menu...: go to menu 19
- Return To Previous Menu: go to menu 5
- Return To Main Menu: go to menu 1

## Menu: Agreement Reports (#10)
- Agreements...: open form NMIS_AGREEMENT_LOTS_Report
- Source Material Work Orders...: open form Source_Material_Work_Order_By_Lot_ID_Range
- Go To Previous Menu: go to menu 8
- Return to Main Menu: go to menu 1

## Menu: Source_Reports (#13)
- Inventory Report...: open form Seed_Inventory_Report
- Quarterly Report...: open form Seed_Quarterly_Report
- Return to Previous Menu: go to menu 7
- Return to Main Menu: go to menu 1

## Menu: Orders (#14)
- New Plant Orders Input...: run macro Open_NMIS_PROCESSING_ORDERS_INPUT
- New Propagule Orders Input...: run code Open_Propagule_Orders_New_Form_From_Switchboard
- Review Orders by Lot ID or Client...: run macro Open_NMIS_PROCESSING_ORDERS_Review
- Orders Billing Adjustments...: open form NMIS_ORDER_BILL_ADJUSTMENTS
- Return to Processing Menu: go to menu 4
- Return to Main Menu: go to menu 1

## Menu: Shipping (#15)
- Source Ship/Retest/Recieve Ticket...: open form Seed_Shipping_Ticket Subform
- Seed Sowing Withdrawal Ticket...: open form Seed_Sow_Withdrawal_Ticket Subform
- Product Shipping Ticket...: run code Open_Product_Ship_ticket_Form_From_Switchboard
- Product Ship Ticket TSO Info...: run code Open_NMIS_TICKETS_charge_per_ticket1_Form_From_Switchboard
- Return to Main Menu...: go to menu 1

## Menu: Production_Activities (#16)
- ID Activities and Transactions...: run code Open_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_FOR_ALL
- ID Activities...: open form NMIS_ID_ACTIVITY_FORM
- Location Activities...: open form (add) NMIS_LOCATION_ACTIVITIES
- Return to Previous Menu...: go to menu 3
- Go to Main Menu...: go to menu 1

## Menu: Production_Locations (#17)
- Enter Sowing Locations...: run code Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Sow_From_Switchboard
- Enter Bareroot Transplant Loc...: run code Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Trans_From_Switchboard
- Enter Container Transplant Loc...: run code Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Trans_Cont_From_Switchboard
- Enter Location Changes...: run code Open_NMIS_ID_LOCATIONS_FORM_Husky_for_LOCCHG_From_Switchboard
- Location Activity...: open form (add) NMIS_LOCATION_ACTIVITIES
- ID Locations...: open form NMIS_ID_LOCATIONS_FORM
- Go to Previous Menu...: go to menu 3
- Go to Main Menu...: go to menu 1

## Menu: Client Billing (#18)
- Product Invoice...: open form Client_Bill_Menu
- Seed Invoice...: open form Seed_Non_WCF_Billing_Report
- Non-WCF Seed Storage Invoice...: open form (add) Non_WCF_Storage_Billing_Report
- Propagule Invoice..: open form (add) Propagule_Billing_Report
- Return to Main Menu: go to menu 1

## Menu: Rollover Menu (#19)
- Rollover Product Charges: run code Rollover_Product_Charges
- Rollover Activity Charges: run code Rollover_Activity_Charges
- Rollover Source Prices: run code Rollover_Source_Prices
- Rollover Source Processing Prices: run code Rollover_Source_Processing_Prices
- Rollover Contract Items...: open form NMIS_CONTRACT_ROLL_OVER
- Go to Previous Menu: go to menu 9
- Go to Main Menu: go to menu 1

## Reachable forms and reports with their menu path

| Kind | Name | Caption | Menu path |
|---|---|---|---|
| Form | *nrcs_plantlist | *nrcs_plantlist subform | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SPECIES › *nrcs_plantlist |
| Form | *propagule_Grow_Containers_for_Orders_table subform | *propagule_Grow_Containers_for_Orders_table subform | Switchboard › Forms_Open Module.Open_Propagule_Orders_New_Form_From_Switchboard › NMIS_PROCESSING_ORDERS_INPUT_Propagule › *propagule_Grow_Containers_for_Orders_table subform |
| Form | Agreement_for_Source_Lot | Agreements for Source Lot | Switchboard › Client_Bill_Menu › NMIS_AGREEMENTS › Agreement_for_Source_Lot |
| Form | Agreement_Lot_Default_Factors_For_Cycle subform | Agreement_Lot_Default_Factorsr_For_Cycle subform | Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Agreement_Lot_Default_Factors_For_Cycle subform |
| Form | Agreement_Lot_Grow_Containers | Ft_To_Lift | Switchboard › Forms_Open Module.Open_NMIS_ID_LOCATIONS_FORM_Husky_for_LOCCHG_From_Switchboard › NMIS_ID_LOCATIONS_FORM_Husky › Agreement_Lot_Grow_Containers |
| Form | Agreement_Lot_ID_Change_Form | Agreement Lot ID Change | Switchboard › Forms_Open Module.Open_NMIS_ID_LOCATIONS_FORM_Husky_for_LOCCHG_From_Switchboard › NMIS_ID_LOCATIONS_FORM_Husky › Agreement_Lot_ID_Change_Form |
| Form | Agreement_Lot_ID_Change_from_Tags0 Form | Agreement Lot ID Change | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags › Agreement_Lot_ID_Change_from_Tags0 Form |
| Form | Agreement_Lot_ID_Change_from_Tags1 Form | Agreement Lot ID Change | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags › Agreement_Lot_ID_Change_from_Tags1 Form |
| Form | Agreement_Lot_ID_Change_from_Tags2 Form | Agreement Lot ID Change | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags › Agreement_Lot_ID_Change_from_Tags2 Form |
| Form | Agreement_Lot_ID_Change_from_Tags3 Form | Agreement Lot ID Change | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags › Agreement_Lot_ID_Change_from_Tags3 Form |
| Form | Agreement_Lot_ID_Change_from_Tags4 Form | Agreement Lot ID Change | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags › Agreement_Lot_ID_Change_from_Tags4 Form |
| Form | Agreement_Lot_ID_Change_from_Tags5 Form | Agreement Lot ID Change | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags › Agreement_Lot_ID_Change_from_Tags5 Form |
| Form | Agreement_Lot_Inventory_Factors_For_Cycle subform | Agreement_Lot_Inventory_Factors_For_Cycle subform | Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Agreement_Lot_Inventory_Factors_For_Cycle subform |
| Form | Agreement_Lot_Total_Containers subform | Agreement_Lot_Total_Containers subform | Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Agreement_Lot_Total_Containers subform |
| Form | Associate_Input | Report Input | Switchboard › Seed_Shipping_Ticket Subform › NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC_shipping › Associate_Input |
| Form | Associate_Mail_Label_Input | Report Input | Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC › Associate_Mail_Label_Input |
| Form | Associate_Mail_Label_Input_shipping | Report Input | Switchboard › Seed_Shipping_Ticket Subform › NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC_shipping › Associate_Mail_Label_Input_shipping |
| Form | BeginFY_EndFY_Associate_Species_Input | Report Input | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Annual_Report_Plant_Inventory_Detailed_Summary report › BeginFY_EndFY_Associate_Species_Input |
| Form | BeginFY_EndFY_Associate_Species_Input_Inv_SPD |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › BeginFY_EndFY_Associate_Species_Input_Inv_SPD |
| Form | Blank subform | Blank subform | Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Blank subform |
| Form | Change_Bend_stored_for | Change Bend plntmstr Symbol | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_LOTS_Bend › Change_Bend_stored_for |
| Form | Client_Bill_Menu |  | Switchboard › Client_Bill_Menu |
| Form | CLIENT_BILLING_PREVIEW_BILLING | Client Billing Preview Billing | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › CLIENT_BILLING_PREVIEW_BILLING |
| Form | CLIENT_BILLING_PREVIEW_BILLING2 | Client Billing Preview Billing | Switchboard › Client_Bill_Menu › CLIENT_BILLING_PREVIEW_BILLING2 |
| Form | Contract_Payment_Estimate_Invoice | Contract_Payment_Estimate_Invoice | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Contract_Payment_Estimate_Invoice |
| Form | Contract_Payment_Estimate_Invoice subform1 | Contract_Payment_Estimate_Invoice subform | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Contract_Payment_Estimate_Invoice › Contract_Payment_Estimate_Invoice subform1 |
| Form | Contract_Payment_Estimate_Invoice_Main_subform | Contract_Payment_Estimate_Invoice | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Contract_Payment_Estimate_Invoice › Contract_Payment_Estimate_Invoice_Main_subform |
| Form | Contract_Work_Order | Contract_Payment_Estimate_Invoice | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Contract_Work_Order |
| Form | Contract_Work_Order_subform | Contract_Payment_Estimate_Invoice | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Contract_Work_Order › Contract_Work_Order_subform |
| Form | Drying_Tray_Input_Form | Drying Tray Input Form | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Drying_Tray_Input_Form |
| Form | Field_Form_Plants |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Plants |
| Form | Field_Form_Plants_For_Inventory_Sizing |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Plants_For_Inventory_Sizing |
| Form | Field_Location_Worksheet | Stock Location Worksheet | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Location_Worksheet |
| Form | Field_Map Form |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form |
| Form | Field_Tags |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags |
| Form | Ft_To_Lift | Ft_To_Lift | Switchboard › Husky_lpro_data_input_check_form › Ft_To_Lift |
| Form | H_ASF | ASF | Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_AGREEMENT_LOTS › H_ASF |
| Form | H_ASF_from_source | ASF | Switchboard › NMIS_SOURCE_LOTS › H_ASF_from_source |
| Form | Hide_Activity_Posting | Cover_Activity_Posting | Switchboard › Husky_lpro_data_input_check_form › Hide_Activity_Posting |
| Form | Huksy_lpro_xfer_hlift_table2 subform | **Huksy_lpro_xfer_hlift_table subform | Switchboard › Husky_lpro_data_input_check_form › Huksy_lpro_xfer_hlift_table2 subform |
| Form | Husky_lpro_data_input_check_form | Lifting/Field Destroy | Switchboard › Husky_lpro_data_input_check_form |
| Form | HUSKY_PATHNAMES | Husky Pathnames | Switchboard › HUSKY_PATHNAMES |
| Form | Lifting_Locations_Form | Lifting Locations | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Locations_Form |
| Form | Lifting_Priority_Comments subform | Lifting_Priority_Comments subform | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Lifting_Priority_Comments subform |
| Form | Lifting_Priorties | Lifting_Priorties | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties |
| Form | Lifting_Priorties_Data_Subform | Lifting_Priorties | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Lifting_Priorties_Data_Subform |
| Form | Lifting_Priorty_Table_Rebuild_Form | Lifting Priorities Rebuild | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Lifting_Priorties_Data_Subform › Lifting_Priorty_Table_Rebuild_Form |
| Form | Lot_ID_Input_Form | Lot_ID_Input_Form | Switchboard › NMIS_SOURCE_LOTS › Lot_ID_Input_Form |
| Form | Lot_ID_Input_Form2 | Seed Box Input | Switchboard › NMIS_SOURCE_LOTS › Lot_ID_Input_Form2 |
| Form | Lot_ID_Input_Form2b | Seed Box Input | Switchboard › NMIS_SOURCE_LOTS › Lot_ID_Input_Form2b |
| Form | Lot_ID_Input_Form2c | Seed Box Input | Switchboard › NMIS_SOURCE_LOTS_INPUT › Lot_ID_Input_Form2c |
| Form | Lot_ID_Input_Form2d | Seed Box Input | Switchboard › REPORTS Form › Reports_Menu_Source Subform › Lot_ID_Input_Form2d |
| Form | Lot_ID_Input_Form2e | Seed Box Input | Switchboard › REPORTS Form › Reports_Menu_Source Subform › Lot_ID_Input_Form2e |
| Form | Native_Seed_Harvest_Summary | Propagule Harvest Summary | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Native_Seed_Harvest_Summary |
| Form | NMIS_ACCESS_SET_USER_NURSERY | NMIS_ACCESS_USER_NURSERY | Switchboard › NMIS_ACCESS_SET_USER_NURSERY |
| Form | NMIS_ACCESS_USER_NURSERY subform | NMIS_ACCESS_SET_USER_NURSERY subform | Switchboard › NMIS_ACCESS_USER_NURSERY subform |
| Form | NMIS_ACCESS_USER_NURSERY subform1 | NMIS_ACCESS_USER_NURSERY subform1 | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_ACCESS_USER_NURSERY subform1 |
| Form | NMIS_ACCESS_VERSION subform | NMIS_ACCESS_VERSION subform | Switchboard › NMIS_ACCESS_VERSION subform |
| Form | NMIS_ACCESS_VERSION_TABLE | NMIS_2000_VERSION_TABLE | Switchboard › NMIS_ACCESS_VERSION_TABLE |
| Form | NMIS_ACTIVITY_CHARGES | NMIS ACTIVITY CHARGES | Switchboard › xLookup_Tables_Menu › NMIS_ACTIVITY_CHARGES |
| Form | NMIS_ACTIVITY_CHARGES_ROLL_OVER |  | Switchboard › Rollover_Charges_module.Rollover_Activity_Charges › NMIS_ACTIVITY_CHARGES_ROLL_OVER |
| Form | NMIS_ACTIVITY_CODES | NMIS ACTIVITY CODES | Switchboard › xLookup_Tables_Menu › NMIS_ACTIVITY_CODES |
| Form | NMIS_ACTIVITY_CODES_LIST | NMIS Activity Code List | Switchboard › xLookup_Tables_Menu › NMIS_ACTIVITY_CODES › NMIS_ACTIVITY_CODES_LIST |
| Form | NMIS_AGREE_LOTS_UNITS subform |  | Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_AGREEMENT_LOTS › NMIS_AGREE_LOTS_UNITS subform |
| Form | NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE | NMIS source Lot Report | Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE |
| Form | NMIS_AGREEMENT_LOT_SELECT | NMIS source Lot Report | Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_AGREEMENT_LOT_SELECT |
| Form | NMIS_AGREEMENT_LOTS |  | Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_AGREEMENT_LOTS |
| Form | NMIS_AGREEMENT_LOTS subform | NMIS_AGREEMENT_LOTS subform | Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › NMIS_AGREEMENT_LOTS subform |
| Form | NMIS_AGREEMENT_LOTS_NEW |  | Switchboard › Client_Bill_Menu › NMIS_AGREEMENTS › NMIS_AGREEMENT_LOTS_NEW |
| Form | NMIS_AGREEMENT_LOTS_Report | Agreements  Report | Switchboard › NMIS_AGREEMENT_LOTS_Report |
| Form | NMIS_AGREEMENTS |  | Switchboard › Client_Bill_Menu › NMIS_AGREEMENTS |
| Form | NMIS_AGREEMENTS subform1 | NMIS_AGREEMENTS subform1 | Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_AGREEMENT_LOTS › NMIS_AGREEMENTS subform1 |
| Form | NMIS_AGREEMENTS_Other subform | NMIS_AGREEMENTS_Other subform | Switchboard › Client_Bill_Menu › NMIS_AGREEMENTS › NMIS_AGREEMENTS_Other subform |
| Form | NMIS_ASSOCIATE_GROUPS subform | NMIS_ASSOCIATE_GROUPS subform | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ASSOCIATES › NMIS_ASSOCIATE_GROUPS subform |
| Form | NMIS_ASSOCIATES |  | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ASSOCIATES |
| Form | NMIS_ASSOCIATES subform | NMIS_ASSOCIATES subform | Switchboard › Seed_Shipping_Ticket Subform › NMIS_CONTACTS › NMIS_ASSOCIATES subform |
| Form | NMIS_ASSOCIATES subform1 | NMIS_ASSOCIATES subform1 | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ASSOCIATES › NMIS_ASSOCIATES subform1 |
| Form | NMIS_ASSOCIATES_99S subform | NMIS_ASSOCIATES_99S subform | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ASSOCIATES › NMIS_ASSOCIATES_99S subform |
| Form | NMIS_ASSOCIATES_ADDRESSES | NMIS_ASSOCIATES_ADDRESSES | Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC › Associate_Mail_Label_Input › NMIS_ASSOCIATES_ADDRESSES |
| Form | NMIS_ASSOCIATES_ADDRESSES_shipping | NMIS_ASSOCIATES_ADDRESSES | Switchboard › Seed_Shipping_Ticket Subform › NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC_shipping › Associate_Mail_Label_Input_shipping › NMIS_ASSOCIATES_ADDRESSES_shipping |
| Form | NMIS_ASSOCIATES_CONTACT_INFO Subform | NMIS_CONTACTS Subform | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ASSOCIATES › NMIS_ASSOCIATES_CONTACT_INFO Subform |
| Form | NMIS_ASSOCIATES_CONTACTS subform | NMIS_PHONE_NUMBERS subform | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ASSOCIATES › NMIS_ASSOCIATES_CONTACTS subform |
| Form | NMIS_ASSOCIATES_Ship_Miles | Ship Miles | Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_TICKETS_charge_per_ticket2 › NMIS_TICKETS_Charge_Per_Ticket2 subform › NMIS_ASSOCIATES_Ship_Miles |
| Form | NMIS_ASSOCIATES_Ship_Miles1 | Ship Miles | Switchboard › Client_Bill_Menu › NMIS_TICKETS_charge_per_ticket1 › NMIS_TICKETS_Charge_Per_Ticket1 subform › NMIS_ASSOCIATES_Ship_Miles1 |
| Form | NMIS_ASSOCIATES_Ship_Miles_st |  | Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_ASSOCIATES_Ship_Miles_st |
| Form | NMIS_CATEGORIES | NMIS CATEGORIES | Switchboard › xLookup_Tables_Menu › NMIS_CATEGORIES |
| Form | NMIS_CLIENT_MGMT_CODES subform | NMIS_CLIENT_MGMT_CODES subform | Switchboard › NMIS_SOURCE_LOTS › NMIS_ID_ACTIVITIES Subform › NMIS_ID_MGMT_CODES subform › NMIS_CLIENT_MGMT_CODES subform |
| Form | NMIS_CLIENT_MGMT_CODES subform1 | NMIS_CLIENT_MGMT_CODES subform1 | Switchboard › Client_Bill_Menu › NMIS_AGREEMENTS › NMIS_CLIENT_MGMT_CODES subform1 |
| Form | NMIS_CLIENT_MGMT_CODES_NEW subform | NMIS_CLIENT_MGMT_CODES subform | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ID_ACTIVITIES_NEW_LOTS Subform › NMIS_ID_MGMT_CODES_NEW subform › NMIS_CLIENT_MGMT_CODES_NEW subform |
| Form | NMIS_CLIENT_MGMT_CODES_Prod_Ship | NMIS CLIENT Bill To  CODES | Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_SHIPPING_ID_ACTIVITIES subform › NMIS_CLIENT_MGMT_CODES_Prod_Ship |
| Form | NMIS_CLIENT_MGMT_CODES_prod_ship subform | NMIS_CLIENT_MGMT_CODES_prod_ship subform | Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_CLIENT_MGMT_CODES_prod_ship subform |
| Form | NMIS_CLIENT_MGMT_CODES_Source_Lots_new_Subform | NMIS_CLIENT_MGMT_CODES subform | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_CLIENT_MGMT_CODES_Source_Lots_new_Subform |
| Form | NMIS_CLIENT_MGMT_CODES_Source_Lots_Subform | NMIS_CLIENT_MGMT_CODES subform | Switchboard › NMIS_SOURCE_LOTS › NMIS_CLIENT_MGMT_CODES_Source_Lots_Subform |
| Form | NMIS_CLIENT_MGMT_CODES_ST subform | NMIS_CLIENT_MGMT_CODES subform | Switchboard › Seed_Shipping_Ticket Subform › Seed_Ship_Ticket_ID_ACTIVITIES subform › NMIS_ID_MGMT_CODES_Ship_Ticket subform › NMIS_CLIENT_MGMT_CODES_ST subform |
| Form | NMIS_CONTACT_NAME_SELECTED subform | NMIS_CONTACT_NAME_SELECTED subform | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ASSOCIATES › NMIS_CONTACT_NAME_SELECTED subform |
| Form | NMIS_CONTACTS | NMIS CONTACTS | Switchboard › Seed_Shipping_Ticket Subform › NMIS_CONTACTS |
| Form | NMIS_CONTACTS_LIST | NMIS Contacts List | Switchboard › Seed_Shipping_Ticket Subform › NMIS_CONTACTS › NMIS_CONTACTS_LIST |
| Form | NMIS_CONTRACT_ITEMS | NMIS CONTRACT ITEMS | Switchboard › xLookup_Tables_Menu › NMIS_CONTRACTS › NMIS_CONTRACT_ITEMS |
| Form | NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform | NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Contract_Payment_Estimate_Invoice › NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform |
| Form | NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2 | NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Contract_Payment_Estimate_Invoice › NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2 |
| Form | NMIS_CONTRACT_ROLL_OVER | Contract Rollover | Switchboard › NMIS_CONTRACT_ROLL_OVER |
| Form | NMIS_CONTRACT_WORK_ORDERS_0_FORM_INFO | NMIS_CONTRACT_WORK_ORDERS_0_FORM_INFO | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Contract_Work_Order › NMIS_CONTRACT_WORK_ORDERS_0_FORM_INFO |
| Form | NMIS_CONTRACT_WORK_ORDERS_LAST_ORDER | NMIS_CONTRACT_WORK_ORDERS_LAST_ORDER | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Contract_Work_Order › NMIS_CONTRACT_WORK_ORDERS_LAST_ORDER |
| Form | NMIS_CONTRACTS | NMIS CONTRACTS | Switchboard › xLookup_Tables_Menu › NMIS_CONTRACTS |
| Form | NMIS_FACTOR_CODES | NMIS FACTOR CODES | Switchboard › xLookup_Tables_Menu › NMIS_FACTOR_CODES |
| Form | NMIS_FACTORS | NMIS FACTORS | Switchboard › xLookup_Tables_Menu › NMIS_PRODUCTS › NMIS_SPECIES_PRODUCTS Subform1 › NMIS_FACTORS |
| Form | NMIS_FACTORS subform | NMIS_FACTORS subform | Switchboard › xLookup_Tables_Menu › NMIS_SPECIES_PRODUCTS Form › NMIS_FACTORS subform |
| Form | NMIS_FACTORS_Duplicate subform | NMIS_FACTORS subform | Switchboard › xLookup_Tables_Menu › NMIS_SPECIES_PRODUCTS Form › NMIS_SPECIES_PRODUCTS_Duplicate Form › NMIS_FACTORS_Duplicate subform |
| Form | NMIS_FACTORS_FOR_AGREEMENT_LOTS subform | NMIS_FACTORS subform | Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_AGREEMENT_LOTS › NMIS_FACTORS_FOR_AGREEMENT_LOTS subform |
| Form | NMIS_FISCAL_YEAR_Current | Current Fiscal Year | Switchboard › NMIS_FISCAL_YEAR_Current |
| Form | NMIS_FISCAL_YEARS | NMIS_FISCAL_YEARS | Switchboard › xLookup_Tables_Menu › NMIS_FISCAL_YEARS |
| Form | NMIS_GROUPS | NMIS GROUPS | Switchboard › xLookup_Tables_Menu › NMIS_GROUPS |
| Form | NMIS_GROUPS subform | NMIS_GROUPS subform | Switchboard › xLookup_Tables_Menu › NMIS_GROUPS › NMIS_GROUPS subform |
| Form | NMIS_ID_ACTIVITIES Subform |  | Switchboard › NMIS_SOURCE_LOTS › NMIS_ID_ACTIVITIES Subform |
| Form | NMIS_ID_ACTIVITIES2 Subform |  | Switchboard › NMIS_SOURCE_LOTS › NMIS_ID_ACTIVITIES2 Subform |
| Form | NMIS_ID_ACTIVITIES_ACTIVITIES3_subform | NMIS ID Cultural Activities subform | Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_ID_ACTIVITIES_ACTIVITIES3_subform |
| Form | NMIS_ID_ACTIVITIES_ACTIVITIES_subform | NMIS ID Cultural Activities subform | Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_ID_ACTIVITIES_ACTIVITIES_subform |
| Form | NMIS_ID_ACTIVITIES_MORE_INFO_ID_LOC_FORM | Source Lot More Info | Switchboard › NMIS_ID_LOCATIONS_SOURCE_LOTS › NMIS_ID_ACTIVITIES_MORE_INFO_ID_LOC_FORM |
| Form | NMIS_ID_ACTIVITIES_MORE_INFO_PRODUCTION_ShipTicket_SUBFORM | Seed_Ship_Ticked_ID_ACTIVITIES subform | Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_SHIPPING_ID_ACTIVITIES subform › NMIS_ID_ACTIVITIES_MORE_INFO_PRODUCTION_ShipTicket_SUBFORM |
| Form | NMIS_ID_ACTIVITIES_MORE_INFO_PRODUCTION_SUBFORM | Seed_Ship_Ticked_ID_ACTIVITIES subform | Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_ID_ACTIVITIES_ACTIVITIES_subform › NMIS_ID_ACTIVITIES_MORE_INFO_PRODUCTION_SUBFORM |
| Form | NMIS_ID_ACTIVITIES_MORE_INFO_Ship_Tkt_FORM | Source Lot More Info | Switchboard › Seed_Shipping_Ticket Subform › Seed_Ship_Ticket_ID_ACTIVITIES subform › NMIS_ID_ACTIVITIES_MORE_INFO_Ship_Tkt_FORM |
| Form | NMIS_ID_ACTIVITIES_MORE_INFO_SUBFORM | Source Lot More Info | Switchboard › NMIS_SOURCE_LOTS › NMIS_ID_ACTIVITIES Subform › NMIS_ID_ACTIVITIES_MORE_INFO_SUBFORM |
| Form | NMIS_ID_ACTIVITIES_NEW_LOTS Subform | NMIS_ID_ACTIVITIES_NEW_LOTS Subform | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ID_ACTIVITIES_NEW_LOTS Subform |
| Form | NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform | NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform | Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform |
| Form | NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE | SOURCE LOCATIONS | Switchboard › NMIS_SOURCE_LOTS › NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE |
| Form | NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE_NEW_LOTS | SOURCE LOCATIONS | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE_NEW_LOTS |
| Form | NMIS_ID_ACTIVITIES_TRANSACTIONS_subform | NMIS_Cultrual_TRANSACTIONS subform | Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_ID_ACTIVITIES_TRANSACTIONS_subform |
| Form | NMIS_ID_ACTIVITY_FORM | NMIS ID Activities and Transactions | Switchboard › NMIS_ID_ACTIVITY_FORM |
| Form | NMIS_ID_ACTIVITY_TRANSACTIONS_FORM |  | Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM |
| Form | NMIS_ID_LOCATIONS subform | NMIS_ID_LOCATIONS subform1 | Switchboard › NMIS_SOURCE_LOTS › NMIS_ID_LOCATIONS subform |
| Form | NMIS_ID_LOCATIONS subform1B | NMIS ID Locations Form | Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_ID_ACTIVITIES_TRANSACTIONS_subform › NMIS_ID_LOCATIONS subform1B |
| Form | NMIS_ID_LOCATIONS subform2 | NMIS_ID_LOCATIONS subform2 | Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_ID_LOCATIONS subform2 |
| Form | NMIS_ID_LOCATIONS2 subform | NMIS_ID_LOCATIONS subform1 | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ID_LOCATIONS2 subform |
| Form | NMIS_ID_LOCATIONS_for_Source_Withdrawal subform | Location for Source Lot | Switchboard › Seed_Shipping_Ticket Subform › Seed_Ship_Ticket_ID_ACTIVITIES subform › NMIS_ID_LOCATIONS_for_Source_Withdrawal subform |
| Form | NMIS_ID_LOCATIONS_for_Sow_Withdrawal subform | Location for Source Lot | Switchboard › Seed_Sow_Withdrawal_Ticket Subform › Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform › NMIS_ID_LOCATIONS_for_Sow_Withdrawal subform |
| Form | NMIS_ID_LOCATIONS_FORM | NMIS ID Locations Form | Switchboard › NMIS_ID_LOCATIONS_FORM |
| Form | NMIS_ID_LOCATIONS_FORM_Husky |  | Switchboard › Forms_Open Module.Open_NMIS_ID_LOCATIONS_FORM_Husky_for_LOCCHG_From_Switchboard › NMIS_ID_LOCATIONS_FORM_Husky |
| Form | NMIS_ID_LOCATIONS_FORM_SUBFORM | NMIS ID Locations Form | Switchboard › NMIS_ID_LOCATIONS_FORM › NMIS_ID_LOCATIONS_FORM_SUBFORM |
| Form | NMIS_ID_LOCATIONS_SOURCE | NMIS ID Locations Form | Switchboard › NMIS_SOURCE_LOTS › NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE › NMIS_ID_LOCATIONS_SOURCE |
| Form | NMIS_ID_LOCATIONS_SOURCE_LOTS | NMIS ID Locations Form | Switchboard › NMIS_ID_LOCATIONS_SOURCE_LOTS |
| Form | NMIS_ID_LOCATIONS_storage_locchg | NMIS ID Storage Location Change  Form | Switchboard › NMIS_ID_LOCATIONS_storage_locchg |
| Form | NMIS_ID_MGMT_CODES subform | Management Codes | Switchboard › NMIS_SOURCE_LOTS › NMIS_ID_ACTIVITIES Subform › NMIS_ID_MGMT_CODES subform |
| Form | NMIS_ID_MGMT_CODES2 subform | Management Codes | Switchboard › NMIS_SOURCE_LOTS › NMIS_ID_ACTIVITIES2 Subform › NMIS_ID_MGMT_CODES2 subform |
| Form | NMIS_ID_MGMT_CODES_NEW subform | Management Codes | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ID_ACTIVITIES_NEW_LOTS Subform › NMIS_ID_MGMT_CODES_NEW subform |
| Form | NMIS_ID_MGMT_CODES_Ship_Ticket subform | Management Codes | Switchboard › Seed_Shipping_Ticket Subform › Seed_Ship_Ticket_ID_ACTIVITIES subform › NMIS_ID_MGMT_CODES_Ship_Ticket subform |
| Form | NMIS_ID_MGMT_CODES_Sow_Withdrawal_Ticket subform | Management Codes | Switchboard › Seed_Sow_Withdrawal_Ticket Subform › Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform › NMIS_ID_MGMT_CODES_Sow_Withdrawal_Ticket subform |
| Form | NMIS_LOCATION_ACTIVITIES | NMIS LOCATION ACTIVITIES | Switchboard › NMIS_LOCATION_ACTIVITIES |
| Form | NMIS_LOCATION_ACTIVITIES subform | NMIS_LOCATION_ACTIVITIES subform | Switchboard › NMIS_LOCATION_ACTIVITIES › NMIS_LOCATION_ACTIVITIES subform |
| Form | NMIS_LOCATION_TYPES | NMIS LOCATIONS | Switchboard › xLookup_Tables_Menu › NMIS_LOCATION_TYPES |
| Form | NMIS_LOCATION_TYPES subform | NMIS_LOCATION_TYPES subform | Switchboard › xLookup_Tables_Menu › NMIS_LOCATION_TYPES › NMIS_LOCATION_TYPES subform |
| Form | NMIS_LOCATIONS Subform | NMIS_LOCATIONS | Switchboard › xLookup_Tables_Menu › NMIS_LOCATION_TYPES › NMIS_LOCATIONS Subform |
| Form | NMIS_LOCATIONS_FOR_SOURCE_LOTS Subform | NMIS_LOCATIONS | Switchboard › NMIS_ID_LOCATIONS_SOURCE_LOTS › NMIS_LOCATIONS_FOR_SOURCE_LOTS4 › NMIS_LOCATIONS_FOR_SOURCE_LOTS Subform |
| Form | NMIS_LOCATIONS_FOR_SOURCE_LOTS2 | NMIS LOCATIONS FOR SOURCE LOTS | Switchboard › NMIS_SOURCE_LOTS › NMIS_ID_LOCATIONS subform › NMIS_LOCATIONS_FOR_SOURCE_LOTS2 |
| Form | NMIS_LOCATIONS_FOR_SOURCE_LOTS3 | NMIS LOCATIONS FOR SOURCE LOTS | Switchboard › Seed_Shipping_Ticket Subform › Seed_Ship_Ticket_ID_ACTIVITIES subform › NMIS_ID_LOCATIONS_for_Source_Withdrawal subform › NMIS_LOCATIONS_FOR_SOURCE_LOTS3 |
| Form | NMIS_LOCATIONS_FOR_SOURCE_LOTS4 | NMIS LOCATIONS FOR SOURCE LOTS | Switchboard › NMIS_ID_LOCATIONS_SOURCE_LOTS › NMIS_LOCATIONS_FOR_SOURCE_LOTS4 |
| Form | NMIS_LOCATIONS_FOR_SOURCE_LOTS_NEW | NMIS LOCATIONS FOR SOURCE LOTS | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ID_LOCATIONS2 subform › NMIS_LOCATIONS_FOR_SOURCE_LOTS_NEW |
| Form | NMIS_ORDER_BADJ_ACT subform | NMIS_ORDR_ACT subform | Switchboard › NMIS_ORDER_BILL_ADJUSTMENTS › NMIS_ORDER_BADJ_ACT subform |
| Form | NMIS_ORDER_BADJ_GRADES subform | NMIS_ORDR subform | Switchboard › NMIS_ORDER_BILL_ADJUSTMENTS › NMIS_ORDER_BADJ_GRADES subform |
| Form | NMIS_ORDER_BILL_ADJUSTMENTS | NMIS Order Invoice Adjustments | Switchboard › NMIS_ORDER_BILL_ADJUSTMENTS |
| Form | NMIS_ORDER_COMFIRMATION_FORM |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_ORDER_COMFIRMATION_FORM |
| Form | NMIS_ORDERS_Contract_Item | NMIS_ORDERS_Contract_Item | Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_ORDERS_Contract_Item |
| Form | NMIS_ORDERS_Generic_Scheduled_Transplant |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_ORDERS_Generic_Scheduled_Transplant |
| Form | NMIS_ORDERS_Last_index | NMIS_ORDERS_Last_index subform | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_PROCESS_LABELS_subform1 › NMIS_ORDERS_Last_index |
| Form | NMIS_ORDERS_NEW_AGREEMENT_INFO | Agreement Info For New Orders | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › NMIS_ORDERS_NEW_AGREEMENT_INFO |
| Form | NMIS_ORDERS_Reports | Orders  Reports | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_ORDERS_Reports |
| Form | NMIS_ORDERS_REVIEW_AGREEMENT_INFO | Agreement Info For Orders Review | Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › NMIS_ORDERS_REVIEW_AGREEMENT_INFO |
| Form | NMIS_ORDR subform | NMIS_ORDR subform | Switchboard › NMIS_ORDER_BILL_ADJUSTMENTS › NMIS_ORDR subform |
| Form | NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS subform | NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS subform | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SPECIES › NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS subform |
| Form | NMIS_OYJORD_SETTINGS | NMIS OYJORD SETTINGS | Switchboard › xLookup_Tables_Menu › NMIS_OYJORD_SETTINGS |
| Form | NMIS_OYJORD_SETTINGS subform | NMIS_OYJORD_SETTINGS subform | Switchboard › Oyjord_Calibration › Oyjord_Calibration subform › NMIS_OYJORD_SETTINGS subform |
| Form | NMIS_PHONE_NUMBERS subform1 | NMIS_PHONE_NUMBERS subform1 | Switchboard › Seed_Shipping_Ticket Subform › NMIS_CONTACTS › NMIS_PHONE_NUMBERS subform1 |
| Form | NMIS_PHONE_NUMBERS_ASSOCIATE subform | NMIS_PHONE_NUMBERS subform2 | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ASSOCIATES › NMIS_PHONE_NUMBERS_ASSOCIATE subform |
| Form | NMIS_PHONE_NUMBERS_CONTACTS subform | NMIS_PHONE_NUMBERS_CONTACTS subform | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ASSOCIATES › NMIS_PHONE_NUMBERS_CONTACTS subform |
| Form | NMIS_PROCESS_LABELS_MAIN | Select Pack ID | Switchboard › NMIS_PROCESS_LABELS_MAIN |
| Form | NMIS_PROCESS_LABELS_ST1 | Select Pack ID | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 |
| Form | NMIS_PROCESS_LABELS_ST2 | Select Pack ID | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST2 |
| Form | NMIS_PROCESS_LABELS_ST3 | Select Pack ID | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST3 |
| Form | NMIS_PROCESS_LABELS_ST4 | Select Pack ID | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST4 |
| Form | NMIS_PROCESS_LABELS_subform1 | NMIS_DG_PROC_ORDERS subform | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_PROCESS_LABELS_subform1 |
| Form | NMIS_PROCESS_LABELS_subform2 | NMIS_DG_SDLNG_LIFT subform | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_PROCESS_LABELS_subform2 |
| Form | NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE |  | Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE |
| Form | NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2 | NMIS PROCESSING ORDERS UPDATE | Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_ID_ACTIVITIES_ACTIVITIES3_subform › Property_Module_Form_Opening Module.Property_Module_Form_Open › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2 |
| Form | NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change_form | Report Input | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change_form |
| Form | NMIS_PROCESS_QUALITY_COUNTS subform | NMIS_PROCESSING_QUALITY_COUNTS subform | Switchboard › NMIS_PROCESS_QUALITY_SAMPLES › NMIS_PROCESS_QUALITY_COUNTS subform |
| Form | NMIS_PROCESS_QUALITY_SAMPLES |  | Switchboard › NMIS_PROCESS_QUALITY_SAMPLES |
| Form | NMIS_PROCESS_QUALITY_SAMPLES Subform1 | NMIS PROCESSING QUALITY  SAMPLES | Switchboard › NMIS_PROCESS_QUALITY_SAMPLES › NMIS_PROCESS_QUALITY_SAMPLES Subform1 |
| Form | NMIS_PROCESS_QUALITY_SAMPLES Subform2 | Process_Quality subform9 | Switchboard › NMIS_PROCESS_QUALITY_SAMPLES › NMIS_PROCESS_QUALITY_SAMPLES Subform2 |
| Form | NMIS_PROCESS_QUALITY_SAMPLES_NOTES subform | NMIS_PROCESSING_QI_NOTES subform | Switchboard › NMIS_PROCESS_QUALITY_SAMPLES › NMIS_PROCESS_QUALITY_SAMPLES_NOTES subform |
| Form | NMIS_PROCESSING_Labels_ORDERS_ID_MC Subform |  | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_PROCESS_LABELS_subform1 › NMIS_PROCESSING_ORDERS_SVCS_Labeler › NMIS_PROCESSING_Labels_ORDERS_ID_MC Subform |
| Form | NMIS_PROCESSING_ORDERS_ID_GRADES Subform | NMIS_PROCESSING_ORDERS_GRADES Subform | Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › NMIS_PROCESSING_ORDERS_ID_GRADES Subform |
| Form | NMIS_PROCESSING_ORDERS_ID_INFO_New_Orders subform | NMIS_ORDER_ID_INFO | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_ID_INFO_New_Orders subform |
| Form | NMIS_PROCESSING_ORDERS_ID_INFO_REVIEW_Orders subform | NMIS_ORDER_ID_INFO | Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › NMIS_PROCESSING_ORDERS_ID_UPDATE subform › NMIS_PROCESSING_ORDERS_ID_INFO_REVIEW_Orders subform |
| Form | NMIS_PROCESSING_ORDERS_ID_INFO_Review_Orders_Form | Order ID Info | Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › NMIS_PROCESSING_ORDERS_ID_UPDATE subform › NMIS_PROCESSING_ORDERS_ID_INFO_Review_Orders_Form |
| Form | NMIS_PROCESSING_ORDERS_ID_MC Subform |  | Switchboard › NMIS_ORDER_BILL_ADJUSTMENTS › NMIS_PROCESSING_ORDERS_ID_MC Subform |
| Form | NMIS_PROCESSING_ORDERS_ID_SVCS Subform | NMIS_ORDER_SERVICES | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_PROCESS_LABELS_subform1 › NMIS_PROCESSING_ORDERS_SVCS_Labeler › NMIS_PROCESSING_ORDERS_ID_SVCS Subform |
| Form | NMIS_PROCESSING_ORDERS_ID_SVCS2 Subform | NMIS_ORDER_SERVICES | Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_ID_ACTIVITIES_ACTIVITIES3_subform › Property_Module_Form_Opening Module.Property_Module_Form_Open › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2 › NMIS_PROCESSING_ORDERS_ID_SVCS2 Subform |
| Form | NMIS_PROCESSING_ORDERS_ID_SVCS_Review_Update Subform | NMIS_ORDER_SERVICES | Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › NMIS_PROCESSING_ORDERS_ID_SVCS_Review_Update Subform |
| Form | NMIS_PROCESSING_ORDERS_ID_UPDATE subform | NMIS_PROCESSING_ORDERS subform | Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › NMIS_PROCESSING_ORDERS_ID_UPDATE subform |
| Form | NMIS_PROCESSING_ORDERS_ID_UPDATE2 subform | NMIS_PROCESSING_ORDERS subform | Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_ID_ACTIVITIES_ACTIVITIES3_subform › Property_Module_Form_Opening Module.Property_Module_Form_Open › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2 › NMIS_PROCESSING_ORDERS_ID_UPDATE2 subform |
| Form | NMIS_PROCESSING_ORDERS_INPUT |  | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT |
| Form | NMIS_PROCESSING_ORDERS_INPUT_MC subform | NMIS_ORDER_MGMT_CODES Subform | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT_MC subform |
| Form | NMIS_PROCESSING_ORDERS_INPUT_Propagule | NMIS PROCESSING ORDERS INPUT - Progagule | Switchboard › Forms_Open Module.Open_Propagule_Orders_New_Form_From_Switchboard › NMIS_PROCESSING_ORDERS_INPUT_Propagule |
| Form | NMIS_PROCESSING_ORDERs_INPUT_SVCS subform | NMIS_PROCESSING_ORDERS_INPUT_SVCS subform | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERs_INPUT_SVCS subform |
| Form | NMIS_PROCESSING_ORDERs_Propagule_INPUT_GRADES subform | NMIS_PROCESSING_ORDERS_GRADES Subform | Switchboard › Forms_Open Module.Open_Propagule_Orders_New_Form_From_Switchboard › NMIS_PROCESSING_ORDERS_INPUT_Propagule › NMIS_PROCESSING_ORDERs_Propagule_INPUT_GRADES subform |
| Form | NMIS_PROCESSING_ORDERS_Propagule_INPUT_MC subform | NMIS_ORDER_MGMT_CODES Subform | Switchboard › Forms_Open Module.Open_Propagule_Orders_New_Form_From_Switchboard › NMIS_PROCESSING_ORDERS_INPUT_Propagule › NMIS_PROCESSING_ORDERS_Propagule_INPUT_MC subform |
| Form | NMIS_PROCESSING_ORDERs_Propagule_INPUT_SVCS subform | NMIS_PROCESSING_ORDERS_INPUT_SVCS subform | Switchboard › Forms_Open Module.Open_Propagule_Orders_New_Form_From_Switchboard › NMIS_PROCESSING_ORDERS_INPUT_Propagule › NMIS_PROCESSING_ORDERs_Propagule_INPUT_SVCS subform |
| Form | NMIS_PROCESSING_ORDERS_SVCS_Labeler | NMIS ORDER SERVICES | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_PROCESS_LABELS_subform1 › NMIS_PROCESSING_ORDERS_SVCS_Labeler |
| Form | NMIS_PRODUCT_CHARGES | NMIS PRODUCT CHARGES | Switchboard › xLookup_Tables_Menu › NMIS_PRODUCTS › NMIS_PRODUCT_CHARGES |
| Form | NMIS_PRODUCT_CHARGES2 | NMIS PRODUCT CHARGES | Switchboard › Client_Bill_Menu › NMIS_PRODUCT_CHARGES2 |
| Form | NMIS_Product_Charges_add_activity_codes_and_MCs Form | NMIS PRODUCTS | Switchboard › Client_Bill_Menu › NMIS_PRODUCT_CHARGES2 › NMIS_Product_Charges_add_activity_codes_and_MCs Form |
| Form | NMIS_PRODUCT_CHARGES_ROLL_OVER |  | Switchboard › Rollover_Charges_module.Rollover_Product_Charges › NMIS_PRODUCT_CHARGES_ROLL_OVER |
| Form | NMIS_PRODUCT_GRADES Subform | NMIS_PRODUCT_GRADES | Switchboard › xLookup_Tables_Menu › NMIS_PRODUCTS › NMIS_PRODUCT_GRADES Subform |
| Form | NMIS_PRODUCT_INVENTORIES |  | Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES |
| Form | NMIS_PRODUCT_INVENTORIES subform1 | NMIS_PRODUCT_INVENTORIES subform1 | Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › NMIS_PRODUCT_INVENTORIES subform1 |
| Form | NMIS_PRODUCT_INVENTORIES subform1b | NMIS_PRODUCT_INVENTORIES subform1 | Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_ID_ACTIVITIES_ACTIVITIES3_subform › Property_Module_Form_Opening Module.Property_Module_Form_Open › NMIS_PRODUCT_INVENTORIES2 › NMIS_PRODUCT_INVENTORIES subform1b |
| Form | NMIS_PRODUCT_INVENTORIES2 | NMIS Product Inventories | Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_ID_ACTIVITIES_ACTIVITIES3_subform › Property_Module_Form_Opening Module.Property_Module_Form_Open › NMIS_PRODUCT_INVENTORIES2 |
| Form | NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT | NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT | Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT |
| Form | NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform | NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform | Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform |
| Form | NMIS_PRODUCT_INVENTORY_FORM | Plant Product Inventory Report | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_FORM |
| Form | NMIS_PRODUCT_INVENTORY_ID_ACTIVITIES subform | NMIS_LOCATION_ACTIVITIES subform | Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › NMIS_PRODUCT_INVENTORY_ID_ACTIVITIES subform |
| Form | NMIS_PRODUCT_INVENTORY_MATRIX |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_MATRIX |
| Form | NMIS_PRODUCT_INVENTORY_SAMPLES subform |  | Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › NMIS_PRODUCT_INVENTORY_SAMPLES subform |
| Form | NMIS_PRODUCT_INVENTORY_SAMPLES subform2 | Inventory Counts | Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_ID_ACTIVITIES_ACTIVITIES3_subform › Property_Module_Form_Opening Module.Property_Module_Form_Open › NMIS_PRODUCT_INVENTORIES2 › NMIS_PRODUCT_INVENTORY_SAMPLES subform2 |
| Form | NMIS_PRODUCT_INVENTORY_SIZES subform | NMIS_PRODUCT_INVENTORY_SIZES subform | Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › NMIS_PRODUCT_INVENTORY_SIZES subform |
| Form | NMIS_PRODUCT_INVENTORY_SIZES subform2 | NMIS_PRODUCT_INVENTORY_SIZES subform | Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_ID_ACTIVITIES_ACTIVITIES3_subform › Property_Module_Form_Opening Module.Property_Module_Form_Open › NMIS_PRODUCT_INVENTORIES2 › NMIS_PRODUCT_INVENTORY_SIZES subform2 |
| Form | NMIS_PRODUCT_INVENTORY_SIZES2 subform | NMIS_PRODUCT_INVENTORY_SIZES subform | Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_ID_ACTIVITIES_ACTIVITIES3_subform › Property_Module_Form_Opening Module.Property_Module_Form_Open › NMIS_PRODUCT_INVENTORIES2 › NMIS_PRODUCT_INVENTORY_SAMPLES subform2 › NMIS_PRODUCT_INVENTORY_SIZES2 subform |
| Form | NMIS_PRODUCT_INVENTORY_SIZES2c subform |  | Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › NMIS_PRODUCT_INVENTORY_SAMPLES subform › NMIS_PRODUCT_INVENTORY_SIZES2c subform |
| Form | NMIS_PRODUCT_INVENTORY_TRANSACTIONS_subform | NMIS_Cultrual_TRANSACTIONS subform | Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › NMIS_PRODUCT_INVENTORY_TRANSACTIONS_subform |
| Form | NMIS_PRODUCT_MGMT_CODES1 Subform | NMIS_PRODUCT_MGMT_CODES | Switchboard › xLookup_Tables_Menu › NMIS_PRODUCTS › NMIS_PRODUCT_CHARGES › NMIS_PRODUCT_MGMT_CODES1 Subform |
| Form | NMIS_PRODUCT_MGMT_CODES1 Subform2 | NMIS_PRODUCT_MGMT_CODES | Switchboard › Client_Bill_Menu › NMIS_PRODUCT_CHARGES2 › NMIS_PRODUCT_MGMT_CODES1 Subform2 |
| Form | NMIS_Product_ship Ticket_multiple_orders subform | NMIS_ORDERS subform | Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_Product_ship Ticket_multiple_orders subform |
| Form | NMIS_PRODUCT_TYPES subform | NMIS_PRODUCT_TYPES subform | Switchboard › xLookup_Tables_Menu › NMIS_PRODUCTS › NMIS_PRODUCT_TYPES subform |
| Form | NMIS_PRODUCTS | NMIS PRODUCTS | Switchboard › xLookup_Tables_Menu › NMIS_PRODUCTS |
| Form | NMIS_SEASONS | NMIS SEASONS | Switchboard › xLookup_Tables_Menu › NMIS_SEASONS |
| Form | NMIS_SHIPPING_ID_ACTIVITIES subform | NMIS_SHIPPING_ID_ACTIVITIES subform | Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_SHIPPING_ID_ACTIVITIES subform |
| Form | NMIS_SHIPPING_TICKET subform |  | Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform |
| Form | NMIS_SHIPPING_TICKET_LOT_BALANCES subform | nmis_shipping_ticket_lot_balances subform | Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_SHIPPING_TICKET_LOT_BALANCES subform |
| Form | NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform | NMIS_ORDERS subform | Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform |
| Form | NMIS_SHIPPING_TRANSACTIONS_subform | NMIS_Cultrual_TRANSACTIONS subform | Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_SHIPPING_TRANSACTIONS_subform |
| Form | NMIS_SOURCE_LastTestData Query subform | NMIS_SOURCELastTestData Query subform | Switchboard › Client_Bill_Menu › NMIS_AGREEMENTS › NMIS_SOURCE_LastTestData Query subform |
| Form | NMIS_SOURCE_LastTestData2 Query subform | NMIS_SOURCELastTestData Query subform | Switchboard › NMIS_SOURCE_LOTS › NMIS_SOURCE_LastTestData2 Query subform |
| Form | NMIS_SOURCE_LastTestData2b Query subform | NMIS_SOURCELastTestData Query subform | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_LastTestData2b Query subform |
| Form | NMIS_SOURCE_LastTestData2c Query subform | NMIS_SOURCELastTestData Query subform | Switchboard › Seed_Shipping_Ticket Subform › Seed_Ship_Ticket_ID_ACTIVITIES subform › NMIS_SOURCE_TESTS_Ship_Ticket Form › NMIS_SOURCE_LastTestData2c Query subform |
| Form | NMIS_SOURCE_LOT_INFO subform | NMIS_SOURCE_LOT_INFO subform | Switchboard › NMIS_SOURCE_LOTS › NMIS_SOURCE_LOT_INFO subform |
| Form | NMIS_SOURCE_LOT_SELECT | NMIS source Lot History Report | Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SOURCE_LOT_SELECT |
| Form | NMIS_SOURCE_LOTS |  | Switchboard › NMIS_SOURCE_LOTS |
| Form | NMIS_SOURCE_LOTS_Bend | NMIS SOURCE LOTS Bend | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_LOTS_Bend |
| Form | NMIS_SOURCE_LOTS_ID subform | NMIS_SOURCE_LOTS_ID subform | Switchboard › Client_Bill_Menu › NMIS_AGREEMENTS › NMIS_SOURCE_LOTS_ID subform |
| Form | NMIS_SOURCE_LOTS_INPUT |  | Switchboard › NMIS_SOURCE_LOTS_INPUT |
| Form | NMIS_SOURCE_LOTS_REPORT subform | NMIS_SOURCE_LOTS_REPORT subform | Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SOURCE_LOT_SELECT › NMIS_SOURCE_LOTS_REPORT subform |
| Form | NMIS_SOURCE_PRICE_LINKS subform | NMIS_SOURCE_PRICE_LINKS subform | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SPECIES › NMIS_SOURCE_PRICE_LINKS subform |
| Form | NMIS_SOURCE_PRICE_RATES |  | Switchboard › xLookup_Tables_Menu › NMIS_SOURCE_PRICE_RATES |
| Form | NMIS_SOURCE_PRICE_RATES Subform | NMIS_SOURCE_PRICE_RATES | Switchboard › xLookup_Tables_Menu › NMIS_SOURCE_PRICE_RATES › NMIS_SOURCE_PRICE_RATES Subform |
| Form | NMIS_SOURCE_PRICE_RATES2 Subform | NMIS_SOURCE_PRICE_RATES | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SPECIES › NMIS_SOURCE_PRICE_RATES2 Subform |
| Form | NMIS_SOURCE_PRICE_RATES_BASE |  | Switchboard › xLookup_Tables_Menu › NMIS_SOURCE_PRICE_RATES_BASE |
| Form | NMIS_SOURCE_PRICE_RATES_BASE Subform |  | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SPECIES › NMIS_SOURCE_PRICE_RATES_BASE Subform |
| Form | NMIS_SOURCE_PRICES_ROLL_OVER |  | Switchboard › Rollover_Charges_module.Rollover_Source_Prices › NMIS_SOURCE_PRICES_ROLL_OVER |
| Form | NMIS_SOURCE_PROCESSING_LINKS | NMIS_SOURCE_PROCESSING_LINKS subform | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SPECIES › NMIS_SOURCE_PROCESSING_LINKS |
| Form | NMIS_SOURCE_PROCESSING_PRICES_ROLL_OVER |  | Switchboard › Rollover_Charges_module.Rollover_Source_Processing_Prices › NMIS_SOURCE_PROCESSING_PRICES_ROLL_OVER |
| Form | NMIS_SOURCE_PROCESSING_RATES |  | Switchboard › xLookup_Tables_Menu › NMIS_SOURCE_PROCESSING_RATES |
| Form | NMIS_SOURCE_PROCESSING_RATES Subform | NMIS_SOURCE_PROCESSING_RATES | Switchboard › xLookup_Tables_Menu › NMIS_SOURCE_PROCESSING_RATES › NMIS_SOURCE_PROCESSING_RATES Subform |
| Form | NMIS_SOURCE_SPP_WORKSHEET | Seed Per Pound Worksheet | Switchboard › NMIS_SOURCE_LOTS › NMIS_SOURCE_TESTS Subform › NMIS_SOURCE_SPP_WORKSHEET |
| Form | NMIS_SOURCE_SPP_WORKSHEET_NEW | Seed Per Pound Worksheet | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_TESTS_NEW Subform › NMIS_SOURCE_SPP_WORKSHEET_NEW |
| Form | NMIS_SOURCE_SPP_WORKSHEET_New_Lot | Seed Per Pound Worksheet | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_TESTS_NEW_LOT Form › NMIS_SOURCE_SPP_WORKSHEET_New_Lot |
| Form | NMIS_SOURCE_SPP_WORKSHEET_ticket | Seed Per Pound Worksheet | Switchboard › Seed_Shipping_Ticket Subform › Seed_Ship_Ticket_ID_ACTIVITIES subform › NMIS_SOURCE_TESTS_Ship_Ticket Form › NMIS_SOURCE_SPP_WORKSHEET_ticket |
| Form | NMIS_SOURCE_TEST_RESULTS Subform | NMIS_SOURCE_TEST_RESULTS Subform1 | Switchboard › NMIS_SOURCE_LOTS › NMIS_SOURCE_TESTS Subform › NMIS_SOURCE_TEST_RESULTS Subform |
| Form | NMIS_SOURCE_TESTS Form | Source Test Entry Form | Switchboard › NMIS_SOURCE_LOTS › NMIS_ID_ACTIVITIES Subform › NMIS_SOURCE_TESTS Form |
| Form | NMIS_SOURCE_TESTS Subform | NMIS_SOURCE_TESTS Subform | Switchboard › NMIS_SOURCE_LOTS › NMIS_SOURCE_TESTS Subform |
| Form | NMIS_SOURCE_TESTS_NEW Subform | NMIS_SOURCE_TESTS Subform | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_TESTS_NEW Subform |
| Form | NMIS_SOURCE_TESTS_NEW_LOT Form | Source Test Entry Form | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_TESTS_NEW_LOT Form |
| Form | NMIS_SOURCE_TESTS_Ship_Ticket Form | Source Test Entry Form | Switchboard › Seed_Shipping_Ticket Subform › Seed_Ship_Ticket_ID_ACTIVITIES subform › NMIS_SOURCE_TESTS_Ship_Ticket Form |
| Form | NMIS_SOWING_ORDER | Sowing Order Table | Switchboard › NMIS_SOWING_ORDER |
| Form | NMIS_Special_Charges subform | Special_Charges subform | Switchboard › NMIS_SOURCE_LOTS › NMIS_ID_ACTIVITIES Subform › NMIS_ID_MGMT_CODES subform › NMIS_Special_Charges subform |
| Form | NMIS_SPECIES | NMIS SPECIES | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SPECIES |
| Form | NMIS_SPECIES subform | NMIS_SPECIES subform | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SPECIES › NMIS_SPECIES subform |
| Form | NMIS_SPECIES_NO subform | NMIS_SPECIES_NO subform | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SPECIES_NO subform |
| Form | NMIS_SPECIES_PRODUCT_CYCLES subform1 | NMIS_SPECIES_PRODUCT_CYCLES subform1 | Switchboard › xLookup_Tables_Menu › NMIS_SPECIES_PRODUCTS Form › NMIS_SPECIES_PRODUCT_CYCLES subform1 |
| Form | NMIS_SPECIES_PRODUCT_CYCLES_Duplicate subform1 | NMIS_SPECIES_PRODUCT_CYCLES subform1 | Switchboard › xLookup_Tables_Menu › NMIS_SPECIES_PRODUCTS Form › NMIS_SPECIES_PRODUCTS_Duplicate Form › NMIS_SPECIES_PRODUCT_CYCLES_Duplicate subform1 |
| Form | NMIS_SPECIES_PRODUCTS Form | NMIS SPECIES PRODUCTS | Switchboard › xLookup_Tables_Menu › NMIS_SPECIES_PRODUCTS Form |
| Form | NMIS_SPECIES_PRODUCTS Subform1 | NMIS_SPECIES_PRODUCTS1 | Switchboard › xLookup_Tables_Menu › NMIS_PRODUCTS › NMIS_SPECIES_PRODUCTS Subform1 |
| Form | NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1 | NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1 | Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_AGREEMENT_LOTS › NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1 |
| Form | NMIS_SPECIES_PRODUCTS_Duplicate Form | NMIS Species Product Duplicate Form | Switchboard › xLookup_Tables_Menu › NMIS_SPECIES_PRODUCTS Form › NMIS_SPECIES_PRODUCTS_Duplicate Form |
| Form | NMIS_SPECIES_RETEST subform | NMIS_SPECIES_RETEST subform1 | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SPECIES › NMIS_SPECIES_RETEST subform |
| Form | NMIS_TEST_TYPES | NMIS TEST TYPES | Switchboard › xLookup_Tables_Menu › NMIS_TEST_TYPES |
| Form | NMIS_TICKETS_charge_per_ticket1 | Charge Per Ticket | Switchboard › Client_Bill_Menu › NMIS_TICKETS_charge_per_ticket1 |
| Form | NMIS_TICKETS_Charge_Per_Ticket1 subform | NMIS_TICKETS_Charge_Per_Ticket subform | Switchboard › Client_Bill_Menu › NMIS_TICKETS_charge_per_ticket1 › NMIS_TICKETS_Charge_Per_Ticket1 subform |
| Form | NMIS_TICKETS_charge_per_ticket2 | Charge Per Ticket | Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_TICKETS_charge_per_ticket2 |
| Form | NMIS_TICKETS_Charge_Per_Ticket2 subform | NMIS_TICKETS_Charge_Per_Ticket subform | Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_TICKETS_charge_per_ticket2 › NMIS_TICKETS_Charge_Per_Ticket2 subform |
| Form | NMIS_TREATMENT_PRODUCTS | NMIS TREATMENT PRODUCTS | Switchboard › xLookup_Tables_Menu › NMIS_TREATMENT_PRODUCTS |
| Form | NMIS_UNIT_DRILL_ROWS subform | NMIS_UNIT_DRILL_ROWS subform | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Plants_For_Inventory_Sizing › NMIS_UNIT_DRILL_ROWS subform |
| Form | NMIS_UNITS | NMIS Units | Switchboard › xLookup_Tables_Menu › NMIS_UNITS |
| Form | Non_WCF_Storage_Billing_Report |  | Switchboard › Non_WCF_Storage_Billing_Report |
| Form | Order_Pack_Form |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Order_Pack_Form |
| Form | Order_Status_Input | Report Input | Switchboard › Client_Bill_Menu › ORDER_STATUS › Order_Status_Input |
| Form | Oyjord_Calibration |  | Switchboard › Oyjord_Calibration |
| Form | Oyjord_Calibration subform | Ojyord_Calibration subform | Switchboard › Oyjord_Calibration › Oyjord_Calibration subform |
| Form | PLANT_INVENTORY_REPORTS | Sowing Request Reports | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PLANT_INVENTORY_REPORTS |
| Form | Plant_Inventory_Worksheets Form |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Plant_Inventory_Worksheets Form |
| Form | Plant_Processing_Table_Priorties |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties |
| Form | Plant_Processing_Table_Priorties_Data_Subform | Lifting_Priorties | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorties_Data_Subform |
| Form | Plant_Quarterly_Report |  | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Plant_Quarterly_Report |
| Form | PROCESS_PAYMENT_ESTIMATE_INVOICE |  | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PROCESS_PAYMENT_ESTIMATE_INVOICE |
| Form | Processing_Orders_To_Client_Form | Report Input | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Processing_Orders_To_Client_Form |
| Form | Processing_QI_Daily_Checklist |  | Switchboard › NMIS_PROCESS_QUALITY_SAMPLES › Processing_QI_Daily_Checklist |
| Form | Processing_Review_by_Activity_Date | Report Input | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Processing_Review_by_Activity_Date |
| Form | Product_Inventory_Daily_Checklist |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Product_Inventory_Daily_Checklist |
| Form | Product_Storage_Summary | Product Storage Summary | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Product_Storage_Summary |
| Form | Products_Price_Reports | Products Charges Reports | Switchboard › Client_Bill_Menu › NMIS_PRODUCT_CHARGES2 › Products_Price_Reports |
| Form | Propagule_Billing_Report | Propagule Billing | Switchboard › Propagule_Billing_Report |
| Form | PROPAGULE_HARVEST_PRIORITIES_MAX_FY_SUBFORM | NMIS_PROPAGULE_HARVEST_PRIORITIES_MAX_FY FROM NMIS_PROPAGULE_HARVEST_PRIORITIES; | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Propagule_Harvest_Priorties › PROPAGULE_HARVEST_PRIORITIES_MAX_FY_SUBFORM |
| Form | Propagule_Harvest_Priorties | Lifting_Priorties | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Propagule_Harvest_Priorties |
| Form | Propagule_Harvest_Priorties_Data_Subform | Lifting_Priorties | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Propagule_Harvest_Priorties › Propagule_Harvest_Priorties_Data_Subform |
| Form | REPORTS Form |  | Switchboard › REPORTS Form |
| Form | Reports_Menu_Maintenance Subform | Reports_Menu_Maintenance Subform | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform |
| Form | Reports_Menu_Misc Subform | Reports_Menu_Misc Subform | Switchboard › REPORTS Form › Reports_Menu_Misc Subform |
| Form | Reports_Menu_Processing Subform | Reports_Menu_Processing Subform | Switchboard › REPORTS Form › Reports_Menu_Processing Subform |
| Form | Reports_Menu_Production Subform | Reports_Menu_Production Subform | Switchboard › REPORTS Form › Reports_Menu_Production Subform |
| Form | Reports_Menu_Shipping Subform | Reports Menu Shipping | Switchboard › REPORTS Form › Reports_Menu_Shipping Subform |
| Form | Reports_Menu_Source Subform | Reports_Menu_Source Subform | Switchboard › REPORTS Form › Reports_Menu_Source Subform |
| Form | Sample_Input_JHSN | Sample_Input_JHSN | Switchboard › NMIS_PROCESS_QUALITY_SAMPLES › Sample_Input_JHSN |
| Form | Seed_Balance Query subform | Seed_Balance Query subform | Switchboard › Client_Bill_Menu › NMIS_AGREEMENTS › Seed_Balance Query subform |
| Form | Seed_Balance2 Query subform | Seed_Balance Query subform | Switchboard › NMIS_ID_LOCATIONS_SOURCE_LOTS › Seed_Balance2 Query subform |
| Form | Seed_Billing_Change_Defaults | Change Defaults | Switchboard › Seed_Non_WCF_Billing_Report › Seed_Billing_Change_Defaults |
| Form | Seed_Inventory_Report | Source Inventory Report | Switchboard › Seed_Inventory_Report |
| Form | Seed_Needs_Report | Source Inventory Report | Switchboard › REPORTS Form › Reports_Menu_Source Subform › Seed_Needs_Report |
| Form | Seed_Non_WCF_Billing_Report |  | Switchboard › Seed_Non_WCF_Billing_Report |
| Form | Seed_Quarterly_Report | Seed Quarterly Report | Switchboard › Seed_Quarterly_Report |
| Form | Seed_Ship_Ticket_ID_ACTIVITIES subform | Seed_Ship_Ticked_ID_ACTIVITIES subform | Switchboard › Seed_Shipping_Ticket Subform › Seed_Ship_Ticket_ID_ACTIVITIES subform |
| Form | Seed_Shipping_Ticket Subform |  | Switchboard › Seed_Shipping_Ticket Subform |
| Form | Seed_Sow_Withdrawal_Ticket Subform | Seed Sowing Withdrawal Ticket | Switchboard › Seed_Sow_Withdrawal_Ticket Subform |
| Form | Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform | Seed_Ship_Ticked_ID_ACTIVITIES subform | Switchboard › Seed_Sow_Withdrawal_Ticket Subform › Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform |
| Form | SOURCE_CODE_TYPE Subform | SOURCE_CODE_TYPE Subform | Switchboard › NMIS_SOURCE_LOTS_INPUT › SOURCE_CODE_TYPE Subform |
| Form | Source_Material_Work_List | Source Material Work Order List | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Source_Material_Work_List |
| Form | Source_Material_Work_Order_By_Lot_ID_Range | Source Material Work Order | Switchboard › Source_Material_Work_Order_By_Lot_ID_Range |
| Form | SOW_REQUEST_REPORTS | Sowing Request Reports | Switchboard › REPORTS Form › SOW_REQUEST_REPORTS |
| Form | Species_Product_End_Product_Group  subform | Species_Product_End_Product_Group  subform | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › Species_Product_End_Product_Group  subform |
| Form | Species_Products_Reports | Species Products Reports | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › Species_Products_Reports |
| Form | SpeciesProductAgreementLotSubform | NMIS TREATMENT PRODUCTS | Switchboard › xLookup_Tables_Menu › NMIS_SPECIES_PRODUCTS Form › SpeciesProductAgreementLotSubform |
| Form | Switchboard | Main Switchboard | Switchboard |
| Form | Ticket_Container_Summary | Ticket/TSO Unit Summary | Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › Ticket_Container_Summary |
| Form | Transaction_Totals_By_Location_and_amt_per_unit1a subform | Transaction_Totals_By_Location_and_amt_per_unit1 subform | Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › Transaction_Totals_By_Location_and_amt_per_unit1a subform |
| Form | Transaction_Totals_For_Product_Inventory subform | Transaction_Totals_By_Location_and_amt_per_unit1 subform | Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Transaction_Totals_For_Product_Inventory subform |
| Form | TSO_Container_Summary | TSO_Container_Summary | Switchboard › Client_Bill_Menu › NMIS_TICKETS_charge_per_ticket1 › TSO_Container_Summary |
| Form | xLabel_Click_Error | Clicked a Label Error Message | Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_AGREEMENT_LOTS › Error_Messages.Label_click_error › xLabel_Click_Error |
| Form | xLookup_Tables_Menu | Lookup Tables  Menu | Switchboard › xLookup_Tables_Menu |
| Form | xnot_implemented | Option Not Implemented | Switchboard › xnot_implemented |
| Form | xOyjord_Calibration_Error | Calibration Error Message | Switchboard › Oyjord_Calibration › Oyjord_Calibration subform › xOyjord_Calibration_Error |
| Form | xPlease_Be_Patient_First_Report_Message | Please Wait | Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › xPlease_Be_Patient_First_Report_Message |
| Form | xPlease_Be_Patient_Message | Please Wait | Switchboard › xLookup_Tables_Menu › xPlease_Be_Patient_Message |
| Report | **NMIS_Source_Non-WCF_Storage_Billing_Report | Non-WCF Storage Billing Report | Switchboard › REPORTS Form › Reports_Menu_Production Subform › **NMIS_Source_Non-WCF_Storage_Billing_Report |
| Report | ACCOMPLISHMENT_REPORT | Accomplishment Report | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › ACCOMPLISHMENT_REPORT |
| Report | ACCOMPLISHMENT_REPORT_region | Accomplishment Report | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › ACCOMPLISHMENT_REPORT_region |
| Report | Agreement_Lot_Associate_Subform | Field_tag_agreements subreport | Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE › NMIS_AGREEMENT_LOT_Transaction_Balance › Agreement_Lot_Associate_Subform |
| Report | Agreement_lot_by_End_Season |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Agreement_lot_by_End_Season |
| Report | Agreement_Lot_Destroy_Checkist_Client_Subreport | Field_tag_agreements subreport | Switchboard › Client_Bill_Menu › Agreement_Lot_Destroy_Checklist › Agreement_Lot_Destroy_Checkist_Client_Subreport |
| Report | Agreement_Lot_Destroy_Checklist |  | Switchboard › Client_Bill_Menu › Agreement_Lot_Destroy_Checklist |
| Report | Agreement_Lot_Destroy_Checklist subreport | Agreement_Lot_Destroy_Checklist subreport | Switchboard › Client_Bill_Menu › Agreement_Lot_Destroy_Checklist › Agreement_Lot_Destroy_Checklist subreport |
| Report | Agreement_Lot_Destroy_Checklist_CCSum subreport | Agreement_Lot_Destroy_Checklist subreport | Switchboard › Client_Bill_Menu › Agreement_Lot_Destroy_Checklist › Agreement_Lot_Destroy_Checklist_CCSum subreport |
| Report | Agreement_Lot_Destroy_Checklist_GrandSum subreport | Agreement_Lot_Destroy_Checklist subreport | Switchboard › Client_Bill_Menu › Agreement_Lot_Destroy_Checklist › Agreement_Lot_Destroy_Checklist_GrandSum subreport |
| Report | Agreement_Lot_Destroy_Checklist_Sum subreport | Agreement_Lot_Destroy_Checklist subreport | Switchboard › Client_Bill_Menu › Agreement_Lot_Destroy_Checklist › Agreement_Lot_Destroy_Checklist subreport › Agreement_Lot_Destroy_Checklist_Sum subreport |
| Report | Agreement_Lot_Grow_Locations_Subreport |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_AGREEMENTS_Holdover_Report › Agreement_Lot_Grow_Locations_Subreport |
| Report | Agreement_Lot_Higrade_Checklist | Lot Hi-Grade Checklist | Switchboard › Client_Bill_Menu › Agreement_Lot_Higrade_Checklist |
| Report | Agreement_Lot_Higrade_Checklist subreport | Agreement_Lot_Destroy_Checklist subreport | Switchboard › Client_Bill_Menu › Agreement_Lot_Higrade_Checklist › Agreement_Lot_Higrade_Checklist subreport |
| Report | Agreement_Lot_Higrade_Checklist_CCSum subreport | Agreement_Lot_Destroy_Checklist subreport | Switchboard › Client_Bill_Menu › Agreement_Lot_Higrade_Checklist › Agreement_Lot_Higrade_Checklist_CCSum subreport |
| Report | Agreement_Lot_Higrade_Checklist_GrandSum subreport | Agreement_Lot_Destroy_Checklist subreport | Switchboard › Client_Bill_Menu › Agreement_Lot_Higrade_Checklist › Agreement_Lot_Higrade_Checklist_GrandSum subreport |
| Report | Agreement_Lot_Higrade_Checklist_Sum subreport | Agreement_Lot_Destroy_Checklist subreport | Switchboard › Client_Bill_Menu › Agreement_Lot_Higrade_Checklist › Agreement_Lot_Higrade_Checklist subreport › Agreement_Lot_Higrade_Checklist_Sum subreport |
| Report | agreement_Lot_Higrade_ORDERS subreport | agreement_Lot_Higrade_ORDERS subreport | Switchboard › Client_Bill_Menu › Agreement_Lot_Destroy_Checklist › Agreement_Lot_Destroy_Checklist subreport › agreement_Lot_Higrade_ORDERS subreport |
| Report | Agreement_lot_multiple_req_amt_from_last_inv | Agreement_lot_multiple_req_amt_from_last_inv | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Agreement_lot_multiple_req_amt_from_last_inv |
| Report | Agreement_Lot_Source_Calcs |  | Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_AGREEMENT_LOTS › Agreement_Lot_Source_Calcs |
| Report | Agreement_Lot_Source_Calcs_Review |  | Switchboard › NMIS_AGREEMENT_LOTS_Report › Agreement_Lot_Source_Calcs_Review |
| Report | Agreement_Lot_Sow_Order_Oyjord_Report |  | Switchboard › NMIS_AGREEMENT_LOTS_Report › Agreement_Lot_Sow_Order_Oyjord_Report |
| Report | Agreement_Lot_Sow_Order_Oyjord_Sub_Report |  | Switchboard › NMIS_AGREEMENT_LOTS_Report › Agreement_Lot_Sow_Order_Oyjord_Report › Agreement_Lot_Sow_Order_Oyjord_Sub_Report |
| Report | Agreement_Lot_Sow_Order_Report |  | Switchboard › NMIS_AGREEMENT_LOTS_Report › Agreement_Lot_Sow_Order_Report |
| Report | Agreement_Lot_Sow_Order_Sow_Group_Summary | AGREEMENT_LOT_SOWING_ORDER_Group_Summary | Switchboard › NMIS_AGREEMENT_LOTS_Report › Agreement_Lot_Sow_Order_Sow_Group_Summary |
| Report | Agreement_Lot_vs_agreement_check_Subreport |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check › Agreement_Lot_vs_agreement_check_Subreport |
| Report | Annual_Report_Plant_Inventory_Detailed_Summary report | NMIS_Plant_Inventory | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Annual_Report_Plant_Inventory_Detailed_Summary report |
| Report | Annual_Report_Plant_Inventory_Summary report | NMIS_Plant_Inventory | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Annual_Report_Plant_Inventory_Summary report |
| Report | Annual_Report_Plant_Inventory_Summary_by_class_species report | NMIS_Plant_Inventory | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Annual_Report_Plant_Inventory_Summary_by_class_species report |
| Report | ASSOCIATE_LIST | MAIL_LABELS_BY_GROUP Query | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › ASSOCIATE_LIST |
| Report | Balances_By_Age_Class_and_End_Date | Balance by Age Class | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Balances_By_Age_Class_and_End_Date |
| Report | Balances_By_Age_Class_and_End_Date2 | Balance by Age Class | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Balances_By_Age_Class_and_End_Date2 |
| Report | Balances_By_Age_Class_and_End_Date2_no_net | Balance by Age Class | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Balances_By_Age_Class_and_End_Date2_no_net |
| Report | Balances_By_Age_Class_and_End_Date_w_Lots | Balance by Age Class | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Balances_By_Age_Class_and_End_Date_w_Lots |
| Report | Client_Bill_Billing_Parent_MGMT_Code subreport |  | Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_Client_Checklist › Client_Bill_Billing_Parent_MGMT_Code subreport |
| Report | Client_Bill_Client_MGMT_Code subreport |  | Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_w_lot_detail › Client_Bill_Client_MGMT_Code subreport |
| Report | Client_Bill_Income_Dist_Client_Jobcode_Subform | Client Bill Income Dist subreport | Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_w_lot_detail › Client_Bill_Income_Dist_Client_Jobcode_Subform |
| Report | Client_Bill_Income_Dist_Client_Parent_Subform |  | Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_Client_Checklist › Client_Bill_Income_Dist_Client_Parent_Subform |
| Report | Client_Bill_Income_Dist_Client_Subform |  | Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_w_lot_detail › Client_Bill_Income_Dist_Client_Subform |
| Report | Client_Bill_Income_Dist_sum_Subform |  | Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_Client_Checklist › Client_Bill_Income_Dist_sum_Subform |
| Report | Client_Bill_Income_Dist_Summary_Bill_Stat_Subform |  | Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_COMBINED › Client_Bill_Income_Dist_Summary_Bill_Stat_Subform |
| Report | Client_Bill_Income_Dist_Summary_Subform | Client Bill Income Dist subreport | Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_COMBINED2 › Client_Bill_Income_Dist_Summary_Subform |
| Report | CLIENT_BILL_INVOICE | **CLIENT_BILL | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › CLIENT_BILL_INVOICE |
| Report | CLIENT_BILL_INVOICE_Client_Checklist |  | Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_Client_Checklist |
| Report | CLIENT_BILL_INVOICE_COMBINED |  | Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_COMBINED |
| Report | CLIENT_BILL_INVOICE_COMBINED2 | **CLIENT_BILL | Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_COMBINED2 |
| Report | CLIENT_BILL_INVOICE_Shipping |  | Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_Shipping |
| Report | CLIENT_BILL_INVOICE_w_lot_detail |  | Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_w_lot_detail |
| Report | CLIENT_BILL_INVOICE_w_lot_detail_no_spcsvc | **CLIENT_BILL | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › CLIENT_BILL_INVOICE_w_lot_detail_no_spcsvc |
| Report | CLIENT_BILL_INVOICE_wo_lot_detail |  | Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_wo_lot_detail |
| Report | Client_Bill_Parent_Total_Subform2 | Tag pairs without Nursery ID's (bareroot) | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › CLIENT_BILL_INVOICE › Client_Bill_Parent_Total_Subform2 |
| Report | CLIENT_BILL_PREVIEW_LOTS | CLIENT_BILL_Crosstab | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › CLIENT_BILLING_PREVIEW_BILLING › CLIENT_BILL_PREVIEW_LOTS |
| Report | CLIENT_BILL_PREVIEW_LOTS2 | CLIENT_BILL_Crosstab | Switchboard › Client_Bill_Menu › CLIENT_BILLING_PREVIEW_BILLING2 › CLIENT_BILL_PREVIEW_LOTS2 |
| Report | CLIENT_BILL_PREVIEW_LOTS_SVCS | CLIENT_BILL_SVCS_Crosstab | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › CLIENT_BILLING_PREVIEW_BILLING › CLIENT_BILL_PREVIEW_LOTS_SVCS |
| Report | CLIENT_BILL_PREVIEW_LOTS_SVCS2 | CLIENT_BILL_SVCS_Crosstab | Switchboard › Client_Bill_Menu › CLIENT_BILLING_PREVIEW_BILLING2 › CLIENT_BILL_PREVIEW_LOTS_SVCS2 |
| Report | CLIENT_BILL_PREVIEW_TICKETS | SHIPPED | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › CLIENT_BILLING_PREVIEW_BILLING › CLIENT_BILL_PREVIEW_TICKETS |
| Report | CLIENT_BILL_PREVIEW_TICKETS2 | SHIPPED | Switchboard › Client_Bill_Menu › CLIENT_BILLING_PREVIEW_BILLING2 › CLIENT_BILL_PREVIEW_TICKETS2 |
| Report | CLIENT_BILL_PREVIEW_TKT_COSTS | NMIS_ASSOCIATES | Switchboard › Client_Bill_Menu › CLIENT_BILLING_PREVIEW_BILLING2 › CLIENT_BILL_PREVIEW_TICKETS2 › CLIENT_BILL_PREVIEW_TKT_COSTS |
| Report | Client_Bill_Unit_Jobcode_Total_Subform | Tag pairs without Nursery ID's (bareroot) | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › CLIENT_BILL_INVOICE › Client_Bill_Unit_Jobcode_Total_Subform |
| Report | Clients_Not_Currently_Growing | Clients Not Currently Growing | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Clients_Not_Currently_Growing |
| Report | Container_Location_Index |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Container_Location_Index |
| Report | Container_Location_Index_fs_vs_non |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Container_Location_Index_fs_vs_non |
| Report | Container_Location_Index_Inv_Stat |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Container_Location_Index_Inv_Stat |
| Report | Container_Location_Proofsheet |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Container_Location_Proofsheet |
| Report | Container_Location_Proofsheet_fs_vs_non | Container Facility Location Proofsheet | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Container_Location_Proofsheet_fs_vs_non |
| Report | Container_Location_Proofsheet_Inv_Stat |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Container_Location_Proofsheet_Inv_Stat |
| Report | CONTRACT_PAYMENT_ESTIMATE_INVOICE | LIFT_CONTRACT_ESTIMATE_INVOICE | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Contract_Payment_Estimate_Invoice › CONTRACT_PAYMENT_ESTIMATE_INVOICE |
| Report | CONTRACT_WORK_ORDER_FS-6300-12 |  | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Contract_Work_Order › CONTRACT_WORK_ORDER_FS-6300-12 |
| Report | Current_Inventory_By_Unit | Current_Inventory_By_Unit | Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE › NMIS_AGREEMENT_LOT_Transaction_Balance › Current_Inventory_By_Unit |
| Report | Destroy_act_tot_vs_trans_total_checklist | NMIS_AGREEMENT_LOT_Activities_and Transactions | Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › Destroy_act_tot_vs_trans_total_checklist |
| Report | E-MAIL_LIST_FOR_SURPLUS | E-MAIL_LIST_FOR_SURPLUS Query | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › E-MAIL_LIST_FOR_SURPLUS |
| Report | EXTRACTION_BY_MGMT_CODE subreport | EXTRACTION_BY_MGMT_CODE subreport | Switchboard › Non_WCF_Storage_Billing_Report › Seed_Extraction_Billing › EXTRACTION_BY_MGMT_CODE subreport |
| Report | EXTRACTION_INCOME_BY_MGMT_CODE subreport | EXTRACTION_BY_MGMT_CODE subreport | Switchboard › Non_WCF_Storage_Billing_Report › Seed_Extraction_Billing › EXTRACTION_INCOME_BY_MGMT_CODE subreport |
| Report | Field_Form_Plants | Stock Monitoring Form | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Plants › Field_Form_Plants |
| Report | Field_Form_Plants_Inv_Count_Checklist |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Plants_For_Inventory_Sizing › Field_Form_Plants_Inv_Count_Checklist |
| Report | Field_Form_Plants_Inv_Count_Checklist_pagebreak |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Plants_For_Inventory_Sizing › Field_Form_Plants_Inv_Count_Checklist_pagebreak |
| Report | Field_Form_Plants_Inv_Size_Checklist |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Plants › Field_Form_Plants_Inv_Size_Checklist |
| Report | Field_Form_Plants_Inv_Size_Checklist_Container_pagebreak |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Plants_For_Inventory_Sizing › Field_Form_Plants_Inv_Size_Checklist_Container_pagebreak |
| Report | Field_Form_Plants_Inv_Size_Checklist_pagebreak |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Plants_For_Inventory_Sizing › Field_Form_Plants_Inv_Size_Checklist_pagebreak |
| Report | Field_Form_Plants_w_specs | Stock Monitoring Form | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Plants › Field_Form_Plants_w_specs |
| Report | Field_Form_Plants_w_specs_ByLotID |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Plants › Field_Form_Plants_w_specs_ByLotID |
| Report | Field_Form_Propagule | Field Form | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Propagule |
| Report | Field_Form_Propagule_by_ID_Condensed | Field Form | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Propagule_by_ID_Condensed |
| Report | Field_Form_Propagule_Condensed_by_Client | Field Form | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Propagule_Condensed_by_Client |
| Report | Field_Form_Propagule_Condensed_w_acres |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Propagule_Condensed_w_acres |
| Report | Field_Form_Propagule_Landscape_letter | Field Form | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Propagule_Landscape_letter |
| Report | Field_Location_Index |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Field_Location_Index |
| Report | Field_Location_Index_fs_vs_non |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Field_Location_Index_fs_vs_non |
| Report | Field_Location_Index_Inv_Stat |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Field_Location_Index_Inv_Stat |
| Report | Field_Location_Proofsheet |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Field_Location_Proofsheet |
| Report | Field_Location_Proofsheet_fs_vs_non | Field Map Proofsheet | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Field_Location_Proofsheet_fs_vs_non |
| Report | Field_Location_Proofsheet_Inv_Stat |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Field_Location_Proofsheet_Inv_Stat |
| Report | Field_Location_Worksheet |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Location_Worksheet › Field_Location_Worksheet |
| Report | Field_tag_agreements_050357 subreport | Field_tag_agreements subreport | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags › Field_tag_pairs_w_NIds_Intermec_050357 › Field_tag_agreements_050357 subreport |
| Report | Field_tag_pairs_TP_BR | Tag pairs without Nursery ID's (bareroot) | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_tag_pairs_TP_BR |
| Report | Field_tag_pairs_TP_BRCO | Tag pairs Transplant Client Owned | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_tag_pairs_TP_BRCO |
| Report | Field_tag_pairs_w_NIds | Tag pairs with Nursery ID's | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_TESTS_NEW Subform › NMIS_SOURCE_SPP_WORKSHEET_NEW › Field_tag_pairs_w_NIds |
| Report | Field_tag_pairs_w_NIds_040207 |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags › Field_tag_pairs_w_NIds_040207 |
| Report | Field_tag_pairs_w_NIds_bailing | Tag pairs with Nursery ID's | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags › Field_tag_pairs_w_NIds_bailing |
| Report | Field_tag_pairs_w_NIds_Intermec | Tag pairs with Nursery ID's - Labelprinter | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_TESTS_NEW Subform › NMIS_SOURCE_SPP_WORKSHEET_NEW › Field_tag_pairs_w_NIds_Intermec |
| Report | Field_tag_pairs_w_NIds_Intermec_040207 | Tag pairs with Nursery ID's - Label Printer | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags › Field_tag_pairs_w_NIds_Intermec_040207 |
| Report | Field_tag_pairs_w_NIds_Intermec_050357 | Tag pairs with Nursery ID's - Label Printer | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags › Field_tag_pairs_w_NIds_Intermec_050357 |
| Report | Field_tag_pairs_wo_NIds |  | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_TESTS_NEW Subform › NMIS_SOURCE_SPP_WORKSHEET_NEW › Field_tag_pairs_wo_NIds |
| Report | Field_tag_pairs_wo_NIds_Intermec | Tag pairs without Nursery ID's - Label Printer | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_TESTS_NEW Subform › NMIS_SOURCE_SPP_WORKSHEET_NEW › Field_tag_pairs_wo_NIds_Intermec |
| Report | field_tag_PotStakes_Datamax | Pot Stakes with Nursery ID's - DataMax | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags › field_tag_PotStakes_Datamax |
| Report | Husky_Lpro_Daily_Dump_Container_Totals Subreport | **Husky_lpro_xfer_hlift_table2 subreport | Switchboard › Husky_lpro_data_input_check_form › Husky_Lpro_Daily_Dump_Report › Husky_Lpro_Daily_Dump_Container_Totals Subreport |
| Report | Husky_Lpro_Daily_Dump_Report | Lifting Husky (LPRO) Data Transfer | Switchboard › Husky_lpro_data_input_check_form › Husky_Lpro_Daily_Dump_Report |
| Report | Husky_Mpro_Dump_Report_by_Location2 | Husk Mpro Dump Report By Location | Switchboard › Forms_Open Module.Open_NMIS_ID_LOCATIONS_FORM_Husky_for_LOCCHG_From_Switchboard › NMIS_ID_LOCATIONS_FORM_Husky › Husky_Mpro_Dump_Report_by_Location2 |
| Report | Labels MAIL_LABELS_BY_ASSOC |  | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › Labels MAIL_LABELS_BY_ASSOC |
| Report | Labels MAIL_LABELS_BY_GROUP |  | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › Labels MAIL_LABELS_BY_GROUP |
| Report | Labels MAIL_LABELS_BY_GROUP_w |  | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › Labels MAIL_LABELS_BY_GROUP_w |
| Report | LIFT_CONTRACT_ACCUMULATED | LIFT_CONTRACT_ACCUM | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › LIFT_CONTRACT_ACCUMULATED |
| Report | LIFT_CONTRACT_ESTIMATE_INVOICE |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › LIFT_CONTRACT_ESTIMATE_INVOICE |
| Report | LIFT_FIELD_CONTAINER_DENSITY |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › LIFT_FIELD_CONTAINER_DENSITY |
| Report | Lift_Location_Worksheet |  | Switchboard › Husky_lpro_data_input_check_form › Lift_Location_Worksheet |
| Report | Lifting_Priorities |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Lifting_Priorities |
| Report | Lifting_Priorities_Checklist |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Lifting_Priorities_Checklist |
| Report | Lifting_Priorities_Client_Associate Subreport | Field_tag_agreements subreport | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Lifting_Priorties_Specs › Lifting_Priorities_Client_Associate Subreport |
| Report | Lifting_Priorities_Precooler | NMIS_TOLIFT | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Lifting_Priorities_Precooler |
| Report | Lifting_Priorties subreport1 | Lifting_Priorties subreport1 | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Processing_Client_Heads_Up › Lifting_Priorties subreport1 |
| Report | Lifting_Priorties_Specs | Lifting_Priorties_Specs | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Lifting_Priorties_Specs |
| Report | LOTS_LIFTED_DAILY | LOTS_LIFTED_DAILY | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › LOTS_LIFTED_DAILY |
| Report | LOTS_LIFTED_DAILY_CONTRACT |  | Switchboard › Husky_lpro_data_input_check_form › LOTS_LIFTED_DAILY_CONTRACT |
| Report | LOTS_LIFTED_DAILY_CONTRACT_Daily_Summary | Lots Lifted Daily by Contract Item | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › LOTS_LIFTED_DAILY_CONTRACT_Daily_Summary |
| Report | LOTS_LIFTED_DAILY_CONTRACT_HOURLY subreport |  | Switchboard › Husky_lpro_data_input_check_form › LOTS_LIFTED_DAILY_CONTRACT › LOTS_LIFTED_DAILY_CONTRACT_HOURLY subreport |
| Report | LOTS_LIFTED_DAILY_CONTRACT_Summary | LOTS_LIFTED_DAILY_CONTRACT | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › LOTS_LIFTED_DAILY_CONTRACT_Summary |
| Report | LOTS_PACKED_DAILY_BY_AGE_CLASS_Summary |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › LOTS_PACKED_DAILY_BY_AGE_CLASS_Summary |
| Report | LOTS_WO_EXTRACTION_AMOUNTS |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › LOTS_WO_EXTRACTION_AMOUNTS |
| Report | LOTS_WO_LIFT_AMOUNTS |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › LOTS_WO_LIFT_AMOUNTS |
| Report | LOTS_WO_PACK_AMOUNTS | LOTS_WO_PACK_AMOUNTS | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › LOTS_WO_PACK_AMOUNTS |
| Report | Native_Seed_Harvest_by_Species_Summary | Packaging Summary | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Native_Seed_Harvest_Summary › Native_Seed_Harvest_by_Species_Summary |
| Report | Native_Seed_Harvest_Summary | Packaging Summary | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Native_Seed_Harvest_Summary › Native_Seed_Harvest_Summary |
| Report | Native_Seed_Harvest_Summary2 | Packaging Summary | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Native_Seed_Harvest_Summary › Native_Seed_Harvest_Summary2 |
| Report | NMIS_AGREEMENT_LOT_Transaction_Balance |  | Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE › NMIS_AGREEMENT_LOT_Transaction_Balance |
| Report | NMIS_AGREEMENT_LOT_Transaction_Balance_by_order |  | Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE › NMIS_AGREEMENT_LOT_Transaction_Balance_by_order |
| Report | NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check | Agreement Lots vs Agreements Check | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check |
| Report | NMIS_AGREEMENT_LOTS subreport |  | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › Species_Products_Reports › NMIS_SPECIES_PRODUCTS_AND_CYCLES › NMIS_AGREEMENT_LOTS subreport |
| Report | NMIS_AGREEMENT_LOTS subreport2 |  | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › Species_Products_Reports › NMIS_SPECIES_PRODUCTS_AND_FACTORS › NMIS_AGREEMENT_LOTS subreport2 |
| Report | NMIS_AGREEMENT_Lots_Activities_and_Transactions |  | Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_AGREEMENT_LOT_SELECT › NMIS_AGREEMENT_Lots_Activities_and_Transactions |
| Report | NMIS_AGREEMENT_Lots_Activities_wo_Transactions | NMIS_AGREEMENT_LOT_Activities_wo Transactions | Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_AGREEMENT_LOT_SELECT › NMIS_AGREEMENT_Lots_Activities_wo_Transactions |
| Report | NMIS_AGREEMENT_LOTS_current subreport | NMIS_AGREEMENT_LOTS subreport | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › Species_Products_Reports › NMIS_SPECIES_PRODUCTS_AND_CYCLES_Current_Crop › NMIS_AGREEMENT_LOTS_current subreport |
| Report | NMIS_AGREEMENTS subreport | NMIS_AGREEMENTS subreport | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input › NMIS_AGREEMENTS subreport |
| Report | NMIS_AGREEMENTS_Holdover_Report |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_AGREEMENTS_Holdover_Report |
| Report | NMIS_AGREEMENTS_Holdover_Report_by_product | Holdover Lots Needing Adjustment | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_AGREEMENTS_Holdover_Report_by_product |
| Report | NMIS_AGREEMENTS_Report |  | Switchboard › NMIS_AGREEMENT_LOTS_Report › NMIS_AGREEMENTS_Report |
| Report | NMIS_AGREEMENTS_Report_by_stocktype | NMIS_AGREEMENT_LOTS | Switchboard › NMIS_AGREEMENT_LOTS_Report › NMIS_AGREEMENTS_Report_by_stocktype |
| Report | NMIS_AGREEMENTS_Report_by_stocktype_hold | NMIS_AGREEMENT_LOTS | Switchboard › NMIS_AGREEMENT_LOTS_Report › NMIS_AGREEMENTS_Report_by_stocktype_hold |
| Report | NMIS_AGREEMENTS_Report_w_cost_est |  | Switchboard › NMIS_AGREEMENT_LOTS_Report › NMIS_AGREEMENTS_Report_w_cost_est |
| Report | NMIS_AGREEMENTS_Summary_Report | Agreement Confirmation Summary Report | Switchboard › NMIS_AGREEMENT_LOTS_Report › NMIS_AGREEMENTS_Summary_Report |
| Report | NMIS_AGREEMENTS_wo_sow_xplt_xfer_Report |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_AGREEMENTS_wo_sow_xplt_xfer_Report |
| Report | NMIS_ASSOC_LIST_SURPLUS | NMIS_ASSOC_LIST_SURPLUS | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_ASSOC_LIST_SURPLUS |
| Report | NMIS_ASSOC_PHONE subrep | NMIS_ASSOC_PHONE subrep | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_ASSOC_LIST_SURPLUS › NMIS_ASSOC_PHONE subrep |
| Report | NMIS_ASSOCIATES99_AND_PHONE_CHECKLIST | Associates Contacts Phone Numbers | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_ASSOCIATES99_AND_PHONE_CHECKLIST |
| Report | NMIS_ASSOCIATES_AND_CONTACTS_current_fy_CHECKLIST | Associates Contacts Phone Numbers with Orders for Current FY | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_ASSOCIATES_AND_CONTACTS_current_fy_CHECKLIST |
| Report | NMIS_ASSOCIATES_AND_CONTACTS_current_fy_CHECKLIST2 | Associates Contacts Phone Numbers with Orders for Current FY | Switchboard › NMIS_AGREEMENT_LOTS_Report › NMIS_ASSOCIATES_AND_CONTACTS_current_fy_CHECKLIST2 |
| Report | NMIS_ASSOCIATES_AND_PHONE_CHECKLIST | Associates Contacts Phone Numbers | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_ASSOCIATES_AND_PHONE_CHECKLIST |
| Report | NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_growing_CHECKLIST | Associates Contacts Phone Numbers with Orders for Current FY | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_growing_CHECKLIST |
| Report | NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST |  | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST |
| Report | NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_Prop_CHECKLIST | Associates Contacts Phone Numbers with Orders for Current FY | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_Prop_CHECKLIST |
| Report | NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC | Mailing Intermec | Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC |
| Report | NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC_shipping | Mailing Intermec | Switchboard › Seed_Shipping_Ticket Subform › NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC_shipping |
| Report | NMIS_CLIENT_MGMT_CODES subreport | NMIS_CLIENT_MGMT_CODES subreport | Switchboard › Source_Material_Work_Order_By_Lot_ID_Range › NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE › NMIS_CLIENT_MGMT_CODES subreport |
| Report | NMIS_CLIENT_MGMT_CODES2 subreport | NMIS_CLIENT_MGMT_CODES subreport | Switchboard › Non_WCF_Storage_Billing_Report › Seed_Extraction_Billing › NMIS_CLIENT_MGMT_CODES2 subreport |
| Report | NMIS_CLIENT_MGMT_CODES_For_Seed_Work_Order subreport | NMIS_CLIENT_MGMT_CODES_For_Seed_Work_Order subreport | Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_AGREEMENT_LOTS › Seed_Bank_Work_Order › Seed_Bank_Work_Order subreport › NMIS_CLIENT_MGMT_CODES_For_Seed_Work_Order subreport |
| Report | NMIS_CLIENT_MGMT_CODES_For_Seed_Work_Order_by_ID_range subreport | NMIS_CLIENT_MGMT_CODES_For_Seed_Work_Order subreport | Switchboard › Source_Material_Work_Order_By_Lot_ID_Range › Seed_Bank_Work_Order_by_ID_Range › Seed_Bank_Work_Order_by_ID_range subreport › NMIS_CLIENT_MGMT_CODES_For_Seed_Work_Order_by_ID_range subreport |
| Report | NMIS_CLIENT_MGMT_CODES_Shipping_Ticket subreport | NMIS_CLIENT_MGMT_CODES_Shipping_Ticket subreport | Switchboard › Seed_Shipping_Ticket Subform › seed_shipping_ticket › NMIS_CLIENT_MGMT_CODES_Shipping_Ticket subreport |
| Report | NMIS_CONTACT_AND_PHONE_CHECKLIST | Associates Contacts Phone Numbers | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_CONTACT_AND_PHONE_CHECKLIST |
| Report | NMIS_CONTACT_LINKS subreport | NMIS_CONTACT_LINKS subreport | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_CONTACT_AND_PHONE_CHECKLIST › NMIS_CONTACT_LINKS subreport |
| Report | NMIS_Containers_type_Grow_Checklist | NMIS_Grow_Containers_Checklist | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_Containers_type_Grow_Checklist |
| Report | NMIS_Containers_type_Store_Checklist | NMIS Store Containers Checklist | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_Containers_type_Store_Checklist |
| Report | NMIS_ID_ACTIVITIES subreport |  | Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SOURCE_LOT_SELECT › NMIS_SOURCE_LOTS_REPORT_All_Tests › NMIS_ID_ACTIVITIES subreport |
| Report | NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY subreport | NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY subreport | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Plants › Field_Form_Plants › NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY subreport |
| Report | NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY_Prop_wide subreport | NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY subreport | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Propagule_Landscape_letter › NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY_Prop_wide subreport |
| Report | NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY_Propagule subreport | NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY subreport | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Propagule › NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY_Propagule subreport |
| Report | NMIS_ID_ACTIVITIES_source subreport |  | Switchboard › NMIS_SOURCE_LOTS › NMIS_SOURCE_LOTS_REPORT2 › NMIS_ID_ACTIVITIES_source subreport |
| Report | NMIS_ID_ACTIVITIES_source_card | NMIS_ID_ACTIVITIES subreport | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_Card_Activities › NMIS_ID_ACTIVITIES_source_card |
| Report | NMIS_ID_LOCATIONS subreport | NMIS_ID_LOCATIONS subreport | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Container_Location_Index › NMIS_ID_LOCATIONS subreport |
| Report | NMIS_ID_LOCATIONS subreport1 | NMIS_ID_LOCATIONS subreport1 | Switchboard › NMIS_SOURCE_LOTS › NMIS_SOURCE_LOTS_REPORT2 › NMIS_ID_LOCATIONS subreport1 |
| Report | NMIS_ID_LOCATIONS_Seed_Withdrawal subreport1 | NMIS_ID_LOCATIONS subreport1 | Switchboard › Seed_Shipping_Ticket Subform › Seed_Bank_Receiving_Work_List › NMIS_ID_LOCATIONS_Seed_Withdrawal subreport1 |
| Report | NMIS_LOCATIONS_CHECKLIST |  | Switchboard › xLookup_Tables_Menu › NMIS_LOCATION_TYPES › NMIS_LOCATIONS_CHECKLIST |
| Report | NMIS_Non-WCF_Storage_Billing_Report |  | Switchboard › Non_WCF_Storage_Billing_Report › NMIS_Non-WCF_Storage_Billing_Report |
| Report | NMIS_Non-WCF_Storage_Billing_Report_P | Non-WCF Storage Billing Report | Switchboard › Non_WCF_Storage_Billing_Report › NMIS_Non-WCF_Storage_Billing_Report_P |
| Report | NMIS_Non-WCF_Storage_Billing_Report_S | Non-WCF Storage Billing Report | Switchboard › Non_WCF_Storage_Billing_Report › NMIS_Non-WCF_Storage_Billing_Report_S |
| Report | NMIS_Non-WCF_Storage_Billing_Report_S_Freezer | Non-WCF Storage Billing Report | Switchboard › Non_WCF_Storage_Billing_Report › NMIS_Non-WCF_Storage_Billing_Report_S_Freezer |
| Report | NMIS_Non-WCF_Storage_Billing_Report_S_Freezer_summary | Non-WCF Storage Billing Report | Switchboard › Non_WCF_Storage_Billing_Report › NMIS_Non-WCF_Storage_Billing_Report_S_Freezer_summary |
| Report | NMIS_Non-WCF_Storage_Billing_Report_S_not_freezer | Non-WCF Storage Billing Report | Switchboard › Non_WCF_Storage_Billing_Report › NMIS_Non-WCF_Storage_Billing_Report_S_not_freezer |
| Report | NMIS_Non-WCF_Storage_Billing_w_lots_Report |  | Switchboard › Non_WCF_Storage_Billing_Report › NMIS_Non-WCF_Storage_Billing_w_lots_Report |
| Report | NMIS_ORDER_PROCESSING_TABLE_SIGN_SERVICES subreport |  | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler › NMIS_ORDER_PROCESSING_TABLE_SIGN_SERVICES subreport |
| Report | NMIS_ORDERS_PROCESSING_TABLE_SIGN |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_ORDERS_PROCESSING_TABLE_SIGN |
| Report | NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler | ORDER PROCESSING TABLE SIGN | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler |
| Report | NMIS_OYJORD_Settings_Checklist | NMIS_UNITS_Checklist | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_OYJORD_Settings_Checklist |
| Report | NMIS_OYJORD_Settings_Field_Checklist | NMIS_Oyjord_Field_Checklist | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_OYJORD_Settings_Field_Checklist |
| Report | NMIS_PHONE_NUMBERS subreport | NMIS_PHONE_NUMBERS subreport | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_ASSOCIATES99_AND_PHONE_CHECKLIST › NMIS_PHONE_NUMBERS subreport |
| Report | NMIS_PHONE_NUMBERS subreport2 | NMIS_PHONE_NUMBERS subreport | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_CONTACT_AND_PHONE_CHECKLIST › NMIS_CONTACT_LINKS subreport › NMIS_PHONE_NUMBERS subreport2 |
| Report | NMIS_PROCESS_PACK_LABELS | Preview Packing Label | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_PACK_LABELS |
| Report | NMIS_PROCESS_PACK_LABELS_040207 | Preview Packing Label | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_PACK_LABELS_040207 |
| Report | NMIS_PROCESS_PACK_LABELS_050357 | Preview Packing Label | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_PACK_LABELS_050357 |
| Report | NMIS_PROCESS_PACK_LABELS_090707 | Preview Packing Label | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_PROCESS_PACK_LABELS_090707 |
| Report | NMIS_PROCESS_PACK_LABELS_ODD_BOX | Preview Packing Label | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_PACK_LABELS_ODD_BOX |
| Report | NMIS_PROCESS_PACK_LABELS_ODD_BOX_040207 | Preview Packing Label | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_PACK_LABELS_ODD_BOX_040207 |
| Report | NMIS_PROCESS_PACK_LABELS_PROOF | Preview Packing Label | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_PROCESS_PACK_LABELS_PROOF |
| Report | NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE | Preview Packing Label | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE |
| Report | NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_1 | Preview Packing Label | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_1 |
| Report | NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_3 | Preview Packing Label | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_3 |
| Report | NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change |  | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change_form › NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change |
| Report | NMIS_PROCESS_QI_LABELS | Preview Quality Monitoring Label | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_QI_LABELS |
| Report | NMIS_PROCESS_QI_LABELS_from_table_priorities | Preview Quality Monitoring Label | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › NMIS_PROCESS_QI_LABELS_from_table_priorities |
| Report | NMIS_Processing_Table_Priorities_c1_pc subreport | NMIS_Processing_Table_Priorities subreport | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities_pc › NMIS_Processing_Table_Priorities_c1_pc subreport |
| Report | NMIS_Processing_Table_Priorities_c1_pms subreport | NMIS_Processing_Table_Priorities_PMS subreport | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities_pms › NMIS_Processing_Table_Priorities_c1_pms subreport |
| Report | NMIS_Processing_Table_Priorities_c2 subreport | NMIS_Processing_Table_Priorities subreport | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities › NMIS_Processing_Table_Priorities_c2 subreport |
| Report | NMIS_Processing_Table_Priorities_c2_pc subreport | NMIS_Processing_Table_Priorities subreport | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities_pc › NMIS_Processing_Table_Priorities_c2_pc subreport |
| Report | NMIS_Processing_Table_Priorities_c2_pms subreport | NMIS_Processing_Table_Priorities subreport | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities_pms › NMIS_Processing_Table_Priorities_c2_pms subreport |
| Report | NMIS_Processing_Table_Priorities_c3 subreport | NMIS_Processing_Table_Priorities subreport | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities › NMIS_Processing_Table_Priorities_c3 subreport |
| Report | NMIS_Processing_Table_Priorities_c3_pc subreport | NMIS_Processing_Table_Priorities subreport | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities_pc › NMIS_Processing_Table_Priorities_c3_pc subreport |
| Report | NMIS_Processing_Table_Priorities_c3_pms subreport | NMIS_Processing_Table_Priorities subreport | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities_pms › NMIS_Processing_Table_Priorities_c3_pms subreport |
| Report | NMIS_Processing_Table_Priorities_c4 subreport | NMIS_Processing_Table_Priorities subreport | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities › NMIS_Processing_Table_Priorities_c4 subreport |
| Report | NMIS_Processing_Table_Priorities_c4_pc subreport | NMIS_Processing_Table_Priorities subreport | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities_pc › NMIS_Processing_Table_Priorities_c4_pc subreport |
| Report | NMIS_Processing_Table_Priorities_c4_pms subreport | NMIS_Processing_Table_Priorities subreport | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities_pms › NMIS_Processing_Table_Priorities_c4_pms subreport |
| Report | NMIS_PRODUCT_INVENTORY_AgeClass_Species_Report | NMIS_Plant_Inventory | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_FORM › NMIS_PRODUCT_INVENTORY_AgeClass_Species_Report |
| Report | NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_Report | NMIS_Plant_Inventory | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_Report |
| Report | NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_contact | NMIS_Plant_Inventory | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_contact |
| Report | NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_Loc | NMIS_Plant_Inventory | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_Loc |
| Report | NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate2_Report |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate2_Report |
| Report | NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate_Report | NMIS_Plant_Inventory | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate_Report |
| Report | NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report |
| Report | NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report2 | NMIS_Plant_Inventory | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report2 |
| Report | NMIS_PRODUCT_INVENTORY_by_Age_Class_Summary_Report | NMIS_Plant_Inventory | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_by_Age_Class_Summary_Report |
| Report | NMIS_PRODUCT_INVENTORY_by_end_fy_Summary_Report | NMIS_Plant_Inventory | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_by_end_fy_Summary_Report |
| Report | NMIS_PRODUCT_INVENTORY_byAgeClassLongSumByParent_Report |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_byAgeClassLongSumByParent_Report |
| Report | NMIS_PRODUCT_INVENTORY_Checklist | NMIS_Plant_Inventory | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_FORM › NMIS_PRODUCT_INVENTORY_Checklist |
| Report | NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2 | NMIS_Plant_Inventory | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_FORM › NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2 |
| Report | NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2_subreport | ***********************DBD subreport | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_FORM › NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2 › NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2_subreport |
| Report | NMIS_PRODUCT_INVENTORY_Client_Summary_Report | NMIS_Plant_Inventory | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_Client_Summary_Report |
| Report | NMIS_PRODUCT_INVENTORY_DAILY_CHECKLIST |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Product_Inventory_Daily_Checklist › NMIS_PRODUCT_INVENTORY_DAILY_CHECKLIST |
| Report | NMIS_PRODUCT_INVENTORY_daily_checklist_Location_Subreport |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Product_Inventory_Daily_Checklist › NMIS_PRODUCT_INVENTORY_DAILY_CHECKLIST › NMIS_PRODUCT_INVENTORY_daily_checklist_Location_Subreport |
| Report | NMIS_PRODUCT_INVENTORY_INGROWTH_PCTs_Checklist | Size_Spec_Ingrowth_percents_Checklist | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_PRODUCT_INVENTORY_INGROWTH_PCTs_Checklist |
| Report | NMIS_PRODUCT_INVENTORY_matrix_Location_Subreport |  | Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Plant_inventory_Rpt_Size_Matrix › NMIS_PRODUCT_INVENTORY_matrix_Location_Subreport |
| Report | NMIS_PRODUCT_INVENTORY_No_Subtotals_Report |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_FORM › NMIS_PRODUCT_INVENTORY_No_Subtotals_Report |
| Report | NMIS_PRODUCT_INVENTORY_Report |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_FORM › NMIS_PRODUCT_INVENTORY_Report |
| Report | NMIS_PRODUCT_INVENTORY_Report2 |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_FORM › NMIS_PRODUCT_INVENTORY_Report2 |
| Report | NMIS_PRODUCT_INVENTORY_Report2Sum |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_FORM › NMIS_PRODUCT_INVENTORY_Report2Sum |
| Report | NMIS_PRODUCT_INVENTORY_REPORT_Location_Subreport |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate2_Report › NMIS_PRODUCT_INVENTORY_REPORT_Location_Subreport |
| Report | NMIS_PRODUCT_INVENTORY_Species_AgeClass_Report |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_FORM › NMIS_PRODUCT_INVENTORY_Species_AgeClass_Report |
| Report | NMIS_PRODUCT_INVENTORY_Summary subreport | NMIS_PRODUCT_INVENTORIES subreport | Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Product_Inventory_Data_Summary › NMIS_PRODUCT_INVENTORY_Summary subreport |
| Report | NMIS_PRODUCT_INVENTORY_Summary_Report | NMIS_Plant_Inventory | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_Summary_Report |
| Report | NMIS_PRODUCT_MGMT_CODES subreport | NMIS_PRODUCT_MGMT_CODES subreport | Switchboard › Client_Bill_Menu › NMIS_PRODUCT_CHARGES2 › Products_Price_Reports › NMIS_PRODUCTS_All_Price_CHECKLIST › NMIS_PRODUCT_MGMT_CODES subreport |
| Report | NMIS_PRODUCT_Projected_Charges_by_Category_Unit | NMIS Product Projected Charges | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › NMIS_PRODUCT_Projected_Charges_by_Category_Unit |
| Report | NMIS_PRODUCT_Projected_Charges_by_Category_Unit2 | NMIS Product Projected Charges | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › NMIS_PRODUCT_Projected_Charges_by_Category_Unit2 |
| Report | NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot | NMIS Product Projected Charges | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot |
| Report | NMIS_PRODUCT_Projected_Charges_by_Unit | NMIS Product Projected Charges | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › NMIS_PRODUCT_Projected_Charges_by_Unit |
| Report | NMIS_PRODUCT_Projected_Charges_by_Unit_Category | NMIS Product Projected Charges | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › NMIS_PRODUCT_Projected_Charges_by_Unit_Category |
| Report | NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot | NMIS Product Projected Charges | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot |
| Report | NMIS_PRODUCT_Projected_Container_Income_from_Bareroot_by_lot | NMIS Product Projected Income by Lot | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › NMIS_PRODUCT_Projected_Container_Income_from_Bareroot_by_lot |
| Report | NMIS_PRODUCT_Projected_Income |  | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › NMIS_PRODUCT_Projected_Income |
| Report | NMIS_PRODUCT_Projected_Income2 | NMIS Product Projected Income | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › NMIS_PRODUCT_Projected_Income2 |
| Report | NMIS_PRODUCT_Projected_Income_by_lot | NMIS Product Projected Income by Lot | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › NMIS_PRODUCT_Projected_Income_by_lot |
| Report | NMIS_PRODUCT_Projected_Income_by_lot2 | NMIS Product Projected Income by Lot | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › NMIS_PRODUCT_Projected_Income_by_lot2 |
| Report | NMIS_PRODUCTS_All_Price_CHECKLIST |  | Switchboard › Client_Bill_Menu › NMIS_PRODUCT_CHARGES2 › Products_Price_Reports › NMIS_PRODUCTS_All_Price_CHECKLIST |
| Report | NMIS_PRODUCTS_CHECKLIST1 |  | Switchboard › xLookup_Tables_Menu › NMIS_PRODUCTS › NMIS_PRODUCTS_CHECKLIST1 |
| Report | NMIS_PRODUCTS_CHECKLIST_current | NMIS_PRODUCTS | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_PRODUCTS_CHECKLIST_current |
| Report | NMIS_PRODUCTS_NO_Charges_CHECKLIST | Product Charges | Switchboard › Client_Bill_Menu › NMIS_PRODUCT_CHARGES2 › Products_Price_Reports › NMIS_PRODUCTS_NO_Charges_CHECKLIST |
| Report | NMIS_PRODUCTS_Non_Product_Grade_Price_CHECKLIST |  | Switchboard › Client_Bill_Menu › NMIS_PRODUCT_CHARGES2 › Products_Price_Reports › NMIS_PRODUCTS_Non_Product_Grade_Price_CHECKLIST |
| Report | NMIS_PRODUCTS_With_Product_Grade_Price_CHECKLIST |  | Switchboard › Client_Bill_Menu › NMIS_PRODUCT_CHARGES2 › Products_Price_Reports › NMIS_PRODUCTS_With_Product_Grade_Price_CHECKLIST |
| Report | NMIS_Seed_Per_Pound_NEW_Worksheet | Seed Per Pound Worksheet | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_TESTS_NEW Subform › NMIS_SOURCE_SPP_WORKSHEET_NEW › NMIS_Seed_Per_Pound_NEW_Worksheet |
| Report | NMIS_Seed_Per_Pound_Worksheet | Seed Per Pound Worksheet | Switchboard › NMIS_SOURCE_LOTS › NMIS_SOURCE_TESTS Subform › NMIS_SOURCE_SPP_WORKSHEET › NMIS_Seed_Per_Pound_Worksheet |
| Report | NMIS_Seed_Per_Pound_Worksheet_ticket | Seed Per Pound Worksheet | Switchboard › Seed_Shipping_Ticket Subform › Seed_Ship_Ticket_ID_ACTIVITIES subform › NMIS_SOURCE_TESTS_Ship_Ticket Form › NMIS_SOURCE_SPP_WORKSHEET_ticket › NMIS_Seed_Per_Pound_Worksheet_ticket |
| Report | NMIS_SEED_TICKETS_CHECKLIST |  | Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SEED_TICKETS_CHECKLIST |
| Report | NMIS_SEED_TICKETS_CHECKLIST2 |  | Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SEED_TICKETS_CHECKLIST2 |
| Report | NMIS_SOURCE_Card_2 | NMIS_SOURCE_LOTS | Switchboard › NMIS_SOURCE_LOTS › NMIS_SOURCE_Card_2 |
| Report | NMIS_SOURCE_Card_2_TKT_S | NMIS_SOURCE_LOTS | Switchboard › Seed_Shipping_Ticket Subform › NMIS_SOURCE_Card_2_TKT_S |
| Report | NMIS_SOURCE_Card_2_TKT_SW | NMIS_SOURCE_LOTS | Switchboard › Seed_Sow_Withdrawal_Ticket Subform › NMIS_SOURCE_Card_2_TKT_SW |
| Report | NMIS_SOURCE_Card_Activities | NMIS_SOURCE_LOTS | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_Card_Activities |
| Report | NMIS_SOURCE_Card_Front | NMIS_SOURCE_LOTS | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_Card_Front |
| Report | NMIS_SOURCE_Inventory_Client_Checklist_Report | NMIS_SOURCE_Inventory | Switchboard › Seed_Inventory_Report › NMIS_SOURCE_Inventory_Client_Checklist_Report |
| Report | NMIS_SOURCE_Inventory_Report |  | Switchboard › Seed_Inventory_Report › NMIS_SOURCE_Inventory_Report |
| Report | NMIS_SOURCE_Inventory_Report_by_species_test_date |  | Switchboard › Seed_Inventory_Report › NMIS_SOURCE_Inventory_Report_by_species_test_date |
| Report | NMIS_SOURCE_Inventory_Report_by_species_test_date_all_tests |  | Switchboard › Seed_Inventory_Report › NMIS_SOURCE_Inventory_Report_by_species_test_date_all_tests |
| Report | NMIS_SOURCE_Inventory_wtotals_and_grow_est Report | NMIS_SOURCE_Inventory | Switchboard › Seed_Inventory_Report › NMIS_SOURCE_Inventory_wtotals_and_grow_est Report |
| Report | NMIS_SOURCE_Inventory_wtotals_and_grow_est Report_040207 | NMIS_SOURCE_Inventory | Switchboard › Seed_Inventory_Report › NMIS_SOURCE_Inventory_wtotals_and_grow_est Report_040207 |
| Report | NMIS_SOURCE_Inventory_wtotals_pn_Report | NMIS_SOURCE_Inventory | Switchboard › Seed_Inventory_Report › NMIS_SOURCE_Inventory_wtotals_pn_Report |
| Report | NMIS_SOURCE_Inventory_wtotals_Report |  | Switchboard › Seed_Inventory_Report › NMIS_SOURCE_Inventory_wtotals_Report |
| Report | NMIS_SOURCE_Inventory_wtotals_wnotes_Report |  | Switchboard › Seed_Inventory_Report › NMIS_SOURCE_Inventory_wtotals_wnotes_Report |
| Report | NMIS_SOURCE_Location_by_ID_Report | NMIS_SOURCE_Inventory | Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SOURCE_Location_by_ID_Report |
| Report | NMIS_SOURCE_Location_by_ID_Report2 | NMIS_SOURCE_Inventory | Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SOURCE_Location_by_ID_Report2 |
| Report | NMIS_SOURCE_Location_by_ID_Report3 | NMIS_SOURCE_Inventory | Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SOURCE_Location_by_ID_Report3 |
| Report | NMIS_SOURCE_Location_by_ID_Report3b | NMIS_SOURCE_Inventory | Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SOURCE_Location_by_ID_Report3b |
| Report | NMIS_SOURCE_Location_by_Loc_Report | NMIS_SOURCE_Inventory | Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SOURCE_Location_by_Loc_Report |
| Report | NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE |  | Switchboard › Source_Material_Work_Order_By_Lot_ID_Range › NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE |
| Report | NMIS_SOURCE_LOTS_GERM_TEST_RESULTS Subreport |  | Switchboard › NMIS_SOURCE_LOTS › NMIS_SOURCE_LOTS_REPORT2 › NMIS_SOURCE_LOTS_GERM_TEST_RESULTS Subreport |
| Report | NMIS_SOURCE_LOTS_REPORT2 |  | Switchboard › NMIS_SOURCE_LOTS › NMIS_SOURCE_LOTS_REPORT2 |
| Report | NMIS_SOURCE_LOTS_REPORT_All_Tests |  | Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SOURCE_LOT_SELECT › NMIS_SOURCE_LOTS_REPORT_All_Tests |
| Report | NMIS_SOURCE_LOTS_REPORT_from_Ag_Lot | NMIS_SOURCE_LOTS | Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_AGREEMENT_LOTS › NMIS_SOURCE_LOTS_REPORT_from_Ag_Lot |
| Report | NMIS_SOURCE_LOTS_REPORT_Last_Test_Only |  | Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SOURCE_LOT_SELECT › NMIS_SOURCE_LOTS_REPORT_Last_Test_Only |
| Report | NMIS_SOURCE_Quarterly_Report_by_forest_Checklist | NMIS_SOURCE_Inventory | Switchboard › Seed_Quarterly_Report › NMIS_SOURCE_Quarterly_Report_by_forest_Checklist |
| Report | NMIS_SOURCE_Quarterly_Report_by_species_Checklist | NMIS_SOURCE_Inventory | Switchboard › Seed_Quarterly_Report › NMIS_SOURCE_Quarterly_Report_by_species_Checklist |
| Report | NMIS_SOURCE_XS_SP_Inventory_wtotals_Report |  | Switchboard › Seed_Inventory_Report › NMIS_SOURCE_XS_SP_Inventory_wtotals_Report |
| Report | NMIS_SOURCE_Zero_Bal_by_Col_Yr_Stor_For_Report | NMIS_SOURCE_Inventory | Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SOURCE_Zero_Bal_by_Col_Yr_Stor_For_Report |
| Report | NMIS_SOURCE_Zero_Balance_Report | NMIS_SOURCE_Inventory | Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SOURCE_Zero_Balance_Report |
| Report | NMIS_Sow_Order_Checklist | AGREEMENT_LOT_SOWING_ORDER_Group_Summary | Switchboard › NMIS_SOWING_ORDER › NMIS_Sow_Order_Checklist |
| Report | NMIS_SPECIES_CHECKLIST | NMIS_SPECIES_CHECKLIST | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SPECIES › NMIS_SPECIES_CHECKLIST |
| Report | NMIS_SPECIES_CHECKLIST2 |  | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_SPECIES_CHECKLIST2 |
| Report | NMIS_SPECIES_CHECKLIST_Not_Hidden | NMIS_SPECIES_CHECKLIST | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_SPECIES_CHECKLIST_Not_Hidden |
| Report | NMIS_SPECIES_Prices |  | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_SPECIES_Prices |
| Report | NMIS_SPECIES_PRODUCTS_AND_CYCLES |  | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › Species_Products_Reports › NMIS_SPECIES_PRODUCTS_AND_CYCLES |
| Report | NMIS_SPECIES_PRODUCTS_AND_CYCLES_Current_Crop |  | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › Species_Products_Reports › NMIS_SPECIES_PRODUCTS_AND_CYCLES_Current_Crop |
| Report | NMIS_SPECIES_PRODUCTS_AND_FACTORS |  | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › Species_Products_Reports › NMIS_SPECIES_PRODUCTS_AND_FACTORS |
| Report | NMIS_SPECIES_PRODUCTS_CHECKLIST |  | Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › Species_Products_Reports › NMIS_SPECIES_PRODUCTS_CHECKLIST |
| Report | NMIS_SPLUS_LIST |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_SPLUS_LIST |
| Report | NMIS_SPLUS_LIST_FS |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_SPLUS_LIST_FS |
| Report | NMIS_TRANSACTIONS subreport |  | Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_AGREEMENT_LOT_SELECT › NMIS_AGREEMENT_Lots_Activities_and_Transactions › NMIS_TRANSACTIONS subreport |
| Report | NMIS_TRANSACTIONS_destroy_check subreport |  | Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › Destroy_act_tot_vs_trans_total_checklist › NMIS_TRANSACTIONS_destroy_check subreport |
| Report | NMIS_TRANSACTIONS_packcheck subreport |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Pack_act_tot_vs_trans_total_checklist › NMIS_TRANSACTIONS_packcheck subreport |
| Report | NMIS_TRANSACTIONS_SowXplt_check subreport |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › SowTrans_act_tot_vs_trans_total_checklist › NMIS_TRANSACTIONS_SowXplt_check subreport |
| Report | ORDER_CONFIRM_MC |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_CONFIRM_MT › ORDER_CONFIRM_MC |
| Report | ORDER_CONFIRM_MT |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_CONFIRM_MT |
| Report | ORDER_CONFIRM_NURSERY |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_ORDER_COMFIRMATION_FORM › ORDER_CONFIRM_NURSERY |
| Report | ORDER_FORM | NMIS_ORDER_FORM | Switchboard › Forms_Open Module.Open_Propagule_Orders_New_Form_From_Switchboard › NMIS_PROCESSING_ORDERS_INPUT_Propagule › ORDER_FORM |
| Report | ORDER_FORM mt_040207 |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Order_Pack_Form › ORDER_FORM mt_040207 |
| Report | ORDER_FORM mt_040207_edit | NMIS_ORDER_FORM | Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › ORDER_FORM mt_040207_edit |
| Report | ORDER_FORM mt_040207_input | NMIS_ORDER_FORM | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input |
| Report | ORDER_FORM mt_050357 |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Order_Pack_Form › ORDER_FORM mt_050357 |
| Report | ORDER_FORM mt_050357_edit | NMIS_ORDER_FORM | Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › ORDER_FORM mt_050357_edit |
| Report | ORDER_FORM mt_050357_input | NMIS_ORDER_FORM | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_050357_input |
| Report | ORDER_FORM_BY_LIFT_DATE | NMIS_ORDER_FORM | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_FORM_BY_LIFT_DATE |
| Report | Order_Form_Checklist |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Order_Pack_Form › Order_Form_Checklist |
| Report | ORDER_FORM_CNCTS mt Subrep | ORDER_FORM_CNCTS Query | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input › ORDER_FORM_SPECS mt_040207 Subrep › ORDER_FORM_CNCTS mt Subrep |
| Report | ORDER_FORM_CNCTS Subrep | ORDER_FORM_CNCTS Query | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_FORM_BY_LIFT_DATE › ORDER_FORM_SPECS Subrep › ORDER_FORM_CNCTS Subrep |
| Report | ORDER_FORM_FLD_CNTNR mt subrep |  | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input › ORDER_FORM_LIFT mt Subrep › ORDER_FORM_FLD_CNTNR mt subrep |
| Report | ORDER_FORM_FLD_CNTNR subrep |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_FORM_BY_LIFT_DATE › ORDER_FORM_LIFT Subrep › ORDER_FORM_FLD_CNTNR subrep |
| Report | ORDER_FORM_FLD_CNTNR_Totals  mt subrep |  | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input › ORDER_FORM_LIFT mt Subrep › ORDER_FORM_FLD_CNTNR_Totals  mt subrep |
| Report | order_form_from_order_edit mt | NMIS_ORDER_FORM | Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › order_form_from_order_edit mt |
| Report | order_form_from_order_input mt | NMIS_ORDER_FORM | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › order_form_from_order_input mt |
| Report | order_form_from_Order_Print mt |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Order_Pack_Form › order_form_from_Order_Print mt |
| Report | ORDER_FORM_INV mt Subrep | ORDER_FORM_STATS Subrep | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input › ORDER_FORM_LEN mt Subrep › ORDER_FORM_INV mt Subrep |
| Report | ORDER_FORM_INV Subrep | ORDER_FORM_STATS Subrep | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_FORM_BY_LIFT_DATE › ORDER_FORM_LEN Subrep › ORDER_FORM_INV Subrep |
| Report | ORDER_FORM_LEN mt Subrep |  | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input › ORDER_FORM_LEN mt Subrep |
| Report | ORDER_FORM_LEN Subrep | ORDER_FORM_STATS Subrep | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_FORM_BY_LIFT_DATE › ORDER_FORM_LEN Subrep |
| Report | ORDER_FORM_LIFT mt Subrep | ORDER_FORM Subrep | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input › ORDER_FORM_LIFT mt Subrep |
| Report | ORDER_FORM_LIFT Subrep | ORDER_FORM Subrep | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_FORM_BY_LIFT_DATE › ORDER_FORM_LIFT Subrep |
| Report | ORDER_FORM_LOC Subrep | ORDER_FORM_STATS Subrep | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_FORM_BY_LIFT_DATE › ORDER_FORM_LEN Subrep › ORDER_FORM_LOC Subrep |
| Report | ORDER_FORM_MCODES mt Subrep | ORDER_FORM_MCODES Subrep | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input › ORDER_FORM_SPECS mt_040207 Subrep › ORDER_FORM_MCODES mt Subrep |
| Report | ORDER_FORM_MCODES Subrep | ORDER_FORM_MCODES Subrep | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_FORM_BY_LIFT_DATE › ORDER_FORM_SPECS Subrep › ORDER_FORM_MCODES Subrep |
| Report | ORDER_FORM_PACK mt subrep |  | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › order_form_from_order_input mt › ORDER_FORM_SPECS mt Subrep › ORDER_FORM_PACK mt subrep |
| Report | ORDER_FORM_PACK mt subrep_040207 |  | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input › ORDER_FORM_SPECS mt_040207 Subrep › ORDER_FORM_PACK mt subrep_040207 |
| Report | ORDER_FORM_PACK mt subrep_050357 |  | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_050357_input › ORDER_FORM_SPECS mt Subrep_050357 › ORDER_FORM_PACK mt subrep_050357 |
| Report | ORDER_FORM_PACK subrep |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_FORM_BY_LIFT_DATE › ORDER_FORM_SPECS Subrep › ORDER_FORM_PACK subrep |
| Report | ORDER_FORM_PACK1 subrep |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_FORM_BY_LIFT_DATE › ORDER_FORM_SPECS Subrep › ORDER_FORM_PACK subrep › ORDER_FORM_PACK1 subrep |
| Report | ORDER_FORM_PACK1_MT subrep_040207 |  | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input › ORDER_FORM_SPECS mt_040207 Subrep › ORDER_FORM_PACK mt subrep_040207 › ORDER_FORM_PACK1_MT subrep_040207 |
| Report | ORDER_FORM_PROPAGULE mt | NMIS_ORDER_FORM_PROPAGULE | Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › ORDER_FORM_PROPAGULE mt |
| Report | ORDER_FORM_QI mt Subrep | ORDER_FORM_QI Subrep | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input › ORDER_FORM_QI mt Subrep |
| Report | ORDER_FORM_QI Subrep | ORDER_FORM_QI Subrep | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_FORM_BY_LIFT_DATE › ORDER_FORM_QI Subrep |
| Report | ORDER_FORM_SPECS mt Subrep | ORDER_FORM_SPECS Subrep | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › order_form_from_order_input mt › ORDER_FORM_SPECS mt Subrep |
| Report | ORDER_FORM_SPECS mt Subrep_050357 | ORDER_FORM_SPECS Subrep | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_050357_input › ORDER_FORM_SPECS mt Subrep_050357 |
| Report | ORDER_FORM_SPECS mt_040207 Subrep |  | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input › ORDER_FORM_SPECS mt_040207 Subrep |
| Report | ORDER_FORM_SPECS Subrep | ORDER_FORM_SPECS Subrep | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_FORM_BY_LIFT_DATE › ORDER_FORM_SPECS Subrep |
| Report | ORDER_FORM_SPECS_PROPAGULE mt Subrep | ORDER_FORM_SPECS Subrep | Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › ORDER_FORM_PROPAGULE mt › ORDER_FORM_SPECS_PROPAGULE mt Subrep |
| Report | ORDER_STAT_PACK_Detaied subreport |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_STATUS_DETAILED › ORDER_STAT_PACK_Detaied subreport |
| Report | ORDER_STATUS |  | Switchboard › Client_Bill_Menu › ORDER_STATUS |
| Report | ORDER_STATUS_DETAILED |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_STATUS_DETAILED |
| Report | ORDER_STATUS_Packed |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_STATUS_Packed |
| Report | ORDER_STATUS_Packed_Shortage | ORDER_STATUS | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_STATUS_Packed_Shortage |
| Report | Orders_Checklist | Orders_Summary_Checklist | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_ORDERS_Reports › Orders_Checklist |
| Report | Orders_Checklist_by_Lot_ID |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_ORDERS_Reports › Orders_Checklist_by_Lot_ID |
| Report | Orders_Checklist_LiftInNote |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_ORDERS_Reports › Orders_Checklist_LiftInNote |
| Report | Orders_Checklist_no_orders | Orders Summary Checklist NO ORDERS | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_ORDERS_Reports › Orders_Checklist_no_orders |
| Report | Orders_Checklist_Scheduled_Transplant | Orders_Summary_Checklist | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_ORDERS_Generic_Scheduled_Transplant › Orders_Checklist_Scheduled_Transplant |
| Report | Orders_Checklist_Summary | Orders_Summary_Checklist | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_ORDERS_Generic_Scheduled_Transplant › Orders_Checklist_Summary |
| Report | Orders_Shipped_to_other_than_Packed_For | Orders Shipped to Other than Packed For | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Orders_Shipped_to_other_than_Packed_For |
| Report | OutYears_Report_Detailed_by_Forest |  | Switchboard › REPORTS Form › SOW_REQUEST_REPORTS › OutYears_Report_Detailed_by_Forest |
| Report | OutYears_Report_Summary_by_Forest_Dist_Species_Product |  | Switchboard › REPORTS Form › SOW_REQUEST_REPORTS › OutYears_Report_Summary_by_Forest_Dist_Species_Product |
| Report | OutYears_Report_Summary_by_Region | NMIS Sowing Request Summary | Switchboard › REPORTS Form › SOW_REQUEST_REPORTS › OutYears_Report_Summary_by_Region |
| Report | OutYears_Report_Summary_by_Region2 |  | Switchboard › REPORTS Form › SOW_REQUEST_REPORTS › OutYears_Report_Summary_by_Region2 |
| Report | OutYears_Report_Summary_Forest_Dist_species |  | Switchboard › REPORTS Form › SOW_REQUEST_REPORTS › OutYears_Report_Summary_Forest_Dist_species |
| Report | OutYears_Report_Summary_Forest_Species |  | Switchboard › REPORTS Form › SOW_REQUEST_REPORTS › OutYears_Report_Summary_Forest_Species |
| Report | OutYears_Report_Summary_grand | NMIS_Plant_Inventory | Switchboard › REPORTS Form › SOW_REQUEST_REPORTS › OutYears_Report_Summary_grand |
| Report | OutYears_Report_Summary_Grand_by_Region | NMIS Sowing Request Summary | Switchboard › REPORTS Form › SOW_REQUEST_REPORTS › OutYears_Report_Summary_Grand_by_Region |
| Report | OutYears_Report_Summary_grand_Forest_Sub |  | Switchboard › REPORTS Form › SOW_REQUEST_REPORTS › OutYears_Report_Summary_grand_Forest_Sub |
| Report | OutYears_Report_Summary_grand_Species_Sub |  | Switchboard › REPORTS Form › SOW_REQUEST_REPORTS › OutYears_Report_Summary_grand_Species_Sub |
| Report | OutYears_Report_Summary_Species | NMIS_Plant_Inventory | Switchboard › REPORTS Form › SOW_REQUEST_REPORTS › OutYears_Report_Summary_Species |
| Report | oyjord_calibration_checklist | Calibration Checklist | Switchboard › Oyjord_Calibration › oyjord_calibration_checklist |
| Report | Pack_act_tot_vs_trans_total_checklist |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Pack_act_tot_vs_trans_total_checklist |
| Report | PACK_PROOF |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Processing_Review_by_Activity_Date › PACK_PROOF |
| Report | PACK_PROOF_A subrep |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Processing_Review_by_Activity_Date › PACK_PROOF › PACK_PROOF_O subrep › PACK_PROOF_A subrep |
| Report | PACK_PROOF_HOURLY |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Processing_Review_by_Activity_Date › PACK_PROOF_HOURLY |
| Report | PACK_PROOF_MISC |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Processing_Review_by_Activity_Date › PACK_PROOF_MISC |
| Report | PACK_PROOF_O subrep | PACK_PROOF_O Query | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Processing_Review_by_Activity_Date › PACK_PROOF › PACK_PROOF_O subrep |
| Report | PACK_PROOF_T subrep |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Processing_Review_by_Activity_Date › PACK_PROOF › PACK_PROOF_O subrep › PACK_PROOF_A subrep › PACK_PROOF_T subrep |
| Report | Packed_for_Outplant_Checklist_by_Class |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Packed_for_Outplant_Checklist_by_Class |
| Report | Packed_for_Outplant_Checklist_by_Class_Client | Packed for Outplanting | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Packed_for_Outplant_Checklist_by_Class_Client |
| Report | Packed_for_Outplant_Summary_by_Class | Packed for Outplanting | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Packed_for_Outplant_Summary_by_Class |
| Report | Packed_for_Outplant_Summary_by_Class_Client | Packed for Outplanting | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Packed_for_Outplant_Summary_by_Class_Client |
| Report | Packed_for_Outplant_Summary_by_region | Packed for Outplanting | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Packed_for_Outplant_Summary_by_region |
| Report | Packed_for_Outplant_Summary_by_Species | Packed for Outplanting | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Packed_for_Outplant_Summary_by_Species |
| Report | Packed_for_Surplus_Sales_Checklist_by_Class |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Packed_for_Surplus_Sales_Checklist_by_Class |
| Report | Packed_for_Surplus_Sales_Checklist_by_Class_Bid_List |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Packed_for_Surplus_Sales_Checklist_by_Class_Bid_List |
| Report | Plant_Inventory_Inv_Dist_Client_Associate Subreport | Field_tag_agreements subreport | Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Plant_inventory_Rpt_Size_Matrix › Plant_Inventory_Inv_Dist_Client_Associate Subreport |
| Report | Plant_Inventory_matrix | Plant Inventory Worksheet | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Plant_Inventory_Worksheets Form › Plant_Inventory_matrix |
| Report | Plant_Inventory_Report_by_End_Year_by_Product | NMIS_Plant_Inventory | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PLANT_INVENTORY_REPORTS › Plant_Inventory_Report_by_End_Year_by_Product |
| Report | Plant_Inventory_Report_by_Forest_by_Product | NMIS_Plant_Inventory | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PLANT_INVENTORY_REPORTS › Plant_Inventory_Report_by_Forest_by_Product |
| Report | Plant_Inventory_Report_by_Forest_by_Species_Product | NMIS_Plant_Inventory | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PLANT_INVENTORY_REPORTS › Plant_Inventory_Report_by_Forest_by_Species_Product |
| Report | Plant_Inventory_Report_Detailed__Product |  | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PLANT_INVENTORY_REPORTS › Plant_Inventory_Report_Detailed__Product |
| Report | Plant_Inventory_Report_Detailed_by_Forest |  | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PLANT_INVENTORY_REPORTS › Plant_Inventory_Report_Detailed_by_Forest |
| Report | Plant_Inventory_Report_Detailed_Species_Product |  | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PLANT_INVENTORY_REPORTS › Plant_Inventory_Report_Detailed_Species_Product |
| Report | Plant_inventory_Rpt_Size_Matrix |  | Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Plant_inventory_Rpt_Size_Matrix |
| Report | Plant_inventory_Rpt_Size_Matrix_Group |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_MATRIX › Plant_inventory_Rpt_Size_Matrix_Group |
| Report | Plant_inventory_Rpt_Size_Matrix_PCT_Only_Group |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_MATRIX › Plant_inventory_Rpt_Size_Matrix_PCT_Only_Group |
| Report | Plant_Inventory_Size_Matrix_Blank_Subreport |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Plant_Inventory_Worksheets Form › Plant_Inventory_Worksheet_w_matrix › Plant_Inventory_Size_Matrix_Blank_Subreport |
| Report | Plant_inventory_Size_Matrix_Count subreport | Size_Matrix_Xtab subreport | Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Plant_inventory_Rpt_Size_Matrix › Plant_inventory_Size_Matrix_Count subreport |
| Report | Plant_inventory_Size_Matrix_Count_Group subreport | Size_Matrix_Xtab subreport | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_MATRIX › Plant_inventory_Rpt_Size_Matrix_Group › Plant_inventory_Size_Matrix_Count_Group subreport |
| Report | Plant_inventory_Size_Matrix_PCT subreport | Size_Matrix_Xtab subreport | Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Plant_inventory_Rpt_Size_Matrix › Plant_inventory_Size_Matrix_PCT subreport |
| Report | Plant_inventory_Size_Matrix_PCT2_group subreport | Size_Matrix_Xtab subreport | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_MATRIX › Plant_inventory_Rpt_Size_Matrix_PCT_Only_Group › Plant_inventory_Size_Matrix_PCT2_group subreport |
| Report | Plant_inventory_Size_Matrix_PCT_Group subreport | Size_Matrix_Xtab subreport | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_MATRIX › Plant_inventory_Rpt_Size_Matrix_Group › Plant_inventory_Size_Matrix_PCT_Group subreport |
| Report | PLANT_INVENTORY_SPECS_UNIT_CODE subreport | PLANT_INVENTORY_SPECS_UNIT_CODE subreport | Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Plant_inventory_Rpt_Size_Matrix › Plant_inventory_Size_Matrix_Count subreport › PLANT_INVENTORY_SPECS_UNIT_CODE subreport |
| Report | PLANT_INVENTORY_SPECS_UNIT_CODE2g subreport | PLANT_INVENTORY_SPECS_UNIT_CODE subreport | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_MATRIX › Plant_inventory_Rpt_Size_Matrix_PCT_Only_Group › Plant_inventory_Size_Matrix_PCT2_group subreport › PLANT_INVENTORY_SPECS_UNIT_CODE2g subreport |
| Report | PLANT_INVENTORY_SPECS_UNIT_CODE_Group subreport | PLANT_INVENTORY_SPECS_UNIT_CODE subreport | Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_MATRIX › Plant_inventory_Rpt_Size_Matrix_Group › Plant_inventory_Size_Matrix_Count_Group subreport › PLANT_INVENTORY_SPECS_UNIT_CODE_Group subreport |
| Report | Plant_Inventory_Worksheet |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Plant_Inventory_Worksheets Form › Plant_Inventory_Worksheet |
| Report | Plant_Inventory_Worksheet_Blank |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Plant_Inventory_Worksheet_Blank |
| Report | Plant_Inventory_Worksheet_Client_Associate Subreport |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Plant_Inventory_Worksheets Form › Plant_Inventory_Worksheet › Plant_Inventory_Worksheet_Client_Associate Subreport |
| Report | Plant_Inventory_Worksheet_Field_Location_Index Subform |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Drying_Tray_Input_Form › PROPAGULE_HARVEST_DRYING_BIN › Plant_Inventory_Worksheet_Field_Location_Index Subform |
| Report | Plant_Inventory_Worksheet_w_matrix |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Plant_Inventory_Worksheets Form › Plant_Inventory_Worksheet_w_matrix |
| Report | Plant_Processing_Table_Priorities | Processing Table Assgnments | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities |
| Report | Plant_Processing_Table_Priorities_pc | Processing Table Assigments - Precooler | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities_pc |
| Report | Plant_Processing_Table_Priorities_pms | Processing Table Assgnments | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities_pms |
| Report | Plant_Quarterly_Rept | Plant_Quarterly_Rept | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Plant_Quarterly_Report › Plant_Quarterly_Rept |
| Report | Precooler_Destroy Form |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Precooler_Destroy Form |
| Report | Precooler_Destroy_Short Form |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Precooler_Destroy_Short Form |
| Report | PROCESS_PAYMENT | PROCESS_PAYMENT | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PROCESS_PAYMENT |
| Report | PROCESS_PAYMENT_CONDENSED |  | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PROCESS_PAYMENT_ESTIMATE_INVOICE › PROCESS_PAYMENT_CONDENSED |
| Report | PROCESS_PAYMENT_INCREMENTAL | PROCESS_PAYMENT_INCREMENTAL | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PROCESS_PAYMENT_INCREMENTAL |
| Report | PROCESS_PAYMENT_INCREMENTAL_Subreport |  | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PROCESS_PAYMENT_ESTIMATE_INVOICE › PROCESS_PAYMENT_CONDENSED › PROCESS_PAYMENT_INCREMENTAL_Subreport |
| Report | PROCESS_PAYMENT_Summary | PROCESS_PAYMENT | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PROCESS_PAYMENT_ESTIMATE_INVOICE › PROCESS_PAYMENT_Summary |
| Report | PROCESS_PAYMENT_w_Incremental | PROCESS_PAYMENT | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PROCESS_PAYMENT_ESTIMATE_INVOICE › PROCESS_PAYMENT_w_Incremental |
| Report | Processing_and_Shipping_Record_for_TP_Report | Processing and Shipping Record for TP Report | Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › Processing_and_Shipping_Record_for_TP_Report |
| Report | Processing_and_Shipping_Record_Report | Processing_and_Shipping_Record_Report | Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › Processing_and_Shipping_Record_Report |
| Report | Processing_Client_Heads_Up | Client Heads Up | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Processing_Client_Heads_Up |
| Report | Processing_Client_Heads_Up_subreport | Lifting_Priorties subreport | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Processing_Client_Heads_Up › Processing_Client_Heads_Up_subreport |
| Report | Processing_Contract_No_Quality_Samples | No Quality Monitoring Samples | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PROCESS_PAYMENT_ESTIMATE_INVOICE › Processing_Contract_No_Quality_Samples |
| Report | Processing_Contract_No_Quality_Samples_no_data | No Quality Monitoring Samples | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PROCESS_PAYMENT_ESTIMATE_INVOICE › Processing_Contract_Processed_not_in_pmt_temp › Processing_Contract_No_Quality_Samples_no_data |
| Report | Processing_Contract_Processed_not_in_pmt_temp | Lots Processed not included in Contract Est | Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PROCESS_PAYMENT_ESTIMATE_INVOICE › Processing_Contract_Processed_not_in_pmt_temp |
| Report | Processing_QI_Summary_By_Lot_and_Date_Range |  | Switchboard › NMIS_PROCESS_QUALITY_SAMPLES › Processing_QI_Daily_Checklist › Processing_QI_Summary_By_Lot_and_Date_Range |
| Report | Processing_QI_Summary_By_Table_and_Date_Range |  | Switchboard › NMIS_PROCESS_QUALITY_SAMPLES › Processing_QI_Daily_Checklist › Processing_QI_Summary_By_Table_and_Date_Range |
| Report | Processing_QI_Summary_By_Table_and_Date_Range_Subreport | NMIS_Processing_QI_Shed_Summary | Switchboard › NMIS_PROCESS_QUALITY_SAMPLES › Processing_QI_Daily_Checklist › Processing_QI_Summary_By_Table_and_Date_Range › Processing_QI_Summary_By_Table_and_Date_Range_Subreport |
| Report | Processing_Quality_Recording_Form_050357 |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Order_Pack_Form › Processing_Quality_Recording_Form_050357 |
| Report | Processing_Table_Assignments_Detailed |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Processing_Table_Assignments_Detailed |
| Report | Processing_Table_Sign_Precooler_Totals | Processing_Table_Sign_Precooler_Totals | Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler › Processing_Table_Sign_Precooler_Totals |
| Report | Product_Inventory_Data_Summary |  | Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Product_Inventory_Data_Summary |
| Report | PRODUCT_PULL_ticket |  | Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › PRODUCT_PULL_ticket |
| Report | Product_Storage_Containers_Used |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Product_Storage_Containers_Used |
| Report | Product_Storage_Containers_Used_by_client | Product Storage Units Use Report | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Product_Storage_Containers_Used_by_client |
| Report | Product_Storage_Detailed_Summary |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Product_Storage_Summary › Product_Storage_Detailed_Summary |
| Report | Product_Storage_Detailed_Summary_with_notes | Product Storage Detailed Summary | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Product_Storage_Summary › Product_Storage_Detailed_Summary_with_notes |
| Report | Product_Storage_Lot_Index |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Product_Storage_Summary › Product_Storage_Lot_Index |
| Report | PRODUCT_STORAGE_RECORD | PRODUCT_STORAGE_RECORD | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › PRODUCT_STORAGE_RECORD |
| Report | PRODUCT_STORAGE_RECORD_FROM_ORDER_INPUT_FORM | PRODUCT_STORAGE_RECORD | Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › PRODUCT_STORAGE_RECORD_FROM_ORDER_INPUT_FORM |
| Report | PRODUCT_STORAGE_RECORD_FROM_ORDER_REVIEW_FORM |  | Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › PRODUCT_STORAGE_RECORD_FROM_ORDER_REVIEW_FORM |
| Report | Product_Storage_Summary |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Product_Storage_Summary › Product_Storage_Summary |
| Report | Product_Storage_Summary2 | Packaging Summary | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Product_Storage_Summary › Product_Storage_Summary2 |
| Report | Product_Storage_Summary3 | Product Storage Summary by Species | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Product_Storage_Summary › Product_Storage_Summary3 |
| Report | PRODUCT_STORAGE_SUMMARY_SUBREPORT |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Product_Storage_Summary › Product_Storage_Detailed_Summary › PRODUCT_STORAGE_SUMMARY_SUBREPORT |
| Report | PRODUCT_TICKET |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › PRODUCT_TICKET |
| Report | PRODUCT_ticket2b | PRODUCT_TICKET | Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › PRODUCT_ticket2b |
| Report | PRODUCT_TKT2_LOTS subrep | PRODUCT_TKT_LOTS Query | Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › PRODUCT_ticket2b › PRODUCT_TKT2_LOTS subrep |
| Report | PRODUCT_TKT_LOTS subrep |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › PRODUCT_TICKET › PRODUCT_TKT_LOTS subrep |
| Report | PRODUCT_TKT_LOTS_PULL subrep |  | Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › PRODUCT_PULL_ticket › PRODUCT_TKT_LOTS_PULL subrep |
| Report | PROOF_ALL | PROOF_ALL_LOTS | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › PROOF_ALL |
| Report | PROOF_ALL_AGR | PROOF_ALL_AGR subrep | Switchboard › Client_Bill_Menu › PROOF_ALL_From_Billing_Form › PROOF_ALL_AGR |
| Report | PROOF_ALL_From_Billing_Form |  | Switchboard › Client_Bill_Menu › PROOF_ALL_From_Billing_Form |
| Report | PROOF_ALL_GRADE | PROOF_ALL_GRADE Query | Switchboard › Client_Bill_Menu › PROOF_ALL_From_Billing_Form › PROOF_ALL_ORD_From_Billing_Form › PROOF_ALL_GRADE |
| Report | PROOF_ALL_LCT |  | Switchboard › Client_Bill_Menu › PROOF_ALL_From_Billing_Form › PROOF_ALL_LCT |
| Report | PROOF_ALL_LFT |  | Switchboard › Client_Bill_Menu › PROOF_ALL_From_Billing_Form › PROOF_ALL_LFT |
| Report | PROOF_ALL_ORD | PROOF_ALL_ORD subrep | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › PROOF_ALL › PROOF_ALL_ORD |
| Report | PROOF_ALL_ORD_From_Billing_Form |  | Switchboard › Client_Bill_Menu › PROOF_ALL_From_Billing_Form › PROOF_ALL_ORD_From_Billing_Form |
| Report | PROOF_ALL_PCT |  | Switchboard › Client_Bill_Menu › PROOF_ALL_From_Billing_Form › PROOF_ALL_PCT |
| Report | PROOF_ALL_SOW |  | Switchboard › Client_Bill_Menu › PROOF_ALL_From_Billing_Form › PROOF_ALL_SOW |
| Report | Propagule_Billing |  | Switchboard › Propagule_Billing_Report › Propagule_Billing |
| Report | Propagule_Billing_summary |  | Switchboard › Propagule_Billing_Report › Propagule_Billing_summary |
| Report | Propagule_Destroy_Priorities | NMIS_TOLIFT | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Propagule_Harvest_Priorties › Propagule_Destroy_Priorities |
| Report | PROPAGULE_HARVEST_DRYING_BIN |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Drying_Tray_Input_Form › PROPAGULE_HARVEST_DRYING_BIN |
| Report | PROPAGULE_HARVEST_DRYING_BIN_Label | NMIS_ORDER_FORM | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Drying_Tray_Input_Form › PROPAGULE_HARVEST_DRYING_BIN_Label |
| Report | PROPAGULE_HARVEST_DRYING_BIN_Single_Tray | NMIS Propagule Harvest Drying Tray Tag | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Drying_Tray_Input_Form › PROPAGULE_HARVEST_DRYING_BIN_Single_Tray |
| Report | Propagule_Harvest_Priorities | NMIS_TOLIFT | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Propagule_Harvest_Priorties › Propagule_Harvest_Priorities |
| Report | Propagule_Harvest_Priorities_by_Client_loc_Checklist | Propagule Harvest Accomplishment Report | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Propagule_Harvest_Priorties › Propagule_Harvest_Priorities_by_Client_loc_Checklist |
| Report | Propagule_Harvest_Priorities_by_loc_Checklist |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Propagule_Harvest_Priorties › Propagule_Harvest_Priorities_by_loc_Checklist |
| Report | Propagule_Harvest_Priorities_Checklist |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Propagule_Harvest_Priorties › Propagule_Harvest_Priorities_Checklist |
| Report | Propagule_Harvest_Priorities_Harvested | Propagule Harvest Accomplishment Report | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Propagule_Harvest_Priorties › Propagule_Harvest_Priorities_Harvested |
| Report | Propagule_Harvest_Priorities_Harvested_by_Date | Propagule Harvest Accomplishment Report | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Propagule_Harvest_Priorties › Propagule_Harvest_Priorities_Harvested_by_Date |
| Report | Propagule_Harvest_Priorities_no_Harvest | Propagule Harvest Accomplishment Report | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Propagule_Harvest_Priorties › Propagule_Harvest_Priorities_no_Harvest |
| Report | Propagule_Harvest_Priorities_Subform | Field Form | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Propagule_Harvest_Priorties › Propagule_Destroy_Priorities › Propagule_Harvest_Priorities_Subform |
| Report | Propagule_Order_Field_Location_Index Subform | Field Index | Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › ORDER_FORM_PROPAGULE mt › ORDER_FORM_SPECS_PROPAGULE mt Subrep › Propagule_Order_Field_Location_Index Subform |
| Report | PXPLT_MCODES Subrep | ORDER_FORM_MCODES Subrep | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › XPLT_AT_JHSN › PXPLT_MCODES Subrep |
| Report | Request_Checklist_by_Age_Class | Request_Summary_Checklist | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Request_Checklist_by_Age_Class |
| Report | Request_Checklist_by_Age_Class_End_Year | Request_Summary_Checklist | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Request_Checklist_by_Age_Class_End_Year |
| Report | Request_Checklist_by_Age_Class_End_Year_Summary | Request_Summary_Checklist | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Request_Checklist_by_Age_Class_End_Year_Summary |
| Report | Request_Checklist_Summary_by_Age_Class |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Request_Checklist_Summary_by_Age_Class |
| Report | Seed_Bank_Receiving_Work_List |  | Switchboard › Seed_Shipping_Ticket Subform › Seed_Bank_Receiving_Work_List |
| Report | Seed_Bank_Stratification_Record |  | Switchboard › Seed_Sow_Withdrawal_Ticket Subform › Seed_Bank_Stratification_Record |
| Report | Seed_Bank_Work_Order |  | Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_AGREEMENT_LOTS › Seed_Bank_Work_Order |
| Report | Seed_Bank_Work_Order subreport | Seed_Bank_Work_Order subreport | Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_AGREEMENT_LOTS › Seed_Bank_Work_Order › Seed_Bank_Work_Order subreport |
| Report | Seed_Bank_Work_Order_by_ID_Range |  | Switchboard › Source_Material_Work_Order_By_Lot_ID_Range › Seed_Bank_Work_Order_by_ID_Range |
| Report | Seed_Bank_Work_Order_by_ID_range subreport | Seed_Bank_Work_Order subreport | Switchboard › Source_Material_Work_Order_By_Lot_ID_Range › Seed_Bank_Work_Order_by_ID_Range › Seed_Bank_Work_Order_by_ID_range subreport |
| Report | Seed_Bank_Work_Order_Checklist | Seed_Bank_Work_Order | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Source_Material_Work_List › Seed_Bank_Work_Order_Checklist |
| Report | Seed_Bank_Work_Order_list | Seed_Bank_Work_Order | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Source_Material_Work_List › Seed_Bank_Work_Order_list |
| Report | Seed_Bank_Work_Order_Ship_list |  | Switchboard › Seed_Shipping_Ticket Subform › Seed_Bank_Work_Order_Ship_list |
| Report | Seed_Bank_Work_Order_Sow_list |  | Switchboard › Seed_Sow_Withdrawal_Ticket Subform › Seed_Bank_Work_Order_Sow_list |
| Report | Seed_Bank_Work_Order_Sow_list2 |  | Switchboard › Seed_Sow_Withdrawal_Ticket Subform › Seed_Bank_Work_Order_Sow_list2 |
| Report | seed_combo_ticket |  | Switchboard › Seed_Shipping_Ticket Subform › seed_combo_ticket |
| Report | seed_entry_edit_lot_bag_label | seed_shipping_ticket | Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ID_ACTIVITIES_NEW_LOTS Subform › seed_entry_edit_lot_bag_label |
| Report | Seed_Extraction_Billing |  | Switchboard › Non_WCF_Storage_Billing_Report › Seed_Extraction_Billing |
| Report | Seed_Non_WCF_Billing |  | Switchboard › Seed_Non_WCF_Billing_Report › Seed_Non_WCF_Billing |
| Report | Seed_Non_WCF_Billing2 |  | Switchboard › Seed_Non_WCF_Billing_Report › Seed_Non_WCF_Billing2 |
| Report | Seed_Non_WCF_Billing3 |  | Switchboard › Seed_Non_WCF_Billing_Report › Seed_Non_WCF_Billing3 |
| Report | Seed_Non_WCF_Billing3_summary |  | Switchboard › Seed_Non_WCF_Billing_Report › Seed_Non_WCF_Billing3_summary |
| Report | SEED_NON_WCF_BILLING_BY_MGMT_CODE subreport |  | Switchboard › Seed_Non_WCF_Billing_Report › Seed_Non_WCF_Billing › SEED_NON_WCF_BILLING_BY_MGMT_CODE subreport |
| Report | SEED_NON_WCF_BILLING_INCOME_BY_MGMT_CODE subreport |  | Switchboard › Seed_Non_WCF_Billing_Report › Seed_Non_WCF_Billing › SEED_NON_WCF_BILLING_INCOME_BY_MGMT_CODE subreport |
| Report | Seed_Quarterly_Report | Seed_Quarterly_Report | Switchboard › Seed_Quarterly_Report › Seed_Quarterly_Report |
| Report | Seed_Quarterly_Report_Diverse | Seed_Quarterly_Report | Switchboard › Seed_Quarterly_Report › Seed_Quarterly_Report_Diverse |
| Report | Seed_Quarterly_Report_NON_Diverse | Seed_Quarterly_Report | Switchboard › Seed_Quarterly_Report › Seed_Quarterly_Report_NON_Diverse |
| Report | Seed_Sales_Billing | Extraction_Non_WCF_Billing | Switchboard › Non_WCF_Storage_Billing_Report › Seed_Sales_Billing |
| Report | SEED_SALES_BILLING_BY_MGMT_CODE subreport | EXTRACTION_BY_MGMT_CODE subreport | Switchboard › Non_WCF_Storage_Billing_Report › Seed_Sales_Billing › SEED_SALES_BILLING_BY_MGMT_CODE subreport |
| Report | SEED_SALES_BILLING_INCOME_BY_MGMT_CODE subreport | EXTRACTION_BY_MGMT_CODE subreport | Switchboard › Non_WCF_Storage_Billing_Report › Seed_Sales_Billing › SEED_SALES_BILLING_INCOME_BY_MGMT_CODE subreport |
| Report | seed_shipping_bag_tags | seed_shipping_ticket | Switchboard › Seed_Shipping_Ticket Subform › seed_shipping_bag_tags |
| Report | seed_shipping_lot_label_040207 | seed_shipping_ticket | Switchboard › Seed_Shipping_Ticket Subform › seed_shipping_lot_label_040207 |
| Report | seed_shipping_lot_label_by_Ticket | seed_shipping_ticket | Switchboard › Seed_Shipping_Ticket Subform › seed_shipping_lot_label_by_Ticket |
| Report | seed_shipping_lot_label_sw_040207 | seed_shipping_ticket | Switchboard › Seed_Sow_Withdrawal_Ticket Subform › Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform › seed_shipping_lot_label_sw_040207 |
| Report | seed_shipping_ticket |  | Switchboard › Seed_Shipping_Ticket Subform › seed_shipping_ticket |
| Report | seed_shipping_ticket_with_Test_Data |  | Switchboard › Seed_Shipping_Ticket Subform › seed_shipping_ticket_with_Test_Data |
| Report | seed_sow_withdrawal_ticket |  | Switchboard › Seed_Sow_Withdrawal_Ticket Subform › seed_sow_withdrawal_ticket |
| Report | seed_sow_withdrawal_ticket_with_Test_Data |  | Switchboard › Seed_Sow_Withdrawal_Ticket Subform › seed_sow_withdrawal_ticket_with_Test_Data |
| Report | Seed_Sown_for_Other_Than_Storage_Parent |  | Switchboard › Seed_Non_WCF_Billing_Report › Seed_Sown_for_Other_Than_Storage_Parent |
| Report | Seedbox_Label_Large_ID | Seedbox_Labels | Switchboard › NMIS_SOURCE_LOTS_INPUT › Seedbox_Label_Large_ID |
| Report | Seedbox_Labels | Seedbox Labels | Switchboard › NMIS_SOURCE_LOTS_INPUT › Seedbox_Labels |
| Report | Seedbox_Labels2 | Seedbox_Labels | Switchboard › NMIS_SOURCE_LOTS_INPUT › Seedbox_Labels2 |
| Report | seedbox_labels_0503572e | Seedbox Labels | Switchboard › REPORTS Form › Reports_Menu_Source Subform › Lot_ID_Input_Form2e › seedbox_labels_0503572e |
| Report | seedbox_labels_050357s | Seedbox Labels | Switchboard › NMIS_SOURCE_LOTS › Lot_ID_Input_Form2 › seedbox_labels_050357s |
| Report | Ship_Ticket_Summary_by_Category |  | Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › Ship_Ticket_Summary_by_Category |
| Report | Ship_Ticket_Summary_by_Ticket_No |  | Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › Ship_Ticket_Summary_by_Ticket_No |
| Report | Ship_Ticket_Summary_by_Ticket_No_TSO |  | Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › Ship_Ticket_Summary_by_Ticket_No_TSO |
| Report | Ship_Ticket_Summary_by_Ticket_No_TSO2 |  | Switchboard › Client_Bill_Menu › NMIS_TICKETS_charge_per_ticket1 › Ship_Ticket_Summary_by_Ticket_No_TSO2 |
| Report | Ship_Ticket_Summary_by_TSO | Product Shipping Ticket Summary | Switchboard › Client_Bill_Menu › NMIS_TICKETS_charge_per_ticket1 › Ship_Ticket_Summary_by_TSO |
| Report | Ship_Ticket_Summary_by_TSO_tkt | Product Shipping Ticket Summary | Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_TICKETS_charge_per_ticket2 › Ship_Ticket_Summary_by_TSO_tkt |
| Report | Shipping_Summary_By_Parent_Associate |  | Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › Shipping_Summary_By_Parent_Associate |
| Report | Shipping_Summary_By_Stocktype |  | Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › Shipping_Summary_By_Stocktype |
| Report | Shipping_Summary_By_Stocktype_Species2 |  | Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › Shipping_Summary_By_Stocktype_Species2 |
| Report | SowTrans_act_tot_vs_trans_total_checklist |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › SowTrans_act_tot_vs_trans_total_checklist |
| Report | Stock_Lifting_Worksheet |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Stock_Lifting_Worksheet |
| Report | Stock_Location_Worksheet |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Stock_Location_Worksheet |
| Report | Stock_Location_Worksheet_Container |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Stock_Location_Worksheet_Container |
| Report | Stock_Location_Worksheet_id_change |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Stock_Location_Worksheet_id_change |
| Report | SURPLUS_ORDER_STATUS | SURPLUS_ORDER_STATUS | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › SURPLUS_ORDER_STATUS |
| Report | Table_assignment_FLD_CNT_detailed subrep |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Processing_Table_Assignments_Detailed › Table_assignment_Precool_detailed Subrep › Table_assignment_FLD_CNT_detailed subrep |
| Report | Table_assignment_FLD_CNTNR mt subrep |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities › NMIS_Processing_Table_Priorities_c2 subreport › Table_assignment_Precool mt Subrep › Table_assignment_FLD_CNTNR mt subrep |
| Report | Table_assignment_Precool mt Subrep | ORDER_FORM Subrep | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities › NMIS_Processing_Table_Priorities_c2 subreport › Table_assignment_Precool mt Subrep |
| Report | Table_assignment_Precool_detailed Subrep | ORDER_FORM Subrep | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Processing_Table_Assignments_Detailed › Table_assignment_Precool_detailed Subrep |
| Report | TOLIFT | NMIS_TOLIFT | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Locations_Form › TOLIFT |
| Report | TOLIFT_by_age_class_species | NMIS_TOLIFT | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Locations_Form › TOLIFT_by_age_class_species |
| Report | TOLIFT_BY_PRIORITY |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Lifting_Priorties_Data_Subform › TOLIFT_BY_PRIORITY |
| Report | TOLIFT_CNOTE subrep | NMIS_TOLIFT_ORDER_NOTES Query | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Locations_Form › TOLIFT › TOLIFT_ORDER subrep › TOLIFT_CNOTE subrep |
| Report | TOLIFT_Condensed |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › TOLIFT_Condensed |
| Report | TOLIFT_Condensed2 |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Locations_Form › TOLIFT_Condensed2 |
| Report | TOLIFT_Condensed3 |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Locations_Form › TOLIFT_Condensed3 |
| Report | TOLIFT_Condensed_by_major_client_Field_Form | NMIS_TOLIFT | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Locations_Form › TOLIFT_Condensed_by_major_client_Field_Form |
| Report | TOLIFT_NNOTE subrep | NMIS_TOLIFT_ORDER_NOTES Query | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Locations_Form › TOLIFT › TOLIFT_ORDER subrep › TOLIFT_NNOTE subrep |
| Report | TOLIFT_ORDER subrep | NMIS_TOLIFT_ORDER subrep | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Locations_Form › TOLIFT › TOLIFT_ORDER subrep |
| Report | TOLIFT_ORDER_Lift_Priority subrep | NMIS_TOLIFT_ORDER subrep | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Lifting_Priorties_Data_Subform › TOLIFT_BY_PRIORITY › TOLIFT_ORDER_Lift_Priority subrep |
| Report | TOLIFT_Remaining |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Locations_Form › TOLIFT_Remaining |
| Report | TOLIFT_Remaining_w_notes | To Lift by Age Class, Species and Location | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Locations_Form › TOLIFT_Remaining_w_notes |
| Report | TOLIFT_Summary |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › TOLIFT_Summary |
| Report | transaction_Totals_by_End_FY_location_Type_and_Product_Class |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › transaction_Totals_by_End_FY_location_Type_and_Product_Class |
| Report | transaction_Totals_by_location_Type |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › transaction_Totals_by_location_Type |
| Report | transaction_Totals_by_location_Type_Agreement_Lot_TP | transaction_Totals_by_location_Type | Switchboard › REPORTS Form › Reports_Menu_Production Subform › transaction_Totals_by_location_Type_Agreement_Lot_TP |
| Report | transaction_Totals_by_location_Type_and_Product_Class |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › transaction_Totals_by_location_Type_and_Product_Class |
| Report | Transplant_Checklist |  | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Transplant_Checklist |
| Report | Transplant_Checklist_by_Stocktype_and_Species | Transplant_Checklist | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Transplant_Checklist_by_Stocktype_and_Species |
| Report | Transplant_Checklist_by_Stocktype_and_Species_W_Subtotals | Transplant_Checklist | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Transplant_Checklist_by_Stocktype_and_Species_W_Subtotals |
| Report | Transplant_Checklist_W_Subtotals | Transplant_Checklist | Switchboard › REPORTS Form › Reports_Menu_Production Subform › Transplant_Checklist_W_Subtotals |
| Report | XPLT_AT_JHSN |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › XPLT_AT_JHSN |
| Report | XPLT_AT_JHSN_by_Client_Sp_age_class |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › XPLT_AT_JHSN_by_Client_Sp_age_class |
| Report | XPLT_AT_JHSN_by_Store_Loc |  | Switchboard › REPORTS Form › Reports_Menu_Processing Subform › XPLT_AT_JHSN_by_Store_Loc |