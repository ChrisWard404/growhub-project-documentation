# Legacy NMIS forms (reachable only) (part 1 of 2)

Each reachable Access form: caption, menu path, record source SQL, navigation, and every data control with its binding, row-source SQL, tab page and VBA events. "→ GrowHub" shows the mapped GrowHub column and its approval state from the mapping sheet. The VBA code is in the 04_legacy_vba files.

## Form: *nrcs_plantlist
- **Caption:** *nrcs_plantlist subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SPECIES › *nrcs_plantlist
- **Record source:** SELECT [*nrcs_plantlist].PLNTMSTR_SYMBOL, [*nrcs_plantlist].SCIENTIFIC_NAME, [*nrcs_plantlist].VERNACULAR, [*nrcs_plantlist].Accepted_Symbol, [*nrcs_plantlist].Synonym_Symbol, IIf([Forms]![*nrcs_plantlist]![Sort_By]="Symbol",[PLNTMSTR_SYMBOL],IIf([Forms]![*nrcs_plantlist]![Sort_By]="Scientific Name",[Scientific_Name],IIf([Forms]![*nrcs_plantlist]![Sort_By]="Common Name",[VERNACULAR],[PLNTMSTR_SYMBOL]))) AS SORT_BY FROM [*nrcs_plantlist] WHERE ((([*nrcs_plantlist].PLNTMSTR_SYMBOL) Like [Forms]![*nrcs_plantlist]![Like_Symbol] & "*")) ORDER BY IIf([Forms]![*nrcs_plantlist]![Sort_By]="Symbol",[PLNTMSTR_SYMBOL],IIf([Forms]![*nrcs_plantlist]![Sort_By]="Scientific Name",[Scientific_Name],IIf([Forms]![*nrcs_plantlist]![Sort_By]="Common Name",[VERNACULAR],[PLNTMSTR_SYMBOL])));
- **Order by:** [_*nrcs_plantlist].[VERNACULAR]
- **Backend tables:** *nrcs_plantlist
- **Opened from:** Form_NMIS_SPECIES
- **Form events with code:** Open
- **Migration:** 0 of 3 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox SELECTED_PLNTMSTR_SYMBOL  [FormHeader]
- TextBox Like_Symbol "Symbol Like:" · default `[Forms]![NMIS_SPECIES]![Like_Plntmstr_Symbol]` · events: AfterUpdate  [FormHeader]
- CommandButton Find "Find" · events: Click  [FormHeader]
- CommandButton Sort_By_Symbol "Symbol" · events: Click  [FormHeader]
- TextBox Sort_By "Sorted By:" · default `"Symbol"`  [FormHeader]
- CommandButton Sort_By_Scientific_Name "Scientific Name" · events: Click  [FormHeader]
- CommandButton Sort_By_Vernacular "Common Name" · events: Click  [FormHeader]
- CommandButton Command35 "Tip" · events: Click  [FormHeader]
- TextBox PLNTMSTR_SYMBOL = `PLNTMSTR_SYMBOL`
- TextBox SCIENTIFIC_NAME = `SCIENTIFIC_NAME`
- TextBox VERNACULAR = `VERNACULAR`

## Form: *propagule_Grow_Containers_for_Orders_table subform
- **Caption:** *propagule_Grow_Containers_for_Orders_table subform
- **Menu path:** Switchboard › Forms_Open Module.Open_Propagule_Orders_New_Form_From_Switchboard › NMIS_PROCESSING_ORDERS_INPUT_Propagule › *propagule_Grow_Containers_for_Orders_table subform
- **Record source:** SELECT [*propagule_Grow_Containers_for_Orders_table].[AGREEMENT_LOT_CN], [*propagule_Grow_Containers_for_Orders_table].[SumOfSum_of_Activity_Units] FROM [*propagule_Grow_Containers_for_Orders_table]
- **Migration:** 0 of 1 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox SumOfSum_of_Activity_Units "Current Bed Ft:" = `SumOfSum_of_Activity_Units`

## Form: Agreement_for_Source_Lot
- **Caption:** Agreements for Source Lot
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_AGREEMENTS › Agreement_for_Source_Lot
- **Record source:** SELECT NMIS_AGREEMENT_LOTS.CN, Species_Products_with_SizeSpecString.Species_Products_String_Longest, Species_Products_with_SizeSpecString_1.Species_Products_String_Longest, NMIS_AGREEMENTS.BEGIN_FY, NMIS_AGREEMENTS.END_FY, NMIS_AGREEMENTS.CLIENT_ASSOCIATE, NMIS_AGREEMENTS.AMOUNT_REQUESTED, NMIS_AGREEMENT_LOTS.TOTAL_REQUEST, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.SOURCE_REQUIRED, [Seed_Balance_for_Agreements_by_Source Query].[Sum Of ACTIVITY_UNITS], Source_Lot_ID_and_Source_string.ID_SOURCE2B FROM [Seed_Balance_for_Agreements_by_Source Query] RIGHT JOIN ((Species_Products_with_SizeSpecString AS Species_Products_with_SizeSpecString_1 RIGHT JOIN (Species_Products_with_SizeSpecString INNER JOIN (NMIS_AGREEMENTS LEFT JOIN NMIS_AGREEMENT_LOTS ON NMIS_AGREEMENTS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON Species_Products_with_SizeSpecString.CN = NMIS_AGREEMENTS.SPECIES_PRODUCT_CN) ON Species_Products_with_SizeSpecString_1.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_AGREEMENTS.SOURCE_LOT_CN = Source_Lot_ID_and_Source_string.CN) ON [Seed_Balance_for_Agreements_by_Source Query].SOURCE_LOT_CN = NMIS_AGREEMENTS.SOURCE_LOT_CN WHERE (((NMIS_AGREEMENTS.BEGIN_FY)=[Forms]![NMIS_AGREEMENTS]![BEGIN_FY]) AND ((NMIS_AGREEMENTS.SOURCE_LOT_CN)=[Forms]![NMIS_AGREEMENTS]![SOURCE_LOT_CN])) OR (((NMIS_AGREEMENT_LOTS.CN)=[Forms]![NMIS_AGREEMENTS]![SOURCE_LOT_CN]));
- **Backend tables:** NMIS_AGREEMENTS, NMIS_AGREEMENT_LOTS
- **Opened from:** Form_NMIS_AGREEMENTS, Form_NMIS_AGREEMENTS_bu
- **Migration:** 4 of 9 bound fields mapped. Main GrowHub screens: /orders/new (2)

**Controls**
- TextBox Sum Of ACTIVITY_UNITS = `Sum Of ACTIVITY_UNITS`  [FormHeader]
- TextBox ID_SOURCE "SOURCE:" = `ID_SOURCE2B`  [FormHeader]
- TextBox AMOUNT_REQUESTED = `AMOUNT_REQUESTED`
- TextBox SOURCE_REQUIRED = `SOURCE_REQUIRED` → GrowHub order_cycle_planning.estimatedLbsOfSeed (blank)
- TextBox Species_Products_with_SizeSpecString.Species_Products_String_Longest = `Species_Products_with_SizeSpecString.Species_Products_String_Longest`
- TextBox CLIENT_ASSOCIATE = `CLIENT_ASSOCIATE`
- TextBox ID = `ID` → GrowHub grow_request.growLotId (blank)
- TextBox BEGIN_FY = `BEGIN_FY` → GrowHub order_cycle_planning.plannedSowDate (blank)
- TextBox END_FY = `END_FY` → GrowHub grow_request.targetLiftYear (blank)
- TextBox Text6 = `=Sum([SOURCE_REQUIRED])`  [FormFooter]

## Form: Agreement_Lot_Default_Factors_For_Cycle subform
- **Caption:** Agreement_Lot_Default_Factorsr_For_Cycle subform
- **Menu path:** Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Agreement_Lot_Default_Factors_For_Cycle subform
- **Record source:** SELECT Agreement_Lot_Default_Container_For_Cycle.CN, Agreement_Lot_Default_Container_For_Cycle.Current_Cycle, Agreement_Lot_Default_Container_For_Cycle.AGE_STRING, Agreement_Lot_Default_Container_For_Cycle.INV_FACTOR_1, Agreement_Lot_Default_Container_For_Cycle.INV_FACTOR_2, Agreement_Lot_Default_Container_For_Cycle.INV_FACTOR_3, Agreement_Lot_Default_Container_For_Cycle.INV_SIZE_SAMPLE, Agreement_Lot_Default_Container_For_Cycle.INV_MAX_CV, Agreement_Lot_Default_Container_For_Cycle.INV_TARGET_PCT, NMIS_UNITS.CELLS_PER_CONTAINER, NMIS_UNITS.INV_SAMPLES_PER_CONTAINER, Agreement_Lot_Default_Container_For_Cycle.INV_1_FACTOR_CODE, Agreement_Lot_Default_Container_For_Cycle.INV_2_FACTOR_CODE, Agreement_Lot_Default_Container_For_Cycle.INV_3_FACTOR_CODE, IIf([unit]="SB" Or [UNIT] Like "TB?" Or [UNIT]="TB",Round(12/[INV_SAMPLES_PER_CONTAINER],0) & '" X 4' & "'",[INV_SAMPLES_PER_CONTAINER] & ' ' & [UNIT]) AS Plot_Size FROM Agreement_Lot_Default_Container_For_Cycle LEFT JOIN NMIS_UNITS ON Agreement_Lot_Default_Container_For_Cycle.UNIT = NMIS_UNITS.UNIT_CODE;
- **Backend tables:** NMIS_UNITS
- **Migration:** 0 of 13 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox Current_Cycle "Current_Cycle" = `Current_Cycle`
- TextBox AGE_STRING "AGE_STRING" = `AGE_STRING`
- TextBox INV_FACTOR_1 "Inv Factor 1" = `INV_FACTOR_1`
- TextBox INV_FACTOR_2 "Inv Factor 2" = `INV_FACTOR_2`
- TextBox INV_FACTOR_3 "Inv Factor 3" = `INV_FACTOR_3`
- TextBox INV_SIZE_SAMPLE "Inv Sample Size" = `INV_SIZE_SAMPLE`
- TextBox INV_MAX_CV "Inv Max CV" = `INV_MAX_CV`
- TextBox INV_TARGET_PCT "Inv Target %" = `INV_TARGET_PCT`
- TextBox INV_SAMPLES_PER_CONTAINER "Inv Samples/Container:" = `INV_SAMPLES_PER_CONTAINER`
- TextBox INV_1_FACTOR_CODE = `INV_1_FACTOR_CODE`
- TextBox INV_2_FACTOR_CODE = `INV_2_FACTOR_CODE`
- TextBox Text23 = `INV_3_FACTOR_CODE`
- TextBox Plot_Size "Plot Size" = `Plot_Size`

## Form: Agreement_Lot_Grow_Containers
- **Caption:** Ft_To_Lift
- **Menu path:** Switchboard › Forms_Open Module.Open_NMIS_ID_LOCATIONS_FORM_Husky_for_LOCCHG_From_Switchboard › NMIS_ID_LOCATIONS_FORM_Husky › Agreement_Lot_Grow_Containers
- **Record source:** SELECT [*Agreement_Lot_Total_Containers_Grow_Table].Agreement_Lot_CN, Round(Nz([Total_Containers],0),0) AS Lot_Total_Ft, [*Agreement_Lot_Total_Containers_Grow_Table].Note_Container FROM [*Agreement_Lot_Total_Containers_Grow_Table] GROUP BY [*Agreement_Lot_Total_Containers_Grow_Table].Agreement_Lot_CN, Round(Nz([Total_Containers],0),0), [*Agreement_Lot_Total_Containers_Grow_Table].Note_Container;
- **Migration:** 0 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox Lot_Total_Ft = `Lot_Total_Ft`
- TextBox Text2 = `Note_Container`

## Form: Agreement_Lot_ID_Change_Form
- **Caption:** Agreement Lot ID Change
- **Menu path:** Switchboard › Forms_Open Module.Open_NMIS_ID_LOCATIONS_FORM_Husky_for_LOCCHG_From_Switchboard › NMIS_ID_LOCATIONS_FORM_Husky › Agreement_Lot_ID_Change_Form
- **Record source:** SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.ID_ORIGINAL FROM NMIS_AGREEMENT_LOTS WHERE (((NMIS_AGREEMENT_LOTS.CN)=[Forms]![NMIS_ID_LOCATIONS_FORM_Husky]![Agreement_Lot_CN]));
- **Backend tables:** NMIS_AGREEMENT_LOTS
- **Opens:** Report:Seedbox_Labels
- **Opened from:** Form_NMIS_ID_LOCATIONS_FORM_Husky
- **Form events with code:** Close, Open
- **Migration:** 1 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ID = `ID` · events: AfterUpdate, Change → GrowHub grow_request.growLotId (blank)
- TextBox ID_ORIGINAL "Origional ID:" = `ID_ORIGINAL`
- TextBox ID_BACKUP "ID Backup:"
- TextBox ID_ORIGINAL_BACKUP "ID_ORGINAL Backup:"
- CommandButton Close_with_ID_Change "Change ID" · events: Click
- CommandButton Close_without_ID_Change "Cancel" · events: Click

## Form: Agreement_Lot_ID_Change_from_Tags0 Form
- **Caption:** Agreement Lot ID Change
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags › Agreement_Lot_ID_Change_from_Tags0 Form
- **Record source:** SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.ID_ORIGINAL, NMIS_AGREEMENT_LOTS.CN FROM NMIS_AGREEMENT_LOTS WHERE (((NMIS_AGREEMENT_LOTS.ID)=[Forms]![Field_Tags]![Find_Lot]));
- **Backend tables:** NMIS_AGREEMENT_LOTS
- **Opens:** Report:Seedbox_Labels
- **Opened from:** Form_Field_Tags
- **Form events with code:** Open
- **Migration:** 1 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ID = `ID` · events: AfterUpdate, Change → GrowHub grow_request.growLotId (blank)
- TextBox ID_ORIGINAL "Origional ID:" = `ID_ORIGINAL`
- TextBox ID_BACKUP "ID Backup:"
- TextBox ID_ORIGINAL_BACKUP "ID_ORGINAL Backup:"
- CommandButton Close_with_ID_Change "Change ID" · events: Click
- CommandButton Close_without_ID_Change "Cancel" · events: Click

## Form: Agreement_Lot_ID_Change_from_Tags1 Form
- **Caption:** Agreement Lot ID Change
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags › Agreement_Lot_ID_Change_from_Tags1 Form
- **Record source:** SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.ID_ORIGINAL, NMIS_AGREEMENT_LOTS.CN FROM NMIS_AGREEMENT_LOTS WHERE (((NMIS_AGREEMENT_LOTS.ID)=[Forms]![Field_Tags]![Lot_ID_1]));
- **Backend tables:** NMIS_AGREEMENT_LOTS
- **Opens:** Report:Seedbox_Labels
- **Opened from:** Form_Field_Tags, Form_Field_Tags_BU
- **Form events with code:** Open
- **Migration:** 1 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ID = `ID` · events: AfterUpdate, Change → GrowHub grow_request.growLotId (blank)
- TextBox ID_ORIGINAL "Origional ID:" = `ID_ORIGINAL`
- TextBox ID_BACKUP "ID Backup:"
- TextBox ID_ORIGINAL_BACKUP "ID_ORGINAL Backup:"
- CommandButton Close_with_ID_Change "Change ID" · events: Click
- CommandButton Close_without_ID_Change "Cancel" · events: Click

## Form: Agreement_Lot_ID_Change_from_Tags2 Form
- **Caption:** Agreement Lot ID Change
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags › Agreement_Lot_ID_Change_from_Tags2 Form
- **Record source:** SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.ID_ORIGINAL, NMIS_AGREEMENT_LOTS.CN FROM NMIS_AGREEMENT_LOTS WHERE (((NMIS_AGREEMENT_LOTS.ID)=[Forms]![Field_Tags]![Lot_ID_2]));
- **Backend tables:** NMIS_AGREEMENT_LOTS
- **Opens:** Report:Seedbox_Labels
- **Opened from:** Form_Field_Tags, Form_Field_Tags_BU
- **Form events with code:** Open
- **Migration:** 1 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ID = `ID` · events: AfterUpdate, Change → GrowHub grow_request.growLotId (blank)
- TextBox ID_ORIGINAL "Origional ID:" = `ID_ORIGINAL`
- TextBox ID_BACKUP "ID Backup:"
- TextBox ID_ORIGINAL_BACKUP "ID_ORGINAL Backup:"
- CommandButton Close_with_ID_Change "Change ID" · events: Click
- CommandButton Close_without_ID_Change "Cancel" · events: Click

## Form: Agreement_Lot_ID_Change_from_Tags3 Form
- **Caption:** Agreement Lot ID Change
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags › Agreement_Lot_ID_Change_from_Tags3 Form
- **Record source:** SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.ID_ORIGINAL, NMIS_AGREEMENT_LOTS.CN FROM NMIS_AGREEMENT_LOTS WHERE (((NMIS_AGREEMENT_LOTS.ID)=[Forms]![Field_Tags]![Lot_ID_3]));
- **Backend tables:** NMIS_AGREEMENT_LOTS
- **Opens:** Report:Seedbox_Labels
- **Opened from:** Form_Field_Tags, Form_Field_Tags_BU
- **Form events with code:** Open
- **Migration:** 1 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ID = `ID` · events: AfterUpdate, Change → GrowHub grow_request.growLotId (blank)
- TextBox ID_ORIGINAL "Origional ID:" = `ID_ORIGINAL`
- TextBox ID_BACKUP "ID Backup:"
- TextBox ID_ORIGINAL_BACKUP "ID_ORGINAL Backup:"
- CommandButton Close_with_ID_Change "Change ID" · events: Click
- CommandButton Close_without_ID_Change "Cancel" · events: Click

## Form: Agreement_Lot_ID_Change_from_Tags4 Form
- **Caption:** Agreement Lot ID Change
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags › Agreement_Lot_ID_Change_from_Tags4 Form
- **Record source:** SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.ID_ORIGINAL, NMIS_AGREEMENT_LOTS.CN FROM NMIS_AGREEMENT_LOTS WHERE (((NMIS_AGREEMENT_LOTS.ID)=[Forms]![Field_Tags]![Lot_ID_4]));
- **Backend tables:** NMIS_AGREEMENT_LOTS
- **Opens:** Report:Seedbox_Labels
- **Opened from:** Form_Field_Tags, Form_Field_Tags_BU
- **Form events with code:** Open
- **Migration:** 1 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ID = `ID` · events: AfterUpdate, Change → GrowHub grow_request.growLotId (blank)
- TextBox ID_ORIGINAL "Origional ID:" = `ID_ORIGINAL`
- TextBox ID_BACKUP "ID Backup:"
- TextBox ID_ORIGINAL_BACKUP "ID_ORGINAL Backup:"
- CommandButton Close_with_ID_Change "Change ID" · events: Click
- CommandButton Close_without_ID_Change "Cancel" · events: Click

## Form: Agreement_Lot_ID_Change_from_Tags5 Form
- **Caption:** Agreement Lot ID Change
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags › Agreement_Lot_ID_Change_from_Tags5 Form
- **Record source:** SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.ID_ORIGINAL, NMIS_AGREEMENT_LOTS.CN FROM NMIS_AGREEMENT_LOTS WHERE (((NMIS_AGREEMENT_LOTS.ID)=[Forms]![Field_Tags]![Lot_ID_5]));
- **Backend tables:** NMIS_AGREEMENT_LOTS
- **Opens:** Report:Seedbox_Labels
- **Opened from:** Form_Field_Tags, Form_Field_Tags_BU
- **Form events with code:** Open
- **Migration:** 1 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ID = `ID` · events: AfterUpdate, Change → GrowHub grow_request.growLotId (blank)
- TextBox ID_ORIGINAL "Origional ID:" = `ID_ORIGINAL`
- TextBox ID_BACKUP "ID Backup:"
- TextBox ID_ORIGINAL_BACKUP "ID_ORGINAL Backup:"
- CommandButton Close_with_ID_Change "Change ID" · events: Click
- CommandButton Close_without_ID_Change "Cancel" · events: Click

## Form: Agreement_Lot_Inventory_Factors_For_Cycle subform
- **Caption:** Agreement_Lot_Inventory_Factors_For_Cycle subform
- **Menu path:** Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Agreement_Lot_Inventory_Factors_For_Cycle subform
- **Record source:** SELECT Agreement_Lot_Inventory_Factors_For_Cycle_Table.CN, Agreement_Lot_Inventory_Factors_For_Cycle_Table.INV_SIZE_SAMPLE, Agreement_Lot_Inventory_Factors_For_Cycle_Table.UNIT, NMIS_UNITS.CELLS_PER_CONTAINER, NMIS_UNITS.INV_SAMPLES_PER_CONTAINER FROM Agreement_Lot_Inventory_Factors_For_Cycle_Table LEFT JOIN NMIS_UNITS ON Agreement_Lot_Inventory_Factors_For_Cycle_Table.UNIT = NMIS_UNITS.UNIT_CODE WHERE (((Agreement_Lot_Inventory_Factors_For_Cycle_Table.CN)=[Forms]![NMIS_PRODUCT_INVENTORIES]![CN]));
- **Backend tables:** NMIS_PRODUCT_INVENTORIES, NMIS_UNITS
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ID = `INV_SIZE_SAMPLE`
- TextBox INV_SAMPLES_PER_CONTAINER = `INV_SAMPLES_PER_CONTAINER`
- TextBox CELLS_PER_CONTAINER = `CELLS_PER_CONTAINER`
- TextBox UNIT = `UNIT`

## Form: Agreement_Lot_Total_Containers subform
- **Caption:** Agreement_Lot_Total_Containers subform
- **Menu path:** Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Agreement_Lot_Total_Containers subform
- **Record source:** SELECT Agreement_Lot_Total_Containers_Grow.Agreement_Lot_CN, Agreement_Lot_Total_Containers_Grow.Total_Containers FROM Agreement_Lot_Total_Containers_Grow WHERE (((Agreement_Lot_Total_Containers_Grow.Agreement_Lot_CN)=[Forms]![NMIS_PRODUCT_INVENTORIES]![CN]));
- **Backend tables:** NMIS_PRODUCT_INVENTORIES
- **Migration:** 0 of 1 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox Total_Containers = `Total_Containers`

## Form: Associate_Input
- **Caption:** Report Input
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC_shipping › Associate_Input
- **Backend tables:** NMIS_ASSOCIATES
- **Opened from:** Report_NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC, Report_NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC_shipping

**Controls**
- CommandButton Preview_Report "Click to Preview Report" · events: Click
- ComboBox Like_Client "Client:" · rows: `SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES ORDER BY [NMIS_ASSOCIATES].[ASSOCIATE_NAME];`

## Form: Associate_Mail_Label_Input
- **Caption:** Report Input
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC › Associate_Mail_Label_Input
- **Backend tables:** NMIS_ASSOCIATES
- **Subforms:** Form.NMIS_ASSOCIATES_ADDRESSES
- **Opened from:** Report_NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC

**Controls**
- CommandButton Preview_Report "Click to Preview Label" · events: Click
- ComboBox Like_Client "Associate:" · rows: `SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES ORDER BY [NMIS_ASSOCIATES].[ASSOCIATE_NAME];`
- CheckBox Use_Ship_Address "Use Shipping Address" · default `False`
- Subform NMIS_ASSOCIATES_ADDRESSES subform `Form.NMIS_ASSOCIATES_ADDRESSES` (master [Like_Client] → child ASSOCIATE)
- ComboBox ASSOCIATE_Lookup · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE;` · events: AfterUpdate, Enter
- ComboBox ASSOCIATE_Lookup_by_Name · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_ASSOCIATES.ASSOCIATE FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;` · events: AfterUpdate, Enter
- TextBox Attn "Attn:"

## Form: Associate_Mail_Label_Input_shipping
- **Caption:** Report Input
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC_shipping › Associate_Mail_Label_Input_shipping
- **Backend tables:** NMIS_ASSOCIATES
- **Subforms:** Form.NMIS_ASSOCIATES_ADDRESSES_shipping
- **Opened from:** Report_NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC_shipping

**Controls**
- CommandButton Preview_Report "Click to Preview Label" · events: Click
- ComboBox Like_Client "Associate:" · rows: `SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES ORDER BY [NMIS_ASSOCIATES].[ASSOCIATE_NAME];` · default `=[Forms]![Seed_Shipping_Ticket Subform]![DELIVERED_TO_ASSOCIATE]`
- CheckBox Use_Ship_Address "Use Shipping Address" · default `False`
- Subform NMIS_ASSOCIATES_ADDRESSES subform `Form.NMIS_ASSOCIATES_ADDRESSES_shipping` (master  → child )
- ComboBox ASSOCIATE_Lookup · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE;` · default `=[Forms]![Seed_Shipping_Ticket Subform]![DELIVERED_TO_ASSOCIATE]` · events: AfterUpdate, Enter
- ComboBox ASSOCIATE_Lookup_by_Name · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_ASSOCIATES.ASSOCIATE FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;` · events: AfterUpdate, Enter
- TextBox Attn "Attn:"

## Form: BeginFY_EndFY_Associate_Species_Input
- **Caption:** Report Input
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Annual_Report_Plant_Inventory_Detailed_Summary report › BeginFY_EndFY_Associate_Species_Input
- **Backend tables:** NMIS_FISCAL_YEARS
- **Opened from:** Report_Annual_Report_Plant_Inventory_Detailed_Summary report, Report_Annual_Report_Plant_Inventory_Summary report, Report_Annual_Report_Plant_Inventory_Summary_by_class_species report, Report_NMIS_PRODUCT_INVENTORY_AgeClass_Species_Report, Report_NMIS_PRODUCT_INVENTORY_By_Age_Class_Report_bu, Report_NMIS_PRODUCT_INVENTORY_Checklist, Report_NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2, Report_NMIS_PRODUCT_INVENTORY_Checklist_w_contacts, Report_NMIS_PRODUCT_INVENTORY_Client_Summary_Report, Report_NMIS_PRODUCT_INVENTORY_No_Subtotals_Report, Report_NMIS_PRODUCT_INVENTORY_Report, Report_NMIS_PRODUCT_INVENTORY_Report2, Report_NMIS_PRODUCT_INVENTORY_Report2Sum, Report_NMIS_PRODUCT_INVENTORY_Report2SumWithSpeciesTotals, Report_NMIS_PRODUCT_INVENTORY_Report_OLD, Report_NMIS_PRODUCT_INVENTORY_SUMARY2_Report, Report_NMIS_PRODUCT_INVENTORY_Species_AgeClass_Report, Report_NMIS_PRODUCT_INVENTORY_Summary_Report, Report_NMIS_PRODUCT_INVENTORY_byAgeClassLongSumByParent_Report, Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_Report, Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate2_Report, Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate_Report, Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_Loc, Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_contact, Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report, Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report2, Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Report2, Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Summary_Report, Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Summary_Report2, Report_NMIS_PRODUCT_INVENTORY_by_end_fy_Summary_Report, Report_NMIS_PRODUCT_INVENTORY_by_end_fy_Summary_Report_W_Parent, Report_NMIS_PRODUCT_Projected_Charges_by_Category_Unit, Report_NMIS_PRODUCT_Projected_Charges_by_Category_Unit2, Report_NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot, Report_NMIS_PRODUCT_Projected_Charges_by_StockType, Report_NMIS_PRODUCT_Projected_Charges_by_Unit, Report_NMIS_PRODUCT_Projected_Charges_by_Unit_Category, Report_NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot, Report_NMIS_PRODUCT_Projected_Charges_fred, Report_NMIS_PRODUCT_Projected_Container_Income_from_Bareroot_by_lot, Report_NMIS_PRODUCT_Projected_Income, Report_NMIS_PRODUCT_Projected_Income2, Report_NMIS_PRODUCT_Projected_Income_by_lot, Report_NMIS_PRODUCT_Projected_Income_by_lot2
- **Form events with code:** Close, Open

**Controls**
- TextBox Like_Client "Associate:" · default `"*"`
- CommandButton Preview_Report "Click to Preview Report" · events: Click
- ComboBox Begin_FY "Begin FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `"*"`
- ComboBox End_FY "End FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `"*"`
- TextBox Parent_Associate "Parent Associate:" · default `"*"`
- TextBox COLLECT_METHOD "Collection Code:" · default `"*"`
- ComboBox Plntmstr_Symbol "Species Code:" · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY;` · default `"*"`

## Form: BeginFY_EndFY_Associate_Species_Input_Inv_SPD
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › BeginFY_EndFY_Associate_Species_Input_Inv_SPD
- **Backend tables:** NMIS_AGREEMENTS, NMIS_CONTACTS, NMIS_FISCAL_YEARS
- **Opens:** Form:xPlease_Be_Patient_First_Report_Message
- **Opened from:** Form_Reports_Menu_Production Subform
- **Form events with code:** Close, Open

**Controls**
- TextBox Like_Client "Associate:" · default `"*"` · events: AfterUpdate, DblClick
- CommandButton Preview_Report "Click to Preview Report" · events: Click
- ComboBox Begin_FY "Begin FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `"*"` · events: AfterUpdate
- ComboBox End_FY "End FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `"*"` · events: AfterUpdate
- TextBox Parent_Associate "Parent Associate:" · default `"*"`
- TextBox COLLECT_METHOD "Collection Code:" · default `"*"`
- ComboBox Plntmstr_Symbol "Species Code:" · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY;` · default `"*"`
- CheckBox Excel_Message_Viewed "Excel Message" · default `No`
- CheckBox Data_Processed "Data Processed" · default `No`
- ComboBox Diverse "Traditional/Non-Traditonal Species" · rows: `0;Traditional;-1;Non-Traditional;*;All` · default `"*"` · events: AfterUpdate
- ComboBox Contact_CN " Like Contact" · rows: `SELECT NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] AS Name FROM NMIS_CONTACTS INNER JOIN NMIS_AGREEMENTS ON NMIS_CONTACTS.CN = NMIS_AGREEMENTS.CONTACT_CN WHERE (((NMIS_CONTACTS.HISTORICAL)=False) AND ((NMIS_AGREEMENTS.CLIENT_ASSOCIATE) Like [Forms]![BeginFY_EndFY_Associate_Species_Input_Inv_SPD]![Like_Client] & "*")) GROUP BY NMIS_CONTACTS.CN, [LAST_NAME] & II` · events: DblClick
- CheckBox Location_Processed "Location Processed" · default `No`
- CheckBox Please_Wait "Please Wait Message Shown" · default `No`
- ComboBox BorC "Cost Center:" · rows: `*;Bareroot and Container;B;Bareroot;C;Container` · default `"*"`

## Form: Blank subform
- **Caption:** Blank subform
- **Menu path:** Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Blank subform

**Controls**
(none)

## Form: Change_Bend_stored_for
- **Caption:** Change Bend plntmstr Symbol
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_LOTS_Bend › Change_Bend_stored_for
- **Record source:** SELECT [*NMIS_SOURCE_LOTS_Bend].ID, [*NMIS_SOURCE_LOTS_Bend].SOURCE_CODE, [*NMIS_SOURCE_LOTS_Bend].STORED_FOR_ASSOCIATE FROM [*NMIS_SOURCE_LOTS_Bend] WHERE ((([*NMIS_SOURCE_LOTS_Bend].ID)=[Forms]![NMIS_SOURCE_LOTS_Bend]![ID]));
- **Opened from:** Form_NMIS_SOURCE_LOTS_Bend
- **Form events with code:** Close
- **Migration:** 0 of 3 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ID "Source ID" = `ID`
- TextBox SOURCE_CODE "Source Code" = `SOURCE_CODE`
- TextBox PLNTMSTR_SYMBOL "Stored For" = `STORED_FOR_ASSOCIATE`

## Form: Client_Bill_Menu
- **Menu path:** Switchboard › Client_Bill_Menu
- **Backend tables:** NMIS_CATEGORIES, NMIS_CONTACTS, NMIS_ORDERS, NMIS_SOURCE_LOTS
- **Opens:** Form:Agreement_Lot_Destroy_Checklist, Form:Agreement_Lot_Higrade_Checklist, Form:CLIENT_BILLING_PREVIEW_BILLING2, Form:CLIENT_BILL_INVOICE_COMBINED, Form:CLIENT_BILL_INVOICE_COMBINED2, Form:CLIENT_BILL_INVOICE_COMBINED_spd, Form:CLIENT_BILL_INVOICE_Client_Checklist, Form:CLIENT_BILL_INVOICE_Shipping, Form:CLIENT_BILL_INVOICE_w_lot_detail, Form:CLIENT_BILL_INVOICE_wo_lot_detail, Form:CLIENT_BILL_Table_Edit, Form:Client_Bill_Billing_Parent_MGMT_Code_Query, Form:Client_Bill_Invoice_Checklist, Form:Client_Bill_Invoice_Client_Checklist_Income_Dist, Form:Client_bill_invoice_w_lot_detail_spd, Form:Client_bill_invoice_wo_lot_detail_spd, Form:NMIS_AGREEMENTS, Form:NMIS_ID_ACTIVITY_TRANSACTIONS_FORM, Form:NMIS_ORDER_BILL_ADJUSTMENTS, Form:NMIS_PRODUCT_CHARGES2, Form:NMIS_SHIPPING_TICKET subform, Form:NMIS_TICKETS_charge_per_ticket1, Form:ORDER_STATUS, Form:Open_NMIS_PROCESSING_ORDERS_Review, Form:PROOF_ALL_From_Billing_Form, Report:Agreement_Lot_Destroy_Checklist, Report:Agreement_Lot_Higrade_Checklist, Report:CLIENT_BILL_INVOICE_COMBINED, Report:CLIENT_BILL_INVOICE_COMBINED2, Report:CLIENT_BILL_INVOICE_COMBINED_spd, Report:CLIENT_BILL_INVOICE_Client_Checklist, Report:CLIENT_BILL_INVOICE_Shipping, Report:CLIENT_BILL_INVOICE_w_lot_detail, Report:CLIENT_BILL_INVOICE_wo_lot_detail, Report:CLIENT_BILL_Table_Edit, Report:Client_Bill_Billing_Parent_MGMT_Code_Query, Report:Client_Bill_Invoice_Checklist, Report:Client_Bill_Invoice_Client_Checklist_Income_Dist, Report:Client_bill_invoice_w_lot_detail_spd, Report:Client_bill_invoice_wo_lot_detail_spd, Report:NMIS_AGREEMENTS, Report:NMIS_ID_ACTIVITY_TRANSACTIONS_FORM, Report:NMIS_ORDER_BILL_ADJUSTMENTS, Report:NMIS_PRODUCT_CHARGES2, Report:NMIS_SHIPPING_TICKET subform, Report:NMIS_TICKETS_charge_per_ticket1, Report:ORDER_STATUS, Report:Open_NMIS_PROCESSING_ORDERS_Review, Report:PROOF_ALL_From_Billing_Form
- **Opened from:** Form_Reports_Menu_Processing Subform
- **Form events with code:** Open

**Controls**
- TextBox SurchargePCT "Surcharge %:" · default `100`
- CommandButton Client Billing Summary "Client Billing Summary" · events: Click
- CommandButton Client Billing Summary Detail "Client Billing Summary, Detail" · events: Click
- TextBox Begin_Date "Begin Date:" · default `="09/01/" & Right([Forms]![Switchboard]![FY_For_Reports]-1,2)` · events: AfterUpdate
- TextBox End_Date "End Date:" · default `Date()` · events: AfterUpdate
- ComboBox Category_Code "Category:" · rows: `SELECT [NMIS_CATEGORIES].[CATEGORY_CODE], [NMIS_CATEGORIES].[CATEGORY_DESC] FROM NMIS_CATEGORIES INNER JOIN NMIS_SOURCE_LOTS ON ([NMIS_CATEGORIES].[CATEGORY_CODE]=[NMIS_SOURCE_LOTS].[CATEGORY_CODE]) AND ([NMIS_CATEGORIES].[CATEGORY_CODE]=[NMIS_SOURCE_LOTS].[CATEGORY_CODE]) GROUP BY [NMIS_CATEGORIES].[CATEGORY_CODE], [NMIS_CATEGORIES].[CATEGORY_DESC];`
- TextBox Overhead_Pct "Overhead %:" · default `25`
- TextBox Like_Client "Like Client:" · default `="*"` · events: AfterUpdate, DblClick
- TextBox Signature_Line "Signature Line:"
- CommandButton CliBillInv "Click to Preview Client Invoice WITHOUT Lot Detail" · events: Click
- CheckBox Client_Bill_Data_Processed "Client Bill Data Processed" · default `False`
- CommandButton Open NMIS Product_Charges Form "Enter/Edit Product Charges..." · events: Click
- CommandButton CliBilInv_Lot_Detail "Click to Preview Client Invoice WITH Lot Detail" · events: Click
- CommandButton Open_NMIS_Order_Review_Form "Enter/Edit Orders..." · events: Click
- CommandButton Open_NMIS_Ship_Ticket_Form "    Enter/Edit     Ship Tickets..." · events: Click
- CommandButton Open_NMIS_TSO_Form "    Enter/Edit     TSO Info..." · events: Click
- CommandButton Open_NMIS_Review_All_Pack_Data_Report "     Review       Pack Data...  " · events: Click
- CommandButton Open_NMIS_Review_Pack_Status_Report "      Review      Pack Status..." · events: Click
- CommandButton Open_NMIS_Review_Stock_Destroyed_Report "     Review     Stock Destroyed..." · events: Click
- CommandButton Open_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_FOR_PROCESSING "   Enter/Edit    Pack Data..." · events: Click
- TextBox Title_Line "Title Line:"
- CommandButton CliBilSummary "Click to Preview Invoice Sum with Detail" · events: Click
- CommandButton CliBilSummary_by_Client "Click to Preview Invoice Sum by Client" · events: Click
- CommandButton Open_NMIS_Review_Stock_Higraded_Report "     Review     Stock Hi-Graded..." · events: Click
- CommandButton Client_Bill_Table_Edit "Command33" · events: Click
- CommandButton NMIS_ORDER_BILL_ADJUSTMENTS "Enter/Edit Order InvoiceAdjusts..." · events: Click
- ComboBox Contact_CN "Like Order Primary Contact:" · rows: `SELECT NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] AS Name FROM NMIS_ORDERS INNER JOIN NMIS_CONTACTS ON NMIS_ORDERS.CONTACT_CN = NMIS_CONTACTS.CN WHERE (((NMIS_CONTACTS.HISTORICAL)=False) AND ((NMIS_ORDERS.CLIENT_ASSOCIATE) Like [Forms]![Client_Bill_Menu]![Like_Client] & "*") AND ((NMIS_ORDERS.FISCAL_YEAR)=[Forms]![Switchboard]![Current FY:])) GROUP BY NMIS_CO` · events: DblClick, Enter
- CommandButton BillPvwProc "     Review      Invoice Data..." · events: Click
- CommandButton CliBillShip "Click to Preview Client Invoice Shipping ONLY" · events: Click
- CommandButton CliBilInv_Lot_Detail_spd "Spreadsheet" · events: Click
- CommandButton Client_Bill_Checklist "Client Invoice  Checklist  " · events: Click
- CheckBox BillContainerDeposit "Container Deposit:" · default `0` · events: AfterUpdate
- CheckBox BillQP1C "Invoice Qplug TP 1st Cycle:" · default `0` · events: AfterUpdate
- CommandButton CliBilSummary_spd "Spreadsheet" · events: Click
- CommandButton CliBilInv_wo_Lot_Detail_spd "Spreadsheet" · events: Click
- CheckBox InterestChargeStatement "Include Interest Charge Statement:" · default `0`
- TextBox LikeJobcode "Like Job Code:" · default `="*"`
- CommandButton IncomeDistributionSpd "Income Dist Spd" · events: Click
- TextBox NotLikeJC "Not Like Job Code:"
- CommandButton Open_NMIS_AGREEMENTS "Edit Agreement Job Codes..." · events: Click
- CheckBox BillBarerootDeposit "Bareroot Deposit:" · default `0` · events: AfterUpdate
- CheckBox BillSmallLotSurcharge "Small Lot Surcharge:" · default `0` · events: AfterUpdate
- CheckBox BillLowGermSurcharge "Low Germ Surcharge:" · default `0` · events: AfterUpdate
- CheckBox BillContainerHoldDeposit "Container Holdover Deposit:" · default `0` · events: AfterUpdate
- CheckBox BillBarerootHoldDeposit "Bareroot Holdover Deposit:" · default `0` · events: AfterUpdate
- CommandButton InvoiceSumSpd "Invoice Sum Spd" · events: Click
- CheckBox RemitTo "Include Remit To:" · default `0`
- TextBox Comments "Comments:"

## Form: CLIENT_BILLING_PREVIEW_BILLING
- **Caption:** Client Billing Preview Billing
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › CLIENT_BILLING_PREVIEW_BILLING
- **Backend tables:** NMIS_ASSOCIATES
- **Opens:** Report:CLIENT_BILL_PREVIEW_LOTS, Report:CLIENT_BILL_PREVIEW_LOTS_SVCS, Report:CLIENT_BILL_PREVIEW_TICKETS
- **Opened from:** Form_Reports_Menu_Processing Subform

**Controls**
- CommandButton Preview_Report "Click to Preview Lots Processed" · events: Click
- ComboBox Like_Client "Like Client (Leave Blank for All):" · rows: `SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES ORDER BY [NMIS_ASSOCIATES].[ASSOCIATE_NAME];`
- CommandButton Preview_Special_Services_Report "Click to Preview Special Services" · events: Click
- CommandButton Preview_Ticket_Activity_Report "Click to Preview Ticket Activity" · events: Click

## Form: CLIENT_BILLING_PREVIEW_BILLING2
- **Caption:** Client Billing Preview Billing
- **Menu path:** Switchboard › Client_Bill_Menu › CLIENT_BILLING_PREVIEW_BILLING2
- **Backend tables:** NMIS_ASSOCIATES
- **Opens:** Report:CLIENT_BILL_PREVIEW_LOTS2, Report:CLIENT_BILL_PREVIEW_LOTS_SVCS2, Report:CLIENT_BILL_PREVIEW_TICKETS2
- **Opened from:** Form_Client_Bill_Menu

**Controls**
- CommandButton Preview_Report "Click to Preview Lots Processed" · events: Click
- ComboBox Like_Client "Like Client (Leave Blank for All):" · rows: `SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES ORDER BY [NMIS_ASSOCIATES].[ASSOCIATE_NAME];` · default `=[Forms]![Client_Bill_Menu]![Like_Client]`
- CommandButton Preview_Special_Services_Report "Click to Preview Special Services" · events: Click
- CommandButton Preview_Ticket_Activity_Report "Click to Preview Ticket Activity" · events: Click

## Form: Contract_Payment_Estimate_Invoice
- **Caption:** Contract_Payment_Estimate_Invoice
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Contract_Payment_Estimate_Invoice
- **Record source:** SELECT NMIS_CONTRACTS.CONTRACT_NO, NMIS_CONTRACTS.PROJECT, NMIS_CONTRACTS.ASSOCIATE, NMIS_CONTRACTS.ORIGINAL_CONTRACT_AMT, NMIS_CONTRACTS.FISCAL_YEAR, NMIS_CONTRACTS.INDEFINITE_QUANTITY FROM NMIS_CONTRACTS;
- **Backend tables:** NMIS_ASSOCIATES, NMIS_CONTRACTS, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE, NMIS_FISCAL_YEARS
- **Subforms:** Form.NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform, Form.NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2, Form.Contract_Payment_Estimate_Invoice subform1, Form.Contract_Payment_Estimate_Invoice_Main_subform
- **Opens:** Form:CONTRACT_PAYMENT_ESTIMATE_INVOICE, Form:Close_Form, Form:NMIS_CONTRACTS, Form:PROCESS_PAYMENT_ESTIMATE_INVOICE, Report:CONTRACT_PAYMENT_ESTIMATE_INVOICE, Report:Close_Form, Report:NMIS_CONTRACTS, Report:PROCESS_PAYMENT_ESTIMATE_INVOICE
- **Opened from:** Form_Reports_Menu_Misc Subform, Form_Reports_Menu_Processing Subform
- **Form events with code:** Open
- **Migration:** 0 of 1 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox PROJECT = `=[Contract_Payment_Estimate_Invoice_Main_subform].[Form]![CONTRACT_NO]`  [FormHeader]
- TextBox ASSOCIATE = `=[Contract_Payment_Estimate_Invoice_Main_subform].[Form]![ESTIMATE_NO]`  [FormHeader]
- Subform NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform subform `Form.NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform` (master CONTRACT_NO;FISCAL_YEAR → child CONTRACT_NO;FISCAL_YEAR)  [FormHeader]
- Subform NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2 subform `Form.NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2` (master PROJECT → child CONTRACT_NO)  [FormHeader]
- TextBox ORIGINAL_CONTRACT_AMT = `=[Contract_Payment_Estimate_Invoice_Main_subform].[Form]![ESTIMATE_NO_PREVIOUS]`  [FormHeader]
- ComboBox CONTRACT_NO "View Contract:" · rows: `SELECT NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.CONTRACT_NO, NMIS_CONTRACTS.PROJECT, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM (NMIS_CONTRACTS LEFT JOIN NMIS_ASSOCIATES ON NMIS_CONTRACTS.ASSOCIATE = NMIS_ASSOCIATES.ASSOCIATE) RIGHT JOIN NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE ON (NMIS_CONTRACTS.CONTRACT_NO = NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.CONTRACT_NO) AND (NMIS_CONTRACTS.FISCAL_YEAR = NMIS_CONTRACT` · events: Change, DblClick, Enter, Exit, GotFocus  [FormHeader]
- ComboBox View_FY " View FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER DESC;` · default `=[Forms]![Switchboard]![FY_For_Reports]` · events: Exit  [FormHeader]
- CommandButton Close "Close" · events: Click  [FormHeader]
- CheckBox Just_Opened · default `True`  [FormHeader]
- TextBox FISCAL_YEAR = `=[View_FY]`  [FormHeader]
- Subform Contract_Payment_Estimate_Invoice subform1 subform `Form.Contract_Payment_Estimate_Invoice subform1` (master CONTRACT_NO;FISCAL_YEAR;ASSOCIATE → child CONTRACT_NO;FISCAL_YEAR;ESTIMATE_NO) · events: Enter
- CommandButton Preview_CONTRACT_PAYMENT_ESTIMATE_INVOICE "Click to View FS-6300-30" · events: Click
- TextBox Text50 "Text50:" = `TKT_NO`
- Subform Contract_Payment_Estimate_Invoice_Main_subform subform `Form.Contract_Payment_Estimate_Invoice_Main_subform` (master CONTRACT_NO;FISCAL_YEAR → child CONTRACT_NO;FISCAL_YEAR) · events: Enter
- CommandButton Update_Pack_Items "Click to Update Pack Items" · events: Click
- CommandButton Update_Lift_Items "Click to Update Lift Items" · events: Click
- CommandButton Processing_Calcs "Click for Processing Payment Estimate..." · events: Click

## Form: Contract_Payment_Estimate_Invoice subform1
- **Caption:** Contract_Payment_Estimate_Invoice subform
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Contract_Payment_Estimate_Invoice › Contract_Payment_Estimate_Invoice subform1
- **Record source:** SELECT NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Level, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.sort, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Item_No, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Item, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Contract, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.This_Est, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Unit_Price, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Changes, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Rev_Tot, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Prev_Est, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Total_To_Date, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Total_Earned_to_Date, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Unit, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.FISCAL_YEAR, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.CONTRACT_NO, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.ESTIMATE_NO, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.ESTIMATE_NO_PREVIOUS FROM NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL WHERE (((NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.CONTRACT_NO)<>"New Contract")) ORDER BY NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Level, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.sort;
- **Backend tables:** NMIS_CONTRACT_ITEMS, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL, NMIS_UNITS
- **Form events with code:** Current
- **Migration:** 0 of 17 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox Rev_Tot = `Rev_Tot`
- TextBox Contract = `Contract`
- ComboBox Unit = `Unit` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS;`
- ComboBox Item_No = `Item_No` · rows: `SELECT NMIS_CONTRACT_ITEMS.CONTRACT_ITEM, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC, NMIS_CONTRACT_ITEMS.PAYMENT_PER_UNIT, NMIS_CONTRACT_ITEMS.FISCAL_YEAR, NMIS_CONTRACT_ITEMS.CONTRACT_NO FROM NMIS_CONTRACT_ITEMS WHERE (((NMIS_CONTRACT_ITEMS.FISCAL_YEAR)=[Forms]![Contract_Payment_Estimate_Invoice]![FISCAL_YEAR]) AND ((NMIS_CONTRACT_ITEMS.CONTRACT_NO)=[Forms]![Contract_Payment_Estimate_Invoice]![Contr` · events: Enter
- ComboBox Item = `Item` · rows: `SELECT NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM, NMIS_CONTRACT_ITEMS.FISCAL_YEAR FROM NMIS_CONTRACT_ITEMS WHERE (((NMIS_CONTRACT_ITEMS.CONTRACT_NO)=[Forms]![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].[Form]![CONTRACT_NO]) AND ((NMIS_CONTRACT_ITEMS.FISCAL_YEAR)=[Forms]![Contract_Payment_Estimate_Invoice]![FISCAL_YEAR])) ORDER` · events: Enter
- TextBox Prev_Est = `Prev_Est`
- TextBox Changes = `Changes`
- TextBox This_Est = `This_Est` · events: DblClick, Exit, LostFocus
- TextBox Total_To_Date = `Total_To_Date` · events: DblClick, Exit
- TextBox Unit_Price = `Unit_Price`
- TextBox Total_Earned_to_Date = `Total_Earned_to_Date` · events: DblClick
- TextBox Level = `Level`
- TextBox sort = `sort`
- TextBox Total_To_Date_Calc = `=Round(NZ([Prev_Est],0),3)+Round(NZ([This_Est],0),3)`
- TextBox Total_Earned_to_Date_Calc = `=Round((Nz([This_Est],0)+Nz([Prev_Est],0))*Nz([Unit_Price],1)+0.0001,2)`
- TextBox ESTIMATE_NO_PREVIOUS = `ESTIMATE_NO_PREVIOUS` · default `=[Forms]![Contract_Payment_Estimate_Invoice]![ESTIMATE_NO_PREVIOUS]`
- TextBox CONTRACT_NO = `CONTRACT_NO`
- TextBox ESTIMATE_NO = `ESTIMATE_NO`
- TextBox DATE_SIGNED = `=[Forms]![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].[Form]![DATE_SIGNED]`
- TextBox FISCAL_YEAR = `FISCAL_YEAR` · default `=[Forms]![Switchboard]![FY_For_Reports]`

## Form: Contract_Payment_Estimate_Invoice_Main_subform
- **Caption:** Contract_Payment_Estimate_Invoice
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Contract_Payment_Estimate_Invoice › Contract_Payment_Estimate_Invoice_Main_subform
- **Record source:** SELECT NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.CONTRACT_NO, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.ESTIMATE_NO, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.ESTIMATE_NO_PREVIOUS, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.BEGIN_DATE, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.END_DATE, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.RETENTION_PCT, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.PREVIOUS_PAYMENTS, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.DISCOUNT_PCT, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.DEDUCTION, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.INCREASES_DECREASES, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.NET_CONTRACT_AMOUNT, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.REMARKS, NMIS_CONTRACTS.ORIGINAL_CONTRACT_AMT, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.PROJECT_NAME, NMIS_CONTRACTS.PROJECT, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.DATE_SIGNED, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.DATE_PMT_RECOMMENDED, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.FISCAL_YEAR, NMIS_CONTRACTS.INDEFINITE_QUANTITY FROM NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE LEFT JOIN NMIS_CONTRACTS ON (NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.CONTRACT_NO = NMIS_CONTRACTS.CONTRACT_NO) AND (NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.FISCAL_YEAR = NMIS_CONTRACTS.FISCAL_YEAR) ORDER BY NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.CONTRACT_NO, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.ESTIMATE_NO;
- **Backend tables:** NMIS_CONTRACTS, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE
- **Opens:** Report:CONTRACT_PAYMENT_ESTIMATE_INVOICE, Report:Close_Form
- **Form events with code:** Current
- **Migration:** 0 of 19 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ESTIMATE_NO_PREVIOUS "Prev. Est. No.:" = `ESTIMATE_NO_PREVIOUS`
- TextBox DEDUCTION "Deductions:" = `DEDUCTION`
- TextBox INCREASES_DECREASES "Increases or Decreases:" = `INCREASES_DECREASES`
- TextBox ESTIMATE_NO "Estimate No." = `ESTIMATE_NO` · default `=IIf(Not IsNull([CONTRACT_NO]),[Forms]![Contract_Payment_Estimate_Invoice]![NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform].[Form]![ESTIMATE_NO]+1,0)` · events: Enter, Exit, LostFocus
- TextBox BEGIN_DATE "Begin Date:" = `BEGIN_DATE` · default `=IIf((Not IsNull([CONTRACT_NO]) And [ESTIMATE_NO]>0),[Forms]![Contract_Payment_Estimate_Invoice]![NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform].[Form]![Max_Date]+1,Null)` · events: DblClick, Enter, Exit
- TextBox END_DATE "End Date:" = `END_DATE` · events: Enter, Exit, GotFocus, LostFocus
- TextBox RETENTION_PCT "Retention %:" = `RETENTION_PCT`
- TextBox PREVIOUS_PAYMENTS "Previous Payments:" = `PREVIOUS_PAYMENTS`
- TextBox DISCOUNT_PCT "Discount %:" = `DISCOUNT_PCT`
- TextBox NET_CONTRACT_AMOUNT "Net Contract Amount:" = `NET_CONTRACT_AMOUNT`
- TextBox Remarks "Remarks:" = `REMARKS`
- TextBox ORIGINAL_CONTRACT_AMT "Original Contract Amount:" = `ORIGINAL_CONTRACT_AMT`
- TextBox Project_Name "Project:" = `PROJECT_NAME`
- TextBox PROJECT = `PROJECT`
- TextBox DATE_SIGNED "Date Signed:" = `DATE_SIGNED` · events: Enter
- TextBox DATE_PMT_RECOMMENDED "Date Recomended:" = `DATE_PMT_RECOMMENDED` · default `=Date()`
- CommandButton New_Estimate "New Est." · events: Click
- TextBox FISCAL_YEAR = `FISCAL_YEAR`
- TextBox CONTRACT_NO "Contract No.:" = `CONTRACT_NO` · default `=IIf(Not IsNull([Forms]![Contract_Payment_Estimate_Invoice]![CONTRACT_NO]),IIf([Forms]![Contract_Payment_Estimate_Invoice]![CONTRACT_NO]<>"New Contract",[Forms]![Contract_Payment_Estimate_Invoice]![CONTRACT_NO],Null),Null)` · events: Enter, Exit, LostFocus
- CheckBox INDEFINITE_QUANTITY "INDEFINITE_QUANTITY" = `INDEFINITE_QUANTITY`

## Form: Contract_Work_Order
- **Caption:** Contract_Payment_Estimate_Invoice
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Contract_Work_Order
- **Record source:** SELECT NMIS_CONTRACTS.CONTRACT_NO, NMIS_CONTRACTS.PROJECT, NMIS_CONTRACTS.ASSOCIATE, NMIS_CONTRACTS.ORIGINAL_CONTRACT_AMT, NMIS_CONTRACTS.FISCAL_YEAR FROM NMIS_CONTRACTS;
- **Backend tables:** NMIS_ASSOCIATES, NMIS_CONTRACTS, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE, NMIS_FISCAL_YEARS
- **Subforms:** Form.NMIS_CONTRACT_WORK_ORDERS_0_FORM_INFO, Form.NMIS_CONTRACT_WORK_ORDERS_LAST_ORDER, Form.Contract_Work_Order_subform
- **Opens:** Form:CONTRACT_WORK_ORDER_FS-6300-12, Form:Close_Form, Form:NMIS_CONTRACTS, Form:PROCESS_PAYMENT_ESTIMATE_INVOICE, Report:CONTRACT_WORK_ORDER_FS-6300-12, Report:Close_Form, Report:NMIS_CONTRACTS, Report:PROCESS_PAYMENT_ESTIMATE_INVOICE
- **Opened from:** Form_Reports_Menu_Misc Subform
- **Form events with code:** Open
- **Migration:** 0 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- ComboBox Select_CONTRACT_NO "View Contract:" · rows: `SELECT NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.CONTRACT_NO, NMIS_CONTRACTS.PROJECT, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM (NMIS_CONTRACTS LEFT JOIN NMIS_ASSOCIATES ON NMIS_CONTRACTS.ASSOCIATE = NMIS_ASSOCIATES.ASSOCIATE) RIGHT JOIN NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE ON (NMIS_CONTRACTS.CONTRACT_NO = NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.CONTRACT_NO) AND (NMIS_CONTRACTS.FISCAL_YEAR = NMIS_CONTRACT` · events: AfterUpdate, Change, DblClick, GotFocus  [FormHeader]
- ComboBox View_FY " View FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER DESC;` · default `=[Forms]![Switchboard]![NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_NUMBER]` · events: Exit  [FormHeader]
- CommandButton Close "Close" · events: Click  [FormHeader]
- CheckBox Just_Opened · default `True`  [FormHeader]
- Subform NMIS_CONTRACT_WORK_ORDERS_0_FORM_INFO subform `Form.NMIS_CONTRACT_WORK_ORDERS_0_FORM_INFO` (master CONTRACT_NO;FISCAL_YEAR → child CONTRACT_NO;FISCAL_YEAR)  [FormHeader]
- Subform NMIS_CONTRACT_WORK_ORDERS_LAST_ORDER subform `Form.NMIS_CONTRACT_WORK_ORDERS_LAST_ORDER` (master CONTRACT_NO;FISCAL_YEAR → child CONTRACT_NO;FISCAL_YEAR)  [FormHeader]
- TextBox FISCAL_YEAR = `FISCAL_YEAR`  [FormHeader]
- TextBox CONTRACT_NO = `CONTRACT_NO` · events: Enter, Exit  [FormHeader]
- CommandButton Preview_CONTRACT_PAYMENT_ESTIMATE_INVOICE "Click to View FS-6300-12" · events: Click
- Subform Contract_Payment_Estimate_Invoice_Main_subform subform `Form.Contract_Work_Order_subform` (master CONTRACT_NO;FISCAL_YEAR → child CONTRACT_NO;FISCAL_YEAR) · events: Enter

## Form: Contract_Work_Order_subform
- **Caption:** Contract_Payment_Estimate_Invoice
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Contract_Work_Order › Contract_Work_Order_subform
- **Record source:** SELECT NMIS_CONTRACT_WORK_ORDERS.* FROM NMIS_CONTRACT_WORK_ORDERS ORDER BY NMIS_CONTRACT_WORK_ORDERS.CONTRACT_NO, NMIS_CONTRACT_WORK_ORDERS.ESTIMATE_NO, NMIS_CONTRACT_WORK_ORDERS.AMENDMENT;
- **Backend tables:** NMIS_CONTRACT_WORK_ORDERS
- **Form events with code:** Current
- **Migration:** 0 of 9 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ESTIMATE_NO "Order No.:" = `ESTIMATE_NO` · default `=IIf((Not IsNull([Forms]![Contract_Work_Order]![Select_CONTRACT_NO]) And Not IsNull([Remarks])),[Forms]![Contract_Work_Order]![NMIS_CONTRACT_WORK_ORDERS_LAST_ORDER].[Form]![ESTIMATE_NO],Null)` · events: DblClick, Enter
- TextBox BEGIN_DATE "Date:" = `DATE` · events: DblClick, Enter
- TextBox Remarks "Work Ordered:" = `WORK_ORDERED` · default `=[Forms]![Contract_Work_Order]![NMIS_CONTRACT_WORK_ORDERS_0_FORM_INFO].[Form]![WORK_ORDERED]` · events: DblClick, Enter
- CommandButton New_Estimate "New Order" · events: Click
- TextBox CONTRACT_NO "Contract No.:" = `CONTRACT_NO` · default `=IIf(Not IsNull([Forms]![Contract_Payment_Estimate_Invoice]![CONTRACT_NO]),IIf([Forms]![Contract_Payment_Estimate_Invoice]![CONTRACT_NO]<>"New Contract",[Forms]![Contract_Payment_Estimate_Invoice]![CONTRACT_NO],Null),Null)` · events: DblClick, Enter
- CheckBox NON_COMPLIANCE "Notice of Non-Compliance:" = `NON_COMPLIANCE`
- CheckBox WORK_ORDER "Work Order:" = `WORK_ORDER` · default `True`
- TextBox REFERENCE "REFERENCE:" = `REFERENCE` · default `=[Forms]![Contract_Work_Order]![NMIS_CONTRACT_WORK_ORDERS_0_FORM_INFO].[Form]![REFERENCE]` · events: DblClick, Enter
- TextBox AMENDMENT = `AMENDMENT` · events: DblClick, Enter
- TextBox WORK_ORDER_KEY = `=[CONTRACT_NO] & [ESTIMATE_NO] & [AMENDMENT]`
- TextBox SIGNATURE_TITLE "Signature Title:" = `SIGNATURE_TITLE` · default `"C.O.R."`

## Form: Drying_Tray_Input_Form
- **Caption:** Drying Tray Input Form
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Drying_Tray_Input_Form
- **Opens:** Form:xPlease_Be_Patient_Message, Report:PROPAGULE_HARVEST_DRYING_BIN, Report:PROPAGULE_HARVEST_DRYING_BIN_Label, Report:PROPAGULE_HARVEST_DRYING_BIN_Single_Tray
- **Opened from:** Form_Reports_Menu_Processing Subform, Form_xNative_Propagule_Harvest_Menu
- **Form events with code:** Open

**Controls**
- CommandButton Preview_Drying_Tray_Form "Click to PREVIEW Drying Tray Form" · events: Click
- CommandButton Preview_Drying_Tray_Label "Click to Preview Drying Tray Label" · events: Click
- TextBox Initials "Initials/Notes:"
- TextBox Date: "Date:" · default `Date()`
- TextBox Number_Of_Trays "# of Trays:" · events: Exit
- ComboBox Harvest_Method "Harvest Method:" · rows: `"Direct Combine";"Pickup Combine";"Swath & Catch";Tote;Hand;Stripper;Bale;"Other"` · default `"Direct Combine"`
- ComboBox Lot_ID "Lot ID:" · rows: `SELECT [**PROPAGULE_HARVEST_DRYING_BIN_Select].ID, [**PROPAGULE_HARVEST_DRYING_BIN_Select].MinOfLOCATION FROM [**PROPAGULE_HARVEST_DRYING_BIN_Select] ORDER BY [**PROPAGULE_HARVEST_DRYING_BIN_Select].ID;` · events: AfterUpdate, Change, Enter
- ComboBox Begin_Location_Lot_ID "Begin Location:" · rows: `SELECT [**PROPAGULE_HARVEST_DRYING_BIN_Select].ID, [**PROPAGULE_HARVEST_DRYING_BIN_Select].MinOfLOCATION, [**PROPAGULE_HARVEST_DRYING_BIN_Select].ID FROM [**PROPAGULE_HARVEST_DRYING_BIN_Select] ORDER BY [**PROPAGULE_HARVEST_DRYING_BIN_Select].MinOfLOCATION;` · default `"*"` · events: Change
- TextBox End_Container
- TextBox Begin_Container "Beg:"
- CommandButton Print_Drying_Tray_Form " Click to PRINT Drying Tray Form" · events: Click
- TextBox Sublot "Sublot:"

## Form: Field_Form_Plants
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Plants
- **Backend tables:** NMIS_AGREEMENTS, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_SPECIES, NMIS_SPECIES_PRODUCTS
- **Opens:** Form:xPlease_Be_Patient_First_Report_Message, Report:Container_Location_Index, Report:Container_Location_Proofsheet, Report:Field_Form_Plants, Report:Field_Form_Plants_Inv_Size_Checklist, Report:Field_Form_Plants_w_specs, Report:Field_Form_Plants_w_specs_ByLotID, Report:Field_Location_Index, Report:Field_Location_Proofsheet
- **Opened from:** Form_Reports_Menu_Production Subform

**Controls**
- TextBox Like_Begin_Location "Begin Location Like:" · default `"*"`
- ComboBox Like_Associate "Associate Like:" · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;` · default `"*"`
- ComboBox Like_Plntmstr_Symbol "Species Like:" · rows: `SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.SPECIES_NO, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACULAR, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name FROM NMIS_SPECIES INNER JOIN NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query ON NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL ORDER BY NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACU` · default `"*"`
- ComboBox Like_Age_Class "Age Class Like:" · rows: `SELECT Agreement_Lot_Current_Age_Class_and_Cost_Center.Age_Class, Agreement_Lot_Current_Age_Class_and_Cost_Center.Current_Cost_Center FROM Agreement_Lot_Current_Age_Class_and_Cost_Center INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_AGREEMENTS INNER JOIN (NMIS_AGREEMENT_LOTS INNER JOIN Agreement_Lots_Currently_Active ON NMIS_AGREEMENT_LOTS.CN = Agreement_Lots_Currently_Active.CN) ON NMIS_AGRE` · default `"*"` · events: Enter
- ComboBox Like_Agreement_Lot_ID "Lot ID Like:" · rows: `SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENTS.CLIENT_ASSOCIATE, NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL, Agreement_Lot_Current_Age_Class.Age_Class FROM Agreement_Lot_Current_Age_Class INNER JOIN ((NMIS_AGREEMENTS INNER JOIN (NMIS_AGREEMENT_LOTS INNER JOIN Agreement_Lots_Currently_Active ON NMIS_AGREEMENT_LOTS.CN = Agreement_Lots_Currently_Active.CN) ON NMIS_AGREEMENTS.AGREEMENT_LOT_CN = NMIS_AGREEM` · default `"*"` · events: Enter
- CheckBox Split_Lots_Only "Split Lots Only" · default `False`
- CommandButton Preview_Field_Plants "Click for Report with Source Code" · events: Click
- CheckBox Hide_Agreement_Lot_Notes "Hide Lot Notes" · default `True`
- CheckBox Hide_Monitoring_Notes "Hide Monitoring Notes" · default `True`
- ComboBox BorC "Cost Center:" · rows: `*;Bareroot and Container;B;Bareroot;C;Container` · default `"*"`
- CheckBox Extra_Line_For_Notes "Include Extra Line for Notes" · default `True`
- CommandButton Preview_Field_Plants_w_specs "Click for Report by Growing Location" · events: Click
- CheckBox Location_Processed "Location Processed" · default `No`
- TextBox Like_End_FY "End FY Like:" · default `"*"`
- TextBox Like_Begin_FY "Begin FY Like:" · default `"*"`
- TextBox MaxSowDate "Max Sow Date:" · default `=Date()` · events: DblClick
- TextBox MinSowDate "Min Sow Date:" · default `="01/01/70"` · events: DblClick
- CommandButton Preview_Field_Plants_w_specs_ByLotID "Click for Report by Agreement Lot ID" · events: Click

## Form: Field_Form_Plants_For_Inventory_Sizing
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Plants_For_Inventory_Sizing
- **Backend tables:** NMIS_AGREEMENTS, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_FISCAL_YEARS, NMIS_SPECIES, NMIS_SPECIES_PRODUCTS
- **Subforms:** Form.NMIS_UNIT_DRILL_ROWS subform
- **Opens:** Form:xPlease_Be_Patient_First_Report_Message, Report:Container_Location_Index, Report:Container_Location_Proofsheet, Report:Field_Form_Plants_Inv_Count_Checklist, Report:Field_Form_Plants_Inv_Count_Checklist_pagebreak, Report:Field_Form_Plants_Inv_Size_Checklist, Report:Field_Form_Plants_Inv_Size_Checklist_Container_pagebreak, Report:Field_Form_Plants_Inv_Size_Checklist_pagebreak, Report:Field_Location_Index, Report:Field_Location_Proofsheet
- **Opened from:** Form_Reports_Menu_Production Subform

**Controls**
- TextBox Like_Begin_Location "Begin Location Like:" · default `"*"`
- ComboBox Like_Associate "Associate Like:" · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;` · default `"*"`
- ComboBox Like_Plntmstr_Symbol "Species Like:" · rows: `SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.SPECIES_NO, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACULAR, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name FROM NMIS_SPECIES INNER JOIN NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query ON NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL ORDER BY NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACU` · default `"*"`
- CheckBox Split_Lots_Only "Split Lots Only:" · default `False`
- Subform NMIS_UNIT_DRILL_ROWS subform "Unit Drill Rows for Sizing" subform `Form.NMIS_UNIT_DRILL_ROWS subform` (master  → child )
- CommandButton Preview_Field_Plants_For_Inv_Sizing "Sizing Report Bareroot" · events: Click
- CommandButton Preview_Field_Plants_For_Inv_Counting "Counting Report" · events: Click
- ComboBox Like_Age_Class "Age Class Like:" · rows: `SELECT Agreement_Lot_Current_Age_Class.Age_Class FROM Agreement_Lot_Current_Age_Class INNER JOIN (Agreement_Lots_Currently_Active_in_Grow_Containers INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_AGREEMENTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_AGREEMENTS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON Agreement_Lots_Currentl` · default `"*"` · events: Enter
- ComboBox Like_Agreement_Lot_ID "Lot ID Like:" · rows: `SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENTS.CLIENT_ASSOCIATE, NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL FROM (NMIS_AGREEMENTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_AGREEMENTS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) INNER JOIN NMIS_SPECIES_PRODUCTS ON NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN = NMIS_SPECIES_PRODUCTS.CN WHERE (((NMIS_AGREEMENT_LOTS.CATEGORY_CODE) Like "b*")) GROUP BY NMIS_AGREEMENT_` · default `"*"` · events: Enter
- ComboBox End_FY "End FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `2001+Right$(Date(),2)` · events: DblClick
- CheckBox field_pagebreak "Page Break on Field:" · default `True`
- CheckBox Not_Counted_Only "Not Counted Only " · default `False`
- CheckBox Not_Sized_Only "Not Sized Only " · default `False`
- ComboBox Diverse "Traditional/Non-Traditonal:" · rows: `0;Traditional;-1;Non-Traditional;*;All` · default `"*"`
- CheckBox Location_Processed "Location Processed" · default `No`
- TextBox Reduce_Prev_Yr_Counts "Reduce Prev Yr Counts by:" · default `0`
- ComboBox Begin_FY "Begin FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `"*"`
- CommandButton Preview_Container_Plants_For_Inv_Sizing "Sizing Report Container" · events: Click

## Form: Field_Location_Worksheet
- **Caption:** Stock Location Worksheet
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Location_Worksheet
- **Backend tables:** NMIS_LOCATIONS
- **Subforms:** Form.NMIS_ACCESS_USER_NURSERY subform1
- **Opens:** Report:Field_Location_Worksheet, Report:Field_Location_Worksheet_SPD, Report:Field_Location_Worksheet_condensed, Report:Field_Location_Worksheet_condensed_spd
- **Opened from:** Form_Reports_Menu_Production Subform

**Controls**
- ComboBox Begin_Location "Begin Location:" · rows: `SELECT NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.INDEX_MAX, NMIS_LOCATIONS.LOCATION_TYPE, IIf([location_type]="field","b","c") AS Loctype, NMIS_LOCATIONS.NOTE FROM NMIS_LOCATIONS WHERE (((NMIS_LOCATIONS.LOCATION) Not Like "*000") AND ((NMIS_LOCATIONS.LOCATION_TYPE) Not In ("cooler","freezer","walkin","NONREF","PRECOOLER")) AND ((IIf([location_type]="field","b","c"))=[Forms]![Field_Location_Worksheet`
- ComboBox End_Location "End Location:" · rows: `SELECT NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.INDEX_MAX, IIf([location_type]="field","b","c") AS Loctype FROM NMIS_LOCATIONS WHERE (((IIf([location_type]="field","b","c"))=[Forms]![Field_Location_Worksheet]![Cost_Center]) AND ((NMIS_LOCATIONS.LOCATION) Not Like "*000") AND ((NMIS_LOCATIONS.NOTE) Not Like "*Historical*") AND ((NMIS_LOCATIONS.LOCATION_TYPE) Not In ("cooler","freezer","walkin","NONR`
- CommandButton Print Work Orders "Click to Preview/Print Worksheets" · events: Click
- ComboBox Cost_Center "Stock Type:" · rows: `B;Bareroot;C;Container` · default `"b"`
- CheckBox data_processed "data processed" · default `False`
- CheckBox In_Use "Beds in use only" · default `False`
- Subform NMIS_ACCESS_USER_NURSERY subform1 subform `Form.NMIS_ACCESS_USER_NURSERY subform1` (master  → child )
- CommandButton Print Work Orders Condensed "Click to   Preview/Print Worksheets Condensed" · events: Click
- CommandButton Print Work Orders Condensed spd "Spreadsheet Version" · events: Click
- CommandButton Print_Field_Stock_Location_Spd "Spreadsheet Version" · events: Click

## Form: Field_Map Form
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_SPECIES
- **Subforms:** Form.NMIS_ACCESS_USER_NURSERY subform1
- **Opens:** Report:Container_Location_Index, Report:Container_Location_Index_Inv_Stat, Report:Container_Location_Index_fs_vs_non, Report:Container_Location_Proofsheet, Report:Container_Location_Proofsheet_Inv_Stat, Report:Container_Location_Proofsheet_fs_vs_non, Report:Field_Location_Index, Report:Field_Location_Index_Inv_Stat, Report:Field_Location_Index_fs_vs_non, Report:Field_Location_Proofsheet, Report:Field_Location_Proofsheet_Inv_Stat, Report:Field_Location_Proofsheet_fs_vs_non
- **Opened from:** Form_Reports_Menu_Processing Subform, Form_Reports_Menu_Production Subform

**Controls**
- TextBox Field "Location Like:" · default `"*"`
- ComboBox Like_Associate "Associate Like:" · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;` · default `"*"`
- ComboBox Like_Plntmstr_Symbol "Species Like:" · rows: `SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.SPECIES_NO, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACULAR, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name FROM NMIS_SPECIES INNER JOIN NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query ON NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL ORDER BY NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACU` · default `"*"`
- ComboBox PRODUCT_GROUP "Product Group:" · rows: `Plant;Plant;Propagule;Propagule;*;All` · default `"Plant"`
- CheckBox Use_Scientific_Name "Use Scientific Name on Index " · default `0`
- ComboBox Like_Age_Class "Age Class Like:" · rows: `SELECT Agreement_Lot_Current_Age_Class.Age_Class, Left$([CATEGORY_CODE],1) AS BorC FROM NMIS_AGREEMENT_LOTS INNER JOIN (Agreement_Lot_Current_Age_Class INNER JOIN Agreement_Lots_Currently_Active ON Agreement_Lot_Current_Age_Class.CN = Agreement_Lots_Currently_Active.CN) ON NMIS_AGREEMENT_LOTS.CN = Agreement_Lots_Currently_Active.CN WHERE (((Left$([CATEGORY_CODE],1))=[Forms]![Field_Map Form]![Cost_` · default `"*"`
- CommandButton Preview_Index "Index" · events: Click
- ComboBox Like_Agreement_Lot_ID "Lot ID Like:" · rows: `SELECT NMIS_AGREEMENT_LOTS.ID FROM NMIS_AGREEMENT_LOTS INNER JOIN Agreement_Lots_Currently_Active ON NMIS_AGREEMENT_LOTS.CN = Agreement_Lots_Currently_Active.CN ORDER BY NMIS_AGREEMENT_LOTS.ID;` · default `"*"`
- CommandButton Preview_Index_Proofsheet " Proofsheet" · events: Click
- CheckBox Split_Lots_Only "Split Lots Only " · default `False`
- TextBox Like_End_FY "End FY Like:" · default `"*"`
- ComboBox Cost_Center "Stock Type:" · rows: `B;Bareroot;C;Container` · default `"b"` · events: AfterUpdate
- CheckBox Current_FY_Lift · default `False`
- TextBox Current_FY_Lift_Label = `="Highlight Lots Scheduled for lift fy " & [Forms]![Switchboard]![FY_For_Reports] & " "`
- TextBox Like_Begin_FY "Begin FY Like:" · default `"*"`
- CheckBox Highlight_Short_Beds "Highlight Short Beds on Proofsheet  " · default `False`
- ComboBox Diverse "Traditional/Non-Traditonal:" · rows: `0;Traditional;-1;Non-Traditional;*;All` · default `"*"`
- CommandButton Preview_Index_fs_vs_non "Index fs vs non-fs" · events: Click
- CommandButton Preview_Index_Proofsheet_fs_vs_non "  ps   fs vs non-fs" · events: Click
- Subform NMIS_ACCESS_USER_NURSERY subform1 subform `Form.NMIS_ACCESS_USER_NURSERY subform1` (master  → child )
- CheckBox Show_Inventory_Status "Show Inventory Status   " · default `0`

## Form: Field_Tags
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags
- **Backend tables:** NMIS_AGREEMENTS, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_FISCAL_YEARS, NMIS_PRODUCTS, NMIS_PRODUCT_TYPES, NMIS_SPECIES, NMIS_SPECIES_PRODUCTS, NMIS_UNITS
- **Opens:** Form:Agreement_Lot_ID_Change_from_Tags0 Form, Form:Agreement_Lot_ID_Change_from_Tags1 Form, Form:Agreement_Lot_ID_Change_from_Tags2 Form, Form:Agreement_Lot_ID_Change_from_Tags3 Form, Form:Agreement_Lot_ID_Change_from_Tags4 Form, Form:Agreement_Lot_ID_Change_from_Tags5 Form, Report:Field_tag_pairs_w_NIds, Report:Field_tag_pairs_w_NIds_040207, Report:Field_tag_pairs_w_NIds_040207_Split_Lot, Report:Field_tag_pairs_w_NIds_Intermec, Report:Field_tag_pairs_w_NIds_Intermec_040207, Report:Field_tag_pairs_w_NIds_Intermec_050357, Report:Field_tag_pairs_w_NIds_Intermec_050357_Split_Lot, Report:Field_tag_pairs_w_NIds_bailing, Report:Field_tag_pairs_wo_NIds, Report:Field_tag_pairs_wo_NIds_Intermec, Report:field_tag_PotStakes_Datamax
- **Opened from:** Form_Reports_Menu_Production Subform
- **Form events with code:** Open

**Controls**
- ComboBox Begin_FY "Begin FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC;` · default `=[Forms]![Switchboard]![FY_For_Reports]` · events: Enter
- ComboBox End_FY "End FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `"*"` · events: Enter
- ComboBox Product "Product:" · rows: `SELECT NMIS_PRODUCTS.CN, Product_String.Product_String, NMIS_PRODUCTS.PRODUCT_DESC, NMIS_PRODUCTS.CATEGORY_CODE, Count([nmis_agreement_lots].[cn]) & IIf(Count([nmis_agreement_lots].[cn])>1," Lots"," Lot") AS Lots FROM Agreement_Lot_Total_Containers_Grow RIGHT JOIN ((NMIS_PRODUCTS INNER JOIN Product_String ON NMIS_PRODUCTS.CN = Product_String.CN) INNER JOIN (NMIS_SPECIES INNER JOIN (NMIS_SPECIES_PR` · default `"*"` · events: DblClick, Enter
- CommandButton Clear_ids "Click to Clear" · events: Click
- CommandButton ID_Tags_W_ID_Intermec "Click to Create Tags" · events: Click
- ComboBox Plntmstr_Symbol "Species Code:" · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER INNER JOIN ((NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.` · default `"*"` · events: DblClick, Enter
- ComboBox BorC "Cost Center:" · rows: `*;Bareroot and Container;B;Bareroot;C;Container` · default `"*"` · events: AfterUpdate, Change, DblClick, Enter
- ComboBox Tag_Style "Tag Style:" · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.ASSOCIATE) In ("061019","050357","040207","090707"))) ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;` · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]`
- TextBox Lot_ID_1 "Lot ID Like 1:" · default `Null` · events: DblClick
- TextBox Lot_ID_2 "Lot ID Like 2:" · default `Null` · events: DblClick
- TextBox Lot_ID_3 "Lot ID Like 3:" · default `Null` · events: DblClick
- TextBox Lot_ID_4 "Lot ID Like 4:" · default `Null` · events: DblClick
- TextBox Lot_ID_5 "Lot ID Like 5:" · default `Null` · events: DblClick
- ComboBox Find_Lot "Find Lot:" · rows: `SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_PRODUCTS.PRODUCT_CLASS AS Agr_Class, Source_Lot_ID_and_Source_string.ID_SOURCE2 AS Source, [CLIENT_ASSOCIATE] & " " AS Client, [AMOUNT_REQUESTED] & " " AS Req, NMIS_AGREEMENT_LOTS.BEGIN_FY AS [Begin FY], NMIS_AGREEMENT_LOTS.Index AS [Original ID], NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL, NMIS_PRODUCTS.CN, Left$(nz([nmis_agreement_lots].[Category_Code],"B"),1) AS P` · events: DblClick, Enter
- CommandButton Wildcard_Tip "Wildcard Tip" · events: Click
- ComboBox Printer_and_Label_Type "Printer - Label Type:" · rows: `1;" Label Printer - WITH Lot ID's";2;" Label Printer - WITHOUT Lot ID's";3;" Laser Printer - WITH Lot ID's";4;" Laser Printer - WITHOUT Lot ID's";5;" Pot Stakes"` · default `=IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code] In ("040207","061019","090707"),3,1)` · events: Change
- ComboBox Begin_Product_Type "Begin Product Type:" · rows: `SELECT NMIS_PRODUCT_TYPES.PRODUCT_TYPE, NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC FROM (NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE = NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE) INNER JOIN ((NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) INNER JOIN NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY ON NMIS_SPE` · default `"*"` · events: DblClick
- ComboBox Begin_Container "Begin Container:" · rows: `SELECT NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER.BEGIN_CONTAINER, [BEGIN_CONTAINER] & " - " & [UNIT_DESC] AS Display FROM (NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE = NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE) INNER JOIN (NMIS_UNITS INNER JOIN (NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER INNER JOIN ((NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN` · default `"*"` · events: DblClick, Enter
- ComboBox Diverse "Traditional/Non-Traditonal Species" · rows: `0;Traditional;-1;Non-Traditional;*;All` · default `"*"`
- CheckBox Split_Lot "Split Lot " · default `False`
- CheckBox In_Grow_Cont_Only "Lots in grow containers only:" · default `False`
- CommandButton Tags_For_Bailing "Click to Create Bale Tags" · events: Click
- TextBox Date "Date:" · default `=Date()`

## Form: Ft_To_Lift
- **Caption:** Ft_To_Lift
- **Menu path:** Switchboard › Husky_lpro_data_input_check_form › Ft_To_Lift
- **Record source:** SELECT NMIS_AGREEMENT_LOTS.ID, nz([Total_Containers],0) AS Lot_Total_Ft FROM NMIS_AGREEMENT_LOTS LEFT JOIN Agreement_Lot_Total_Containers_Grow ON NMIS_AGREEMENT_LOTS.CN=Agreement_Lot_Total_Containers_Grow.Agreement_Lot_CN GROUP BY NMIS_AGREEMENT_LOTS.ID, nz([Total_Containers],0) HAVING (((NMIS_AGREEMENT_LOTS.ID)=Forms!Husky_lpro_data_input_check_form![**Huksy_lpro_xfer_hlift_table subform].Form!Nursery_ID)) ORDER BY NMIS_AGREEMENT_LOTS.ID;
- **Backend tables:** NMIS_AGREEMENT_LOTS
- **Migration:** 0 of 1 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox Lot_Total_Ft = `Lot_Total_Ft`

## Form: H_ASF
- **Caption:** ASF
- **Menu path:** Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_AGREEMENT_LOTS › H_ASF
- **Record source:** SELECT NMIS_SOURCE_PERFORMANCE.*, IIf(IsNull([PRODUCT_CLASS]),"Unknown",[PRODUCT_CLASS]) AS PC, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.CN FROM NMIS_PRODUCTS RIGHT JOIN ((NMIS_SOURCE_PERFORMANCE LEFT JOIN NMIS_SPECIES_PRODUCTS ON NMIS_SOURCE_PERFORMANCE.SPECIES_PRODUCT_CN = NMIS_SPECIES_PRODUCTS.CN) LEFT JOIN NMIS_AGREEMENT_LOTS ON NMIS_SOURCE_PERFORMANCE.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((NMIS_SOURCE_PERFORMANCE.SOURCE_CN)=[Forms]![NMIS_AGREEMENT_LOTS]![SOURCE_LOT_CN])) ORDER BY NMIS_SOURCE_PERFORMANCE.BEGIN_FY, NMIS_SOURCE_PERFORMANCE.END_FY, NMIS_SOURCE_PERFORMANCE.LOT_ID;
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_PRODUCTS, NMIS_SOURCE_PERFORMANCE, NMIS_SPECIES_PRODUCTS
- **Opens:** Form:NMIS_ID_ACTIVITY_TRANSACTIONS_FORM
- **Opened from:** Form_NMIS_AGREEMENT_LOTS
- **Migration:** 6 of 20 bound fields mapped. Main GrowHub screens: /orders/new (5)

**Controls**
- TextBox SOURCE_ID = `SOURCE_ID`  [FormHeader]
- TextBox BEGIN_FY = `BEGIN_FY` → GrowHub order_cycle_planning.plannedSowDate (blank)
- TextBox LOT_ID = `LOT_ID` · events: DblClick
- TextBox Gross_Calc = `Gross_Calc`
- TextBox Inv_Gross = `GROSS_INV`
- TextBox Net_Calc = `Net_Calc`
- TextBox Inv_Net = `NET_INV`
- TextBox Loc = `Loc`
- CheckBox USED = `USE` · events: AfterUpdate
- TextBox Est_Grow_Containers = `Est_Grow_Containers`
- TextBox Act_Grow_Containers = `Act_Cont`
- TextBox BorC = `BorC`
- TextBox PRODUCT_CLASS = `PC`
- TextBox ASF_USED = `HARVEST_ASF_ADJUSTMENT`
- TextBox Performance = `=Round([Inv_Gross]/[Gross_Calc]*100,2)`
- TextBox Perf_Used = `=Round(([Inv_Gross]/[Gross_Calc]*Abs([USED]))*100,2)`
- TextBox USE = `=Abs([USED])`
- TextBox HF1_USED = `HARVEST_FACTOR_1` → GrowHub order_cycle_planning.factor1 (blank)
- TextBox HF2_USED = `HARVEST_FACTOR_2` → GrowHub order_cycle_planning.factor2 (blank)
- TextBox HF3_USED = `HARVEST_FACTOR_3` → GrowHub order_cycle_planning.factor3 (blank)
- TextBox Text53 = `SOURCE_GERM_PCT`
- TextBox Text55 = `END_FY` → GrowHub grow_request.targetLiftYear (blank)
- TextBox CN = `CN`
- TextBox AVERAGE_ASF = `=IIf(Abs(Sum([use]))>0,Round(Sum(Round(([GROSS_INV]/[Gross_Calc]*Abs([USE]))*100,2))/Sum(Abs([USE])),2),"NA")` · events: DblClick  [FormFooter]
- TextBox USE_SUM = `=Sum([USE])`  [FormFooter]

## Form: H_ASF_from_source
- **Caption:** ASF
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › H_ASF_from_source
- **Record source:** SELECT NMIS_SOURCE_PERFORMANCE.*, IIf(IsNull([PRODUCT_CLASS]),"Unknown",[PRODUCT_CLASS]) AS PC FROM NMIS_PRODUCTS RIGHT JOIN (NMIS_SOURCE_PERFORMANCE LEFT JOIN NMIS_SPECIES_PRODUCTS ON NMIS_SOURCE_PERFORMANCE.SPECIES_PRODUCT_CN = NMIS_SPECIES_PRODUCTS.CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((NMIS_SOURCE_PERFORMANCE.SOURCE_CN)=[Forms]![NMIS_SOURCE_LOTS]![SOURCE_LOT_CN])) ORDER BY NMIS_SOURCE_PERFORMANCE.BEGIN_FY, NMIS_SOURCE_PERFORMANCE.END_FY, NMIS_SOURCE_PERFORMANCE.LOT_ID;
- **Backend tables:** NMIS_PRODUCTS, NMIS_SOURCE_LOTS, NMIS_SOURCE_PERFORMANCE, NMIS_SPECIES_PRODUCTS
- **Opened from:** Form_NMIS_SOURCE_LOTS
- **Migration:** 0 of 19 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox SOURCE_ID = `SOURCE_ID`  [FormHeader]
- TextBox BEGIN_FY = `BEGIN_FY`
- TextBox LOT_ID = `LOT_ID`
- TextBox Gross_Calc = `Gross_Calc`
- TextBox Inv_Gross = `GROSS_INV`
- TextBox Net_Calc = `Net_Calc`
- TextBox Inv_Net = `NET_INV`
- TextBox Loc = `Loc`
- CheckBox USED = `USE` · events: AfterUpdate
- TextBox Est_Grow_Containers = `Est_Grow_Containers`
- TextBox Act_Grow_Containers = `Act_Cont`
- TextBox BorC = `BorC`
- TextBox PRODUCT_CLASS = `PC`
- TextBox ASF_USED = `HARVEST_ASF_ADJUSTMENT`
- TextBox Performance = `=Round([Inv_Gross]/[Gross_Calc]*100,2)`
- TextBox Perf_Used = `=Round(([Inv_Gross]/[Gross_Calc]*Abs([USED]))*100,2)`
- TextBox USE = `=Abs([USED])`
- TextBox HF1_USED = `HARVEST_FACTOR_1`
- TextBox HF2_USED = `HARVEST_FACTOR_2`
- TextBox HF3_USED = `HARVEST_FACTOR_3`
- TextBox Text53 = `SOURCE_GERM_PCT`
- TextBox Text55 = `END_FY`
- TextBox AVERAGE_ASF = `=IIf(Abs(Sum([use]))>0,Round(Sum(Round(([GROSS_INV]/[Gross_Calc]*Abs([USE]))*100,2))/Sum(Abs([USE])),2),"NA")` · events: DblClick  [FormFooter]
- TextBox USE_SUM = `=Sum([USE])`  [FormFooter]

## Form: Hide_Activity_Posting
- **Caption:** Cover_Activity_Posting
- **Menu path:** Switchboard › Husky_lpro_data_input_check_form › Hide_Activity_Posting

**Controls**
(none)

## Form: Huksy_lpro_xfer_hlift_table2 subform
- **Caption:** **Huksy_lpro_xfer_hlift_table subform
- **Menu path:** Switchboard › Husky_lpro_data_input_check_form › Huksy_lpro_xfer_hlift_table2 subform
- **Record source:** **Husky_lpro_xfer_hlift_table2
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_CONTRACT_ITEMS, NMIS_ORDERS, NMIS_SPECIES_PRODUCTS
- **Form events with code:** BeforeInsert, BeforeUpdate
- **Migration:** 0 of 8 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox Sum_Containers = `Containers` · events: Enter
- TextBox Sum_Feet_Lifted = `Feet_Lifted` · events: DblClick, Enter
- TextBox Time = `LTime`
- TextBox Date = `Date` · default `=[Forms]![Husky_lpro_data_input_check_form]![Date_Default]`
- ComboBox Contract_Item = `Contract_Item` · rows: `SELECT NMIS_CONTRACT_ITEMS.CONTRACT_ITEM, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC FROM NMIS_CONTRACT_ITEMS WHERE (((NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC) Like "*Lift*" Or (NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC) Like "*Field Destroy*" Or (NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC) Like "*force*" Or (NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC) Like "*Surplus*") And ((NMIS_CONTRACT_ITEMS.FISCAL_YEAR)=Form` · default `=[Forms]![Husky_lpro_data_input_check_form]![Contract_Item_Default]` · events: Exit
- TextBox Precool_Unit_Code = `Precool_Unit_Code`
- ComboBox Nursery_ID = `Nursery_ID` · rows: `SELECT NMIS_AGREEMENT_LOTS.ID, [Age_Class_String] & " " & [PLNTMSTR_SYMBOL] AS Expr1, Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class.Age_Class_String FROM Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class RIGHT JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_SPECIES_PRODUCTS.CN = NMI` · events: Enter
- ComboBox Field_Container = `Field_Container` · rows: `T;Tub;M;Bin;S;Destroy;X;XFERTO` · default `=[Forms]![Husky_lpro_data_input_check_form]![Field_Container_Default]` · events: BeforeUpdate, Exit

## Form: Husky_lpro_data_input_check_form
- **Caption:** Lifting/Field Destroy
- **Menu path:** Switchboard › Husky_lpro_data_input_check_form
- **Backend tables:** NMIS_CONTRACT_ITEMS
- **Subforms:** Form.Hide_Activity_Posting, Form.Huksy_lpro_xfer_hlift_table2 subform, Form.Ft_To_Lift
- **Opens:** Report:Husky_Lpro_Daily_Dump_Report, Report:LOTS_LIFTED_DAILY_CONTRACT, Report:Lift_Location_Worksheet
- **Form events with code:** Close, Open

**Controls**
- Subform Hide_Activity_Posting subform `Form.Hide_Activity_Posting` (master  → child )
- Subform **Huksy_lpro_xfer_hlift_table subform subform `Form.Huksy_lpro_xfer_hlift_table2 subform` (master  → child )
- CommandButton Preview Daily Dump Report "Click to Preview Daily Dump Report" · events: Click
- CommandButton Process_Data_Into_NMIS "Click to Process Data into NMIS" · events: Click
- Subform Ft_To_Lift subform `Form.Ft_To_Lift` (master  → child )
- CheckBox Processing_Done · default `False`
- TextBox Date_Default · default `Date()`
- ComboBox Contract_Item_Default · rows: `SELECT NMIS_CONTRACT_ITEMS.CONTRACT_ITEM, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC FROM NMIS_CONTRACT_ITEMS WHERE (((NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC) Like "*Lift*" Or (NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC) Like "*Field Destroy*" Or (NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC) Like "*force*" Or (NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC) Like "*Surplus*") And ((NMIS_CONTRACT_ITEMS.FISCAL_YEAR)=Form`
- ComboBox Field_Container_Default · rows: `T;Tub;M;Bin;S;Destroy;X;XFERTO` · default `"T"`
- CheckBox Auto_Insert_All_Ft · default `True`
- CommandButton Lift_Location_Worksheet "Click for Lifting Worksheet Blank" · events: Click
- CommandButton CmdLftDailyContr "Lift Contract Daily Diary Lot List..." · events: Click

## Form: HUSKY_PATHNAMES
- **Caption:** Husky Pathnames
- **Menu path:** Switchboard › HUSKY_PATHNAMES
- **Record source:** HUSKY
- **Backend tables:** HUSKY
- **Migration:** 0 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox HCOM_PATHNAME "HCOM Directory:" = `HCOM_PATHNAME`
- TextBox DATA_PATHNAME "Data Directory:" = `DATA_PATHNAME`

## Form: Lifting_Locations_Form
- **Caption:** Lifting Locations
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Locations_Form
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_LOCATIONS, NMIS_SPECIES
- **Opens:** Form:Lifting_Priorties, Report:Field_Location_Index, Report:TOLIFT, Report:TOLIFT_Condensed, Report:TOLIFT_Condensed2, Report:TOLIFT_Condensed2_Sum, Report:TOLIFT_Condensed3, Report:TOLIFT_Condensed_By_Major_Client, Report:TOLIFT_Condensed_by_major_client_Field_Form, Report:TOLIFT_Condensed_by_major_client_w_Detail, Report:TOLIFT_Holdover, Report:TOLIFT_Lift_Priorities_at, Report:TOLIFT_Remaining, Report:TOLIFT_Remaining_w_notes, Report:TOLIFT_by_age_class_species
- **Opened from:** Form_Lifting_Priorties_Data_Subform, Form_Reports_Menu_Processing Subform

**Controls**
- CommandButton Preview_Lift_Locations_w_Detail " Lift Locations  with Detail" · events: Click
- CommandButton Preview_Lift_Locations_wo_Detail1 " Lift Locations without Detail" · events: Click
- ComboBox Like_Age_Class "Age Class Like:" · rows: `SELECT Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class.Age_Class_String FROM Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class INNER JOIN NMIS_AGREEMENT_LOTS ON Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class.CN = NMIS_AGREEMENT_LOTS.CN WHERE (((NMIS_AGREEMENT_LOTS.CATEGORY_CODE) Like "br*") AND ((Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class.NUMBER_OF_FY_MIN) Is No` · default `"*"`
- ComboBox Like_Plntmstr_Symbol "Species Like:" · rows: `SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACULAR, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name FROM NMIS_SPECIES INNER JOIN NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query ON NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL ORDER BY NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name;` · default `"*"`
- ComboBox Begin_Location "Begin Location:" · rows: `SELECT NMIS_LOCATIONS.LOCATION FROM NMIS_LOCATIONS WHERE (((NMIS_LOCATIONS.LOCATION_TYPE)="field")) ORDER BY NMIS_LOCATIONS.LOCATION;` · default `"*"`
- ComboBox End_Location "End Location:" · rows: `SELECT NMIS_LOCATIONS.LOCATION FROM NMIS_LOCATIONS WHERE (((NMIS_LOCATIONS.LOCATION_TYPE)="field")) ORDER BY NMIS_LOCATIONS.LOCATION DESC;` · default `"*"`
- TextBox Order_Mod_Date "Order Mod Date Later Than:" · default `="10/01/" & Right$(([Forms]![Switchboard]![FY_For_Reports]-1),2)`
- CommandButton Preview_Lift_Locations_wo_Detail2 " Lift Locations by Stock Type and Species" · events: Click
- CommandButton Preview_Lift_Locations_Spreadsheet "Lifting Priority Report..." · events: Click
- CommandButton Preview_Lift_Locations_By_Age_Class_w_Detail " Lift Locations by Stock Type  with Detail" · events: Click
- CommandButton Preview_Lift_Locations_by_Age_Class_wo_Detail1 " Lift Locations by Stock Type without Detail" · events: Click
- TextBox Like_Associate "Client Like:" · default `"*"`
- CommandButton Command28 " Lift Locations with Stock Type" · events: Click
- CommandButton Preview_Lift_Locations_wo_Detail2_By_Major_Client " Lift Locations with Stock Type with Detail" · events: Click
- CommandButton Preview_Lift_Locations_By_Age_Class_Remaining "  Left to Lift by Stock Type without  Detail" · events: Click
- CommandButton Preview_Lift_Locations_By_Age_Class_Remaining_w_notes " Left to Lift by Stock Type with Detail" · events: Click
- CommandButton Preview_Lift_Locations_wo_Detail2_sum " Lift Summary by Stock Type and Species" · events: Click
- CommandButton Lift_Locations_Field_Form_By_Client " Lift Locations Field Form" · events: Click
- CommandButton Preview_Lift_Locations_Hold_w_Detail "Holdover Lots  with Detail" · events: Click

## Form: Lifting_Priority_Comments subform
- **Caption:** Lifting_Priority_Comments subform
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Lifting_Priority_Comments subform
- **Record source:** SELECT Lifting_Priority_Comments.Priority, Lifting_Priority_Comments.Comment FROM Lifting_Priority_Comments ORDER BY Lifting_Priority_Comments.Priority;
- **Backend tables:** Lifting_Priority_Comments
- **Migration:** 0 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox Priority = `Priority`
- TextBox Comment = `Comment`

## Form: Lifting_Priorties
- **Caption:** Lifting_Priorties
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties
- **Backend tables:** Lifting_Priorties, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_CONTACTS, NMIS_ORDERS, NMIS_SPECIES
- **Subforms:** Form.Lifting_Priorties_Data_Subform, Form.Lifting_Priority_Comments subform
- **Opens:** Form:xPlease_Be_Patient_First_Report_Message, Report:Lifting_Priorities, Report:Lifting_Priorities_Checklist, Report:Lifting_Priorities_Precooler, Report:Lifting_Priorties_Specs, Report:Lifting_priorities_detailed, Report:Processing_Client_Heads_Up, Report:TOLIFT_Lift_Priorities_Reset_Priorities_to_99
- **Opened from:** Form_Lifting_Locations_Form, Form_Lifting_Priorty_Table_Rebuild_Form, Form_Reports_Menu_Processing Subform
- **Form events with code:** Open

**Controls**
- TextBox Sort_By "Sorted By:" · default `"Location"` · events: Click  [FormHeader]
- CommandButton Tip_on_Sorting "Tip" · events: Click  [FormHeader]
- ComboBox Select_For_Stock_Type "Stock Type:" · rows: `SELECT Lifting_Priorties.[Age Class] FROM Lifting_Priorties WHERE (((Lifting_Priorties.Species) Like IIf(IsNull([Forms]![Lifting_Priorties]![Select_For_Species]),"*",[Forms]![Lifting_Priorties]![Select_For_Species]))) GROUP BY Lifting_Priorties.[Age Class] ORDER BY Lifting_Priorties.[Age Class];` · events: AfterUpdate, Enter  [FormHeader]
- ComboBox Select_For_Species "Species:" · rows: `SELECT Lifting_Priorties.Species, NMIS_SPECIES.VERNACULAR FROM Lifting_Priorties INNER JOIN NMIS_SPECIES ON Lifting_Priorties.Species = NMIS_SPECIES.PLNTMSTR_SYMBOL WHERE (((Lifting_Priorties.[Age Class]) Like IIf(IsNull([Forms]![Lifting_Priorties]![Select_For_Stock_Type]),"*",[Forms]![Lifting_Priorties]![Select_For_Stock_Type]))) GROUP BY Lifting_Priorties.Species, NMIS_SPECIES.VERNACULAR ORDER B` · events: AfterUpdate, Enter  [FormHeader]
- ComboBox Select_For_Lot_ID "Lot ID:" · rows: `SELECT Lifting_Priorties.[Lot ID] FROM Lifting_Priorties GROUP BY Lifting_Priorties.[Lot ID] ORDER BY Lifting_Priorties.[Lot ID];` · events: AfterUpdate, Enter  [FormHeader]
- TextBox Select_Like_Location "Like Loc:" · default `"*"` · events: AfterUpdate, Enter  [FormHeader]
- CommandButton View_All "View All" · events: Click  [FormHeader]
- CheckBox Hide_zero_tolift "Hide 0 to lift" · default `True` · events: AfterUpdate  [FormHeader]
- TabControl TabCtl51
- Subform Lifting_Priorties_Subform subform `Form.Lifting_Priorties_Data_Subform` (master  → child ) · events: Enter
- TextBox Min_Priority "Show Priorities" · default `1` · tab Reports · events: DblClick, Enter, GotFocus
- TextBox Max_Priority · default `98` · tab Reports · events: DblClick
- CommandButton Preview_Lifting_Priority_Report " Lifting Priority Report" · tab Reports · events: Click
- CommandButton Command50 "Detailed Lifting Priority Report" · tab Reports · events: Click
- ComboBox HeadsUp_Contact_CN "Heads Up contact:" · rows: `SELECT NMIS_CONTACTS.CN, [Last_Name] & IIf(Not IsNull([first_name]),", " & [first_name],"") AS Contact, NMIS_CONTACTS.HISTORICAL FROM NMIS_CONTACTS WHERE (((NMIS_CONTACTS.HISTORICAL)=False) AND ((NMIS_CONTACTS.HOME_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code])) ORDER BY [Last_Name] & IIf(Not IsNull([first_name]),", " & [first_name],"");` · tab Reports
- CommandButton Client_Heads_Up "Client "Heads Up"" · tab Reports · events: Click
- CommandButton Command59 " Lifting Priority Checklist" · tab Reports · events: Click
- CheckBox Include_0_ft "Include 0 ft" · default `False` · tab Reports
- ComboBox Like_Client "Like Client:" · rows: `SELECT NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_CONTACTS AS NMIS_CONTACTS_1 RIGHT JOIN (NMIS_CONTACTS RIGHT JOIN ((NMIS_ASSOCIATES INNER JOIN NMIS_ORDERS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_ORDERS.CLIENT_ASSOCIATE) INNER JOIN (NMIS_AGREEMENT_LOTS INNER JOIN Lifting_Priorties ON NMIS_AGREEMENT_LOTS.ID = Lifting_Priorties.[Lot ID]) ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS` · default `"*"` · tab Reports
- CommandButton Preview_Lifting_Priority_Precooler_Report "Lifting Priority Report - Precooler" · tab Reports · events: Click
- TextBox Comments "Rreport Comments:" · tab Reports
- Subform Lifting_Priority_Comments subform "Lifting Priority Comments:" subform `Form.Lifting_Priority_Comments subform` (master  → child ) · tab Reports
- TextBox Report_Date "Report Date:" · default `Date()` · tab Reports
- CheckBox Data_Processed "No Location Changes" · default `True` · tab Reports

## Form: Lifting_Priorties_Data_Subform
- **Caption:** Lifting_Priorties
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Lifting_Priorties_Data_Subform
- **Record source:** SELECT Lifting_Priorties.*, IIf([Forms]![Lifting_Priorties]![Sort_By]="Location",[LOCATION],IIf([Forms]![Lifting_Priorties]![Sort_By]="Priority",Val([PRIORITY]),IIf([Forms]![Lifting_Priorties]![Sort_By]="Lot ID",[Lot ID],IIf([Forms]![Lifting_Priorties]![Sort_By]="Species",[Species],IIf([Forms]![Lifting_Priorties]![Sort_By]="Stock Type",[Age Class] & [Species],[LOCATION]))))) AS Sort_By, IIf(([Forms]![Lifting_Priorties]![Hide_zero_tolift] And [Feet To Lift]=0),"yes","no") AS hide_zero_ft_tolift FROM Lifting_Priorties WHERE (((IIf(([Forms]![Lifting_Priorties]![Hide_zero_tolift] And [Feet To Lift]=0),"yes","no"))="No") AND ((Lifting_Priorties.Location) Like [Forms]![Lifting_Priorties]![Select_Like_Location] & "*") AND ((Lifting_Priorties.[Lot ID]) Like IIf(IsNull([Forms]![Lifting_Priorties]![Select_For_lot_ID]),"*",[Forms]![Lifting_Priorties]![Select_For_Lot_ID] & "*")) AND ((Lifting_Priorties.Species) Like IIf(IsNull([Forms]![Lifting_Priorties]![Select_For_Species]),"*",[Forms]![Lifting_Priorties]![Select_For_Species])) AND ((Lifting_Priorties.[Age Class]) Like IIf(IsNull([Forms]![Lifting_Priorties]![Select_For_Stock_Type]),"*",[Forms]![Lifting_Priorties]![Select_For_Stock_Type]))) ORDER BY IIf([Forms]![Lifting_Priorties]![Sort_By]="Location",[LOCATION],IIf([Forms]![Lifting_Priorties]![Sort_By]="Priority",Val([PRIORITY]),IIf([Forms]![Lifting_Priorties]![Sort_By]="Lot ID",[Lot ID],IIf([Forms]![Lifting_Priorties]![Sort_By]="Species",[Species],IIf([Forms]![Lifting_Priorties]![Sort_By]="Stock Type",[Age Class] & [Species],[LOCATION]))))), Lifting_Priorties.Location, Lifting_Priorties.BED_SORT_ORDER, Lifting_Priorties.Added;
- **Backend tables:** Lifting_Priorties
- **Opens:** Form:Lifting_Locations_Form, Form:Lifting_Priorty_Table_Rebuild_Form, Report:Lifting_Priorities, Report:Lifting_Priorties_Specs, Report:Processing_Client_Heads_Up, Report:TOLIFT_BY_PRIORITY, Report:TOLIFT_Lift_Priorities_Reset_Priorities_to_99
- **Migration:** 0 of 14 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox Location_Backup  [FormHeader]
- TextBox Location = `Location` · events: DblClick, Enter, Exit
- TextBox Lot ID = `Lot ID` · events: Enter
- TextBox Species/Age Class = `Species`
- TextBox Feet To Lift = `Feet To Lift` · events: DblClick, Exit
- TextBox Ft Note = `Ft Note`
- TextBox Net Order = `Net Order` · events: DblClick
- TextBox Net Note = `Net Note` · events: DblClick
- TextBox Lot Length = `Lot Length` · events: DblClick, Enter, Exit
- TextBox Net Inv = `Net Inv` · events: DblClick, Enter
- TextBox Priority = `Priority` · events: Change, DblClick, Exit
- TextBox Age Class = `Age Class` · events: DblClick, Enter
- TextBox LIFTED = `LIFTED` · events: DblClick, Enter
- CheckBox Partial_Lift = `Partial_Lift`
- CommandButton Open_Specs "s" · events: Click
- CheckBox Added "Added" = `Added`
- CommandButton Reset_Priorities "Reset to 99..." · events: Click  [FormFooter]
- CommandButton Delete_Lifted_Lots "Update..." · events: Click  [FormFooter]
- CommandButton Rebuild_Lifting_Priority_Table "Rebuild..." · events: Click  [FormFooter]

## Form: Lifting_Priorty_Table_Rebuild_Form
- **Caption:** Lifting Priorities Rebuild
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Lifting_Priorties_Data_Subform › Lifting_Priorty_Table_Rebuild_Form
- **Opens:** Form:Lifting_Priorties
- **Opened from:** Form_Lifting_Priorties_Data_Subform

**Controls**
- CommandButton Rebuild_Lift_Priorities_Table "Click to Rebuild Lifting Priorities..." · events: Click

## Form: Lot_ID_Input_Form
- **Caption:** Lot_ID_Input_Form
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › Lot_ID_Input_Form
- **Opens:** Report:Seedbox_Labels
- **Opened from:** Form_NMIS_SOURCE_LOTS, Form_NMIS_SOURCE_LOTS2, Form_NMIS_SOURCE_LOTS_INPUT, Form_NMIS_SOURCE_LOTS_bu

**Controls**
- TextBox ID "Enter Lot ID" · default `=[Forms]![NMIS_SOURCE_LOTS]![ID]`
- CommandButton preview Seedbox Label "Preview Seed Box Label" · events: Click
- CommandButton Print Seedbox Label "Print 1 Seed Box Label" · events: Click

## Form: Lot_ID_Input_Form2
- **Caption:** Seed Box Input
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › Lot_ID_Input_Form2
- **Backend tables:** NMIS_ASSOCIATES, NMIS_SOURCE_LOTS, NMIS_SOURCE_SUBLOT_INDEX
- **Opens:** Report:Seedbox_Labels, Report:seedbox_labels_050357s
- **Opened from:** Form_NMIS_SOURCE_LOTS, Form_NMIS_SOURCE_LOTS_INPUT, Form_Reports_Menu_Source Subform, Form_Seed_Shipping_Ticket Subform

**Controls**
- CommandButton Print Seedbox Label "Print Seed Box Labels" · events: Click
- CommandButton Preview/Print Box Labels "Preview Seed Box Labels"
- ComboBox ID "Enter Lot ID" · rows: `SELECT NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS ORDER BY NMIS_SOURCE_LOTS.ID;`
- TextBox Loction "Storage Location:"
- TextBox Full_Box_Weight "Full Box Weight:"
- ComboBox Label_Style "Label Style:" · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.ASSOCIATE)="061019" Or (NMIS_ASSOCIATES.ASSOCIATE)="050357")) ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;` · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]`
- TextBox Odd_Weight "Odd Weight:"
- ComboBox First_Full_Box_Sublot "First Full Box #:" · rows: `SELECT NMIS_SOURCE_SUBLOT_INDEX.INDEX AS [Box #], NMIS_SOURCE_SUBLOT_INDEX.SUBLOT AS [Box ID] FROM NMIS_SOURCE_SUBLOT_INDEX ORDER BY NMIS_SOURCE_SUBLOT_INDEX.INDEX;` · default `1`
- ComboBox Last_Full_Box_Sublot "Last Full Box #:" · rows: `SELECT NMIS_SOURCE_SUBLOT_INDEX.INDEX AS [Box #], NMIS_SOURCE_SUBLOT_INDEX.SUBLOT AS [Box ID] FROM NMIS_SOURCE_SUBLOT_INDEX ORDER BY NMIS_SOURCE_SUBLOT_INDEX.INDEX;` · default `1`
- ComboBox Odd_Box_Sublot_ID "Odd Box #:" · rows: `SELECT NMIS_SOURCE_SUBLOT_INDEX.INDEX AS [Box #], NMIS_SOURCE_SUBLOT_INDEX.SUBLOT AS [Box ID] FROM NMIS_SOURCE_SUBLOT_INDEX ORDER BY NMIS_SOURCE_SUBLOT_INDEX.INDEX;` · events: Enter

## Form: Lot_ID_Input_Form2b
- **Caption:** Seed Box Input
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › Lot_ID_Input_Form2b
- **Backend tables:** NMIS_SOURCE_LOTS
- **Opens:** Report:Seedbox_Labels, Report:Seedbox_Mini_Labels
- **Opened from:** Form_NMIS_SOURCE_LOTS, Form_NMIS_SOURCE_LOTS_bu

**Controls**
- CommandButton Print Seedbox Label "Print 1 Seed Box Label" · events: Click
- CommandButton Preview/Print Box Labels "Preview/Print Labels"
- ComboBox ID1 "Enter Lot ID 1" · rows: `SELECT NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS;` · default `=[Forms]![NMIS_SOURCE_LOTS]![ID]`
- ComboBox ID2 "Enter Lot ID 2" · rows: `SELECT NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS;`

## Form: Lot_ID_Input_Form2c
- **Caption:** Seed Box Input
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › Lot_ID_Input_Form2c
- **Backend tables:** NMIS_SOURCE_LOTS
- **Opens:** Report:Seedbox_Labels, Report:Seedbox_Mini_Labels
- **Opened from:** Form_NMIS_SOURCE_LOTS_INPUT, Form_Seed_Shipping_Ticket Subform

**Controls**
- CommandButton Print Seedbox Label "Print 1 Seed Box Label" · events: Click
- CommandButton Preview/Print Box Labels "Preview/Print Labels"
- ComboBox ID1 "Enter Lot ID 1" · rows: `SELECT NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS ORDER BY NMIS_SOURCE_LOTS.ID;`
- ComboBox ID2 "Enter Lot ID 2" · rows: `SELECT NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS ORDER BY NMIS_SOURCE_LOTS.ID;`

## Form: Lot_ID_Input_Form2d
- **Caption:** Seed Box Input
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Source Subform › Lot_ID_Input_Form2d
- **Backend tables:** NMIS_SOURCE_LOTS
- **Opens:** Report:Seedbox_Labels, Report:Seedbox_Mini_Labels
- **Opened from:** Form_Reports_Menu_Source Subform

**Controls**
- CommandButton Print Seedbox Label "Print 1 Seed Box Label" · events: Click
- CommandButton Preview/Print Box Labels "Preview/Print Labels"
- ComboBox ID1 "Enter Lot ID 1" · rows: `SELECT NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS;`
- ComboBox ID2 "Enter Lot ID 2" · rows: `SELECT NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS;`

## Form: Lot_ID_Input_Form2e
- **Caption:** Seed Box Input
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Source Subform › Lot_ID_Input_Form2e
- **Backend tables:** NMIS_SOURCE_LOTS, NMIS_SOURCE_SUBLOT_INDEX
- **Opens:** Report:seedbox_labels_0503572e
- **Opened from:** Form_Reports_Menu_Source Subform

**Controls**
- CommandButton Print Seedbox Label "Print 1 Seed Box Label" · events: Click
- CommandButton Preview/Print Box Labels "Preview/Print Labels"
- ComboBox ID1 "Enter Lot ID 1" · rows: `SELECT NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS ORDER BY NMIS_SOURCE_LOTS.ID;`
- ComboBox ID2 "Enter Lot ID 2" · rows: `SELECT NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS ORDER BY NMIS_SOURCE_LOTS.ID;`
- TextBox Loction1 "Storage Location:"
- TextBox Loction2 "Storage Location:" · events: DblClick
- ComboBox Sublot1 "Box #:" · rows: `SELECT NMIS_SOURCE_SUBLOT_INDEX.INDEX AS [Box #], NMIS_SOURCE_SUBLOT_INDEX.SUBLOT AS [Box ID] FROM NMIS_SOURCE_SUBLOT_INDEX ORDER BY NMIS_SOURCE_SUBLOT_INDEX.INDEX;` · default `1`
- ComboBox Sublot2 "Box #:" · rows: `SELECT NMIS_SOURCE_SUBLOT_INDEX.INDEX AS [Box #], NMIS_SOURCE_SUBLOT_INDEX.SUBLOT AS [Box ID] FROM NMIS_SOURCE_SUBLOT_INDEX ORDER BY NMIS_SOURCE_SUBLOT_INDEX.INDEX;` · default `1`
- TextBox Box_Weight1 "Box Weight:"
- TextBox Box_Weight2 "Box Weight:"

## Form: Native_Seed_Harvest_Summary
- **Caption:** Propagule Harvest Summary
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Native_Seed_Harvest_Summary
- **Backend tables:** NMIS_AGREEMENTS, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES
- **Opens:** Report:Native_Seed_Harvest_Summary, Report:Native_Seed_Harvest_Summary2, Report:Native_Seed_Harvest_Summary_By_species2, Report:Native_Seed_Harvest_by_Species_Summary
- **Opened from:** Form_Reports_Menu_Processing Subform

**Controls**
- ComboBox Client Select "Like Client:" · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM (NMIS_ASSOCIATES INNER JOIN (NMIS_AGREEMENTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_AGREEMENTS.AGREEMENT_LOT_CN=NMIS_AGREEMENT_LOTS.CN) ON (NMIS_ASSOCIATES.ASSOCIATE=NMIS_AGREEMENTS.CLIENT_ASSOCIATE) AND (NMIS_ASSOCIATES.ASSOCIATE=NMIS_AGREEMENTS.CLIENT_ASSOCIATE)) INNER JOIN Species_Product_End_Prod_Group_and_Desc ON NMIS_AGREE` · default `"*"`
- CommandButton Preview Yield Summary By Client Report "Click to Preview Report " · events: Click
- TextBox Year "FY:" · default `=[Forms]![Switchboard]![FY_For_Reports]`
- CommandButton Preview Yield Summary By Client Report with Totals "Click to Preview Report with Species Totals" · events: Click
- CommandButton Preview Yield Summary By Species Report "Click to Preview Report " · events: Click
- CommandButton Preview Yield Summary By Species Report with Totals "Click to Preview Report with Totals" · events: Click
- ComboBox Like_Plntmstr_Symbol "Like Species:" · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM (NMIS_ASSOCIATES INNER JOIN (NMIS_AGREEMENTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_AGREEMENTS.AGREEMENT_LOT_CN=NMIS_AGREEMENT_LOTS.CN) ON (NMIS_ASSOCIATES.ASSOCIATE=NMIS_AGREEMENTS.CLIENT_ASSOCIATE) AND (NMIS_ASSOCIATES.ASSOCIATE=NMIS_AGREEMENTS.CLIENT_ASSOCIATE)) INNER JOIN Species_Product_End_Prod_Group_and_Desc ON NMIS_AGREE` · default `"*"`

## Form: NMIS_ACCESS_SET_USER_NURSERY
- **Caption:** NMIS_ACCESS_USER_NURSERY
- **Menu path:** Switchboard › NMIS_ACCESS_SET_USER_NURSERY
- **Record source:** NMIS_ACCESS_USER_NURSERY
- **Backend tables:** NMIS_ACCESS_USER_NURSERY
- **Migration:** 0 of 10 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox User_Nursery = `User_Nursery`
- TextBox User_Nursery_Code = `User_Nursery_Code`
- CheckBox Set_As_User = `Set_As_User` · default `False`
- TextBox Field_Index_Increment_Default = `Field_Index_Increment_Default`
- TextBox Nursery_Owned_Code = `Nursery_Owned_Code`
- TextBox Text29 = `Nursery_Associate_Code`
- TextBox Default1D = `Default1D`
- TextBox Default1N = `Default3N`
- TextBox Default2N = `Default2N`
- TextBox Default4 = `Default1N`

## Form: NMIS_ACCESS_USER_NURSERY subform
- **Caption:** NMIS_ACCESS_SET_USER_NURSERY subform
- **Menu path:** Switchboard › NMIS_ACCESS_USER_NURSERY subform
- **Record source:** SELECT NMIS_ACCESS_USER_NURSERY.User_Nursery, NMIS_ACCESS_USER_NURSERY.User_Nursery_Code, NMIS_ACCESS_USER_NURSERY.Set_As_User, NMIS_ACCESS_USER_NURSERY.Nursery_Associate_Code, NMIS_ACCESS_USER_NURSERY.ID_Offset, NMIS_ACCESS_USER_NURSERY.Field_Index_Increment_Default, NMIS_ACCESS_USER_NURSERY.Default1, NMIS_ACCESS_USER_NURSERY.Default2, NMIS_ACCESS_USER_NURSERY.Default3, NMIS_ACCESS_USER_NURSERY.Default4, NMIS_ACCESS_USER_NURSERY.Nursery_Owned_Code, IIf([Nursery_Associate_Code]="050357","cm",IIf([Nursery_Associate_Code]="010410","IN",IIf([Nursery_Associate_Code]="040207","in",IIf([Nursery_Associate_Code]="061019","I","")))) AS Default_Ht_Spec_Unit, NMIS_ACCESS_USER_NURSERY.Default4N FROM NMIS_ACCESS_USER_NURSERY WHERE (((NMIS_ACCESS_USER_NURSERY.Set_As_User)=Yes));
- **Backend tables:** NMIS_ACCESS_USER_NURSERY
- **Migration:** 0 of 12 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox User_Nursery_Code = `User_Nursery_Code`
- TextBox Nursery_Associate_Code = `Nursery_Associate_Code`
- TextBox User_Nursery = `User_Nursery`
- TextBox Field_Index_Increment_Default = `Field_Index_Increment_Default`
- TextBox Default1 = `Default1`
- TextBox Default2 = `Default2`
- TextBox Default3 = `Default3`
- TextBox Default4 = `Default4`
- TextBox Nursery_Owned_Code = `Nursery_Owned_Code`
- TextBox Default_Ht_Spec_Unit = `Default_Ht_Spec_Unit`
- TextBox ID_Offset = `ID_Offset`
- TextBox Default4N = `Default4N`

## Form: NMIS_ACCESS_USER_NURSERY subform1
- **Caption:** NMIS_ACCESS_USER_NURSERY subform1
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_ACCESS_USER_NURSERY subform1
- **Record source:** SELECT NMIS_ACCESS_USER_NURSERY.Default1N, NMIS_ACCESS_USER_NURSERY.Default2N, NMIS_ACCESS_USER_NURSERY.Default1D, NMIS_ACCESS_USER_NURSERY.Default3N, NMIS_ACCESS_USER_NURSERY.Default4N, NMIS_ACCESS_USER_NURSERY.Default5N, NMIS_ACCESS_USER_NURSERY.Default6N FROM NMIS_ACCESS_USER_NURSERY WHERE (((NMIS_ACCESS_USER_NURSERY.Set_As_User)=True));
- **Backend tables:** NMIS_ACCESS_USER_NURSERY
- **Migration:** 0 of 7 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox cooler "cooler" = `Default1N`
- TextBox freezer "freezer" = `Default2N`
- TextBox storge_date "store date" = `Default1D`
- TextBox Min_Lot_Wt "Min Lot Wt" = `Default3N`
- TextBox Default4N "seed ft/ac" = `Default4N`
- TextBox Client_min_bill_amt "Min Bill $" = `Default5N`
- TextBox Text13 "Labels/Box" = `Default6N`

## Form: NMIS_ACCESS_VERSION subform
- **Caption:** NMIS_ACCESS_VERSION subform
- **Menu path:** Switchboard › NMIS_ACCESS_VERSION subform
- **Record source:** NMIS_ACCESS_VERSION_HISTORY_TABLE Query
- **Migration:** 0 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox VERSION = `MaxOfVERSION`
- TextBox MaxOfDATE = `MaxOfDATE`

## Form: NMIS_ACCESS_VERSION_TABLE
- **Caption:** NMIS_2000_VERSION_TABLE
- **Menu path:** Switchboard › NMIS_ACCESS_VERSION_TABLE
- **Record source:** NMIS_ACCESS_VERSION_TABLE
- **Order by:** NMIS_ACCESS_VERSION_TABLE.DATE
- **Migration:** 0 of 3 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox VERSION "VERSION:" = `VERSION`
- TextBox DATE "DATE:" = `DATE` · default `Date()`
- TextBox COMMENTS "COMMENTS:" = `COMMENTS`

## Form: NMIS_ACTIVITY_CHARGES
- **Caption:** NMIS ACTIVITY CHARGES
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_ACTIVITY_CHARGES
- **Record source:** SELECT NMIS_ACTIVITY_CHARGES.* FROM NMIS_ACTIVITY_CHARGES WHERE (((NMIS_ACTIVITY_CHARGES.FISCAL_YEAR) Like Nz([Forms]![NMIS_ACTIVITY_CHARGES]![View_FY],"*")) AND ((IIf([CHARGE_PER_ACTIVITY]=0,-1,0)) Like IIf([Forms]![NMIS_ACTIVITY_CHARGES]![Hide_0_Charges]=-1,0,"*"))) ORDER BY NMIS_ACTIVITY_CHARGES.FISCAL_YEAR DESC , NMIS_ACTIVITY_CHARGES.CATEGORY_CODE DESC , NMIS_ACTIVITY_CHARGES.ACTIVITY_CODE;
- **Backend tables:** NMIS_ACTIVITY_CHARGES, NMIS_ACTIVITY_CODES, NMIS_CATEGORIES, NMIS_FISCAL_YEARS, NMIS_UNITS
- **Opened from:** Form_Lookup_Tables_Menu Subform, Form_xLookup_Tables_Menu
- **Form events with code:** Open
- **Migration:** 0 of 9 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox View_FY · default `=[Forms]![Switchboard]![FY_For_Reports]` · events: DblClick  [FormHeader]
- CheckBox Hide_0_Charges "Hide Chg/Act = $0.00:" · default `False` · events: Click  [FormHeader]
- TextBox MGMT_CODE = `MGMT_CODE` · default `806415`
- TextBox CHARGE_PER_UNIT = `CHARGE_PER_UNIT`
- TextBox CHARGE_PER_AMT = `CHARGE_PER_AMT`
- TextBox CHARGE_PER_HOUR = `CHARGE_PER_HOUR`
- TextBox CHARGE_PER_ACTIVITY = `CHARGE_PER_ACTIVITY`
- ComboBox ACTIVITY_CODE = `ACTIVITY_CODE` · rows: `SELECT [NMIS_ACTIVITY_CODES].[ACTIVITY_CODE], [NMIS_ACTIVITY_CODES].[ACTIVITY_NAME] FROM NMIS_ACTIVITY_CODES;`
- ComboBox UNIT_CODE = `UNIT_CODE` · rows: `SELECT [NMIS_UNITS].[UNIT_CODE], [NMIS_UNITS].[UNIT_DESC], [NMIS_UNITS].[UNIT_TYPE] FROM NMIS_UNITS;`
- ComboBox FISCAL_YEAR = `FISCAL_YEAR` · rows: `SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![Switchboard]![FY_For_Reports]`
- ComboBox CATEGORY_CODE = `CATEGORY_CODE` · rows: `SELECT [NMIS_CATEGORIES].[CATEGORY_CODE], [NMIS_CATEGORIES].[CATEGORY_DESC] FROM NMIS_CATEGORIES;`

## Form: NMIS_ACTIVITY_CHARGES_ROLL_OVER
- **Menu path:** Switchboard › Rollover_Charges_module.Rollover_Activity_Charges › NMIS_ACTIVITY_CHARGES_ROLL_OVER
- **Record source:** NMIS_ACTIVITY_CHARGES_ROLLED_OVER
- **Opened from:** Rollover_Charges_module
- **Migration:** 0 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox MaxOfFISCAL_YEAR "MaxOfFISCAL_YEAR:" = `MaxOfFISCAL_YEAR`
- TextBox Activity_Charges_Current "Activity_Charges_Current:" = `Activity_Charges_Current`

## Form: NMIS_ACTIVITY_CODES
- **Caption:** NMIS ACTIVITY CODES
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_ACTIVITY_CODES
- **Record source:** NMIS_ACTIVITY_CODES
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_ACTIVITY_CODE_PARENT_ACTIVITY_SORT_ORDER, NMIS_CONTRACT_ITEMS
- **Opens:** Form:NMIS_ACTIVITY_CODES_LIST
- **Opened from:** Form_Contract_Payment_Estimate_Invoice subform2, Form_Lookup_Tables_Menu Subform, Form_NMIS_ID_ACTIVITIES Subform, Form_NMIS_ID_ACTIVITIES2 Subform, Form_NMIS_ID_ACTIVITIES_NEW_LOTS Subform, Form_Seed_Ship_Ticket_ID_ACTIVITIES subform, Form_Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform, Form_xLookup_Tables_Menu
- **Form events with code:** Open
- **Migration:** 0 of 9 bound fields mapped. Main GrowHub screens: none

**Controls**
- ComboBox ACTIVITY_CODE_Lookup · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, IIf(Not IsNull([NMIS_ACTIVITY_CODES].[PARENT_ACTIVITY_CODE]),"(" & [NMIS_ACTIVITY_CODES_1].[ACTIVITY_CODE] & ") " & [NMIS_ACTIVITY_CODES_1].[ACTIVITY_NAME]) AS [Parent Activity] FROM (NMIS_ACTIVITY_CODES LEFT JOIN NMIS_ACTIVITY_CODE_PARENT_ACTIVITY_SORT_ORDER ON NMIS_ACTIVITY_CODES.PA` · events: AfterUpdate, Enter  [FormHeader]
- ComboBox Select_For_Parent_Activity "Parent Activity:" · rows: `SELECT NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE, NMIS_ACTIVITY_CODES_1.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES AS NMIS_ACTIVITY_CODES_1 INNER JOIN NMIS_ACTIVITY_CODES ON NMIS_ACTIVITY_CODES_1.ACTIVITY_CODE = NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE GROUP BY NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE, NMIS_ACTIVITY_CODES_1.ACTIVITY_NAME ORDER BY NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE;` · events: AfterUpdate  [FormHeader]
- CommandButton View_All "All" · events: Click  [FormHeader]
- ComboBox ACTIVITY_NAME_Lookup · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, IIf(Not IsNull([NMIS_ACTIVITY_CODES].[PARENT_ACTIVITY_CODE]),"(" & [NMIS_ACTIVITY_CODES_1].[ACTIVITY_CODE] & ") " & [NMIS_ACTIVITY_CODES_1].[ACTIVITY_NAME]) AS [Parent Activity] FROM (NMIS_ACTIVITY_CODES LEFT JOIN NMIS_ACTIVITY_CODE_PARENT_ACTIVITY_S` · events: AfterUpdate, Enter  [FormHeader]
- TextBox ACTIVITY_CODE "Activity Code:" = `ACTIVITY_CODE` · events: DblClick, Enter
- TextBox ACTIVITY_NAME "Activity Name:" = `ACTIVITY_NAME`
- CheckBox BILL_ORDER "Bill Order:" = `BILL_ORDER`
- ComboBox BALANCE_EFFECT "Balance Effect:" = `BALANCE_EFFECT` · rows: `"NOEFFECT";"REMOVE";"ADD";"ADJUST";"XFER"`
- TextBox ACTIVITY_CODE_NO "Activity Code #:" = `ACTIVITY_CODE_NO`
- TextBox NOTE "Note:" = `NOTE`
- TextBox PROPERTIES_MODULE "Properties Module:" = `PROPERTIES_MODULE`
- TextBox PARENT_ACTIVITY_CODE "Parent Activity Code:" = `PARENT_ACTIVITY_CODE`
- CommandButton Open Activity Codes List "View as List" · events: Click
- ComboBox DEFAULT_CONTRACT_ITEM "Default Contract Item:" = `DEFAULT_CONTRACT_ITEM` · rows: `SELECT NMIS_CONTRACT_ITEMS.CONTRACT_ITEM, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC FROM NMIS_CONTRACT_ITEMS;`
- CommandButton Goto_New_Record "Add New Activity" · events: Click

## Form: NMIS_ACTIVITY_CODES_LIST
- **Caption:** NMIS Activity Code List
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_ACTIVITY_CODES › NMIS_ACTIVITY_CODES_LIST
- **Backend tables:** NMIS_ACTIVITY_CODES
- **Opened from:** Form_NMIS_ACTIVITY_CODES
- **Migration:** 0 of 9 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox Sort_By "Sorted By:" · default `"Activity Code"`  [FormHeader]
- CommandButton Tip_on_Sorting "Tip" · events: Click  [FormHeader]
- ComboBox Select_For_Parent_Activity "Parent Activity:" · rows: `SELECT NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE, NMIS_ACTIVITY_CODES_1.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES AS NMIS_ACTIVITY_CODES_1 INNER JOIN NMIS_ACTIVITY_CODES ON NMIS_ACTIVITY_CODES_1.ACTIVITY_CODE = NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE GROUP BY NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE, NMIS_ACTIVITY_CODES_1.ACTIVITY_NAME ORDER BY NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE;` · events: AfterUpdate, Enter  [FormHeader]
- ComboBox Select_For_Properties_Module "Properties Module:" · rows: `SELECT NMIS_ACTIVITY_CODES.PROPERTIES_MODULE FROM NMIS_ACTIVITY_CODES GROUP BY NMIS_ACTIVITY_CODES.PROPERTIES_MODULE ORDER BY NMIS_ACTIVITY_CODES.PROPERTIES_MODULE;` · events: AfterUpdate, Enter  [FormHeader]
- ComboBox Select_For_Activity_Code "Activity Code:" · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES GROUP BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;` · events: AfterUpdate, Enter  [FormHeader]
- CommandButton View_All "View All" · events: Click  [FormHeader]
- ComboBox Select_Balance_Effect "Balance Effect:" · rows: `SELECT NMIS_ACTIVITY_CODES.BALANCE_EFFECT FROM NMIS_ACTIVITY_CODES GROUP BY NMIS_ACTIVITY_CODES.BALANCE_EFFECT ORDER BY NMIS_ACTIVITY_CODES.BALANCE_EFFECT;` · events: AfterUpdate, Enter  [FormHeader]
- TextBox ACTIVITY_CODE = `ACTIVITY_CODE`
- TextBox ACTIVITY_NAME = `ACTIVITY_NAME`
- CheckBox BILL_ORDER = `BILL_ORDER`
- TextBox ACTIVITY_CODE_NO = `ACTIVITY_CODE_NO`
- TextBox PARENT_ACTIVITY_CODE = `PARENT_ACTIVITY_CODE`
- TextBox BALANCE_EFFECT = `BALANCE_EFFECT`
- TextBox PROPERTIES_MODULE = `PROPERTIES_MODULE`
- TextBox NOTE = `NOTE`
- TextBox DEFAULT_CONTRACT_ITEM = `DEFAULT_CONTRACT_ITEM`

## Form: NMIS_AGREE_LOTS_UNITS subform
- **Menu path:** Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_AGREEMENT_LOTS › NMIS_AGREE_LOTS_UNITS subform
- **Backend tables:** NMIS_UNITS
- **Migration:** 0 of 5 bound fields mapped. Main GrowHub screens: none

**Controls**
- ComboBox NMIS_SPECIES_PRODUCTS_UNIT_CODE = `NMIS_SPECIES_PRODUCTS_UNIT_CODE` · rows: `SELECT [NMIS_UNITS].[UNIT_CODE], [NMIS_UNITS].[UNIT_DESC], [NMIS_UNITS].[UNIT_TYPE] FROM NMIS_UNITS;`
- TextBox UNIT_TYPE = `UNIT_TYPE`
- TextBox UNIT_DESC = `UNIT_DESC`
- TextBox INV_DENSITIES_PER_CONTAINER = `INV_DENSITIES_PER_CONTAINER`
- TextBox CELLS_PER_CONTAINER = `CELLS_PER_CONTAINER`

## Form: NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE
- **Caption:** NMIS source Lot Report
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE
- **Backend tables:** NMIS_AGREEMENT_LOTS
- **Opens:** Report:NMIS_AGREEMENT_LOT_Transaction_Balance, Report:NMIS_AGREEMENT_LOT_Transaction_Balance_by_order
- **Opened from:** Form_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM, Form_Reports_Menu_Production Subform

**Controls**
- ComboBox AGREEMENT_LOT_ID1_SELECT · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID;`
- CommandButton NMIS_AGREEMENT_LOT_REPORT_CREATE "Click to Preview Report" · events: Click
- ComboBox AGREEMENT_LOT_ID2_SELECT · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID;`
- ComboBox AGREEMENT_LOT_ID3_SELECT · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID;`
- ComboBox AGREEMENT_LOT_ID4_SELECT · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID;`
- ComboBox AGREEMENT_LOT_ID5_SELECT · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID;`
- CommandButton Act_Trans_Report_By_Order "Click to Preview Report by Order" · events: Click

## Form: NMIS_AGREEMENT_LOT_SELECT
- **Caption:** NMIS source Lot Report
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_AGREEMENT_LOT_SELECT
- **Backend tables:** NMIS_AGREEMENT_LOTS
- **Opens:** Report:NMIS_AGREEMENT_Lots_Activities_and_Transactions, Report:NMIS_AGREEMENT_Lots_Activities_wo_Transactions
- **Opened from:** Form_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM, Form_Reports_Menu_Production Subform

**Controls**
- ComboBox AGREEMENT_LOT_ID1_SELECT · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID;`
- CommandButton NMIS_AGREEMENT_LOT_REPORT_CREATE "Click to Preview Report WITH Transactions" · events: Click
- ComboBox AGREEMENT_LOT_ID2_SELECT · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID;`
- ComboBox AGREEMENT_LOT_ID3_SELECT · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID;`
- ComboBox AGREEMENT_LOT_ID4_SELECT · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID;`
- ComboBox AGREEMENT_LOT_ID5_SELECT · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID;`
- CommandButton NMIS_AGREEMENT_LOT_REPORT_Without_Transactions_CREATE "Click to Preview Report WITHOUT Transactions" · events: Click

## Form: NMIS_AGREEMENT_LOTS
- **Menu path:** Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_AGREEMENT_LOTS
- **Backend tables:** NMIS_AGREEMENTS, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_CATEGORIES, NMIS_FACTORS, NMIS_FISCAL_YEARS, NMIS_PRODUCTS, NMIS_SOURCE_LOTS, NMIS_SPECIES_PRODUCTS
- **Subforms:** Form.NMIS_SOURCE_LastTestData Query subform, Form.Seed_Balance Query subform, Form.NMIS_AGREEMENTS subform1, Form.NMIS_FACTORS_FOR_AGREEMENT_LOTS subform, Form.NMIS_AGREE_LOTS_UNITS subform, Form.NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1
- **Opens:** Form:H_ASF, Report:Agreement_Lot_Source_Calcs, Report:Close_Form, Report:NMIS_SOURCE_LOTS_REPORT_from_Ag_Lot, Report:Seed_Bank_Work_Order
- **Opened from:** Form_NMIS_AGREEMENTS, Form_NMIS_AGREEMENTS_bu, Form_NMIS_AGREEMENTS_w_lot_lookup, Form_NMIS_AGREEMENT_LOTS_NEW, Form_NMIS_AGREEMENT_LOTS_NEW_bu, Form_NMIS_ID_ACTIVITIES_MORE_INFO_SUBFORM, Form_NMIS_ID_ACTIVITY_FORM, Form_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM, Form_NMIS_PRODUCT_INVENTORIES, Form_Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform, Forms_Open Module, Property_Module_Form_Opening Module
- **Form events with code:** Close, Current, Open
- **Migration:** 18 of 65 bound fields mapped. Main GrowHub screens: /orders/new (9), /admin/products/new (1)

**Controls**
- CommandButton Refresh and Close Form "Close" · events: Click  [FormHeader]
- ComboBox Find_Lot "Find Lot:" · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_PRODUCTS.PRODUCT_CLASS AS Agr_Class, Species_Products_with_SizeSpecString.SIZE_SPEC_STRING, Source_Lot_ID_and_Source_string.ID_SOURCE2 AS Source, NMIS_AGREEMENTS.CLIENT_ASSOCIATE, NMIS_AGREEMENTS.AMOUNT_REQUESTED AS [Req (M)], [NMIS_AGREEMENT_LOTS].[BEGIN_FY] & "-" & [NMIS_AGREEMENT_LOTS].[END_FY] AS [FY's], NMIS_AGREEMENT_LOTS.AKA, NMIS_` · events: AfterUpdate, Enter  [FormHeader]
- ComboBox Screen_For_Begin_FY "Like Begin FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC;` · default `"*"` · events: AfterUpdate, DblClick, Enter  [FormHeader]
- CheckBox Sort_By_Entry_Order "By Entry Order" · default `False` · events: AfterUpdate  [FormHeader]
- ComboBox Filter_for_Product_Type · rows: `B;Bareroot Plant;C;Container Plant;N;Native Propagules;*;All Product Types` · default `"*"` · events: DblClick  [FormHeader]
- ComboBox Filter_For_Product · rows: `SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_CLASS, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_` · default `"*"` · events: DblClick, Enter  [FormHeader]
- TextBox CN = `CN` · default `="Agrmt_Lot_New" & Now()` → GrowHub source_lot.accessLegacyId (yes)  [FormHeader]
- TextBox Index = `Index`  [FormHeader]
- ComboBox Filter_for_Species · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM ((NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENTS.SPECIES_PRODUCT_CN) INNER JOIN NMIS_SPECIES_PLNTMSTR_SYMBO` · default `"*"` · events: DblClick, Enter  [FormHeader]
- ComboBox Filter_For_Client · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM (NMIS_ASSOCIATES INNER JOIN NMIS_AGREEMENTS ON (NMIS_ASSOCIATES.ASSOCIATE = NMIS_AGREEMENTS.CLIENT_ASSOCIATE) AND (NMIS_ASSOCIATES.ASSOCIATE = NMIS_AGREEMENTS.CLIENT_ASSOCIATE)) INNER JOIN (NMIS_AGREEMENT_LOTS INNER JOIN NMIS_SPECIES_PRODUCTS ON NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN = NMIS_SPECIES_PRODUCTS.CN) ON NMIS_AGREEMENT` · default `"*"` · events: DblClick, Enter  [FormHeader]
- CommandButton Clear_Filters "Clear Filters" · events: Click  [FormHeader]
- ComboBox Screen_For_End_FY "End FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC;` · default `"*"` · events: AfterUpdate, DblClick, Enter  [FormHeader]
- TextBox Like_Agreement_Lots · default `"*"` · events: AfterUpdate, DblClick  [FormHeader]
- TextBox Like_Source_Lots "Source Lots Like" · default `"*"` · events: DblClick  [FormHeader]
- CommandButton Wildcard_Tips "Wildcard Tips" · events: Click  [FormHeader]
- TextBox ID "Nursery ID" = `ID` · events: DblClick, Exit → GrowHub grow_request.growLotId (blank)
- ComboBox CATEGORY_CODE "Category" = `CATEGORY_CODE` · rows: `SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES WHERE (((NMIS_CATEGORIES.CATEGORY_CODE)="BR" Or (NMIS_CATEGORIES.CATEGORY_CODE)="C" Or (NMIS_CATEGORIES.CATEGORY_CODE)="BRCO" Or (NMIS_CATEGORIES.CATEGORY_CODE)="CCO" Or (NMIS_CATEGORIES.CATEGORY_CODE)="NSP" Or (NMIS_CATEGORIES.CATEGORY_CODE)="CCTR")) ORDER BY NMIS_CATEGORIES.CATEGORY_CODE;` · default `"BR"` → GrowHub order_cycle_planning.stockType (blank)
- ComboBox NURSERY_ASSOCIATE "Nursery " = `NURSERY_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_ASSOCIATES.NURSERY FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.NURSERY)=-1)) ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;` · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]` · events: DblClick, Enter
- ComboBox BEGIN_FY "Begin FY" = `BEGIN_FY` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` → GrowHub order_cycle_planning.plannedSowDate (blank)
- ComboBox END_FY "End FY" = `END_FY` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` → GrowHub grow_request.targetLiftYear (blank)
- TextBox TOTAL_REQUEST "Total Request" = `TOTAL_REQUEST` · events: Change, DblClick, Exit → GrowHub grow_request.requestedSeedlingQuantity (blank)
- ComboBox PREVIOUS_NURSERY_ASSOCIATE "Previous Nursery Associate" = `PREVIOUS_NURSERY_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_ASSOCIATES.NURSERY FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.NURSERY)=Yes)) ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;`
- TextBox CLIENT_SURPLUS_AVAILABLE "Client Surplus" = `CLIENT_SURPLUS_AVAILABLE`
- TextBox NURSERY_SURPLUS_AVALIABLE "Nursery Surplus" = `NURSERY_SURPLUS_AVAILABLE`
- TextBox NOTE "Note" = `NOTE` → GrowHub species_product.notes (maybe)
- ComboBox SOURCE_LOT_CN "Source Lot ID" = `SOURCE_LOT_CN` · rows: `SELECT Source_Lot_ID_and_Source_string.CN, NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACULAR, NMIS_SOURCE_LOTS.CATEGORY_CODE FROM (NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN) INNER JOIN NMIS_SPECIES` · default `=[Forms]![NMIS_AGREEMENTS]![SOURCE_LOT_CN]` · events: Change, Exit → GrowHub order_cycle_planning.sourceLotUuid (blank)
- TabControl TabCtl197
- TextBox SOURCE_GERM_PCT "Source Germ %:" = `SOURCE_GERM_PCT` · default `0` · tab Calculations
- TextBox SOURCE_PURITY_PCT "Source Purity %:" = `SOURCE_PURITY_PCT` · default `0` · tab Calculations
- TextBox GROSS_SOURCE_PER_UNIT "Gross/Unit:" = `GROSS_SOURCE_PER_UNIT` · default `0` · tab Calculations
- TextBox HARVEST_FACTOR_1 "Harvest Factor 1:" = `HARVEST_FACTOR_1` · default `100` · tab Calculations · events: AfterUpdate → GrowHub order_cycle_planning.factor1 (blank)
- TextBox HARVEST_FACTOR_2 "Harvest Factor 2:" = `HARVEST_FACTOR_2` · default `100` · tab Calculations · events: AfterUpdate → GrowHub order_cycle_planning.factor2 (blank)
- TextBox HARVEST_FACTOR_3 "Harvest Factor 3:" = `HARVEST_FACTOR_3` · default `100` · tab Calculations · events: AfterUpdate → GrowHub order_cycle_planning.factor3 (blank)
- TextBox HARVEST_FACTOR_4 "Harvest Factor 4:" = `HARVEST_FACTOR_4` · default `100` · tab Calculations
- TextBox CONTAINER_FACTOR_1 "Container Factor 1:" = `CONTAINER_FACTOR_1` · default `100` · tab Calculations · events: Exit
- TextBox CONTAINER_FACTOR_2 "Container Factor 2:" = `CONTAINER_FACTOR_2` · default `100` · tab Calculations · events: Exit
- TextBox CONTAINER_FACTOR_3 "Container Factor 3:" = `CONTAINER_FACTOR_3` · default `100` · tab Calculations · events: Exit
- TextBox HARVEST_ASF_ADJUSTMENT "Harvest ASF Adj:" = `HARVEST_ASF_ADJUSTMENT` · default `100` · tab Calculations · events: DblClick
- TextBox CONTAINER_ASF_ADJUSTMENT "Container ASF Adj:" = `CONTAINER_ASF_ADJUSTMENT` · default `100` · tab Calculations · events: Exit → GrowHub order_cycle_planning.containerSpecificationsNurseryfactors (blank)
- TextBox Desired_Density "Target Gross/Cell:" = `DESIRED_DENSITY` · tab Calculations · events: DblClick, Exit → GrowHub order_cycle_planning.desiredDensity (blank)
- TextBox EST_CONTAINERS_REQUIRED "Est." = `EST_CONTAINERS_REQUIRED` · tab Calculations → GrowHub order_cycle_planning.containerSpecificationsNumberofcontainersneeded (blank)
- TextBox seed_per_cell_to_use · default `2` · tab Calculations
- TextBox SOURCE_REQUIRED "Source To Use:" = `SOURCE_REQUIRED` · tab Calculations · events: AfterUpdate, Change, DblClick, Exit → GrowHub order_cycle_planning.estimatedLbsOfSeed (blank)
- CommandButton Use_Default_Factors "Click to Use Default Factors" · tab Calculations · events: Click
- TextBox Text392 = `=[NMIS_FACTORS subform].Form!LIKE_ASSOCIATE` · tab Calculations
- CheckBox Source_Stratified "Source Stratified" = `SOURCE_STRATIFIED` · tab Calculations
- TextBox THINNING_PROBABILITY_PCT "Seed Per Cell Adj:" = `THINNING_PROBABILITY_PCT` · tab Calculations
- TextBox Containers_Will_Grow "Cont. Will Grow:" = `=Round(IIf((Left$([CATEGORY_CODE],1)="B" Or Left$([CATEGORY_CODE],1)="N") And ([Type_of_Container] In ("sb","SPB","TB")),[Calculated_Gross],[EST_CONTAINERS_REQUIRED]*[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1].[Form]![CELLS_PER_CONTAINER]/1000),3)` · tab Calculations · events: DblClick
- Subform NMIS_SOURCE_LastTestData Query subform subform `Form.NMIS_SOURCE_LastTestData Query subform` (master SOURCE_LOT_CN → child SOURCE_LOT_CN) · tab Calculations
- CommandButton Calculate "Click to Calculate Source Required and Est. Containers" · tab Calculations · events: Click
- CommandButton Use Last Test Data "Click to Use Last Test Data" · tab Calculations · events: Click
- TextBox Shortage "Shortage:" = `=IIf([SOURCE_REQUIRED]>0,IIf(Round([TOTAL_REQUEST]-[Source_Will_Grow],3)>0,Round([TOTAL_REQUEST]-[Source_Will_Grow],3),0),"NA")` · tab Calculations · events: DblClick
- Subform Seed_Balance Query subform subform `Form.Seed_Balance Query subform` (master SOURCE_LOT_CN → child CN) · tab Calculations
- TextBox Type_of_Container = `=[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1].Form!BEGIN_CONTAINER` · tab Calculations
- TextBox Est_Seed_Per_Cell = `=IIf([EST_CONTAINERS_REQUIRED]>0,IIf([GROSS_SOURCE_PER_UNIT]>0,([GROSS_SOURCE_PER_UNIT]*[SOURCE_REQUIRED])/([EST_CONTAINERS_REQUIRED]*[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1].[Form]![CELLS_PER_CONTAINER]),"NA"),"NA")` · tab Calculations
- TextBox Cells_Per_Container = `=[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1].Form!CELLS_PER_CONTAINER` · tab Calculations
- TextBox Source_Required_by_spc "Source Req" = `=IIf([Pure_Live_Seed]>0,Round(([NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1].[Form]![CELLS_PER_CONTAINER]*[seed_per_cell_to_use])*[EST_CONTAINERS_REQUIRED]/[GROSS_SOURCE_PER_UNIT],3),"NA")` · tab Calculations · events: DblClick
- CommandButton Harvest_ASF_Form "H. ASF..." · tab Calculations · events: Click
- TextBox Calculated_Gross "Gross Needed:" = `=Round(([TOTAL_REQUEST]/(([HF1]/100)*([HF2]/100)*([HF3]/100)*([HF4]/100)*([HARVEST_ASF_ADJUSTMENT]/100))),3)` · tab Calculations
- TextBox Will_Grow_Max = `=([SOURCE_REQUIRED]*[GROSS_SOURCE_PER_UNIT]*([SOURCE_GERM_PCT]/100)*([SOURCE_PURITY_PCT]/100)*([HF1]/100)*([HF2]/100)*([HF3]/100)*([HF4]/100)*([HARVEST_ASF_ADJUSTMENT]/100))/1000` · tab Calculations
- TextBox Source_Will_Grow "Source Will Grow:" = `=IIf([Type_of_Container]="SB",IIf([SOURCE_REQUIRED]>0,IIf([Pure_Live_SEED]>0,Round(([SOURCE_REQUIRED]*[GROSS_SOURCE_PER_UNIT]*([SOURCE_GERM_PCT]/100)*([SOURCE_PURITY_PCT]/100)*([HF1]/100)*([HF2]/100)*([HF3]/100)*([HF4]/100)*([HARVEST_ASF_ADJUSTMENT]/100))/1000,3),0),"NA"),IIf([SOURCE_REQUIRED]>0,IIf([Pure_Live_SEED]>0,Round((([SOURCE_REQUIRED]*[GROSS_SOURCE_PER_UNIT]*([SOURCE_GERM_PCT]/100)*([SOURCE_PURITY_PCT]/100))*([HF1]/100)*([HF2]/100)*([HF3]/100)*([HF4]/100)*([HARVEST_ASF_ADJUSTMENT]/100)*([THINNING_PROBABILITY_PCT]/100))/1000,3),0),"NA"))` · tab Calculations · events: DblClick
- TextBox Calc_Source "Calc. Source:" = `=IIf([Pure_Live_Seed]>0,Round(([TOTAL_REQUEST]*1000)/[Pure_Live_Seed]/(([HF]/100)*[THINNING_PROBABILITY_PCT]/100),3),"NA")` · tab Calculations
- TextBox Pure_Live_Seed = `=[GROSS_SOURCE_PER_UNIT]*([SOURCE_GERM_PCT]/100)*([SOURCE_PURITY_PCT]/100)` · tab Calculations
- TextBox Harvest_Factor = `=([HF1]/100)*([HF2]/100)*([HF3]/100)*([HF4]/100)*([HARVEST_ASF_ADJUSTMENT]/100)*100` · tab Calculations
- TextBox CF "Container Factor:" = `=([CF1A]/100)*([CF2A]/100)*([CF3A]/100)*([CONTAINER_ASF_ADJUSTMENT]/100)*100` · tab Calculations
- TextBox Combo383 = `[HARVEST_1_FACTOR_CODE]` · tab Calculations
- TextBox Combo386 = `HARVEST_2_FACTOR_CODE` · tab Calculations
- TextBox Combo387 = `HARVEST_3_FACTOR_CODE` · tab Calculations
- TextBox Combo388 = `HARVEST_4_FACTOR_CODE` · tab Calculations
- CheckBox HF1_Inverse = `HF1_Inverse` · tab Calculations
- CheckBox HF2_Inverse = `HF2_Inverse` · tab Calculations
- CheckBox HF3_Inverse = `HF3_Inverse` · tab Calculations
- CheckBox HF4_Inverse = `HF4_Inverse` · tab Calculations
- TextBox HF1 = `=IIf([HF1_Formula_OP]="*",[HARVEST_FACTOR_1],(10000/[HARVEST_FACTOR_1]))` · tab Calculations
- TextBox HF2 = `=IIf([HF2_Formula_OP]="*",[HARVEST_FACTOR_2],(10000/[HARVEST_FACTOR_2]))` · tab Calculations
- TextBox HF3 = `=IIf([HF3_Formula_OP]="*",[HARVEST_FACTOR_3],(10000/[HARVEST_FACTOR_3]))` · tab Calculations
- TextBox HF4 = `=IIf([HF4_Formula_OP]="*",[HARVEST_FACTOR_4],(10000/[HARVEST_FACTOR_4]))` · tab Calculations
- TextBox HF = `=([HF1]/100)*([HF2]/100)*([HF3]/100)*([HF4]/100)*([HARVEST_ASF_ADJUSTMENT]/100)*100` · tab Calculations
- TextBox Containers_Required_by_spc "Cont. Req" = `=IIf(Not IsNull([SOURCE_REQUIRED]),Round(([SOURCE_REQUIRED]*[GROSS_SOURCE_PER_UNIT])/([NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1].[Form]![CELLS_PER_CONTAINER]*[seed_per_cell_to_use]),0),Round([TOTAL_REQUEST]*1000/[seed_per_cell_to_use]/[CELLS_PER_CONTAINER],0))` · tab Calculations · events: DblClick
- CommandButton Tip_Seed_Per_Cell_Adjustment "Tip" · tab Calculations · events: Click
- TextBox HF1_Formula_OP = `HF1_Formula_OP` · tab Calculations
- TextBox HF2_Formula_OP = `HF2_Formula_OP` · tab Calculations
- TextBox HF3_Formula_OP = `HF3_Formula_OP` · tab Calculations
- TextBox HF4_Formula_OP = `HF4_Formula_OP` · tab Calculations
- TextBox Combo389 = `CONTAINER_1_FACTOR_CODE` · tab Calculations
- TextBox Combo390 = `CONTAINER_2_FACTOR_CODE` · tab Calculations
- TextBox Combo391 = `CONTAINER_3_FACTOR_CODE` · tab Calculations
- CommandButton Container_Factor_Tip "Tip" · tab Calculations · events: Click
- TextBox CF1_Formula_OP = `CF1_Formula_OP` · tab Calculations
- TextBox CF2_Formula_OP = `CF2_Formula_OP` · tab Calculations
- TextBox CF3_Formula_OP = `CF3_Formula_OP` · tab Calculations
- TextBox CF1A = `=IIf([CF1_Formula_OP]="*",[CONTAINER_FACTOR_1],(10000/[CONTAINER_FACTOR_1]))` · tab Calculations
- TextBox CF2A = `=IIf([CF2_Formula_OP]="*",[CONTAINER_FACTOR_2],(10000/[CONTAINER_FACTOR_2]))` · tab Calculations
- TextBox CF3A = `=IIf([CF3_Formula_OP]="*",[CONTAINER_FACTOR_3],(10000/[CONTAINER_FACTOR_3]))` · tab Calculations
- TextBox CFA = `=([CF1A]/100)*([CF2A]/100)*([CF3A]/100)*([CONTAINER_ASF_ADJUSTMENT]/100)*100` · tab Calculations
- CommandButton Harvest_Factor_Tip "Tip" · tab Calculations · events: Click
- CommandButton View_Source_Calcs "View Source Calculation" · tab Calculations · events: Click
- TextBox CONTAINER_PROBABILITY_PCT "Seed Per Cell Adj:" = `CONTAINER_PROBABILITY_PCT` · tab Calculations
- CommandButton Preview Source Work Order "PreviewSource Work Order" · tab Calculations · events: Click
- CommandButton Germ_Detail "Germ Detail" · tab Calculations · events: Click
- TextBox Propagule_BF_per_Acre = `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Default4N]` · tab Calculations
- CommandButton SPC_Use_Source "Use" · tab Calculations · events: Click
- CommandButton SPC_Use_Containers "Use" · tab Calculations · events: Click
- Subform NMIS_AGREEMENTS subform1 subform `Form.NMIS_AGREEMENTS subform1` (master CN → child AGREEMENT_LOT_CN) · tab Agreements
- TextBox Inserted By "Inserted By:" = `INSERTED_BY` · default `=CurrentUserName()` · tab IMT
- TextBox Inserted Date "Inserted Date:" = `INSERTED_DATE` · tab IMT
- TextBox Inserted Instance "Inserted Instance:" = `INSERTED_INSTANCE` · tab IMT
- TextBox Modified By "Modified By:" = `MODIFIED_BY` · tab IMT
- TextBox Modified Date "Modified Date:" = `MODIFIED_DATE` · tab IMT
- TextBox Modified Instance "Modified Instance:" = `MODIFIED_INSTANCE` · tab IMT
- TextBox Transferred By "Transferred By:" = `TRANSFERRED_BY` · tab IMT
- TextBox Transferred Date "Transferred Date:" = `TRANSFERRED_DATE` · tab IMT
- TextBox Transferred Instance "Transferred Instance:" = `TRANSFERRED_INSTANCE` · tab IMT
- Subform NMIS_FACTORS subform "Sowing Factors" subform `Form.NMIS_FACTORS_FOR_AGREEMENT_LOTS subform` (master SPECIES_PRODUCT_CN → child SPECIES_PRODUCT_CN) · tab IMT
- Subform NMIS_AGREE_UNITS subform "UNITS" subform `Form.NMIS_AGREE_LOTS_UNITS subform` (master SPECIES_PRODUCT_CN → child CN) · tab IMT
- Subform NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1 subform `Form.NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1` (master SPECIES_PRODUCT_CN → child SPECIES_PRODUCT_CN)
- ComboBox SPECIES_PRODUCT_CN "Species Product" = `SPECIES_PRODUCT_CN` · rows: `SELECT NMIS_SPECIES_PRODUCTS.CN, [Species_Products_String] & IIf(([NMIS_SPECIES_PRODUCTS].[historical] Or [NMIS_PRODUCTS].[historical])," *HISTORICAL*") AS [Species Product], Product_String.Product_String AS Product, NMIS_PRODUCTS.CATEGORY_CODE FROM NMIS_PRODUCTS INNER JOIN (Species_Products_with_SizeSpecString INNER JOIN (Product_String INNER JOIN NMIS_SPECIES_PRODUCTS ON Product_String.CN = NMIS` · default `=[Forms]![NMIS_AGREEMENTS]![SPECIES_PRODUCT_CN]` · events: Change, DblClick, Exit
- ComboBox Source Code "Source" = `SOURCE_LOT_CN` · rows: `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE FROM NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN=Source_Lot_ID_and_Source_string.CN ORDER BY NMIS_SOURCE_LOTS.ID;` → GrowHub order_cycle_planning.sourceLotUuid (blank)
- TextBox ID_ORIGINAL "ID Orig" = `ID_ORIGINAL` · events: DblClick, Exit
- ComboBox PREVIOUS_AGREEMENT_LOT_CN "Previous Agreement Lot" = `PREVIOUS_AGREEMENT_LOT_CN` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, Species_Products_with_SizeSpecString.PLNTMSTR_SYMBOL, Species_Products_with_SizeSpecString.Species_Products_String_Long FROM Species_Products_with_SizeSpecString RIGHT JOIN NMIS_AGREEMENT_LOTS ON Species_Products_with_SizeSpecString.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN WHERE (((Species_Products_with_SizeSpecString.PLNTMSTR_SYMBOL)=[Form` · events: Exit
- TextBox PLNTMSTR_SYMBOL = `PLNTMSTR_SYMBOL` → GrowHub source_lot.speciesUuid (yes)
- ComboBox PREVIOUS_SPECIES_PRODUCT_CN "Previous Species Product" = `PREVIOUS_SPECIES_PRODUCT_CN` · rows: `SELECT Species_Products_with_SizeSpecString.CN, Species_Products_with_SizeSpecString.Species_Products_String_Long, Species_Products_with_SizeSpecString.PLNTMSTR_SYMBOL FROM Species_Products_with_SizeSpecString WHERE (((Species_Products_with_SizeSpecString.PLNTMSTR_SYMBOL)=Forms!NMIS_AGREEMENT_LOTS!PLNTMSTR_SYMBOL)) ORDER BY Species_Products_with_SizeSpecString.Species_Products_String_Long;` · events: Enter
- TextBox Sum_of_Agreement_Request = `=[NMIS_AGREEMENTS subform1].Form!SUM_Amt_Requested`
- TextBox AKA "AKA" = `AKA` · events: DblClick, Enter

## Form: NMIS_AGREEMENT_LOTS subform
- **Caption:** NMIS_AGREEMENT_LOTS subform
- **Menu path:** Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › NMIS_AGREEMENT_LOTS subform
- **Record source:** SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN, NMIS_SPECIES_PRODUCTS.SPEC_MIN, NMIS_SPECIES_PRODUCTS.SPEC_MAX, NMIS_SPECIES_PRODUCTS.CALIPER_MIN, NMIS_AGREEMENT_LOTS.TOTAL_REQUEST, NMIS_SPECIES_PRODUCTS.SPEC_MIN_ALT, NMIS_SPECIES_PRODUCTS.SPEC_MAX_ALT, NMIS_SPECIES_PRODUCTS.CALIPER_MIN_ALT FROM NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN;
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_SPECIES_PRODUCTS
- **Migration:** 4 of 8 bound fields mapped. Main GrowHub screens: /orders/new (4)

**Controls**
- TextBox CN = `CN`
- TextBox SPEC_MIN "Spec Min:" = `SPEC_MIN` → GrowHub lift_request.minimumHeight (blank)
- TextBox SPEC_MAX "Spec Max:" = `SPEC_MAX` → GrowHub lift_request.maximumHeight (blank)
- TextBox CALIPER_MIN "Caliper Min:" = `CALIPER_MIN` → GrowHub lift_request.caliper (blank)
- TextBox TOTAL_REQUEST "Total Request:" = `TOTAL_REQUEST` → GrowHub grow_request.requestedSeedlingQuantity (blank)
- TextBox SPEC_MIN_ALT = `SPEC_MIN_ALT`
- TextBox SPEC_MAX_ALT = `SPEC_MAX_ALT`
- TextBox CALIPER_MIN_ALT = `CALIPER_MIN_ALT`

## Form: NMIS_AGREEMENT_LOTS_NEW
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_AGREEMENTS › NMIS_AGREEMENT_LOTS_NEW
- **Backend tables:** NMIS_AGREEMENTS, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_CATEGORIES, NMIS_FISCAL_YEARS, NMIS_PRODUCTS, NMIS_SOURCE_LOTS, NMIS_SPECIES_PRODUCTS
- **Opens:** Form:NMIS_AGREEMENT_LOTS
- **Opened from:** Form_NMIS_AGREEMENTS, Form_NMIS_AGREEMENTS_bu, Form_NMIS_AGREEMENTS_w_lot_lookup
- **Form events with code:** Close
- **Migration:** 16 of 32 bound fields mapped. Main GrowHub screens: /orders/new (9), /admin/products/new (1)

**Controls**
- TextBox CN = `CN` → GrowHub source_lot.accessLegacyId (yes)  [FormHeader]
- TextBox Index = `Index`  [FormHeader]
- TextBox New_CN = `=[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code`  [FormHeader]
- CommandButton Close_Form "Close" · events: Click  [FormHeader]
- ComboBox Find_Lot "Review Lot ID's:" · rows: `SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_PRODUCTS.PRODUCT_CLASS AS Agr_Class, Source_Lot_ID_and_Source_string.ID_SOURCE2 AS Source, [CLIENT_ASSOCIATE] & " " AS Client, [AMOUNT_REQUESTED] & " " AS Req, NMIS_AGREEMENT_LOTS.BEGIN_FY AS [Begin FY], NMIS_AGREEMENT_LOTS.Index AS [Original ID], NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL, NMIS_PRODUCTS.CN, Left$(Nz([nmis_agreement_lots].[Category_Code],"B"),1) AS P`  [FormHeader]
- TextBox PLNTMSTR_SYMBOL = `PLNTMSTR_SYMBOL` → GrowHub source_lot.speciesUuid (yes)  [FormHeader]
- TextBox Source_lot_ID "Source Lot ID:" = `Source_lot_ID`  [FormHeader]
- TextBox NOTE "Note:" = `NOTE` · default `=[Forms]![NMIS_AGREEMENTS]![NOTE]` → GrowHub species_product.notes (maybe)
- ComboBox CATEGORY_CODE "Category" = `CATEGORY_CODE` · rows: `SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES;` · default `=IIf([Forms]![NMIS_AGREEMENTS]![CATEGORY_CODE]="BRCO","BR",IIf([Forms]![NMIS_AGREEMENTS]![CATEGORY_CODE]="CCO","C",[Forms]![NMIS_AGREEMENTS]![CATEGORY_CODE]))` → GrowHub order_cycle_planning.stockType (blank)
- ComboBox BEGIN_FY "Begin FY" = `BEGIN_FY` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![NMIS_AGREEMENTS]![BEGIN_FY]` → GrowHub order_cycle_planning.plannedSowDate (blank)
- ComboBox END_FY "End FY" = `END_FY` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![NMIS_AGREEMENTS]![END_FY]` → GrowHub grow_request.targetLiftYear (blank)
- ComboBox SOURCE_LOT_CN "Source Lot ID" = `SOURCE_LOT_CN` · rows: `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_LOTS.SOURCE_CODE FROM NMIS_SOURCE_LOTS ORDER BY NMIS_SOURCE_LOTS.ID;` · default `=[Forms]![NMIS_AGREEMENTS]![SOURCE_LOT_CN]` → GrowHub order_cycle_planning.sourceLotUuid (blank)
- ComboBox SPECIES_PRODUCT_CN "Species Product" = `SPECIES_PRODUCT_CN` · rows: `SELECT NMIS_SPECIES_PRODUCTS.CN, NMIS_PRODUCTS.PRODUCT_DESC, NMIS_SPECIES_PRODUCTS.SPECIES_PRODUCT_DESC FROM NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON NMIS_PRODUCTS.CN=NMIS_SPECIES_PRODUCTS.PRODUCT_CN;` · default `=[Forms]![NMIS_AGREEMENTS]![SPECIES_PRODUCT_CN]`
- TextBox HARVEST_ASF_ADJUSTMENT "Harvest ASF Adj:" = `HARVEST_ASF_ADJUSTMENT` · default `100`
- TextBox HARVEST_FACTOR_1 "Harvest Factor 1:" = `HARVEST_FACTOR_1` · default `100` → GrowHub order_cycle_planning.factor1 (blank)
- TextBox HARVEST_FACTOR_2 "Harvest Factor 2:" = `HARVEST_FACTOR_2` · default `100` → GrowHub order_cycle_planning.factor2 (blank)
- TextBox HARVEST_FACTOR_3 "Harvest Factor 3:" = `HARVEST_FACTOR_3` · default `100` → GrowHub order_cycle_planning.factor3 (blank)
- TextBox HARVEST_FACTOR_4 "Harvest Factor 4:" = `HARVEST_FACTOR_4` · default `100`
- TextBox CONTAINER_ASF_ADJUSTMENT "Container ASF Adj:" = `CONTAINER_ASF_ADJUSTMENT` · default `100` → GrowHub order_cycle_planning.containerSpecificationsNurseryfactors (blank)
- TextBox CONTAINER_FACTOR_1 "Container Factor 1:" = `CONTAINER_FACTOR_1` · default `100`
- TextBox CONTAINER_FACTOR_2 "Container Factor 2:" = `CONTAINER_FACTOR_2` · default `100`
- TextBox CONTAINER_FACTOR_3 "Container Factor 3:" = `CONTAINER_FACTOR_3` · default `100`
- TextBox INSERTED_BY "Inserted By:" = `INSERTED_BY` · default `=CurrentUserName()`
- TextBox DESIRED_DENSITY "Desired Density:" = `DESIRED_DENSITY` · default `1` → GrowHub order_cycle_planning.desiredDensity (blank)
- CommandButton Open_Agreement_Lots_Form "Click to continue to Calculations..." · events: Click
- ComboBox PREVIOUS_NURSERY_ASSOCIATE "Previous Nursery Associate" = `PREVIOUS_NURSERY_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & " (" & [Associate] & ")" AS Expr1 FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.NURSERY)=True)) ORDER BY [ASSOCIATE_NAME] & " (" & [Associate] & ")";`
- ComboBox PREVIOUS_AGREEMENT_LOT_CN "Previous Agreement Lot" = `PREVIOUS_AGREEMENT_LOT_CN` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL, NMIS_SPECIES_PRODUCTS.SPECIES_PRODUCT_DESC FROM NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN WHERE (((NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL)=[Forms]![NMIS_AGREEMENT_LOTS_NEW]![PLNTMSTR_SYMBOL])) ORDER BY NMIS_AGREEMENT_LOTS.BEGIN` · events: Exit
- TextBox NURSERY_ASSOCIATE "Nursery Associate" = `NURSERY_ASSOCIATE` · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]`
- TextBox TOTAL_REQUEST "Total Request:" = `TOTAL_REQUEST` · default `=[Forms]![NMIS_AGREEMENTS]![AMOUNT_REQUESTED]` → GrowHub grow_request.requestedSeedlingQuantity (blank)
- TextBox ID "Nursery ID" = `ID` · events: Enter, Exit → GrowHub grow_request.growLotId (blank)
- TextBox ID_ORIGINAL "Original ID" = `ID_ORIGINAL`
- TextBox AKA "AKA" = `AKA`
- TextBox CONTAINER_PROBABILITY_PCT "Container Factor 3:" = `CONTAINER_PROBABILITY_PCT` · default `100`
- TextBox THINNING_PROBABILITY_PCT "THINNING_PROBABILITY_PCT:" = `THINNING_PROBABILITY_PCT` · default `100`
- TextBox CALIBRATION_REVS_USED = `CALIBRATION_REVS_USED` · default `=IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061019",5,3)` → GrowHub order_cycle_production.barerootSpecificationsRevolutions (blank)
- TextBox Text436 "Container Probability %:" = `CONTAINER_PROBABILITY_PCT` · default `100`

## Form: NMIS_AGREEMENT_LOTS_Report
- **Caption:** Agreements  Report
- **Menu path:** Switchboard › NMIS_AGREEMENT_LOTS_Report
- **Backend tables:** NMIS_AGREEMENTS, NMIS_ASSOCIATES, NMIS_CONTACTS, NMIS_FISCAL_YEARS
- **Opens:** Form:Agreement_Lot_Holdover_Spreadsheet, Form:Agreement_Lot_Source_Calcs_Review, Form:Agreement_Lot_Sow_Order_Oyjord_Report, Form:Agreement_Lot_Sow_Order_Report, Form:Agreement_Lot_Sow_Order_Sow_Group_Summary, Form:Agreement_Lot_Sow_Order_Spreadsheet, Form:Agreement_Lot_Sow_Order_Spreadsheet_qp_ms, Form:Agreement_Lot_Sow_Order_Spreadsheet_qp_ss, Form:NMIS_AGREEMENTS_Report, Form:NMIS_AGREEMENTS_Report_by_stocktype, Form:NMIS_AGREEMENTS_Report_by_stocktype_hold, Form:NMIS_AGREEMENTS_Report_w_cost_est, Form:NMIS_AGREEMENTS_Summary_Report, Form:NMIS_ASSOCIATES_AND_CONTACTS_current_fy_CHECKLIST2, Form:NMIS_PLANT_INVENTORY_Report, Form:NMIS_SOWING_ORDER, Report:Agreement_Lot_Holdover_Spreadsheet, Report:Agreement_Lot_Source_Calcs_Review, Report:Agreement_Lot_Sow_Order_Oyjord_Report, Report:Agreement_Lot_Sow_Order_Report, Report:Agreement_Lot_Sow_Order_Sow_Group_Summary, Report:Agreement_Lot_Sow_Order_Spreadsheet, Report:Agreement_Lot_Sow_Order_Spreadsheet_qp_ms, Report:Agreement_Lot_Sow_Order_Spreadsheet_qp_ss, Report:NMIS_AGREEMENTS_Report, Report:NMIS_AGREEMENTS_Report_by_stocktype, Report:NMIS_AGREEMENTS_Report_by_stocktype_hold, Report:NMIS_AGREEMENTS_Report_w_cost_est, Report:NMIS_AGREEMENTS_Summary_Report, Report:NMIS_ASSOCIATES_AND_CONTACTS_current_fy_CHECKLIST2, Report:NMIS_PLANT_INVENTORY_Report, Report:NMIS_SOWING_ORDER
- **Opened from:** Form_Reports_Menu_Production Subform
- **Form events with code:** Open

**Controls**
- CommandButton Preview_Quarterly_Report "Confirmation Report" · events: Click
- ComboBox Begin_FY "Like Begin FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC;` · default `=[Forms]![Switchboard]![FY_For_Reports]`
- ComboBox End_FY " Like End FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `"*"`
- CommandButton Run Agreement_Lots_Sow_Order Report "Sowing Order Report" · events: Click
- ComboBox End_Product "End Product:" · rows: `Plant;Propagule` · default `"Plant"`
- TextBox Like_Sowing_Group "Like Sowing Group:" · default `"*"` · events: DblClick
- CommandButton Run Agreement_Lots_Sow_Group_Summary Report "Sow Group Summary" · events: Click
- CommandButton Open_Sowing_Order_Form "Edit Sow/Transplant Group Order..." · events: Click
- ComboBox Plntmstr_Symbol "Like Species Code:" · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY WHERE (((NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.DIVERSE) Like [Forms]![NMIS_AGREEMENT_LOTS_Report]![Divers` · default `"*"` · events: DblClick
- ComboBox BorC "Cost Center:" · rows: `*;Bareroot and Container;B;Bareroot;C;Container` · default `"*"`
- ComboBox Like_Client "Like Client:" · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES INNER JOIN NMIS_AGREEMENTS ON (NMIS_ASSOCIATES.ASSOCIATE = NMIS_AGREEMENTS.CLIENT_ASSOCIATE) AND (NMIS_ASSOCIATES.ASSOCIATE = NMIS_AGREEMENTS.CLIENT_ASSOCIATE) WHERE (((NMIS_AGREEMENTS.BEGIN_FY) Like [Forms]![NMIS_AGREEMENT_LOTS_Report]![Begin_FY] & "*") AND ((NMIS_AGREEMENTS.END_FY) Like [Forms]![NMIS_AGREEMENT_` · default `"*"` · events: AfterUpdate, DblClick
- ComboBox Begin_Product "Begin Product:" · rows: `S;Seed;SD;Plant;*;Seed and Plant` · default `"*"`
- ComboBox Diverse "Traditional/Non-Traditonal Species" · rows: `0;Traditional;-1;Non-Traditional;*;All` · default `"*"` · events: AfterUpdate, DblClick
- ComboBox Contact_CN " Like Contact" · rows: `SELECT NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] AS Name FROM NMIS_CONTACTS INNER JOIN NMIS_AGREEMENTS ON NMIS_CONTACTS.CN = NMIS_AGREEMENTS.CONTACT_CN WHERE (((NMIS_CONTACTS.HISTORICAL)=False) AND ((NMIS_AGREEMENTS.CLIENT_ASSOCIATE) Like [Forms]![NMIS_AGREEMENT_LOTS_Report]![Like_Client] & "*")) GROUP BY NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First` · events: DblClick, Enter
- CommandButton Contacts_for_Current_fy_Sow_Req "Contacts for Current Begin FY..." · events: Click
- CommandButton Run Agreement_Lots_Sow_Order_Spreadsheet "Sowing Spreadsheet" · events: Click
- CommandButton Comfirmation_Summary "Confirmation Summary" · events: Click
- CommandButton Source_Calc_Review "Source Calc Review" · events: Click
- CommandButton Run Agreement_Lots_Oyjord_Sow_Order Report "Oyjord Sowing Report" · events: Click
- CommandButton Run Agreement_Lots_Sow_Order_Spreadsheet_qp " SS QPlug Spreadsheet" · events: Click
- CommandButton Run Agreement_Lots_Sow_Order_Spreadsheet_qp_ss "MS QPlug Spreadsheet" · events: Click
- CommandButton Holdover_Spreadsheet "Holdover Spreadsheet" · events: Click
- CommandButton Comfirmation_by_stocktype "Confirm by Stocktype" · events: Click
- CommandButton Comfirmation_holdover "Confirm Hold and US TP" · events: Click
- CommandButton Confirmation_Report_with_Charges "Confirm Report-Charges" · events: Click

## Form: NMIS_AGREEMENTS
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_AGREEMENTS
- **Backend tables:** NMIS_AGREEMENTS, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_CATEGORIES, NMIS_CONTACTS, NMIS_CONTACT_LINKS, NMIS_FISCAL_YEARS, NMIS_PRODUCTS, NMIS_PRODUCT_TYPES, NMIS_SOURCE_LOTS, NMIS_SPECIES, NMIS_SPECIES_GROUP, NMIS_SPECIES_PRODUCTS
- **Subforms:** Form.NMIS_CLIENT_MGMT_CODES subform1, Form.NMIS_SOURCE_LOTS_ID subform, Form.NMIS_AGREEMENTS_Other subform, Form.Seed_Balance Query subform, Form.NMIS_SOURCE_LastTestData Query subform
- **Opens:** Form:Agreement_for_Source_Lot, Form:NMIS_AGREEMENT_LOTS, Form:NMIS_AGREEMENT_LOTS_NEW, Form:NMIS_ASSOCIATES, Form:NMIS_Associates, Form:NMIS_CONTACTS, Form:NMIS_SOURCE_LOTS_Bend, Form:NMIS_SOURCE_LOTS_INPUT, Form:NMIS_SPECIES_PRODUCTS Form, Form:Refresh_Close
- **Opened from:** Form_Client_Bill_Menu, Form_NMIS_AGREEMENTS subform1, Forms_Open Module
- **Form events with code:** BeforeUpdate, Current, Open
- **Migration:** 10 of 24 bound fields mapped. Main GrowHub screens: /orders/new (5), /admin/products/new (2)

**Controls**
- TextBox Index = `Index`  [FormHeader]
- TextBox LastAgreementCN  [FormHeader]
- TextBox CN = `CN` → GrowHub source_lot.accessLegacyId (yes)  [FormHeader]
- TextBox INSERTED_INSTANCE = `INSERTED_INSTANCE` · default `=Now()`  [FormHeader]
- CommandButton Refresh and Close " Close" · events: Click  [FormHeader]
- TextBox New_CN = `=[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code`  [FormHeader]
- ComboBox Agreement_Lookup · rows: `SELECT NMIS_AGREEMENTS.CN, [CLIENT_ASSOCIATE] & " " & nz([PLNTMSTR_SYMBOL],"NO SPEC PROD") & " " & [Class] & "  " & NZ([ID],"*          *") & "   " & [ID_Sourceb] & " (REQ: " & [AMOUNT_REQUESTED] & "  FY's:" & [NMIS_AGREEMENTS].[BEGIN_FY] & "-" & [NMIS_AGREEMENTS].[END_FY] & ")" AS LOOKUP, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.CN, IIf(IsNull([NMIS_AGREEMENT_LOTS].[CN]),"N","y") AS no_agreeme` · events: AfterUpdate, Enter  [FormHeader]
- CommandButton Open Products Form "Species Prod" · events: Click  [FormHeader]
- CommandButton Open Source Lot Form "Source Lots" · events: Click  [FormHeader]
- CommandButton Open_Bend_Lots_Form " Bend Lots" · events: Click  [FormHeader]
- ComboBox Filter_for_Product_Type · rows: `B;Bareroot Plant;C;Container Plant;N;Native Propagules;*;All Product Types` · default `"*"` · events: Enter  [FormHeader]
- ComboBox Filter_For_Fy · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC;` · default `=[Forms]![Switchboard]![FY_For_Reports]` · events: DblClick  [FormHeader]
- ComboBox Filter_for_Species · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY WHERE (((NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.HIDE)=False));` · default `"*"`  [FormHeader]
- ComboBox Filter_For_Product · rows: `SELECT NMIS_PRODUCTS.CN, NMIS_PRODUCTS.PRODUCT_DESC AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.PRODUCT_CLASS, [NMIS_PRODUCT_TYPES].[PRODUCT_TYPE_DESC] & " " AS [Begin Product], [NMIS_PRODUCT_TYPES_1].[PRODUCT_TYPE_DESC] & " " AS [End Product], [CATEGORY_CODE] & " " AS Category FROM NMIS_PRODUCT_TYPES AS NMIS_PRODUCT_TYPES_1 INNER JOIN (NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.P` · default `"*"` · events: Enter, Exit  [FormHeader]
- ComboBox Filter_For_Client · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;` · default `"*"` · events: DblClick  [FormHeader]
- ComboBox Filter_For_End_FY "End FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC;` · default `"*"`  [FormHeader]
- TextBox Like_Agreement_Lots · default `"*"` · events: AfterUpdate, DblClick  [FormHeader]
- CommandButton Wildcard_Tip "Wildcard Tip" · events: Click  [FormHeader]
- CheckBox No_Agreement_lot "No Agreement Lot" · default `False`  [FormHeader]
- TextBox Like_Species_Prod_Desc · default `"*"` · events: DblClick  [FormHeader]
- ComboBox BEGIN_FY "Begin FY" = `BEGIN_FY` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![Switchboard]![FY_For_Reports]` · events: Exit → GrowHub order_cycle_planning.plannedSowDate (blank)
- TabControl TabCtl9
- Subform NMIS_CLIENT_MGMT_CODES subform1 subform `Form.NMIS_CLIENT_MGMT_CODES subform1` (master CN → child AGREEMENT_CN) · tab Product Information
- Subform NMIS_SOURCE_LOTS_ID subform subform `Form.NMIS_SOURCE_LOTS_ID subform` (master SOURCE_LOT_CN → child CN) · tab Product Information
- TextBox INSERTED_BY = `INSERTED_BY` · default `=CurrentUserName()` · tab Product Information
- TextBox INSERTED_DATE = `INSERTED_DATE` · default `=Date()` · tab Product Information
- TextBox Text58 = `MODIFIED_BY` · tab Product Information
- TextBox Text59 = `MODIFIED_DATE` · tab Product Information
- CommandButton Agreements_for_Source "View Same FY Agreements for this Source" · tab Product Information · events: Click
- Subform NMIS_AGREEMENTS_Other subform subform `Form.NMIS_AGREEMENTS_Other subform` (master SOURCE_LOT_CN;BEGIN_FY → child SOURCE_LOT_CN;BEGIN_FY) · tab Product Information
- Subform Seed_Balance Query subform subform `Form.Seed_Balance Query subform` (master SOURCE_LOT_CN → child CN) · tab Product Information
- Subform NMIS_SOURCE_LastTestData Query subform subform `Form.NMIS_SOURCE_LastTestData Query subform` (master SOURCE_LOT_CN → child SOURCE_LOT_CN) · tab Product Information
- ComboBox Client_Lookup · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;` · tab Source Lot Lookup · events: AfterUpdate, DblClick
- ComboBox Species_Group · rows: `SELECT NMIS_SPECIES_GROUP.SPECIES_GROUP FROM NMIS_SPECIES_GROUP;` · tab Source Lot Lookup · events: AfterUpdate, DblClick
- ComboBox Species_Lookup · rows: `SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.SPECIES_NO, NMIS_SPECIES.VERNACULAR, NMIS_SPECIES.GENUS, NMIS_SPECIES.SPECIES, NMIS_SPECIES.SPECIES_GROUP FROM NMIS_SPECIES WHERE (((NMIS_SPECIES.SPECIES_GROUP) Like [Forms]![NMIS_AGREEMENTS]![Species_Group] & "*"));` · tab Source Lot Lookup · events: AfterUpdate, DblClick
- TextBox Seed_Zone_Lookup · tab Source Lot Lookup · events: AfterUpdate, DblClick
- TextBox Elev_Lookup · tab Source Lot Lookup · events: AfterUpdate, DblClick
- TextBox Breeding_Zone_Lookup · tab Source Lot Lookup · events: AfterUpdate, DblClick
- TextBox Breeding_Subunit_Lookup · tab Source Lot Lookup · events: AfterUpdate, DblClick
- TextBox Tree_No_Lookup · tab Source Lot Lookup · events: AfterUpdate, DblClick
- CommandButton Clear_Lookups "Clear All" · tab Source Lot Lookup · events: Click
- ListBox Source_Code "Source Information           Scroll Right for Tree No(s) >>>" = `SOURCE_LOT_CN` · rows: `SELECT NMIS_SOURCE_LOTS.CN, Source_Lot_ID_and_Source_string.SOURCE, NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE AS [Stored For], Round([Sum Of ACTIVITY_UNITS],3) AS Balance, [**NMIS_SOURCE_LastTestData_Table].GERM_PCT AS Ger, Nz([BREEDING_SUBUNIT],"  ") AS BrSubU, Nz([TREE_NUMBER],"  ") AS [Tree No(s)] FROM [**NMIS_SOURCE_LastTestData_Table] RIGHT JOIN ((([NMIS_SPECIES_GROUP Query] ` · tab Source Lot Lookup → GrowHub order_cycle_planning.sourceLotUuid (blank)
- ComboBox Associate "Code                   Client Name                           " = `CLIENT_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Historical)") AS name, NMIS_ASSOCIATES.HISTORICAL FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.HISTORICAL) Like IIf(Not ([NMIS_ASSOCIATES].[HISTORICAL])=IsNull([Forms]![NMIS_AGREEMENTS]![ASSOCIATE]),"*",False)));` · events: AfterUpdate
- ComboBox Source_lot_cn "Source" = `SOURCE_LOT_CN` · rows: `SELECT NMIS_SOURCE_LOTS.CN, Source_Lot_ID_and_Source_string.SOURCE, NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE FROM ([NMIS_SPECIES_GROUP Query] RIGHT JOIN NMIS_SOURCE_LOTS ON [NMIS_SPECIES_GROUP Query].PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN ORDER BY Source_Lot_ID_and_` → GrowHub order_cycle_planning.sourceLotUuid (blank)
- ComboBox source_id = `SOURCE_LOT_CN` · rows: `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE, NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE AS [Stored For], [Seed_Balance Query].[Sum Of ACTIVITY_UNITS] AS Balance FROM [Seed_Balance Query] RIGHT JOIN (([NMIS_SPECIES_GROUP Query] RIGHT JOIN NMIS_SOURCE_LOTS ON [NMIS_SPECIES_GROUP Query].PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMST` · default `Null` · events: Change, DblClick, Enter, Exit, NotInList → GrowHub order_cycle_planning.sourceLotUuid (blank)
- ComboBox PLNTMSTR_SYMBOL "Species" = `PLNTMSTR_SYMBOL` · rows: `SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.VERNACULAR FROM NMIS_SPECIES;` → GrowHub source_lot.speciesUuid (yes)
- ComboBox Species Product = `SPECIES_PRODUCT_CN` · rows: `SELECT NMIS_SPECIES_PRODUCTS.CN, NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC FROM (NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE=NMIS_PRODUCTS.END_PRODUCT_TYPE) INNER JOIN NMIS_SPECIES_PRODUCTS ON NMIS_PRODUCTS.CN=NMIS_SPECIES_PRODUCTS.PRODUCT_CN GROUP BY NMIS_SPECIES_PRODUCTS.CN, NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC;`
- ComboBox END_FY "End FY" = `END_FY` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` → GrowHub grow_request.targetLiftYear (blank)
- TextBox AMOUNT_REQUESTED "Amt Req" = `AMOUNT_REQUESTED` · events: DblClick, Enter, Exit, LostFocus
- ComboBox AGREEMENT_LOT_CN "Agreement Lot ID" = `AGREEMENT_LOT_CN` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_PRODUCTS.PRODUCT_DESC, Agreement_Lot_Size_Spec_String_for_Request.SIZE_SPEC_STRING, "(" & [ID_ORIGINAL] & ")" AS [ID Orig] FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_AGREEMENT_LOTS INNER JOIN Agreement_Lot_Size_Spec_String_for_Request ON NMIS_AGREEMENT_LOTS.CN = Agreement_Lot_Size_Spec_String_for_Request.CN) ON ` · events: DblClick, Enter
- ComboBox SPECIES_PRODUCT_CN "Select/Change Species Product" = `SPECIES_PRODUCT_CN` · rows: `SELECT NMIS_SPECIES_PRODUCTS.CN, [NMIS_SPECIES_PRODUCTS].[SPECIES_PRODUCT_DESC] & " " & [NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL] & " " & [SIZE_SPEC_STRING] & " (" & [BEGIN_PRODUCT_TYPE] & "-" & [END_PRODUCT_TYPE] & ") (" & [BEGIN_SEASON_CODE] & "-" & [END_SEASON_CODE] & ")" & IIf(([NMIS_SPECIES_PRODUCTS].[historical] Or [NMIS_PRODUCTS].[historical])," *HISTORICAL*") AS [Species Product Descriptio` · events: Change, Enter, Exit
- TextBox Total_FY = `TOTAL_NUMBER_OF_FY` → GrowHub species_product.totalFiscalYears (yes)
- CommandButton Open Agreement Lots Form "Click to View or Create a New Agreement Lot" · events: Click
- ComboBox CLIENT_NAME = `CLIENT_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Historical)") AS name FROM NMIS_ASSOCIATES ORDER BY [ASSOCIATE_NAME] & IIf([historical]," (Historical)");` · events: AfterUpdate, DblClick, Enter, Exit
- ComboBox CATEGORY_CODE "Category" = `CATEGORY_CODE` · rows: `SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES;` → GrowHub order_cycle_planning.stockType (blank)
- ComboBox Contact_CN "Contact" = `CONTACT_CN` · rows: `SELECT NMIS_CONTACTS.CN, IIf(Not IsNull([LAST_NAME]),[LAST_NAME] & IIf(Not IsNull([FIRST_NAME]),", " & [FIRST_NAME],""),"") & IIf([historical]," (Hist)") AS Name, Contact_Phone_Number_Primary.PHONE_NUMBER FROM (Contact_Phone_Number_Primary RIGHT JOIN NMIS_CONTACTS ON Contact_Phone_Number_Primary.CONTACT_CN = NMIS_CONTACTS.CN) LEFT JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CO` · events: DblClick, Enter, GotFocus
- TextBox ORIG_AMOUNT_REQUESTED "Orig Req" = `ORIG_AMOUNT_REQUESTED` · events: DblClick, Enter, Exit
- TextBox NOTE "Note:" = `NOTE` → GrowHub species_product.notes (maybe)
- TextBox ASSOCIATE_backup
- TextBox Contact_CN_Backup

## Form: NMIS_AGREEMENTS subform1
- **Caption:** NMIS_AGREEMENTS subform1
- **Menu path:** Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_AGREEMENT_LOTS › NMIS_AGREEMENTS subform1
- **Record source:** SELECT NMIS_AGREEMENTS.CLIENT_ASSOCIATE, NMIS_AGREEMENTS.AMOUNT_REQUESTED, NMIS_AGREEMENTS.BEGIN_FY, NMIS_AGREEMENTS.END_FY, NMIS_AGREEMENTS.NOTE, NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, NMIS_AGREEMENTS.AGREEMENT_LOT_CN, NMIS_AGREEMENTS.SPECIES_PRODUCT_CN, NMIS_AGREEMENTS.SOURCE_LOT_CN, NMIS_AGREEMENTS.CN, NMIS_AGREEMENTS.ORIG_AMOUNT_REQUESTED FROM NMIS_SOURCE_LOTS RIGHT JOIN NMIS_AGREEMENTS ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENTS.SOURCE_LOT_CN;
- **Backend tables:** NMIS_AGREEMENTS, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_FISCAL_YEARS, NMIS_PRODUCTS, NMIS_SOURCE_LOTS, NMIS_SPECIES_PRODUCTS
- **Opens:** Form:NMIS_AGREEMENTS
- **Form events with code:** Current
- **Migration:** 6 of 10 bound fields mapped. Main GrowHub screens: /orders/new (3), /admin/products/new (1)

**Controls**
- ComboBox CLIENT_ASSOCIATE = `CLIENT_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Historical)") AS name FROM NMIS_ASSOCIATES;`
- TextBox AMOUNT_REQUESTED = `AMOUNT_REQUESTED`
- TextBox NOTE = `NOTE` → GrowHub species_product.notes (maybe)
- ComboBox BEGIN_FY = `BEGIN_FY` · rows: `SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;` → GrowHub order_cycle_planning.plannedSowDate (blank)
- ComboBox END_FY = `END_FY` · rows: `SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;` → GrowHub grow_request.targetLiftYear (blank)
- ComboBox SPECIES_PRODUCT_CN = `SPECIES_PRODUCT_CN` · rows: `SELECT NMIS_SPECIES_PRODUCTS.CN, [Species_Products_String] & IIf(([NMIS_SPECIES_PRODUCTS].[historical] Or [NMIS_PRODUCTS].[historical])," *HISTORICAL*") AS [Species Product], Product_String.Product_String AS Product FROM NMIS_PRODUCTS INNER JOIN (Product_String INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN Species_Products_with_SizeSpecString ON NMIS_SPECIES_PRODUCTS.CN = Species_Products_with_Size`
- ComboBox SOURCE_LOT_CN = `SOURCE_LOT_CN` · rows: `SELECT Source_Lot_ID_and_Source_string.CN, NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE FROM NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN ORDER BY NMIS_SOURCE_LOTS.ID;` → GrowHub order_cycle_planning.sourceLotUuid (blank)
- CommandButton Open_NMIS_Agreements Form "Edit" · events: Click
- TextBox CN = `CN` → GrowHub source_lot.accessLegacyId (yes)
- TextBox PLNTMSTR_SYMBOL = `PLNTMSTR_SYMBOL` → GrowHub source_lot.speciesUuid (yes)
- TextBox ORIG_AMOUNT_REQUESTED = `ORIG_AMOUNT_REQUESTED`
- TextBox SUM_Amt_Requested = `=Round(Sum([AMOUNT_REQUESTED]),3)`  [FormFooter]

## Form: NMIS_AGREEMENTS_Other subform
- **Caption:** NMIS_AGREEMENTS_Other subform
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_AGREEMENTS › NMIS_AGREEMENTS_Other subform
- **Record source:** SELECT NMIS_AGREEMENTS.SPECIES_PRODUCT_CN, NMIS_AGREEMENTS.SOURCE_LOT_CN, NMIS_AGREEMENTS.AGREEMENT_LOT_CN, NMIS_AGREEMENTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENTS.AMOUNT_REQUESTED, NMIS_AGREEMENTS.CLIENT_ASSOCIATE, [Species_Product_and _Products].Class, NMIS_AGREEMENT_LOTS.SOURCE_REQUIRED, Last(NMIS_ID_ACTIVITIES_SOW_WITHDRAWALS.ACTIVITY_DATE) AS LastOfACTIVITY_DATE, NMIS_ID_ACTIVITIES_SOW_WITHDRAWALS.ACTIVITY_CODE, IIf(Not IsNull([ACTIVITY_UNITS]),"Yes","No") AS WD FROM ([Species_Product_and _Products] INNER JOIN (NMIS_AGREEMENT_LOTS RIGHT JOIN NMIS_AGREEMENTS ON NMIS_AGREEMENT_LOTS.CN = NMIS_AGREEMENTS.AGREEMENT_LOT_CN) ON [Species_Product_and _Products].CN = NMIS_AGREEMENTS.SPECIES_PRODUCT_CN) LEFT JOIN NMIS_ID_ACTIVITIES_SOW_WITHDRAWALS ON NMIS_AGREEMENT_LOTS.CN = NMIS_ID_ACTIVITIES_SOW_WITHDRAWALS.AGREEMENT_LOT_CN GROUP BY NMIS_AGREEMENTS.SPECIES_PRODUCT_CN, NMIS_AGREEMENTS.SOURCE_LOT_CN, NMIS_AGREEMENTS.AGREEMENT_LOT_CN, NMIS_AGREEMENTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENTS.AMOUNT_REQUESTED, NMIS_AGREEMENTS.CLIENT_ASSOCIATE, [Species_Product_and _Products].Class, NMIS_AGREEMENT_LOTS.SOURCE_REQUIRED, NMIS_ID_ACTIVITIES_SOW_WITHDRAWALS.ACTIVITY_CODE, IIf(Not IsNull([ACTIVITY_UNITS]),"Yes","No") HAVING (((NMIS_ID_ACTIVITIES_SOW_WITHDRAWALS.ACTIVITY_CODE) In ("BRWS","BRSS","BRMS","BRFS","CONWS","CONSS","CONMS","CONFS") Or (NMIS_ID_ACTIVITIES_SOW_WITHDRAWALS.ACTIVITY_CODE) Is Null));
- **Backend tables:** NMIS_AGREEMENTS, NMIS_AGREEMENT_LOTS, NMIS_FISCAL_YEARS
- **Migration:** 4 of 10 bound fields mapped. Main GrowHub screens: /orders/new (2)

**Controls**
- TextBox AGREEMENT_LOT_CN = `AGREEMENT_LOT_CN`
- ComboBox BEGIN_FY = `BEGIN_FY` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` → GrowHub order_cycle_planning.plannedSowDate (blank)
- TextBox SOURCE_LOT_CN = `SOURCE_LOT_CN` → GrowHub order_cycle_planning.sourceLotUuid (blank)
- TextBox SPECIES_PRODUCT_CN = `SPECIES_PRODUCT_CN`
- TextBox ID = `ID` → GrowHub grow_request.growLotId (blank)
- TextBox AMOUNT_REQUESTED = `AMOUNT_REQUESTED`
- TextBox Class = `Class`
- TextBox CLIENT_ASSOCIATE = `CLIENT_ASSOCIATE`
- TextBox SourceRequired = `SOURCE_REQUIRED` → GrowHub order_cycle_planning.estimatedLbsOfSeed (blank)
- TextBox Withdrawn = `WD`

## Form: NMIS_ASSOCIATE_GROUPS subform
- **Caption:** NMIS_ASSOCIATE_GROUPS subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ASSOCIATES › NMIS_ASSOCIATE_GROUPS subform
- **Record source:** NMIS_ASSOCIATE_GROUPS
- **Backend tables:** NMIS_ASSOCIATE_GROUPS, NMIS_GROUPS
- **Migration:** 0 of 1 bound fields mapped. Main GrowHub screens: none

**Controls**
- ComboBox GROUP_NAME = `GROUP_CN` · rows: `SELECT NMIS_GROUPS.* FROM NMIS_GROUPS ORDER BY NMIS_GROUPS.GROUP_NAME;`

## Form: NMIS_ASSOCIATES
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ASSOCIATES
- **Backend tables:** NMIS_ASSOCIATES, NMIS_COUNTRIES, NMIS_STATES
- **Subforms:** Form.NMIS_ASSOCIATES_99S subform, Form.NMIS_PHONE_NUMBERS_ASSOCIATE subform, Form.NMIS_ASSOCIATES_CONTACTS subform, Form.NMIS_PHONE_NUMBERS_CONTACTS subform, Form.NMIS_CONTACT_NAME_SELECTED subform, Form.NMIS_ASSOCIATES_CONTACT_INFO Subform, Form.NMIS_ASSOCIATE_GROUPS subform, Form.NMIS_ASSOCIATES subform1
- **Opens:** Form:NMIS_CONTACTS
- **Opened from:** Form_Lookup_Tables_Menu Subform, Form_NMIS_AGREEMENTS, Form_NMIS_AGREEMENTS_bu, Form_NMIS_CONTRACTS, Form_NMIS_PROCESSING_ORDERS_INPUT, Form_NMIS_PROCESSING_ORDERS_INPUT_LotIdLookup, Form_NMIS_PROCESSING_ORDERS_INPUTbu, Form_NMIS_SOURCE_LOTS_INPUT, Form_Seed_Shipping_Ticket Subform, Form_xLookup_Tables_Menu
- **Form events with code:** AfterInsert, Open
- **Migration:** 6 of 33 bound fields mapped. Main GrowHub screens: /admin/client-management/new (6), /source-lots/new (1), /financial-management/invoicing/create (1), /shipping/create (1)

**Controls**
- CommandButton Unfilter "Click to Find an Associate" · events: Click  [FormHeader]
- Subform NMIS_ASSOCIATES_99S subform subform `Form.NMIS_ASSOCIATES_99S subform` (master  → child )  [FormHeader]
- CommandButton New_99_Client "Click to Add a Non-Gov Associate" · events: Click  [FormHeader]
- CommandButton New_Record "Click to Add a  Gov Associate" · events: Click  [FormHeader]
- ComboBox ASSOCIATE_Lookup · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Historical)" & " ",IIf(Not IsNull([DEPARTMENT])," - " & [department])) AS name FROM NMIS_ASSOCIATES WHERE ((([ASSOCIATE_NAME] & IIf([historical]," (Historical)" & " ",IIf(Not IsNull([DEPARTMENT])," - " & [department]))) Like [Forms]![NMIS_ASSOCIATES]![LikeAssociate])) ORDER BY NMIS_ASSOCIATES.ASSOCIATE;` · events: AfterUpdate, Enter  [FormHeader]
- ComboBox ASSOCIATE_Lookup_by_Name · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Historical)" & " ",IIf(Not IsNull([DEPARTMENT])," - " & [department])) AS name, NMIS_ASSOCIATES.ASSOCIATE FROM NMIS_ASSOCIATES WHERE ((([ASSOCIATE_NAME] & IIf([historical]," (Historical)" & " ",IIf(Not IsNull([DEPARTMENT])," - " & [department]))) Like [Forms]![NMIS_ASSOCIATES]![LikeAssociate])) ORDER BY [ASSOCIATE_NAME] & IIf` · events: AfterUpdate, Enter  [FormHeader]
- TextBox LikeAssociate "Like Name:" · default `"*"` · events: AfterUpdate, DblClick  [FormHeader]
- TextBox ASSOCIATE "Associate:" = `ASSOCIATE` · events: DblClick, Enter, Exit → GrowHub client.clientId (blank)
- TextBox ASSOCIATE_NAME "Name:" = `ASSOCIATE_NAME` · events: DblClick, Enter, Exit → GrowHub client.department (blank)
- TextBox DEPARTMENT "Dept/Attn:" = `DEPARTMENT` → GrowHub client.unit (blank)
- TextBox EMAIL_ADDRESS "Email:" = `EMAIL_ADDR` → GrowHub client.billingEmailAddress (blank)
- TextBox SQLNET_ADDR "SQLNET Addr:" = `SQLNET_ADDR`
- TextBox LAST_SQLNET_FETCH "Last SQLNET Fetch:" = `LAST_SQLNET_FETCH`
- CheckBox NMIS_NETWORK "Nmis Network:" = `NMIS_NETWORK`
- CheckBox NURSERY "Nursery?" = `NURSERY`
- CheckBox ON_LOCAL_CELL "On Local Cell:" = `ON_LOCAL_CELL`
- TextBox RNS_HOME_ASSOCIATE "RNS Home Associate:" = `RNS_HOME_ASSOCIATE`
- TabControl TabCtl115
- TextBox MAIL_ADDR "P.O. Box:" = `MAIL_ADDR` · tab Address/Phone → GrowHub client.billingAddress (blank)
- TextBox STREET_ADDR "Street:" = `STREET_ADDR` · tab Address/Phone
- TextBox CITY "City:" = `CITY` · tab Address/Phone
- ComboBox STATE "State:" = `STATE` · rows: `SELECT NMIS_STATES.STATE_CODE, NMIS_STATES.STATE_NAME FROM NMIS_STATES;` · tab Address/Phone
- TextBox ZIPCODE "Zip:" = `ZIPCODE` · tab Address/Phone
- ComboBox COUNTRY "Country:" = `COUNTRY` · rows: `SELECT NMIS_COUNTRIES.COUNTRY_CODE, NMIS_COUNTRIES.COUNTRY_NAME FROM NMIS_COUNTRIES;` · default `"US"` · tab Address/Phone
- TextBox FOREIGN_STATE "Foreign State:" = `FOREIGN_STATE` · tab Address/Phone
- TextBox SHIP_ADDR "Street:" = `SHIP_ADDR` · tab Address/Phone · events: DblClick → GrowHub client.shippingAddress (blank)
- TextBox SHIP_CITY "City:" = `SHIP_CITY` · tab Address/Phone
- ComboBox SHIP_STATE "State:" = `SHIP_STATE` · rows: `SELECT NMIS_STATES.STATE_CODE, NMIS_STATES.STATE_NAME FROM NMIS_STATES;` · tab Address/Phone
- TextBox SHIP_ZIPCODE "Zip:" = `SHIP_ZIPCODE` · tab Address/Phone
- ComboBox SHIP_COUNTRY "Country:" = `SHIP_COUNTRY` · rows: `SELECT NMIS_COUNTRIES.COUNTRY_CODE, NMIS_COUNTRIES.COUNTRY_NAME FROM NMIS_COUNTRIES;` · tab Address/Phone
- TextBox SHIP_FOREIGN_STATE "Foreign State:" = `SHIP_FOREIGN_STATE` · tab Address/Phone
- TextBox SHIP_MILES "Miles:" = `SHIP_MILES` · tab Address/Phone
- TextBox NOTE "Note:" = `NOTE` · tab Address/Phone
- Subform Child213 "Main Phone Numbers:" subform `Form.NMIS_PHONE_NUMBERS_ASSOCIATE subform` (master ASSOCIATE → child ASSOCIATE) · tab Address/Phone
- Subform NMIS_ASSOCIATES_CONTACTS  subform "Contacts" subform `Form.NMIS_ASSOCIATES_CONTACTS subform` (master ASSOCIATE → child LINK_ASSOCIATE) · tab Page126
- Subform NMIS_PHONE_NUMBERS_CONTACTS subform subform `Form.NMIS_PHONE_NUMBERS_CONTACTS subform` (master EMAIL_ADDR → child CONTACT_CN) · tab Page126
- Subform NMIS_CONTACT_NAME_SELECTED subform subform `Form.NMIS_CONTACT_NAME_SELECTED subform` (master EMAIL_ADDR → child CN) · tab Page126
- Subform NMIS_ASSOCIATES_CONTACT_INFO Subform subform `Form.NMIS_ASSOCIATES_CONTACT_INFO Subform` (master EMAIL_ADDR → child CN) · tab Page126
- Subform Child119 subform `Form.NMIS_ASSOCIATE_GROUPS subform` (master ASSOCIATE → child ASSOCIATE)
- Subform NMIS_ASSOCIATES subform1 subform `Form.NMIS_ASSOCIATES subform1` (master  → child ) · events: Exit
- ComboBox SOURCE_CODE_TYPE "Source Code Type:" = `SOURCE_CODE_TYPE` · rows: `R1;R2;R4;R5;R6;R6d;R9;BLM`
- TextBox ASSOCIATE_NAME_UPPER "Associate Name Upper:" = `ASSOCIATE_NAME_UPPER`
- TextBox EMAIL_ADDR = `=[NMIS_ASSOCIATES_CONTACTS  subform].Form!CONTACT_CN`
- ComboBox PARENT_ASSOCIATE "Parent:" = `PARENT_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;` · events: NotInList
- CheckBox PRINT_LABEL "Label?" = `PRINT_LABEL`
- ComboBox Combo235 = `=[PARENT_ASSOCIATE]` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;`
- ComboBox STORAGE_ASSOCIATE "Storage:" = `STORAGE_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.NURSERY)=-1));`
- TextBox Entered_By "By:" = `Entered_By` · default `=CurrentUserName()`
- TextBox Entered_Date "Date Entered:" = `Entered_Date` · default `Date()`
- CheckBox HISTORICAL "Historical:" = `HISTORICAL` · default `False`
- TextBox Text205 = `=IIf([Historical],"HISTORICAL")`

## Form: NMIS_ASSOCIATES subform
- **Caption:** NMIS_ASSOCIATES subform
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › NMIS_CONTACTS › NMIS_ASSOCIATES subform
- **Record source:** SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_CONTACT_LINKS.LINK_ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_CONTACTS.CN, NMIS_CONTACT_LINKS.CONTACT_CN FROM (NMIS_CONTACTS LEFT JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN=NMIS_CONTACT_LINKS.CONTACT_CN) LEFT JOIN NMIS_ASSOCIATES ON NMIS_CONTACT_LINKS.LINK_ASSOCIATE=NMIS_ASSOCIATES.ASSOCIATE;
- **Backend tables:** NMIS_ASSOCIATES, NMIS_CONTACTS, NMIS_CONTACT_LINKS
- **Migration:** 0 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- ComboBox ASSOCIATE = `LINK_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Historical)") AS name FROM NMIS_ASSOCIATES;`
- ComboBox ASSOCIATE_NAME = `LINK_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Historical)") AS name FROM NMIS_ASSOCIATES ORDER BY [ASSOCIATE_NAME] & IIf([historical]," (Historical)");`

## Form: NMIS_ASSOCIATES subform1
- **Caption:** NMIS_ASSOCIATES subform1
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ASSOCIATES › NMIS_ASSOCIATES subform1
- **Record source:** SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_ASSOCIATES.PARENT_ASSOCIATE, NMIS_ASSOCIATES.STORAGE_ASSOCIATE FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;
- **Backend tables:** NMIS_ASSOCIATES
- **Migration:** 2 of 4 bound fields mapped. Main GrowHub screens: /admin/client-management/new (2), /source-lots/new (1), /financial-management/invoicing/create (1)

**Controls**
- TextBox ASSOCIATE = `ASSOCIATE` → GrowHub client.clientId (blank)
- TextBox ASSOCIATE_NAME = `ASSOCIATE_NAME` → GrowHub client.department (blank)
- ComboBox PARENT_ASSOCIATE = `PARENT_ASSOCIATE` · rows: `SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;`
- ComboBox STORAGE_ASSOCIATE = `STORAGE_ASSOCIATE` · rows: `SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;`

## Form: NMIS_ASSOCIATES_99S subform
- **Caption:** NMIS_ASSOCIATES_99S subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ASSOCIATES › NMIS_ASSOCIATES_99S subform
- **Record source:** SELECT Max(Val([Associate])+1) AS Next_Surplus_Associate FROM NMIS_ASSOCIATES WHERE ((([NMIS_ASSOCIATES].[ASSOCIATE]) Like "99*"));
- **Backend tables:** NMIS_ASSOCIATES
- **Migration:** 0 of 1 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ASSOCIATE = `Next_Surplus_Associate`

## Form: NMIS_ASSOCIATES_ADDRESSES
- **Caption:** NMIS_ASSOCIATES_ADDRESSES
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC › Associate_Mail_Label_Input › NMIS_ASSOCIATES_ADDRESSES
- **Record source:** SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME_UPPER, NMIS_ASSOCIATES.MAIL_ADDR, NMIS_ASSOCIATES.STREET_ADDR, NMIS_ASSOCIATES.CITY, NMIS_ASSOCIATES.STATE, NMIS_ASSOCIATES.ZIPCODE, NMIS_ASSOCIATES.SHIP_ADDR, NMIS_ASSOCIATES.SHIP_CITY, NMIS_ASSOCIATES.SHIP_STATE, NMIS_ASSOCIATES.SHIP_ZIPCODE, NMIS_ASSOCIATES.SHIP_MILES FROM NMIS_ASSOCIATES;
- **Backend tables:** NMIS_ASSOCIATES
- **Migration:** 3 of 11 bound fields mapped. Main GrowHub screens: /admin/client-management/new (3), /source-lots/new (1), /financial-management/invoicing/create (1), /shipping/create (1)

**Controls**
- TextBox ASSOCIATE_NAME_UPPER "Associate Name:" = `ASSOCIATE_NAME_UPPER`  [FormHeader]
- TextBox ASSOCIATE = `ASSOCIATE` → GrowHub client.clientId (blank)  [FormHeader]
- TextBox MAIL_ADDR "Mail Address:" = `MAIL_ADDR` → GrowHub client.billingAddress (blank)
- TextBox STREET_ADDR "Street Address:" = `STREET_ADDR`
- TextBox CITY "City:" = `CITY`
- TextBox STATE "State:" = `STATE`
- TextBox ZIPCODE "Zip:" = `ZIPCODE`
- TextBox SHIP_ADDR "Address:" = `SHIP_ADDR` → GrowHub client.shippingAddress (blank)
- TextBox SHIP_CITY "City:" = `SHIP_CITY`
- TextBox SHIP_ZIPCODE "Ship Zip:" = `SHIP_ZIPCODE`
- TextBox SHIP_STATE "State:" = `SHIP_STATE`

## Form: NMIS_ASSOCIATES_ADDRESSES_shipping
- **Caption:** NMIS_ASSOCIATES_ADDRESSES
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC_shipping › Associate_Mail_Label_Input_shipping › NMIS_ASSOCIATES_ADDRESSES_shipping
- **Record source:** SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME_UPPER, NMIS_ASSOCIATES.MAIL_ADDR, NMIS_ASSOCIATES.STREET_ADDR, NMIS_ASSOCIATES.CITY, NMIS_ASSOCIATES.STATE, NMIS_ASSOCIATES.ZIPCODE, NMIS_ASSOCIATES.SHIP_ADDR, NMIS_ASSOCIATES.SHIP_CITY, NMIS_ASSOCIATES.SHIP_STATE, NMIS_ASSOCIATES.SHIP_ZIPCODE, NMIS_ASSOCIATES.SHIP_MILES FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.ASSOCIATE)=[Forms]![Seed_Shipping_Ticket Subform]![DELIVERED_TO_ASSOCIATE]));
- **Backend tables:** NMIS_ASSOCIATES
- **Migration:** 3 of 11 bound fields mapped. Main GrowHub screens: /admin/client-management/new (3), /source-lots/new (1), /financial-management/invoicing/create (1), /shipping/create (1)

**Controls**
- TextBox ASSOCIATE_NAME_UPPER "Associate Name:" = `ASSOCIATE_NAME_UPPER`  [FormHeader]
- TextBox ASSOCIATE = `ASSOCIATE` → GrowHub client.clientId (blank)  [FormHeader]
- TextBox MAIL_ADDR "Mail Address:" = `MAIL_ADDR` → GrowHub client.billingAddress (blank)
- TextBox STREET_ADDR "Street Address:" = `STREET_ADDR`
- TextBox CITY "City:" = `CITY`
- TextBox STATE "State:" = `STATE`
- TextBox ZIPCODE "Zip:" = `ZIPCODE`
- TextBox SHIP_ADDR "Address:" = `SHIP_ADDR` → GrowHub client.shippingAddress (blank)
- TextBox SHIP_CITY "City:" = `SHIP_CITY`
- TextBox SHIP_ZIPCODE "Ship Zip:" = `SHIP_ZIPCODE`
- TextBox SHIP_STATE "State:" = `SHIP_STATE`

## Form: NMIS_ASSOCIATES_CONTACT_INFO Subform
- **Caption:** NMIS_CONTACTS Subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ASSOCIATES › NMIS_ASSOCIATES_CONTACT_INFO Subform
- **Record source:** SELECT [NMIS_CONTACTS].[CN], [NMIS_CONTACTS].[LAST_NAME], [NMIS_CONTACTS].[FIRST_NAME], [NMIS_CONTACTS].[MIDDLE_INITIAL], [NMIS_CONTACTS].[CONTACT_NAME_UPPER], [NMIS_CONTACTS].[CONTACT_DESC], [NMIS_CONTACTS].[HOME_ASSOCIATE], [NMIS_CONTACTS].[RNS_USERNAME], [NMIS_CONTACTS].[EMAIL_ADDR], [NMIS_CONTACTS].[NOTE], [NMIS_CONTACTS].[Index] FROM NMIS_CONTACTS;
- **Backend tables:** NMIS_CONTACTS
- **Opens:** Form:NMIS_CONTACTS Subform
- **Migration:** 3 of 5 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox CONTACT_DESC = `CONTACT_DESC` → GrowHub client.contacts (blank)
- TextBox HOME_ASSOCIATE = `HOME_ASSOCIATE` → GrowHub client.contacts (blank)
- TextBox EMAIL_ADDR = `EMAIL_ADDR` → GrowHub client.contacts (blank)
- TextBox NOTE = `NOTE`
- TextBox CONTACT_NAME_UPPER "Contact Name Upper:" = `CONTACT_NAME_UPPER`

## Form: NMIS_ASSOCIATES_CONTACTS subform
- **Caption:** NMIS_PHONE_NUMBERS subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ASSOCIATES › NMIS_ASSOCIATES_CONTACTS subform
- **Record source:** SELECT NMIS_CONTACT_LINKS.* FROM NMIS_CONTACTS INNER JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((NMIS_CONTACTS.HISTORICAL)=False)) ORDER BY NMIS_CONTACTS.LAST_NAME, NMIS_CONTACTS.FIRST_NAME, NMIS_CONTACTS.MIDDLE_INITIAL;
- **Backend tables:** NMIS_CONTACTS, NMIS_CONTACT_LINKS
- **Opens:** Form:NMIS_CONTACTS
- **Form events with code:** AfterInsert
- **Migration:** 0 of 3 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox CONTACT_CN = `CONTACT_CN` · default `"AS_CON_SF" & Now()`  [FormHeader]
- TextBox LINK_ASSOCIATE = `LINK_ASSOCIATE`  [FormHeader]
- ComboBox CONTACT_NAME = `CONTACT_CN` · rows: `SELECT NMIS_CONTACTS.CN, IIf([LAST_NAME]>"" And [FIRST_NAME]>"",[LAST_NAME] & ", " & [FIRST_NAME] & " " & [MIDDLE_INITIAL],[LAST_NAME]) & IIf([historical]," (Historical)") AS NAME FROM NMIS_CONTACTS ORDER BY IIf([LAST_NAME]>"" And [FIRST_NAME]>"",[LAST_NAME] & ", " & [FIRST_NAME] & " " & [MIDDLE_INITIAL],[LAST_NAME]) & IIf([historical]," (Historical)");` · events: DblClick, Enter, GotFocus, NotInList

## Form: NMIS_ASSOCIATES_Ship_Miles
- **Caption:** Ship Miles
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_TICKETS_charge_per_ticket2 › NMIS_TICKETS_Charge_Per_Ticket2 subform › NMIS_ASSOCIATES_Ship_Miles
- **Record source:** SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_ASSOCIATES.SHIP_MILES, NMIS_ASSOCIATES.MAIL_ADDR, NMIS_ASSOCIATES.STREET_ADDR, NMIS_ASSOCIATES.CITY, NMIS_ASSOCIATES.STATE, NMIS_ASSOCIATES.ZIPCODE, NMIS_ASSOCIATES.SHIP_ADDR, NMIS_ASSOCIATES.SHIP_CITY, NMIS_ASSOCIATES.SHIP_STATE, NMIS_ASSOCIATES.SHIP_ZIPCODE FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.ASSOCIATE)=[Forms]![NMIS_TICKETS_charge_per_ticket2]![NMIS_TICKETS_Charge_Per_Ticket subform].[Form]![DELIVERED_TO_ASSOCIATE]));
- **Backend tables:** NMIS_ASSOCIATES, NMIS_STATES
- **Opened from:** Form_NMIS_TICKETS_Charge_Per_Ticket2 subform
- **Form events with code:** Close
- **Migration:** 4 of 12 bound fields mapped. Main GrowHub screens: /admin/client-management/new (4), /source-lots/new (1), /financial-management/invoicing/create (1), /shipping/create (1)

**Controls**
- TextBox ASSOCIATE_NAME "Associate Name" = `ASSOCIATE_NAME` → GrowHub client.department (blank)
- TextBox SHIP_MILES "Ship Miles" = `SHIP_MILES`
- TextBox ASSOCIATE "Associate" = `ASSOCIATE` → GrowHub client.clientId (blank)
- TextBox MAIL_ADDR "Mail Address:" = `MAIL_ADDR` → GrowHub client.billingAddress (blank)
- TextBox STREET_ADDR "Street Address:" = `STREET_ADDR`
- TextBox CITY "City:" = `CITY`
- TextBox SHIP_ADDR "Ship Address:" = `SHIP_ADDR` → GrowHub client.shippingAddress (blank)
- TextBox SHIP_CITY "Ship City:" = `SHIP_CITY`
- ComboBox SHIP_STATE "Ship State:" = `SHIP_STATE` · rows: `SELECT NMIS_STATES.STATE_CODE, NMIS_STATES.STATE_NAME, NMIS_STATES.STATE FROM NMIS_STATES ORDER BY NMIS_STATES.STATE_CODE;`
- TextBox SHIP_ZIPCODE "Ship Zip:" = `SHIP_ZIPCODE`
- TextBox ZIPCODE "Zip:" = `ZIPCODE`
- ComboBox STATE "State:" = `STATE` · rows: `SELECT NMIS_STATES.STATE_CODE, NMIS_STATES.STATE_NAME, NMIS_STATES.STATE FROM NMIS_STATES ORDER BY NMIS_STATES.STATE_CODE;`

## Form: NMIS_ASSOCIATES_Ship_Miles1
- **Caption:** Ship Miles
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_TICKETS_charge_per_ticket1 › NMIS_TICKETS_Charge_Per_Ticket1 subform › NMIS_ASSOCIATES_Ship_Miles1
- **Record source:** SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_ASSOCIATES.SHIP_MILES, NMIS_ASSOCIATES.MAIL_ADDR, NMIS_ASSOCIATES.STREET_ADDR, NMIS_ASSOCIATES.CITY, NMIS_ASSOCIATES.STATE, NMIS_ASSOCIATES.ZIPCODE, NMIS_ASSOCIATES.SHIP_ADDR, NMIS_ASSOCIATES.SHIP_CITY, NMIS_ASSOCIATES.SHIP_STATE, NMIS_ASSOCIATES.SHIP_ZIPCODE FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.ASSOCIATE)=[Forms]![NMIS_TICKETS_charge_per_ticket1]![NMIS_TICKETS_Charge_Per_Ticket subform].[Form]![DELIVERED_TO_ASSOCIATE]));
- **Backend tables:** NMIS_ASSOCIATES, NMIS_STATES
- **Opened from:** Form_NMIS_TICKETS_Charge_Per_Ticket1 subform
- **Form events with code:** Close
- **Migration:** 4 of 12 bound fields mapped. Main GrowHub screens: /admin/client-management/new (4), /source-lots/new (1), /financial-management/invoicing/create (1), /shipping/create (1)

**Controls**
- TextBox ASSOCIATE_NAME "Associate Name" = `ASSOCIATE_NAME` → GrowHub client.department (blank)
- TextBox SHIP_MILES "Ship Miles" = `SHIP_MILES`
- TextBox ASSOCIATE "Associate" = `ASSOCIATE` → GrowHub client.clientId (blank)
- TextBox MAIL_ADDR "Mail Address:" = `MAIL_ADDR` → GrowHub client.billingAddress (blank)
- TextBox STREET_ADDR "Street Address:" = `STREET_ADDR`
- TextBox CITY "City:" = `CITY`
- TextBox SHIP_ADDR "Ship Address:" = `SHIP_ADDR` → GrowHub client.shippingAddress (blank)
- TextBox SHIP_CITY "Ship City:" = `SHIP_CITY`
- ComboBox SHIP_STATE "Ship State:" = `SHIP_STATE` · rows: `SELECT NMIS_STATES.STATE_CODE, NMIS_STATES.STATE_NAME, NMIS_STATES.STATE FROM NMIS_STATES ORDER BY NMIS_STATES.STATE_CODE;`
- TextBox SHIP_ZIPCODE "Ship Zip:" = `SHIP_ZIPCODE`
- TextBox ZIPCODE "Zip:" = `ZIPCODE`
- ComboBox STATE "State:" = `STATE` · rows: `SELECT NMIS_STATES.STATE_CODE, NMIS_STATES.STATE_NAME, NMIS_STATES.STATE FROM NMIS_STATES ORDER BY NMIS_STATES.STATE_CODE;`

## Form: NMIS_ASSOCIATES_Ship_Miles_st
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_ASSOCIATES_Ship_Miles_st
- **Backend tables:** NMIS_STATES
- **Opened from:** Form_NMIS_SHIPPING_TICKET subform
- **Migration:** 0 of 13 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ASSOCIATE_NAME "Associate Name" = `ASSOCIATE_NAME`
- TextBox SHIP_MILES "Ship Miles" = `SHIP_MILES`
- TextBox ASSOCIATE "Associate" = `ASSOCIATE`
- TextBox MAIL_ADDR "Mail Address:" = `MAIL_ADDR`
- TextBox STREET_ADDR "Street Address:" = `STREET_ADDR`
- TextBox CITY "City:" = `CITY`
- TextBox SHIP_ADDR "Ship Address:" = `SHIP_ADDR`
- TextBox SHIP_CITY "Ship City:" = `SHIP_CITY`
- ComboBox SHIP_STATE "Ship State:" = `SHIP_STATE` · rows: `SELECT NMIS_STATES.STATE_CODE, NMIS_STATES.STATE_NAME, NMIS_STATES.STATE FROM NMIS_STATES ORDER BY NMIS_STATES.STATE_CODE;`
- TextBox SHIP_ZIPCODE "Ship Zip:" = `SHIP_ZIPCODE`
- TextBox ZIPCODE "Zip:" = `ZIPCODE`
- ComboBox STATE "State:" = `STATE` · rows: `SELECT NMIS_STATES.STATE_CODE, NMIS_STATES.STATE_NAME, NMIS_STATES.STATE FROM NMIS_STATES ORDER BY NMIS_STATES.STATE_CODE;`
- TextBox Text16 "Note:" = `NOTE`

## Form: NMIS_CATEGORIES
- **Caption:** NMIS CATEGORIES
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_CATEGORIES
- **Record source:** NMIS_CATEGORIES
- **Backend tables:** NMIS_CATEGORIES
- **Opened from:** Form_Lookup_Tables_Menu Subform, Form_xLookup_Tables_Menu
- **Migration:** 0 of 7 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox CATEGORY_DESC = `CATEGORY_DESC`
- CheckBox DERIVED_BY_PRODUCT = `DERIVED_BY_PRODUCT`
- TextBox FUND_CODE = `FUND_CODE`
- TextBox CATAGORY_CODE = `CATEGORY_CODE`
- TextBox CATEGORY_CODE_CONDENSED = `CATEGORY_CODE_CONDENSED`
- TextBox NURSERY_ASSOCIATE = `NURSERY_ASSOCIATE` · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]`
- CheckBox HISTORICAL = `HISTORICAL`

## Form: NMIS_CLIENT_MGMT_CODES subform
- **Caption:** NMIS_CLIENT_MGMT_CODES subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › NMIS_ID_ACTIVITIES Subform › NMIS_ID_MGMT_CODES subform › NMIS_CLIENT_MGMT_CODES subform
- **Record source:** SELECT NMIS_CLIENT_MGMT_CODES.ACTIVITY_ID_CN, NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE, NMIS_CLIENT_MGMT_CODES.MGMT_CODE, NMIS_CLIENT_MGMT_CODES.MGMT_CODE_PCT, NMIS_CLIENT_MGMT_CODES.FISCAL_YEAR_USED FROM NMIS_CLIENT_MGMT_CODES;
- **Backend tables:** NMIS_ASSOCIATES, NMIS_CLIENT_MGMT_CODES, NMIS_FISCAL_YEARS
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox MGMT_CODE = `MGMT_CODE` · events: DblClick, Exit
- TextBox MGMT_CODE_PCT = `MGMT_CODE_PCT` · default `100`
- ComboBox Fiscal_Year_Used = `FISCAL_YEAR_USED` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![NMIS_SOURCE_LOTS]![NMIS_ID_ACTIVITIES2 Subform].[Form]![Fiscal_Year]`
- ComboBox CLIENT_ASSOCIATE = `CLIENT_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;` · default `=[Forms]![NMIS_SOURCE_LOTS]![STORED_FOR_ASSOCIATE]`
- TextBox Total_PCT "Total %:" = `=Sum([MGMT_CODE_PCT])`  [FormFooter]

## Form: NMIS_CLIENT_MGMT_CODES subform1
- **Caption:** NMIS_CLIENT_MGMT_CODES subform1
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_AGREEMENTS › NMIS_CLIENT_MGMT_CODES subform1
- **Record source:** SELECT NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE, NMIS_CLIENT_MGMT_CODES.FISCAL_YEAR_USED, NMIS_CLIENT_MGMT_CODES.MGMT_CODE, NMIS_CLIENT_MGMT_CODES.MGMT_CODE_PCT, NMIS_CLIENT_MGMT_CODES.AGREEMENT_CN FROM NMIS_CLIENT_MGMT_CODES;
- **Backend tables:** NMIS_ASSOCIATES, NMIS_CLIENT_MGMT_CODES, NMIS_FISCAL_YEARS
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox MGMT_CODE = `MGMT_CODE` · events: DblClick, Exit
- TextBox MGMT_CODE_PCT = `MGMT_CODE_PCT` · default `100`
- ComboBox Fiscal_Year_Used = `FISCAL_YEAR_USED` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![Switchboard]![FY_For_Reports]`
- ComboBox CLIENT_ASSOCIATE = `CLIENT_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;` · default `=[Forms]![NMIS_AGREEMENTS]![CLIENT_ASSOCIATE]`
- TextBox Total_PCT "Total %:" = `=Sum([MGMT_CODE_PCT])`  [FormFooter]

## Form: NMIS_CLIENT_MGMT_CODES_NEW subform
- **Caption:** NMIS_CLIENT_MGMT_CODES subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ID_ACTIVITIES_NEW_LOTS Subform › NMIS_ID_MGMT_CODES_NEW subform › NMIS_CLIENT_MGMT_CODES_NEW subform
- **Record source:** SELECT NMIS_CLIENT_MGMT_CODES.ACTIVITY_ID_CN, NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE, NMIS_CLIENT_MGMT_CODES.MGMT_CODE, NMIS_CLIENT_MGMT_CODES.MGMT_CODE_PCT, NMIS_CLIENT_MGMT_CODES.FISCAL_YEAR_USED FROM NMIS_CLIENT_MGMT_CODES;
- **Backend tables:** NMIS_ASSOCIATES, NMIS_CLIENT_MGMT_CODES, NMIS_FISCAL_YEARS
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox MGMT_CODE = `MGMT_CODE` · events: DblClick, Exit
- TextBox MGMT_CODE_PCT = `MGMT_CODE_PCT` · default `100`
- ComboBox Fiscal_Year_Used = `FISCAL_YEAR_USED` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_ACTIVITIES Subform].[Form]![FISCAL_YEAR]`
- ComboBox CLIENT_ASSOCIATE = `CLIENT_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;` · default `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![STORED_FOR_ASSOCIATE]`
- TextBox Total_PCT "Total %:" = `=Sum([MGMT_CODE_PCT])`  [FormFooter]

## Form: NMIS_CLIENT_MGMT_CODES_Prod_Ship
- **Caption:** NMIS CLIENT Bill To  CODES
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_SHIPPING_ID_ACTIVITIES subform › NMIS_CLIENT_MGMT_CODES_Prod_Ship
- **Record source:** SELECT NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE, NMIS_CLIENT_MGMT_CODES.MGMT_CODE, NMIS_CLIENT_MGMT_CODES.MGMT_CODE_PCT, NMIS_CLIENT_MGMT_CODES.FISCAL_YEAR_USED, NMIS_CLIENT_MGMT_CODES.ACTIVITY_ID_CN, NMIS_ID_ACTIVITIES.SOURCE_LOT_CN, NMIS_ID_ACTIVITIES.ACTIVITY_DATE, NMIS_ID_ACTIVITIES.ACTIVITY_CODE FROM NMIS_CLIENT_MGMT_CODES LEFT JOIN NMIS_ID_ACTIVITIES ON NMIS_CLIENT_MGMT_CODES.ACTIVITY_ID_CN=NMIS_ID_ACTIVITIES.CN;
- **Backend tables:** NMIS_ASSOCIATES, NMIS_CLIENT_MGMT_CODES, NMIS_FISCAL_YEARS, NMIS_ID_ACTIVITIES
- **Opened from:** Form_NMIS_SHIPPING_ID_ACTIVITIES subform
- **Migration:** 0 of 5 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox MGMT_CODE = `MGMT_CODE`
- TextBox MGMT_CODE_PCT = `MGMT_CODE_PCT` · default `100`
- ComboBox Fiscal_Year_Used = `FISCAL_YEAR_USED` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![Switchboard]![FY_For_Reports]`
- ComboBox CLIENT_ASSOCIATE = `CLIENT_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;`
- TextBox ACTIVITY_ID_CN = `ACTIVITY_ID_CN` · default `=[Forms]![NMIS_SHIPPING_TICKET subform]![NMIS_SHIPPING_ID_ACTIVITIES subform].[Form]![CN]`  [FormFooter]
- TextBox Total_PCT "Total %:" = `=Sum([MGMT_CODE_PCT])`  [FormFooter]

## Form: NMIS_CLIENT_MGMT_CODES_prod_ship subform
- **Caption:** NMIS_CLIENT_MGMT_CODES_prod_ship subform
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_CLIENT_MGMT_CODES_prod_ship subform
- **Record source:** SELECT NMIS_CLIENT_MGMT_CODES.ACTIVITY_ID_CN, NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE, NMIS_CLIENT_MGMT_CODES.FISCAL_YEAR_USED, NMIS_CLIENT_MGMT_CODES.MGMT_CODE, NMIS_CLIENT_MGMT_CODES.MGMT_CODE_PCT FROM NMIS_CLIENT_MGMT_CODES WHERE (((NMIS_CLIENT_MGMT_CODES.ACTIVITY_ID_CN) Is Not Null));
- **Backend tables:** NMIS_CLIENT_MGMT_CODES, NMIS_FISCAL_YEARS
- **Migration:** 0 of 5 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ACTIVITY_ID_CN = `ACTIVITY_ID_CN`
- TextBox CLIENT_ASSOCIATE = `CLIENT_ASSOCIATE`
- ComboBox FISCAL_YEAR_USED = `FISCAL_YEAR_USED` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;`
- TextBox MGMT_CODE = `MGMT_CODE`
- TextBox MGMT_CODE_PCT = `MGMT_CODE_PCT` · default `100`

## Form: NMIS_CLIENT_MGMT_CODES_Source_Lots_new_Subform
- **Caption:** NMIS_CLIENT_MGMT_CODES subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_CLIENT_MGMT_CODES_Source_Lots_new_Subform
- **Record source:** SELECT NMIS_CLIENT_MGMT_CODES.SOURCE_CN, NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE, NMIS_CLIENT_MGMT_CODES.MGMT_CODE, NMIS_CLIENT_MGMT_CODES.MGMT_CODE_PCT, NMIS_CLIENT_MGMT_CODES.FISCAL_YEAR_USED FROM NMIS_CLIENT_MGMT_CODES WHERE (((NMIS_CLIENT_MGMT_CODES.FISCAL_YEAR_USED) Like NZ([Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_CLIENT_MGMT_CODES_Source_Lot_Subform].[Form]![Like_FY],"*")));
- **Backend tables:** NMIS_ASSOCIATES, NMIS_CLIENT_MGMT_CODES, NMIS_FISCAL_YEARS
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- ComboBox Like_FY · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC;` · default `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_ACTIVITIES Subform].[Form]![FISCAL_YEAR]` · events: AfterUpdate, DblClick  [FormHeader]
- TextBox MGMT_CODE = `MGMT_CODE` · events: DblClick, Exit
- TextBox MGMT_CODE_PCT = `MGMT_CODE_PCT` · default `100`
- ComboBox Fiscal_Year_Used = `FISCAL_YEAR_USED` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![Switchboard]![FY_For_Reports]`
- ComboBox CLIENT_ASSOCIATE = `CLIENT_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;` · default `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![STORED_FOR_ASSOCIATE]`
- TextBox Total_PCT "Total %:" = `=Sum([MGMT_CODE_PCT])`  [FormFooter]

## Form: NMIS_CLIENT_MGMT_CODES_Source_Lots_Subform
- **Caption:** NMIS_CLIENT_MGMT_CODES subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › NMIS_CLIENT_MGMT_CODES_Source_Lots_Subform
- **Record source:** SELECT NMIS_CLIENT_MGMT_CODES.SOURCE_CN, NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE, NMIS_CLIENT_MGMT_CODES.MGMT_CODE, NMIS_CLIENT_MGMT_CODES.MGMT_CODE_PCT, NMIS_CLIENT_MGMT_CODES.FISCAL_YEAR_USED FROM NMIS_CLIENT_MGMT_CODES WHERE (((NMIS_CLIENT_MGMT_CODES.FISCAL_YEAR_USED) Like NZ([Forms]![NMIS_SOURCE_LOTS]![NMIS_CLIENT_MGMT_CODES_Source_Lot_Subform].[Form]![Like_FY],"*")));
- **Backend tables:** NMIS_ASSOCIATES, NMIS_CLIENT_MGMT_CODES, NMIS_FISCAL_YEARS, NMIS_SOURCE_LOTS
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- ComboBox Like_FY · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC;` · default `=[Forms]![Switchboard]![FY_For_Reports]` · events: AfterUpdate, DblClick  [FormHeader]
- TextBox MGMT_CODE = `MGMT_CODE` · events: DblClick, Exit
- TextBox MGMT_CODE_PCT = `MGMT_CODE_PCT` · default `100`
- ComboBox Fiscal_Year_Used = `FISCAL_YEAR_USED` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![Switchboard]![FY_For_Reports]`
- ComboBox CLIENT_ASSOCIATE = `CLIENT_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;` · default `=[Forms]![NMIS_SOURCE_LOTS]![STORED_FOR_ASSOCIATE]`
- TextBox Total_PCT "Total %:" = `=Sum([MGMT_CODE_PCT])`  [FormFooter]

## Form: NMIS_CLIENT_MGMT_CODES_ST subform
- **Caption:** NMIS_CLIENT_MGMT_CODES subform
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › Seed_Ship_Ticket_ID_ACTIVITIES subform › NMIS_ID_MGMT_CODES_Ship_Ticket subform › NMIS_CLIENT_MGMT_CODES_ST subform
- **Record source:** SELECT NMIS_CLIENT_MGMT_CODES.ACTIVITY_ID_CN, NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE, NMIS_CLIENT_MGMT_CODES.MGMT_CODE, NMIS_CLIENT_MGMT_CODES.MGMT_CODE_PCT, NMIS_CLIENT_MGMT_CODES.FISCAL_YEAR_USED FROM NMIS_CLIENT_MGMT_CODES;
- **Backend tables:** NMIS_ASSOCIATES, NMIS_CLIENT_MGMT_CODES, NMIS_FISCAL_YEARS
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox MGMT_CODE = `MGMT_CODE` · events: DblClick, Exit
- TextBox MGMT_CODE_PCT = `MGMT_CODE_PCT` · default `100`
- ComboBox Fiscal_Year_Used = `FISCAL_YEAR_USED` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![Seed_Shipping_Ticket Subform]![Seed_Ship_Ticked_ID_ACTIVITIES subform].[Form]![FISCAL_YEAR]`
- ComboBox CLIENT_ASSOCIATE = `CLIENT_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;`
- TextBox Total_PCT "Total %:" = `=Sum([MGMT_CODE_PCT])`  [FormFooter]

## Form: NMIS_CONTACT_NAME_SELECTED subform
- **Caption:** NMIS_CONTACT_NAME_SELECTED subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ASSOCIATES › NMIS_CONTACT_NAME_SELECTED subform
- **Record source:** NMIS_CONTACTS
- **Backend tables:** NMIS_CONTACTS
- **Migration:** 2 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox CN = `CN`  [FormHeader]
- TextBox FIRST_NAME = `FIRST_NAME` → GrowHub client.contacts (blank)
- TextBox MIDDLE_INITIAL = `MIDDLE_INITIAL`
- TextBox LAST_NAME = `LAST_NAME` → GrowHub client.contacts (blank)

## Form: NMIS_CONTACTS
- **Caption:** NMIS CONTACTS
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › NMIS_CONTACTS
- **Record source:** SELECT NMIS_CONTACTS.* FROM NMIS_CONTACTS WHERE (((IIf([HOME_ASSOCIATE] Like "99*","99","non99")) Like IIf([Forms]![NMIS_CONTACTS]![Hide_99s],"non99","*")) AND ((NMIS_CONTACTS.HISTORICAL) Like IIf([Forms]![NMIS_CONTACTS]![Hide_Historical],0,"*"))) ORDER BY NMIS_CONTACTS.LAST_NAME, NMIS_CONTACTS.FIRST_NAME;
- **Backend tables:** NMIS_ASSOCIATES, NMIS_CONTACTS
- **Subforms:** Form.NMIS_PHONE_NUMBERS subform1, Form.NMIS_ASSOCIATES subform, Form.NMIS_CONTACTS_LIST
- **Opens:** Form:NMIS_CONTACTS_LIST
- **Opened from:** Form_Lookup_Tables_Menu Subform, Form_NMIS_AGREEMENTS, Form_NMIS_AGREEMENTS_bu, Form_NMIS_ASSOCIATES, Form_NMIS_ASSOCIATES_CONTACTS subform, Form_NMIS_PROCESSING_ORDERS_ID_UPDATE subform, Form_NMIS_PROCESSING_ORDERS_ID_UPDATE2 subform, Form_NMIS_PROCESSING_ORDERS_INPUT, Form_NMIS_PROCESSING_ORDERS_INPUT_LotIdLookup, Form_NMIS_PROCESSING_ORDERS_INPUT_Propagule, Form_NMIS_PROCESSING_ORDERS_INPUTbu, Form_NMIS_SHIPPING_TICKET subform, Form_Seed_Shipping_Ticket Subform, Form_xLookup_Tables_Menu
- **Form events with code:** Close, Current, Open
- **Migration:** 6 of 12 bound fields mapped. Main GrowHub screens: /admin/client-management/new (1)

**Controls**
- ComboBox CONTACT_Lookup · rows: `SELECT NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([FIRST_NAME]),", " & [FIRST_NAME]) & IIf([nmis_Contacts].[historical]," (Historical)") AS NAME, [HOME_ASSOCIATE] & " - " & [ASSOCIATE_NAME] & IIf([NMIS_ASSOCIATES].[historical]," (Historical)") AS Home FROM NMIS_CONTACTS LEFT JOIN NMIS_ASSOCIATES ON NMIS_CONTACTS.HOME_ASSOCIATE = NMIS_ASSOCIATES.ASSOCIATE WHERE (((NMIS_CONTACTS.HISTORICAL) Like` · events: AfterUpdate, Enter  [FormHeader]
- CommandButton Unfilter "Click to Find a Contact" · events: Click  [FormHeader]
- TextBox CN = `CN` · default `"Contact_Form" & Now()`  [FormHeader]
- TextBox Index = `Index`  [FormHeader]
- TextBox Home_Associate_Filter · default `"*"` · events: AfterUpdate, DblClick  [FormHeader]
- CheckBox Hide_99s "Hide "99" Contacts" · default `False` · events: AfterUpdate  [FormHeader]
- CheckBox Hide_Historical "Hide Historical" · default `False` · events: AfterUpdate  [FormHeader]
- TextBox LAST_NAME "Last Name" = `LAST_NAME` · events: DblClick, Enter, Exit → GrowHub client.contacts (blank)
- TextBox FIRST_NAME "First Name" = `FIRST_NAME` · events: DblClick, Enter, Exit → GrowHub client.contacts (blank)
- TextBox MIDDLE_INITIAL "MI" = `MIDDLE_INITIAL` · events: Exit
- TextBox CONTACT_DESC "Contact Descripton:" = `CONTACT_DESC` → GrowHub client.contacts (blank)
- TextBox EMAIL_ADDR "E-Mail Address:" = `EMAIL_ADDR` → GrowHub client.billingEmailAddress (blank)
- TextBox NOTE "Note:" = `NOTE`
- TabControl TabCtl38
- Subform Child49 subform `Form.NMIS_PHONE_NUMBERS subform1` (master CN → child CONTACT_CN) · tab Phone Numbers and  Associates
- Subform NMIS_ASSOCIATES subform "NMIS Associates" subform `Form.NMIS_ASSOCIATES subform` (master CN → child CONTACT_CN) · tab Phone Numbers and  Associates
- Subform NMIS_CONTACTS_LIST "CONTACTS LOOKUP LIST" subform `Form.NMIS_CONTACTS_LIST` (master  → child )
- ComboBox HOME_ASSOCIATE "Home Associate:" = `HOME_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Historical)") AS name FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE;` · events: DblClick, Enter → GrowHub client.contacts (blank)
- TextBox CONTACT_NAME_UPPER "Contact Name Upper:" = `CONTACT_NAME_UPPER`
- ComboBox ASSOCIATE_NAME = `HOME_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Historical)") AS name FROM NMIS_ASSOCIATES ORDER BY [ASSOCIATE_NAME] & IIf([historical]," (Historical)");` → GrowHub client.contacts (blank)
- CheckBox HISTORICAL "HISTORICAL:" = `HISTORICAL` · default `No`
- TextBox Text205 = `=IIf([Historical],"HISTORICAL")`

## Form: NMIS_CONTACTS_LIST
- **Caption:** NMIS Contacts List
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › NMIS_CONTACTS › NMIS_CONTACTS_LIST
- **Record source:** SELECT NMIS_CONTACTS.CONTACT_NAME_UPPER, NMIS_CONTACTS.LAST_NAME, NMIS_CONTACTS.FIRST_NAME, NMIS_CONTACTS.MIDDLE_INITIAL, NMIS_CONTACTS.HOME_ASSOCIATE FROM NMIS_CONTACTS ORDER BY NMIS_CONTACTS.CONTACT_NAME_UPPER;
- **Backend tables:** NMIS_CONTACTS
- **Opened from:** Form_NMIS_CONTACTS
- **Migration:** 3 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox Last Name = `LAST_NAME` → GrowHub client.contacts (blank)
- TextBox FIRST_NAME = `FIRST_NAME` → GrowHub client.contacts (blank)
- TextBox MIDDLE_INITIAL = `MIDDLE_INITIAL`
- TextBox HOME_ASSOCIATE = `HOME_ASSOCIATE` → GrowHub client.contacts (blank)

## Form: NMIS_CONTRACT_ITEMS
- **Caption:** NMIS CONTRACT ITEMS
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_CONTRACTS › NMIS_CONTRACT_ITEMS
- **Record source:** SELECT NMIS_CONTRACT_ITEMS.* FROM NMIS_CONTRACT_ITEMS WHERE (((NMIS_CONTRACT_ITEMS.FISCAL_YEAR)=[Forms]![NMIS_CONTRACTS]![FISCAL_YEAR]) AND ((IIf(Val([Forms]![NMIS_CONTRACTS]![show_all_contract_items])=-1,[Forms]![NMIS_CONTRACTS]![CONTRACT_NO],[CONTRACT_NO]))=[Forms]![NMIS_CONTRACTS]![View_Contract])) ORDER BY NMIS_CONTRACT_ITEMS.FISCAL_YEAR DESC , NMIS_CONTRACT_ITEMS.CONTRACT_NO, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM;
- **Backend tables:** NMIS_CONTRACTS, NMIS_CONTRACT_ITEMS
- **Opened from:** Form_Lookup_Tables_Menu Subform
- **Migration:** 0 of 12 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox NURSERY_ASSOCIATE = `NURSERY_ASSOCIATE` · default `61019`  [FormHeader]
- TextBox FISCAL_YEAR = `FISCAL_YEAR` · default `=[Forms]![NMIS_CONTRACTS]![FISCAL_YEAR]`
- TextBox CONTRACT_ITEM = `CONTRACT_ITEM`
- TextBox CONTRACT_ITEM_DESC = `CONTRACT_ITEM_DESC`
- TextBox PAYMENT_PER_UNIT = `PAYMENT_PER_UNIT`
- TextBox PAYMENT_PER_AMT = `PAYMENT_PER_AMT`
- TextBox PAYMENT_PER_AMT_GROSS = `PAYMENT_PER_AMT_GROSS`
- TextBox CONTRACT_NO = `CONTRACT_NO`
- TextBox Est_Units = `EST_UNITS`
- TextBox FIELD_CONTAINER = `FIELD_CONTAINER`
- TextBox DEFAULT_ACTIVITY_CODE = `DEFAULT_ACTIVITY_CODE`
- TextBox Text26 = `UNIT_CODE`

## Form: NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform
- **Caption:** NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Contract_Payment_Estimate_Invoice › NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform
- **Record source:** SELECT NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.CONTRACT_NO, Max(Val(NZ([ESTIMATE_NO],0))) AS Max_Est, Max(NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.END_DATE) AS MaxOfEND_DATE, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.FISCAL_YEAR FROM NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE GROUP BY NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.CONTRACT_NO, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.FISCAL_YEAR;
- **Backend tables:** NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE
- **Migration:** 0 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ESTIMATE_NO = `Max_Est`
- TextBox Max_Date = `MaxOfEND_DATE`

## Form: NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2
- **Caption:** NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Contract_Payment_Estimate_Invoice › NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2
- **Record source:** SELECT NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.CONTRACT_NO, Sum(NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Total_Earned_to_Date) AS SumOfTotal_Earned_to_Date FROM NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL WHERE (((NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.FISCAL_YEAR)=[Forms]![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].[Form]![FISCAL_YEAR]) AND ((NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.ESTIMATE_NO)=[Forms]![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].[Form]![ESTIMATE_NO]-1)) GROUP BY NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.CONTRACT_NO;
- **Backend tables:** NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL
- **Migration:** 0 of 1 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox Previous_Payments "Prev_Payments" = `SumOfTotal_Earned_to_Date`

## Form: NMIS_CONTRACT_ROLL_OVER
- **Caption:** Contract Rollover
- **Menu path:** Switchboard › NMIS_CONTRACT_ROLL_OVER
- **Record source:** NMIS_CONTRACT_ITEMS_ROLLED_OVER
- **Backend tables:** NMIS_CONTRACTS
- **Form events with code:** Open
- **Migration:** 0 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- CommandButton Close_Form "exit" · events: Click
- TextBox MaxOfFISCAL_YEAR "MaxOfFISCAL_YEAR:" = `MaxOfFISCAL_YEAR`
- TextBox NMIS_Contract_Items_Current "Contract Items Current:" = `Contract_Items_Current`
- TextBox New_Contract "New Contract No:"
- ComboBox From_Contract "Old Contract No:" · rows: `SELECT NMIS_CONTRACTS.CONTRACT_NO, NMIS_CONTRACTS.PROJECT FROM NMIS_CONTRACTS WHERE (((NMIS_CONTRACTS.FISCAL_YEAR)=[Forms]![Switchboard]![FY_For_Reports]-1)) ORDER BY NMIS_CONTRACTS.CONTRACT_NO;`
- CommandButton Rollover_Contracts "Rollover" · events: Click
- TextBox warning = `=IIf([NMIS_Contract_Items_Current]="yes","Contract appears to already have been rolled over!")`

## Form: NMIS_CONTRACT_WORK_ORDERS_0_FORM_INFO
- **Caption:** NMIS_CONTRACT_WORK_ORDERS_0_FORM_INFO
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Contract_Work_Order › NMIS_CONTRACT_WORK_ORDERS_0_FORM_INFO
- **Record source:** SELECT NMIS_CONTRACT_WORK_ORDERS.CONTRACT_NO, NMIS_CONTRACT_WORK_ORDERS.ESTIMATE_NO, NMIS_CONTRACT_WORK_ORDERS.FISCAL_YEAR, NMIS_CONTRACT_WORK_ORDERS.WORK_ORDERED, NMIS_CONTRACT_WORK_ORDERS.REFERENCE FROM NMIS_CONTRACT_WORK_ORDERS WHERE (((NMIS_CONTRACT_WORK_ORDERS.ESTIMATE_NO)=0));
- **Backend tables:** NMIS_CONTRACT_WORK_ORDERS
- **Migration:** 0 of 5 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox CONTRACT_NO = `CONTRACT_NO`
- TextBox ESTIMATE_NO = `ESTIMATE_NO`
- TextBox FISCAL_YEAR = `FISCAL_YEAR`
- TextBox WORK_ORDERED "WORK_ORDERED" = `WORK_ORDERED`
- TextBox REFERENCE "REFERENCE" = `REFERENCE`

## Form: NMIS_CONTRACT_WORK_ORDERS_LAST_ORDER
- **Caption:** NMIS_CONTRACT_WORK_ORDERS_LAST_ORDER
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Contract_Work_Order › NMIS_CONTRACT_WORK_ORDERS_LAST_ORDER
- **Record source:** SELECT NMIS_CONTRACT_WORK_ORDERS.CONTRACT_NO, NMIS_CONTRACT_WORK_ORDERS.FISCAL_YEAR, Max(NMIS_CONTRACT_WORK_ORDERS.ESTIMATE_NO) AS MaxOfESTIMATE_NO FROM NMIS_CONTRACT_WORK_ORDERS GROUP BY NMIS_CONTRACT_WORK_ORDERS.CONTRACT_NO, NMIS_CONTRACT_WORK_ORDERS.FISCAL_YEAR;
- **Backend tables:** NMIS_CONTRACT_WORK_ORDERS
- **Migration:** 0 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox CONTRACT_NO "CONTRACT_NO" = `CONTRACT_NO`
- TextBox FISCAL_YEAR "FISCAL_YEAR" = `FISCAL_YEAR`
- TextBox ESTIMATE_NO "ESTIMATE_NO" = `=[MaxOfESTIMATE_NO]+1`

## Form: NMIS_CONTRACTS
- **Caption:** NMIS CONTRACTS
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_CONTRACTS
- **Record source:** SELECT NMIS_CONTRACTS.* FROM NMIS_CONTRACTS WHERE (((NMIS_CONTRACTS.CONTRACT_NO)=[Forms]![NMIS_CONTRACTS]![View_Contract])) ORDER BY NMIS_CONTRACTS.FISCAL_YEAR DESC , NMIS_CONTRACTS.CONTRACT_NO;
- **Backend tables:** NMIS_ASSOCIATES, NMIS_CONTRACTS
- **Subforms:** Form.NMIS_CONTRACT_ITEMS
- **Opens:** Form:Close_Form, Form:NMIS_ASSOCIATES
- **Opened from:** Form_Contract_Payment_Estimate_Invoice, Form_Contract_Payment_Estimate_Invoice_Main, Form_Contract_Work_Order, Form_xLookup_Tables_Menu
- **Form events with code:** Close, Open
- **Migration:** 1 of 7 bound fields mapped. Main GrowHub screens: /admin/client-management/new (1), /source-lots/new (1), /financial-management/invoicing/create (1)

**Controls**
- ComboBox View_Contract "View Contract:" · rows: `SELECT NMIS_CONTRACTS.CONTRACT_NO, NMIS_CONTRACTS.PROJECT, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_CONTRACTS.FISCAL_YEAR FROM NMIS_CONTRACTS LEFT JOIN NMIS_ASSOCIATES ON NMIS_CONTRACTS.ASSOCIATE = NMIS_ASSOCIATES.ASSOCIATE GROUP BY NMIS_CONTRACTS.CONTRACT_NO, NMIS_CONTRACTS.PROJECT, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_CONTRACTS.FISCAL_YEAR, NMIS_CONTRACTS.CONTRACT_NO HAVING (((NMIS_CONTRACTS.FISCAL_` · default `Null` · events: AfterUpdate, Enter  [FormHeader]
- CommandButton Close "Close" · events: Click  [FormHeader]
- TextBox View_FY " View Like FY:" · default `=[Forms]![Switchboard]![FY_For_Reports]` · events: Exit  [FormHeader]
- CheckBox show_all_contract_items "Show All Contract Items:" · default `False` · events: AfterUpdate  [FormHeader]
- Subform NMIS_CONTRACT_ITEMS subform `Form.NMIS_CONTRACT_ITEMS` (master  → child )
- TextBox ORIGINAL_CONTRACT_AMT "Original Contract Amt:" = `ORIGINAL_CONTRACT_AMT`
- TextBox FISCAL_YEAR "Fiscal Year:" = `FISCAL_YEAR` · default `=[Forms]![Switchboard]![FY_For_Reports]`
- TextBox PROJECT "Project:" = `PROJECT`
- ComboBox CONTRACT_NO "Contract No.:" = `CONTRACT_NO` · rows: `SELECT NMIS_CONTRACTS.CONTRACT_NO, NMIS_CONTRACTS.PROJECT, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_CONTRACTS.ORIGINAL_CONTRACT_AMT, NMIS_CONTRACTS.FISCAL_YEAR FROM NMIS_CONTRACTS LEFT JOIN NMIS_ASSOCIATES ON NMIS_CONTRACTS.ASSOCIATE = NMIS_ASSOCIATES.ASSOCIATE WHERE (((NMIS_CONTRACTS.CONTRACT_NO)<>"New Contract")) ORDER BY NMIS_CONTRACTS.FISCAL_YEAR DESC , NMIS_CONTRACTS.CONTRACT_NO;` · events: DblClick, Enter, Exit, LostFocus
- TextBox NOTE "Remarks:" = `NOTE`
- ComboBox ASSOCIATE "Contractor:" = `ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;` · events: DblClick, Enter → GrowHub client.clientId (blank)
- TextBox Last_Contract_No_Viewed · default `"NA"`
- TextBox Last_Project_Viewed · default `"NA"`
- CheckBox INDEFINITE_QUANTITY "Indefinite Quantity:" = `INDEFINITE_QUANTITY`

## Form: NMIS_FACTOR_CODES
- **Caption:** NMIS FACTOR CODES
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_FACTOR_CODES
- **Record source:** NMIS_FACTOR_CODES
- **Backend tables:** NMIS_FACTOR_CODES
- **Opened from:** Form_Lookup_Tables_Menu Subform, Form_xLookup_Tables_Menu
- **Migration:** 0 of 5 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox FACTOR_CODE = `FACTOR_CODE`
- TextBox FACTOR_DESC = `FACTOR_DESC`
- CheckBox FORMULA_INVERSE = `FORMULA_INVERSE`
- CheckBox FORMULA_DIVIDE_BY_100 = `FORMULA_DIVIDE_BY_100`
- TextBox FORMULA_OP = `FORMULA_OP`

## Form: NMIS_FACTORS
- **Caption:** NMIS FACTORS
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_PRODUCTS › NMIS_SPECIES_PRODUCTS Subform1 › NMIS_FACTORS
- **Record source:** NMIS_SPECIES_PRODUCTS
- **Backend tables:** NMIS_FACTORS, NMIS_PRODUCTS, NMIS_SPECIES, NMIS_SPECIES_PRODUCTS, NMIS_SPECIES_PRODUCT_CYCLES
- **Subforms:** Form.NMIS_FACTORS subform, Form.NMIS_SPECIES_PRODUCT_CYCLES subform1
- **Opened from:** Form_NMIS_PRODUCTS_MGMT_CODE Subform, Form_NMIS_SPECIES_PRODUCTS Subform1

**Controls**
- CommandButton Command49 "Close" · events: Click  [FormHeader]
- TextBox CN = `=[Forms]![NMIS_PRODUCTS]![NMIS_SPECIES_PRODUCTS1].Form!CN`  [FormHeader]
- ComboBox PLNTMSTR_SYMBOL = `=[cn]` · rows: `SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL] FROM NMIS_SPECIES_PRODUCTS;`  [FormHeader]
- ComboBox Species_Product_Description "Species Product Descripton:" = `=[Forms]![NMIS_PRODUCTS]![NMIS_SPECIES_PRODUCTS1].Form!CN` · rows: `SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES_PRODUCTS].[SPECIES_PRODUCT_DESC] FROM NMIS_SPECIES_PRODUCTS;` · default `=[Forms]![NMIS_PRODUCTS]![NMIS_SPECIES_PRODUCTS1].[Form]![SPECIES_PRODUCT_DESC]`
- ComboBox Species "Species:" = `=[Forms]![NMIS_PRODUCTS]![NMIS_SPECIES_PRODUCTS1].Form!CN` · rows: `SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES].[PLNTMSTR_SYMBOL], [NMIS_SPECIES].[VERNACULAR] FROM NMIS_SPECIES INNER JOIN NMIS_SPECIES_PRODUCTS ON ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL]) AND ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL]) GROUP BY [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES].[PLNTMSTR_SYMBOL], [NMIS_SPECIES].[` · default `=[Forms]![NMIS_PRODUCTS]![NMIS_SPECIES_PRODUCTS1].[Form]![PLNTMSTR_SYMBOL]`
- ComboBox Product_Descripton "Product:" = `=[Forms]![NMIS_PRODUCTS]![NMIS_SPECIES_PRODUCTS1].Form!CN` · rows: `SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_PRODUCTS].[PRODUCT_DESC] FROM NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN];`
- TabControl TabCtl52
- Subform NMIS_FACTORS subform subform `Form.NMIS_FACTORS subform` (master CN → child SPECIES_PRODUCT_CN)
- Subform NMIS_SPECIES_PRODUCT_CYCLES subform1 subform `Form.NMIS_SPECIES_PRODUCT_CYCLES subform1` (master CN → child SPECIES_PRODUCT_CN)

## Form: NMIS_FACTORS subform
- **Caption:** NMIS_FACTORS subform
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_SPECIES_PRODUCTS Form › NMIS_FACTORS subform
- **Record source:** NMIS_FACTORS
- **Backend tables:** NMIS_FACTORS
- **Migration:** 10 of 21 bound fields mapped. Main GrowHub screens: /admin/products/new (10)

**Controls**
- TextBox CN = `CN` · default `"FACT_FRM" & Now()`  [FormHeader]
- TextBox Index = `Index`  [FormHeader]
- TextBox SPECIES_PRODUCT_CN = `SPECIES_PRODUCT_CN`  [FormHeader]
- TextBox ELEVATION_MIN = `ELEVATION_MIN` → GrowHub seed_factor.minElevation (blank)
- TextBox ELEVATION_MAX = `ELEVATION_MAX` → GrowHub seed_factor.maxElevation (blank)
- TextBox GERM_MIN = `GERM_MIN` → GrowHub seed_factor.minGermination (blank)
- TextBox GERM_MAX = `GERM_MAX` → GrowHub seed_factor.maxGermination (blank)
- TextBox HARVEST_FACTOR_1 = `HARVEST_FACTOR_1` → GrowHub seed_factor.factor1 (blank)
- TextBox HARVEST_FACTOR_2 = `HARVEST_FACTOR_2` → GrowHub seed_factor.factor2 (blank)
- TextBox HARVEST_FACTOR_3 = `HARVEST_FACTOR_3` → GrowHub seed_factor.factor3 (blank)
- TextBox HARVEST_FACTOR_4 = `HARVEST_FACTOR_4`
- TextBox HARVEST_FACTOR = `HARVEST_FACTOR`
- TextBox CONTAINER_FACTOR_1 = `CONTAINER_FACTOR_1`
- TextBox CONTAINER_FACTOR_2 = `CONTAINER_FACTOR_2`
- TextBox CONTAINER_FACTOR_3 = `CONTAINER_FACTOR_3`
- TextBox CONTAINER_FACTOR = `CONTAINER_FACTOR`
- TextBox DESIRED_DENSITY = `DESIRED_DENSITY` · default `1` → GrowHub grow_cycle.desiredDensity (maybe)
- TextBox MAXIMUM_DENSITY = `MAXIMUM_DENSITY` · default `0` → GrowHub grow_cycle.maximumDensity (maybe)
- TextBox SOURCE_PER_AGREEMENT_UNIT = `SOURCE_PER_AGREEMENT_UNIT`
- TextBox GROSS_PER_CONTAINER = `GROSS_PER_CONTAINER`
- TextBox LIKE_ASSOCIATE = `LIKE_ASSOCIATE` → GrowHub seed_factor.clientPartial (blank)

## Form: NMIS_FACTORS_Duplicate subform
- **Caption:** NMIS_FACTORS subform
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_SPECIES_PRODUCTS Form › NMIS_SPECIES_PRODUCTS_Duplicate Form › NMIS_FACTORS_Duplicate subform
- **Record source:** NMIS_FACTORS
- **Backend tables:** NMIS_FACTORS
- **Migration:** 10 of 21 bound fields mapped. Main GrowHub screens: /admin/products/new (10)

**Controls**
- TextBox CN = `CN` · default `"FACT_FRM" & Now()`  [FormHeader]
- TextBox Index = `Index`  [FormHeader]
- TextBox SPECIES_PRODUCT_CN = `SPECIES_PRODUCT_CN`  [FormHeader]
- TextBox ELEVATION_MIN = `ELEVATION_MIN` → GrowHub seed_factor.minElevation (blank)
- TextBox ELEVATION_MAX = `ELEVATION_MAX` → GrowHub seed_factor.maxElevation (blank)
- TextBox GERM_MIN = `GERM_MIN` → GrowHub seed_factor.minGermination (blank)
- TextBox GERM_MAX = `GERM_MAX` → GrowHub seed_factor.maxGermination (blank)
- TextBox HARVEST_FACTOR_1 = `HARVEST_FACTOR_1` → GrowHub seed_factor.factor1 (blank)
- TextBox HARVEST_FACTOR_2 = `HARVEST_FACTOR_2` → GrowHub seed_factor.factor2 (blank)
- TextBox HARVEST_FACTOR_3 = `HARVEST_FACTOR_3` → GrowHub seed_factor.factor3 (blank)
- TextBox HARVEST_FACTOR_4 = `HARVEST_FACTOR_4`
- TextBox HARVEST_FACTOR = `HARVEST_FACTOR`
- TextBox CONTAINER_FACTOR_1 = `CONTAINER_FACTOR_1`
- TextBox CONTAINER_FACTOR_2 = `CONTAINER_FACTOR_2`
- TextBox CONTAINER_FACTOR_3 = `CONTAINER_FACTOR_3`
- TextBox CONTAINER_FACTOR = `CONTAINER_FACTOR`
- TextBox DESIRED_DENSITY = `DESIRED_DENSITY` → GrowHub grow_cycle.desiredDensity (maybe)
- TextBox MAXIMUM_DENSITY = `MAXIMUM_DENSITY` → GrowHub grow_cycle.maximumDensity (maybe)
- TextBox SOURCE_PER_AGREEMENT_UNIT = `SOURCE_PER_AGREEMENT_UNIT`
- TextBox GROSS_PER_CONTAINER = `GROSS_PER_CONTAINER`
- TextBox LIKE_ASSOCIATE = `LIKE_ASSOCIATE` → GrowHub seed_factor.clientPartial (blank)

## Form: NMIS_FACTORS_FOR_AGREEMENT_LOTS subform
- **Caption:** NMIS_FACTORS subform
- **Menu path:** Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_AGREEMENT_LOTS › NMIS_FACTORS_FOR_AGREEMENT_LOTS subform
- **Record source:** SELECT NMIS_FACTORS.SPECIES_PRODUCT_CN, NMIS_FACTORS.LIKE_ASSOCIATE, NMIS_FACTORS.GERM_MIN, NMIS_FACTORS.GERM_MAX, NMIS_FACTORS.HARVEST_FACTOR_1, NMIS_FACTORS.HARVEST_FACTOR_2, NMIS_FACTORS.HARVEST_FACTOR_3, NMIS_FACTORS.HARVEST_FACTOR_4, NMIS_FACTORS.HARVEST_FACTOR, NMIS_FACTORS.CONTAINER_FACTOR_1, NMIS_FACTORS.CONTAINER_FACTOR_2, NMIS_FACTORS.CONTAINER_FACTOR_3, NMIS_FACTORS.CONTAINER_FACTOR, NMIS_FACTORS.DESIRED_DENSITY, NMIS_FACTORS.MAXIMUM_DENSITY, NMIS_FACTORS.SOURCE_PER_AGREEMENT_UNIT, NMIS_FACTORS.GROSS_PER_CONTAINER, [Forms]![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].[Form]![CLIENT_ASSOCIATE] AS Associate, NMIS_FACTORS.ELEVATION_MIN, NMIS_FACTORS.ELEVATION_MAX FROM NMIS_FACTORS WHERE (((NMIS_FACTORS.SPECIES_PRODUCT_CN)=[Forms]![NMIS_AGREEMENT_LOTS]![SPECIES_PRODUCT_CN]) AND (([Forms]![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].[Form]![CLIENT_ASSOCIATE]) Like IIf([like_associate] Is Not Null,[like_associate] & "*",[like_associate]))) OR (((NMIS_FACTORS.SPECIES_PRODUCT_CN)=[Forms]![NMIS_AGREEMENT_LOTS]![SPECIES_PRODUCT_CN]) AND ((NMIS_FACTORS.LIKE_ASSOCIATE) Is Null) AND ((NMIS_FACTORS.GERM_MIN)<=Nz([Forms]![NMIS_AGREEMENT_LOTS]![SOURCE_GERM_PCT],0)) AND ((NMIS_FACTORS.GERM_MAX)>=Nz([Forms]![NMIS_AGREEMENT_LOTS]![SOURCE_GERM_PCT],100))) ORDER BY NMIS_FACTORS.LIKE_ASSOCIATE DESC;
- **Backend tables:** NMIS_AGREEMENTS, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_FACTORS
- **Migration:** 10 of 18 bound fields mapped. Main GrowHub screens: /admin/products/new (6), /orders/new (4)

**Controls**
- ComboBox LIKE_ASSOCIATE = `LIKE_ASSOCIATE` · rows: `SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;` → GrowHub seed_factor.clientPartial (blank)
- TextBox HARVEST_FACTOR_1 = `HARVEST_FACTOR_1` → GrowHub order_cycle_planning.factor1 (blank)
- TextBox HARVEST_FACTOR_2 = `HARVEST_FACTOR_2` → GrowHub order_cycle_planning.factor2 (blank)
- TextBox HARVEST_FACTOR_3 = `HARVEST_FACTOR_3` → GrowHub order_cycle_planning.factor3 (blank)
- TextBox HARVEST_FACTOR_4 = `HARVEST_FACTOR_4`
- TextBox HARVEST_FACTOR = `HARVEST_FACTOR`
- TextBox CONTAINER_FACTOR_1 = `CONTAINER_FACTOR_1`
- TextBox CONTAINER_FACTOR_2 = `CONTAINER_FACTOR_2`
- TextBox CONTAINER_FACTOR_3 = `CONTAINER_FACTOR_3`
- TextBox CONTAINER_FACTOR = `CONTAINER_FACTOR`
- TextBox DESIRED_DENSITY = `DESIRED_DENSITY` → GrowHub order_cycle_planning.desiredDensity (blank)
- TextBox MAXIMUM_DENSITY = `MAXIMUM_DENSITY` → GrowHub grow_cycle.maximumDensity (maybe)
- TextBox SPECIES_PRODUCT_CN = `SPECIES_PRODUCT_CN`
- TextBox GERM_MIN = `GERM_MIN` → GrowHub seed_factor.minGermination (blank)
- TextBox GERM_MAX = `GERM_MAX` → GrowHub seed_factor.maxGermination (blank)
- TextBox ELEVATION_MIN = `ELEVATION_MIN` → GrowHub seed_factor.minElevation (blank)
- TextBox ELEVATION_MAX = `ELEVATION_MAX` → GrowHub seed_factor.maxElevation (blank)
- TextBox GROSS_PER_CONTAINER = `GROSS_PER_CONTAINER`

## Form: NMIS_FISCAL_YEAR_Current
- **Caption:** Current Fiscal Year
- **Menu path:** Switchboard › NMIS_FISCAL_YEAR_Current
- **Record source:** NMIS_FISCAL_YEAR Query
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox FISCAL_YEAR_TEXT "Fiscal Year Text:" = `FISCAL_YEAR`
- TextBox FISCAL_YEAR_NUMBER "Fiscal Year Number:" = `FISCAL_YEAR_NUMBER`
- TextBox Text5 "Today's Date:" = `=Now()`
- TextBox BEGIN_DATE "FY Begin Date:" = `BEGIN_DATE`
- TextBox END_DATE "FY End Date:" = `END_DATE`

## Form: NMIS_FISCAL_YEARS
- **Caption:** NMIS_FISCAL_YEARS
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_FISCAL_YEARS
- **Record source:** SELECT NMIS_FISCAL_YEARS.* FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER DESC;
- **Backend tables:** NMIS_FISCAL_YEARS
- **Opened from:** Form_xLookup_Tables_Menu
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox FISCAL_YEAR = `FISCAL_YEAR` · default `=Str([FISCAL_YEAR_NUMBER])`
- TextBox FISCAL_YEAR_NUMBER = `FISCAL_YEAR_NUMBER` · events: Enter
- TextBox BEGIN_DATE = `BEGIN_DATE` · events: Enter
- TextBox END_DATE = `END_DATE` · events: Enter

## Form: NMIS_GROUPS
- **Caption:** NMIS GROUPS
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_GROUPS
- **Subforms:** Form.NMIS_GROUPS subform
- **Opened from:** Form_Lookup_Tables_Menu Subform, Form_xLookup_Tables_Menu

**Controls**
- Subform NMIS_GROUPS subform subform `Form.NMIS_GROUPS subform` (master  → child )

## Form: NMIS_GROUPS subform
- **Caption:** NMIS_GROUPS subform
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_GROUPS › NMIS_GROUPS subform
- **Record source:** SELECT [NMIS_GROUPS].[GROUP_NAME], [NMIS_GROUPS].[CN], [NMIS_GROUPS].[Index] FROM NMIS_GROUPS;
- **Backend tables:** NMIS_GROUPS
- **Migration:** 0 of 3 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox CN = `CN` · default `"Assoc_Grps_Frm" & Now()`  [FormHeader]
- TextBox Index = `Index`  [FormHeader]
- TextBox GROUP_NAME = `GROUP_NAME`

## Form: NMIS_ID_ACTIVITIES Subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › NMIS_ID_ACTIVITIES Subform
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_FISCAL_YEARS, NMIS_UNITS
- **Opens:** Form:NMIS_ACTIVITY_CODES, Form:NMIS_ID_ACTIVITIES_MORE_INFO_SUBFORM, Form:NMIS_ID_MGMT_CODES subform, Form:NMIS_SOURCE_TESTS Form
- **Form events with code:** Current, Open
- **Migration:** 0 of 12 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ID_Act_CN = `=[cn]`  [FormHeader]
- TextBox ACTIVITY_UNITS = `ACTIVITY_UNITS` · events: Enter, Exit
- TextBox ACTIVITY_DATE = `ACTIVITY_DATE` · default `=[Forms]![NMIS_SOURCE_LOTS]![Default_Date]` · events: DblClick, Enter
- TextBox NOTE = `NOTE`
- TextBox ACTIVITY_NO_NAME = `ACTIVITY_NO_NAME`
- ComboBox Activity_Number = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.NOTE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) In ("CONE","SDEXTR","SDTRAN","SDTRMT"))) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME;` · events: DblClick, Exit
- ComboBox Activity_Code = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.NOTE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) In ("CONE","SDEXTR","SDTRAN","SDTRMT")));` · events: Exit
- ComboBox Unit_Code = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE) In ("STORE","UNIT","AMT")));` · default `"LB"`
- ComboBox Fiscal_Year = `FISCAL_YEAR` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER;` · default `=[Forms]![Switchboard]![FY_For_Reports]`
- TextBox ACTIVITY_UNITS_TO_SUM = `ACTIVITY_UNITS_TO_SUM`
- CommandButton Open_More_Info_Form "+" · events: Click
- TextBox ID_ACTIVITY_CN = `CN`
- TextBox Balance "Lot Balance:" = `=Sum(Nz(IIf([UNIT_CODE]="G",[ACTIVITY_UNITS_TO_SUM]*0.002204623,[ACTIVITY_UNITS_TO_SUM]),0))` · default `""`  [FormFooter]
- CommandButton Open_MGMT_codes_subform "Click to Enter Special Charges/Mgmt Codes" · events: Click  [FormFooter]
- CommandButton Add Record "Click to Add New Activity" · events: Click  [FormFooter]
- ComboBox Combo116 = `="LB"` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="WEIGH"));` · default `"LB"`  [FormFooter]
- TextBox CN = `CN` · default `"seedactform" & Now()`  [FormFooter]
- TextBox Index = `Index`  [FormFooter]
- CommandButton open_source_test_entry_form "Click to Enter/Edit Test Data" · events: Click  [FormFooter]
- TextBox Text150 = `=Sum(Nz(IIf([UNIT_CODE]="G",[ACTIVITY_UNITS_TO_SUM]*0.002204623,[ACTIVITY_UNITS_TO_SUM]),0))/0.002204623` · default `""`  [FormFooter]
- ComboBox Combo152 = `="G"` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="WEIGH"));` · default `"LB"`  [FormFooter]

## Form: NMIS_ID_ACTIVITIES2 Subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › NMIS_ID_ACTIVITIES2 Subform
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_FISCAL_YEARS, NMIS_UNITS
- **Opens:** Form:NMIS_ACTIVITY_CODES, Form:NMIS_ID_ACTIVITIES_MORE_INFO_SUBFORM, Form:NMIS_ID_MGMT_CODES2 subform, Form:NMIS_SOURCE_TESTS_for_act_data Form
- **Form events with code:** AfterInsert, Current, Open
- **Migration:** 0 of 12 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ID_Act2_CN = `=[cn]`  [FormHeader]
- TextBox ACTIVITY_UNITS = `ACTIVITY_UNITS` · events: Enter, Exit
- TextBox ACTIVITY_DATE = `ACTIVITY_DATE` · default `=[Forms]![NMIS_SOURCE_LOTS]![Default_Date]` · events: DblClick, Enter
- TextBox NOTE = `NOTE`
- TextBox ACTIVITY_NO_NAME = `ACTIVITY_NO_NAME`
- ComboBox Activity_Number = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.NOTE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) In ("CONE","SDEXTR","SDTRAN","SDTRMT"))) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME;` · events: DblClick, Enter, Exit
- ComboBox Activity_Code = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.BALANCE_EFFECT, NMIS_ACTIVITY_CODES.NOTE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) In ("CONE","SDEXTR","SDTRAN","SDTRMT"))) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;` · events: Exit
- ComboBox Unit_Code = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE) In ("STORE","UNIT","AMT")));` · default `=IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061505","G","LB")`
- ComboBox Fiscal_Year = `FISCAL_YEAR` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER;` · default `=[Forms]![Switchboard]![FY_For_Reports]`
- TextBox ACTIVITY_UNITS_TO_SUM = `ACTIVITY_UNITS_TO_SUM`
- CommandButton Open_More_Info_Form "+" · events: Click
- TextBox ID_ACTIVITY_CN = `CN`
- TextBox Lb_Wt = `=IIf([UNIT_CODE]="G",[ACTIVITY_UNITS_TO_SUM]*0.002204623,[ACTIVITY_UNITS_TO_SUM])`
- TextBox Balance "Lot Balance:" = `=Round(Sum(Nz(IIf([UNIT_CODE]="G",[ACTIVITY_UNITS_TO_SUM]*0.002204623,[ACTIVITY_UNITS_TO_SUM]),0)),4)` · default `""`  [FormFooter]
- CommandButton Open_MGMT_codes2_subform "Click to Enter Special Charges/Mgmt Codes" · events: Click  [FormFooter]
- CommandButton Add Record "Click to Add New Activity" · events: Click  [FormFooter]
- ComboBox Combo116 = `="lb"` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="WEIGH"));` · default `"LB"`  [FormFooter]
- TextBox Index = `Index`  [FormFooter]
- CommandButton open_source_test_entry_form "Click to Enter/Edit Test Data" · events: Click  [FormFooter]
- TextBox CN = `CN` · default `"seedactform" & Now()`  [FormFooter]
- TextBox Text150 = `=Round(Sum(Nz(IIf([UNIT_CODE]="G",[ACTIVITY_UNITS_TO_SUM]*0.002204623,[ACTIVITY_UNITS_TO_SUM]),0))*453.59,4)` · default `""`  [FormFooter]
- ComboBox Combo152 = `="G"` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="WEIGH"));` · default `"LB"`  [FormFooter]

## Form: NMIS_ID_ACTIVITIES_ACTIVITIES3_subform
- **Caption:** NMIS ID Cultural Activities subform
- **Menu path:** Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_ID_ACTIVITIES_ACTIVITIES3_subform
- **Record source:** SELECT NMIS_ID_ACTIVITIES.* FROM NMIS_ID_ACTIVITIES ORDER BY NMIS_ID_ACTIVITIES.ACTIVITY_DATE;
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_FISCAL_YEARS, NMIS_ID_ACTIVITIES, NMIS_ORDERS, NMIS_TICKETS, NMIS_TREATMENT_PRODUCTS
- **Form events with code:** Current
- **Migration:** 6 of 17 bound fields mapped. Main GrowHub screens: /source-lots/new (4)

**Controls**
- TextBox Index = `Index`  [FormHeader]
- TextBox AGREEMENT_LOT_CN = `AGREEMENT_LOT_CN`  [FormHeader]
- TextBox New_CN = `=[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code`  [FormHeader]
- TextBox CN = `CN`  [FormHeader]
- TextBox Text89 = `Index`  [FormHeader]
- ComboBox ACTIVITY_CODE = `NMIS_ID_ACTIVITIES.ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) Not In ("SDTRAN","CONE","SDEXTR","SDTRMT","SPCSVC"))) OR (((NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="SOW" Or (NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="ADDNON")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_NAME;` · default `=[Forms]![NMIS_ID_ACTIVITY_FORM]![Default_Activity_Code]` · events: Change, DblClick, Enter
- TextBox ACTIVITY_DATE = `ACTIVITY_DATE` · default `=[Forms]![NMIS_ID_ACTIVITY_FORM]![Default_Date]` · events: Change, DblClick, Enter → GrowHub processing_activity.activityDate (yes)
- TextBox NOTE = `NOTE` · events: Change → GrowHub processing_activity.notes (yes)
- ComboBox FISCAL_YEAR = `FISCAL_YEAR` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![Switchboard]![FY_For_Reports]`
- ComboBox TREATMENT_PRODUCT_ID = `TREATMENT_PRODUCT_ID` · rows: `SELECT NMIS_TREATMENT_PRODUCTS.TREATMENT_PRODUCT_ID, NMIS_TREATMENT_PRODUCTS.TREATMENT_PRODUCT_DESC FROM NMIS_TREATMENT_PRODUCTS;`
- TextBox ACTIVITY_UNITS = `ACTIVITY_UNITS` · events: Change, DblClick, Enter, Exit → GrowHub processing_activity.quantity (yes)
- TextBox AMT_PER_UNIT = `AMT_PER_UNIT`
- TextBox UNIT_CODE = `UNIT_CODE` → GrowHub processing_activity.unitOfMeasurement (yes)
- TextBox ACTIVITY_UNITS_PRESCRIBED = `ACTIVITY_UNITS_PRESCRIBED`
- CommandButton Properties_Button "Click for Properties" · events: Click
- ComboBox ORDER_CN = `ORDER_CN` · rows: `SELECT NMIS_ORDERS.CN, Left$(nmis_orders.cn,Len(nmis_orders.cn)-7) AS [Order], NMIS_ORDERS.CLIENT_ASSOCIATE, [Order_Amt] & "M" AS ORDER_AMT2, NMIS_ORDERS.ACTIVITY_CODE FROM NMIS_ORDERS GROUP BY NMIS_ORDERS.CN, Left$(nmis_orders.cn,Len(nmis_orders.cn)-7), NMIS_ORDERS.CLIENT_ASSOCIATE, [Order_Amt] & "M", NMIS_ORDERS.ACTIVITY_CODE, NMIS_ORDERS.AGREEMENT_LOT_CN HAVING (((NMIS_ORDERS.AGREEMENT_LOT_CN)=` · events: Exit
- TextBox CONTRACT_ITEM = `CONTRACT_ITEM`
- TextBox ACTIVITY_HOURS = `ACTIVITY_HOURS`
- ComboBox Ticket_ID = `TICKET_CN` · rows: `SELECT NMIS_TICKETS.CN, NMIS_TICKETS.TKT_NO FROM NMIS_TICKETS GROUP BY NMIS_TICKETS.CN, NMIS_TICKETS.TKT_NO;`

## Form: NMIS_ID_ACTIVITIES_ACTIVITIES_subform
- **Caption:** NMIS ID Cultural Activities subform
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_ID_ACTIVITIES_ACTIVITIES_subform
- **Record source:** SELECT NMIS_ID_ACTIVITIES.* FROM NMIS_ID_ACTIVITIES WHERE (((NMIS_ID_ACTIVITIES.CN) Like IIf([Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![first_open],"XXX","*"))) ORDER BY NMIS_ID_ACTIVITIES.ACTIVITY_DATE, NMIS_ID_ACTIVITIES.Index;
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_FISCAL_YEARS, NMIS_ID_ACTIVITIES, NMIS_ORDERS, NMIS_TICKETS, NMIS_TREATMENT_PRODUCTS
- **Opens:** Form:NMIS_ID_ACTIVITIES_MORE_INFO_PRODUCTION_SUBFORM
- **Form events with code:** Current
- **Migration:** 6 of 16 bound fields mapped. Main GrowHub screens: /source-lots/new (4)

**Controls**
- TextBox AGREEMENT_LOT_CN = `AGREEMENT_LOT_CN`  [FormHeader]
- TextBox Index = `Index`  [FormHeader]
- TextBox New_CN = `=[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code`  [FormHeader]
- TextBox CN = `CN`  [FormHeader]
- ComboBox ACTIVITY_CODE = `NMIS_ID_ACTIVITIES.ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) Not In ("SDTRAN","CONE","SDEXTR","SDTRMT","SPCSVC"))) OR (((NMIS_ACTIVITY_CODES.ACTIVITY_CODE) In ("SOW","ADDNON","SRSDSL"))) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_NAME;` · events: Change, DblClick, Enter
- TextBox ACTIVITY_DATE = `ACTIVITY_DATE` · default `=[Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Date]` · events: Change, DblClick, Enter, Exit → GrowHub processing_activity.activityDate (yes)
- TextBox NOTE = `NOTE` → GrowHub processing_activity.notes (yes)
- ComboBox FISCAL_YEAR = `FISCAL_YEAR` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![Switchboard]![FY_For_Reports]` · events: Change
- ComboBox TREATMENT_PRODUCT_ID = `TREATMENT_PRODUCT_ID` · rows: `SELECT NMIS_TREATMENT_PRODUCTS.TREATMENT_PRODUCT_ID, NMIS_TREATMENT_PRODUCTS.TREATMENT_PRODUCT_DESC FROM NMIS_TREATMENT_PRODUCTS;` · events: Change
- TextBox ACTIVITY_UNITS = `ACTIVITY_UNITS` · events: Change, DblClick, Enter, Exit → GrowHub processing_activity.quantity (yes)
- TextBox AMT_PER_UNIT = `AMT_PER_UNIT`
- TextBox UNIT_CODE = `UNIT_CODE` · default `=IIf([Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![UNIT_CODE]="AC" And ([ACTIVITY_CODE]="SOW" Or [ACTIVITY_CODE]="FDEST" Or [ACTIVITY_CODE]="XPLTN"),"AC",[Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![DEFAULT_ID_ACTIVITY_UNIT_CODE])` → GrowHub processing_activity.unitOfMeasurement (yes)
- TextBox ACTIVITY_UNITS_PRESCRIBED = `ACTIVITY_UNITS_PRESCRIBED`
- CommandButton Properties_Button "Click for Properties" · events: Click
- ComboBox ORDER_CN = `ORDER_CN` · rows: `SELECT NMIS_ORDERS.CN, Left$(nmis_orders.cn,Len(nmis_orders.cn)-7) AS [Order], NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ORDERS.ACTIVITY_CODE, [Order_Amt] & "M" AS ORDER_AMT2, Nz([OVERRUN_AMT],0) & "M Over" AS [OR], IIf([overrun_all],"All") AS [All], NMIS_ORDERS.FISCAL_YEAR, NMIS_ORDERS.CONTRACT_ITEM, NMIS_ORDERS_SIZE_SPEC_STRING.Order_Size_Spec_W_Prune, "End FY: " & [END_FY] AS [End FY] FROM (NMIS_ORDER` · events: AfterUpdate, DblClick, Exit
- TextBox CONTRACT_ITEM = `CONTRACT_ITEM` · events: Click, Enter
- TextBox ACTIVITY_HOURS = `ACTIVITY_HOURS`
- ComboBox Ticket_ID = `TICKET_CN` · rows: `SELECT NMIS_TICKETS.CN, NMIS_TICKETS.TKT_NO, "(" & [DELIVERED_TO_ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS [TO], NMIS_TICKETS.NOTE FROM NMIS_ASSOCIATES INNER JOIN NMIS_TICKETS ON (NMIS_ASSOCIATES.ASSOCIATE = NMIS_TICKETS.DELIVERED_TO_ASSOCIATE) AND (NMIS_ASSOCIATES.ASSOCIATE = NMIS_TICKETS.DELIVERED_TO_ASSOCIATE) WHERE (((NMIS_TICKETS.TICKET_TYPE)=IIf([Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NM` · events: DblClick, Enter
- CommandButton Open_More_Info_Form "+" · events: Click

## Form: NMIS_ID_ACTIVITIES_MORE_INFO_ID_LOC_FORM
- **Caption:** Source Lot More Info
- **Menu path:** Switchboard › NMIS_ID_LOCATIONS_SOURCE_LOTS › NMIS_ID_ACTIVITIES_MORE_INFO_ID_LOC_FORM
- **Record source:** SELECT NMIS_ID_ACTIVITIES.ACTIVITY_DATE, NMIS_ID_ACTIVITIES.CN AS ID_ACTIVITY_CN, NMIS_ID_ACTIVITIES.FISCAL_YEAR, NMIS_ID_ACTIVITIES.ACTIVITY_CODE, NMIS_ID_ACTIVITIES.ACTIVITY_UNITS, NMIS_ID_ACTIVITIES.ACTIVITY_UNITS_PRESCRIBED, NMIS_ID_ACTIVITIES.ACTIVITY_TIME, NMIS_ID_ACTIVITIES.ACTIVITY_HOURS, NMIS_ID_ACTIVITIES.AMT_PER_UNIT, NMIS_ID_ACTIVITIES.UNIT_CODE, NMIS_ID_ACTIVITIES.TREATMENT_PRODUCT_ID, NMIS_ID_ACTIVITIES.CONTRACT_ITEM, NMIS_ID_ACTIVITIES.CHARGE_PER_HOUR_OVERRIDE, NMIS_ID_ACTIVITIES.CHARGE_PER_AMT_OVERRIDE, NMIS_ID_ACTIVITIES.CHARGE_PER_UNIT_OVERRIDE, NMIS_ID_ACTIVITIES.CHARGE_PER_ACTIVITY_OVERRIDE, NMIS_ID_ACTIVITIES.NOTE, NMIS_ID_ACTIVITIES.DESTINATION_ASSOCIATE, NMIS_ID_ACTIVITIES.SOURCE_LOT_CN, NMIS_ID_ACTIVITIES.AGREEMENT_LOT_CN, NMIS_ID_ACTIVITIES.ORDER_CN, NMIS_ID_ACTIVITIES.TICKET_CN, NMIS_ACTIVITY_CODES.ACTIVITY_NAME AS ACTIVITY_NO_NAME, NMIS_ID_ACTIVITIES.Index, NMIS_ACTIVITY_CODES.BALANCE_EFFECT, NMIS_ID_ACTIVITIES.AMT_PER_UNIT, (IIf([BALANCE_EFFECT]="NOEFFECT",0,1))*[ACTIVITY_UNITS] AS ACTIVITY_UNITS_TO_SUM, NMIS_ID_ACTIVITIES.TICKET_CN FROM NMIS_ACTIVITY_CODES INNER JOIN NMIS_ID_ACTIVITIES ON NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ID_ACTIVITIES.ACTIVITY_CODE WHERE (((NMIS_ID_ACTIVITIES.SOURCE_LOT_CN)=[Forms]![NMIS_ID_LOCATIONS_SOURCE_LOTS]![Source_LOT_CN])) ORDER BY NMIS_ID_ACTIVITIES.ACTIVITY_DATE, NMIS_ID_ACTIVITIES.CN;
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_CATEGORIES, NMIS_ID_ACTIVITIES, NMIS_SOURCE_LOTS, NMIS_SPECIES_PRODUCTS, NMIS_TICKETS, NMIS_UNITS
- **Opened from:** Form_NMIS_ID_LOCATIONS_SOURCE_LOTS
- **Migration:** 9 of 12 bound fields mapped. Main GrowHub screens: /source-lots/new (5), /orders/new (3)

**Controls**
- ComboBox Combo19 = `SOURCE_LOT_CN` · rows: `SELECT NMIS_SOURCE_LOTS.CN, Source_Lot_ID_and_Source_string.SOURCE, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN=Source_Lot_ID_and_Source_string.CN;` → GrowHub order_cycle_planning.sourceLotUuid (blank)  [FormHeader]
- ComboBox SOURCE_LOT_CN = `SOURCE_LOT_CN` · rows: `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE FROM NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN=Source_Lot_ID_and_Source_string.CN ORDER BY NMIS_SOURCE_LOTS.ID;` → GrowHub order_cycle_planning.sourceLotUuid (blank)  [FormHeader]
- TextBox Text43 = `=Sum([ACTIVITY_UNITS_TO_SUM])`  [FormHeader]
- ComboBox Combo46 = `SOURCE_LOT_CN` · rows: `SELECT NMIS_SOURCE_LOTS.CN, [CATEGORY_DESC] & " (" & [NMIS_CATEGORIES].[CATEGORY_CODE] & ")" AS desc_n_code FROM NMIS_CATEGORIES INNER JOIN NMIS_SOURCE_LOTS ON (NMIS_CATEGORIES.CATEGORY_CODE = NMIS_SOURCE_LOTS.CATEGORY_CODE) AND (NMIS_CATEGORIES.CATEGORY_CODE = NMIS_SOURCE_LOTS.CATEGORY_CODE);` → GrowHub order_cycle_planning.sourceLotUuid (blank)  [FormHeader]
- ComboBox ACTIVITY_CODE = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.NOTE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SDTRAN" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SDTRMT")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;` → GrowHub processing_activity.activityType (yes)
- TextBox ACTIVITY_UNITS = `ACTIVITY_UNITS` → GrowHub processing_activity.quantity (yes)
- TextBox ACTIVITY_DATE = `ACTIVITY_DATE` → GrowHub processing_activity.activityDate (yes)
- ComboBox UNIT_CODE = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS;` · default `"LB"` → GrowHub processing_activity.unitOfMeasurement (yes)
- TextBox NOTE "ID Activity Note:" = `NOTE` · default `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![NOTE]` → GrowHub processing_activity.notes (yes)
- ComboBox AGREEMENT_LOT_CN = `AGREEMENT_LOT_CN` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.ID_ORIGINAL FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.ID;`
- ComboBox Combo121 = `AGREEMENT_LOT_CN` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_SPECIES_PRODUCTS.SOWING_GROUP FROM NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN=NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN;`
- ComboBox TICKET_CN = `TICKET_CN` · rows: `SELECT NMIS_TICKETS.CN, NMIS_TICKETS.TKT_NO, NMIS_TICKETS.NOTE FROM NMIS_TICKETS WHERE (((NMIS_TICKETS.TICKET_TYPE) Like "s*")) ORDER BY NMIS_TICKETS.FY DESC , NMIS_TICKETS.TKT_NO DESC;`
- ComboBox DESTINATION_ASSOCIATE = `DESTINATION_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;`

## Form: NMIS_ID_ACTIVITIES_MORE_INFO_PRODUCTION_ShipTicket_SUBFORM
- **Caption:** Seed_Ship_Ticked_ID_ACTIVITIES subform
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_SHIPPING_ID_ACTIVITIES subform › NMIS_ID_ACTIVITIES_MORE_INFO_PRODUCTION_ShipTicket_SUBFORM
- **Record source:** NMIS_ID_ACTIVITIES_MORE_INFO Query
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_TICKETS, NMIS_UNITS
- **Opened from:** Form_NMIS_SHIPPING_ID_ACTIVITIES subform
- **Migration:** 1 of 12 bound fields mapped. Main GrowHub screens: none

**Controls**
- ComboBox SOURCE_LOT_CN = `AGREEMENT_LOT_CN` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID FROM NMIS_AGREEMENT_LOTS;`  [FormHeader]
- ComboBox ACTIVITY_CODE = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.NOTE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SDTRAN" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SDTRMT")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;` · default `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![Default_Activity_Code]`
- TextBox ACTIVITY_UNITS = `ACTIVITY_UNITS`
- TextBox ACTIVITY_DATE = `ACTIVITY_DATE` · default `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![DESIRED_DATE]`
- ComboBox UNIT_CODE = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS;` · default `"LB"`
- TextBox NOTE "ID Activity Note:" = `NOTE` · default `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![NOTE]`
- ComboBox DESTINATION_ASSOCIATE = `DESTINATION_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;`
- TextBox CHARGE_PER_HOUR_OVERRIDE = `CHARGE_PER_HOUR_OVERRIDE`
- TextBox CHARGE_PER_AMT_OVERRIDE = `CHARGE_PER_AMT_OVERRIDE`
- TextBox CHARGE_PER_UNIT_OVERRIDE = `CHARGE_PER_UNIT_OVERRIDE`
- TextBox CHARGE_PER_ACTIVITY_OVERRIDE = `CHARGE_PER_ACTIVITY_OVERRIDE`
- ComboBox Ticket_NO = `TICKET_CN` · rows: `SELECT NMIS_TICKETS.CN, NMIS_TICKETS.TKT_NO, NMIS_TICKETS.DELIVERED_TO_ASSOCIATE, NMIS_TICKETS.NOTE FROM NMIS_TICKETS WHERE (((NMIS_TICKETS.TICKET_TYPE)="p")) ORDER BY Val(Right$([TKT_NO],Len([tkt_NO])-2)) DESC;` · events: DblClick, Enter

## Form: NMIS_ID_ACTIVITIES_MORE_INFO_PRODUCTION_SUBFORM
- **Caption:** Seed_Ship_Ticked_ID_ACTIVITIES subform
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_ID_ACTIVITIES_ACTIVITIES_subform › NMIS_ID_ACTIVITIES_MORE_INFO_PRODUCTION_SUBFORM
- **Record source:** NMIS_ID_ACTIVITIES_MORE_INFO Query
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_UNITS
- **Opened from:** Form_NMIS_ID_ACTIVITIES_ACTIVITIES_subform
- **Migration:** 0 of 11 bound fields mapped. Main GrowHub screens: none

**Controls**
- ComboBox SOURCE_LOT_CN = `AGREEMENT_LOT_CN` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID FROM NMIS_AGREEMENT_LOTS;`  [FormHeader]
- ComboBox ACTIVITY_CODE = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.NOTE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SDTRAN" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SDTRMT")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;` · default `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![Default_Activity_Code]`
- TextBox ACTIVITY_UNITS = `ACTIVITY_UNITS`
- TextBox ACTIVITY_DATE = `ACTIVITY_DATE` · default `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![DESIRED_DATE]`
- ComboBox UNIT_CODE = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS;` · default `"LB"`
- TextBox NOTE "ID Activity Note:" = `NOTE` · default `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![NOTE]`
- ComboBox DESTINATION_ASSOCIATE = `DESTINATION_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;`
- TextBox CHARGE_PER_HOUR_OVERRIDE = `CHARGE_PER_HOUR_OVERRIDE`
- TextBox CHARGE_PER_AMT_OVERRIDE = `CHARGE_PER_AMT_OVERRIDE`
- TextBox CHARGE_PER_UNIT_OVERRIDE = `CHARGE_PER_UNIT_OVERRIDE`
- TextBox CHARGE_PER_ACTIVITY_OVERRIDE = `CHARGE_PER_ACTIVITY_OVERRIDE`

## Form: NMIS_ID_ACTIVITIES_MORE_INFO_Ship_Tkt_FORM
- **Caption:** Source Lot More Info
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › Seed_Ship_Ticket_ID_ACTIVITIES subform › NMIS_ID_ACTIVITIES_MORE_INFO_Ship_Tkt_FORM
- **Record source:** NMIS_ID_ACTIVITIES_MORE_INFO Query
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_CATEGORIES, NMIS_SOURCE_LOTS, NMIS_SPECIES_PRODUCTS, NMIS_TICKETS, NMIS_UNITS
- **Opened from:** Form_Seed_Ship_Ticket_ID_ACTIVITIES subform, Form_Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform
- **Migration:** 4 of 13 bound fields mapped. Main GrowHub screens: /orders/new (3), /shipping/create (1), /source-lots/new (1)

**Controls**
- ComboBox Combo19 = `SOURCE_LOT_CN` · rows: `SELECT NMIS_SOURCE_LOTS.CN, Source_Lot_ID_and_Source_string.SOURCE, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN=Source_Lot_ID_and_Source_string.CN;` → GrowHub order_cycle_planning.sourceLotUuid (blank)  [FormHeader]
- ComboBox SOURCE_LOT_CN = `SOURCE_LOT_CN` · rows: `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE FROM NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN=Source_Lot_ID_and_Source_string.CN ORDER BY NMIS_SOURCE_LOTS.ID;` → GrowHub order_cycle_planning.sourceLotUuid (blank)  [FormHeader]
- TextBox Text43 = `=Sum([ACTIVITY_UNITS_TO_SUM])`  [FormHeader]
- ComboBox Combo46 = `SOURCE_LOT_CN` · rows: `SELECT NMIS_SOURCE_LOTS.CN, [CATEGORY_DESC] & " (" & [NMIS_CATEGORIES].[CATEGORY_CODE] & ")" AS desc_n_code FROM NMIS_CATEGORIES INNER JOIN NMIS_SOURCE_LOTS ON (NMIS_CATEGORIES.CATEGORY_CODE = NMIS_SOURCE_LOTS.CATEGORY_CODE) AND (NMIS_CATEGORIES.CATEGORY_CODE = NMIS_SOURCE_LOTS.CATEGORY_CODE);` → GrowHub order_cycle_planning.sourceLotUuid (blank)  [FormHeader]
- ComboBox ACTIVITY_CODE = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.NOTE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SDTRAN" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SDTRMT")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;` · default `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![Default_Activity_Code]`
- TextBox ACTIVITY_UNITS = `ACTIVITY_UNITS`
- TextBox ACTIVITY_DATE = `ACTIVITY_DATE` · default `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![DESIRED_DATE]`
- ComboBox UNIT_CODE = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS;` · default `"LB"`
- TextBox NOTE "ID Activity Note:" = `NOTE` · default `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![NOTE]` → GrowHub source_lot.notes (yes)
- ComboBox AGREEMENT_LOT_CN = `AGREEMENT_LOT_CN` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.ID_ORIGINAL FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.ID;`
- ComboBox Combo121 = `AGREEMENT_LOT_CN` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_SPECIES_PRODUCTS.SOWING_GROUP FROM NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN=NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN;`
- ComboBox TICKET_CN = `TICKET_CN` · rows: `SELECT NMIS_TICKETS.CN, NMIS_TICKETS.TKT_NO, NMIS_TICKETS.NOTE FROM NMIS_TICKETS WHERE (((NMIS_TICKETS.TICKET_TYPE) Like "s*")) ORDER BY NMIS_TICKETS.FY DESC , NMIS_TICKETS.TKT_NO DESC;`
- ComboBox DESTINATION_ASSOCIATE = `DESTINATION_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;`
- TextBox CHARGE_PER_ACTIVITY_OVERRIDE = `CHARGE_PER_ACTIVITY_OVERRIDE`

## Form: NMIS_ID_ACTIVITIES_MORE_INFO_SUBFORM
- **Caption:** Source Lot More Info
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › NMIS_ID_ACTIVITIES Subform › NMIS_ID_ACTIVITIES_MORE_INFO_SUBFORM
- **Record source:** NMIS_ID_ACTIVITIES_MORE_INFO Query
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_CONTACTS, NMIS_SOURCE_LOTS, NMIS_SPECIES_PRODUCTS, NMIS_TICKETS, NMIS_TREATMENT_PRODUCTS, NMIS_UNITS
- **Opens:** Form:NMIS_AGREEMENT_LOTS
- **Opened from:** Form_NMIS_ID_ACTIVITIES Subform, Form_NMIS_ID_ACTIVITIES2 Subform
- **Migration:** 2 of 11 bound fields mapped. Main GrowHub screens: /orders/new (1), /shipping/create (1), /source-lots/new (1)

**Controls**
- ComboBox SOURCE_LOT_CN = `SOURCE_LOT_CN` · rows: `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS;` → GrowHub order_cycle_planning.sourceLotUuid (blank)  [FormHeader]
- ComboBox ACTIVITY_CODE = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.NOTE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SDTRAN" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SDTRMT")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;` · default `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![Default_Activity_Code]`
- TextBox ACTIVITY_UNITS = `ACTIVITY_UNITS`
- TextBox ACTIVITY_DATE = `ACTIVITY_DATE` · default `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![DESIRED_DATE]`
- ComboBox UNIT_CODE = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS;` · default `"LB"`
- TextBox NOTE "ID Activity Note:" = `NOTE` · default `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![NOTE]` → GrowHub source_lot.notes (yes)
- ComboBox AGREEMENT_LOT_CN = `AGREEMENT_LOT_CN` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.ID_ORIGINAL, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_SPECIES_PRODUCTS.SPECIES_PRODUCT_DESC, NMIS_AGREEMENT_LOTS.SOURCE_REQUIRED, NMIS_AGREEMENT_LOTS.TOTAL_REQUEST FROM NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN WHERE (((NMIS_AGREEMENT_LOTS.SOURCE_LOT_` · events: DblClick
- ComboBox Combo121 = `AGREEMENT_LOT_CN` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_SPECIES_PRODUCTS.SOWING_GROUP FROM NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN=NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN;`
- ComboBox TICKET_CN = `TICKET_CN` · rows: `SELECT NMIS_TICKETS.CN, NMIS_TICKETS.TKT_NO, NMIS_TICKETS.DELIVERED_TO_ASSOCIATE, NMIS_TICKETS.NOTE, [FIRST_NAME] & " " & [LAST_NAME] AS name FROM NMIS_CONTACTS RIGHT JOIN NMIS_TICKETS ON NMIS_CONTACTS.CN = NMIS_TICKETS.NURSERY_CONTACT_CN WHERE (((NMIS_TICKETS.TICKET_TYPE) Like "s*")) ORDER BY NMIS_TICKETS.FY DESC , NMIS_TICKETS.TKT_NO DESC;`
- ComboBox DESTINATION_ASSOCIATE = `DESTINATION_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;`
- ComboBox TREATMENT_PRODUCT_ID = `TREATMENT_PRODUCT_ID` · rows: `SELECT NMIS_TREATMENT_PRODUCTS.TREATMENT_PRODUCT_ID, NMIS_TREATMENT_PRODUCTS.TREATMENT_PRODUCT_DESC FROM NMIS_TREATMENT_PRODUCTS;`

## Form: NMIS_ID_ACTIVITIES_NEW_LOTS Subform
- **Caption:** NMIS_ID_ACTIVITIES_NEW_LOTS Subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ID_ACTIVITIES_NEW_LOTS Subform
- **Record source:** NMIS_ID_ACTIVITIES Query
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_FISCAL_YEARS, NMIS_ID_ACTIVITIES, NMIS_TICKETS, NMIS_UNITS
- **Opens:** Form:NMIS_ACTIVITY_CODES, Form:NMIS_ID_MGMT_CODES_NEW subform, Form:NMIS_SOURCE_TESTS Form, Form:seed_entry_edit_lot_bag_label, Report:NMIS_ACTIVITY_CODES, Report:NMIS_ID_MGMT_CODES_NEW subform, Report:NMIS_SOURCE_TESTS Form, Report:seed_entry_edit_lot_bag_label
- **Form events with code:** BeforeInsert, Current
- **Migration:** 7 of 12 bound fields mapped. Main GrowHub screens: /source-lots/new (6)

**Controls**
- TextBox ACTIVITY_UNITS = `ACTIVITY_UNITS` · events: Enter, Exit → GrowHub processing_activity.quantity (yes)
- TextBox ACTIVITY_DATE = `ACTIVITY_DATE` · default `[default_activity_date]` → GrowHub processing_activity.activityDate (yes)
- TextBox NOTE = `NOTE` · events: DblClick → GrowHub processing_activity.notes (yes)
- TextBox DESTINATION_ASSOCIATE = `DESTINATION_ASSOCIATE`
- TextBox ACTIVITY_NO_NAME = `ACTIVITY_NO_NAME`
- ComboBox Activity_Number = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.NOTE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) In ("CONE","SDEXTR","SDTRAN","SDTRMT"))) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO;` · events: DblClick, Enter, Exit → GrowHub processing_activity.activityType (yes)
- ComboBox Activity_Code = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.NOTE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) In ("CONE","SDEXTR","SDTRAN","SDTRMT")));` · default `=IIf(Not IsNull([Forms]![NMIS_SOURCE_LOTS_INPUT]![CATEGORY_CODE]),IIf(([Forms]![NMIS_SOURCE_LOTS_INPUT]![CATEGORY_CODE]="NS" Or [Forms]![NMIS_SOURCE_LOTS_INPUT]![CATEGORY_CODE]="SNWC"),"ADDNON",IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061019","XFRIN2","WEIGH")),Null)` · events: Exit → GrowHub processing_activity.activityType (yes)
- ComboBox Unit_Code = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE) In ("STORE","UNIT","AMT")));` · default `=IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061505","G","LB")` → GrowHub processing_activity.unitOfMeasurement (yes)
- ComboBox Fiscal_Year = `FISCAL_YEAR` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` · default `=IIf(IsNull([default_activity_FY]),[Forms]![Switchboard]![FY_For_Reports],[default_activity_FY])` · events: Exit
- ComboBox TICKET_CN = `TICKET_CN` · rows: `SELECT NMIS_TICKETS.CN, NMIS_TICKETS.TKT_NO, NMIS_TICKETS.NOTE FROM NMIS_TICKETS WHERE (((NMIS_TICKETS.TICKET_TYPE) Like "s*")) ORDER BY NMIS_TICKETS.FY DESC , NMIS_TICKETS.TKT_NO DESC;`
- CommandButton Print_Bag_Label "Tag" · events: Click
- TextBox CN = `CN` · default `"seedactformN" & Now()`  [FormFooter]
- TextBox Index = `Index`  [FormFooter]
- CommandButton Open_MGMT_codes_subform "Enter Special Charges/Mgmt Codes" · events: Click  [FormFooter]
- TextBox default_activity_date · default `Date()`  [FormFooter]
- TextBox default_activity_FY  [FormFooter]
- TextBox Balance "Lot Balance:" = `=Round(Sum(Nz(IIf([UNIT_CODE]="G",[ACTIVITY_UNITS_TO_SUM]*0.002204623,[ACTIVITY_UNITS_TO_SUM]),0)),4)` · default `""`  [FormFooter]
- ComboBox Combo116 = `="lb"` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="WEIGH"));` · default `"LB"`  [FormFooter]
- TextBox Text150 = `=Round(Sum(Nz(IIf([UNIT_CODE]="G",[ACTIVITY_UNITS_TO_SUM]*0.002204623,[ACTIVITY_UNITS_TO_SUM]),0))/0.002204623,4)` · default `""`  [FormFooter]
- ComboBox Combo152 = `="G"` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="WEIGH"));` · default `"LB"`  [FormFooter]

## Form: NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform
- **Caption:** NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform
- **Menu path:** Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform
- **Record source:** SELECT NMIS_ID_ACTIVITIES.CN, NMIS_ID_ACTIVITIES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE, NMIS_ACTIVITY_CODES.PROPERTIES_MODULE, NMIS_ID_ACTIVITIES.SOURCE_LOT_CN FROM NMIS_ACTIVITY_CODES INNER JOIN NMIS_ID_ACTIVITIES ON NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ID_ACTIVITIES.ACTIVITY_CODE;
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_ID_ACTIVITIES
- **Migration:** 2 of 5 bound fields mapped. Main GrowHub screens: /source-lots/new (1)

**Controls**
- TextBox CN "CN" = `CN`
- ComboBox ACTIVITY_CODE "Activity Code" = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES;` → GrowHub processing_activity.activityType (yes)
- TextBox PARENT_ACTIVITY_CODE "Parent Activity Code" = `PARENT_ACTIVITY_CODE`
- TextBox PROPERTIES_MODULE "Properties Module" = `PROPERTIES_MODULE`
- TextBox SOURCE_LOT_CN "SOURCE_CN" = `SOURCE_LOT_CN` → GrowHub lot_slip.sourceLotUuid (yes)

## Form: NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE
- **Caption:** SOURCE LOCATIONS
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE
- **Record source:** SELECT NMIS_TRANSACTIONS.*, Round(Abs(([BEGIN_INDEX]-[END_INDEX])*[INDEX_INCREMENT]),0) AS Est_Units, NMIS_ID_LOCATIONS.SOURCE_LOT_CN FROM NMIS_TRANSACTIONS LEFT JOIN (NMIS_LOCATIONS RIGHT JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN) ON NMIS_TRANSACTIONS.ID_LOCATION_CN = NMIS_ID_LOCATIONS.CN WHERE (((NMIS_TRANSACTIONS.ID_ACTIVITY_CN)=[Forms]![NMIS_SOURCE_LOTS]![Activity].[Form]![CN])) ORDER BY NMIS_LOCATIONS.LOCATION, NMIS_ID_LOCATIONS.SUBLOT_NO, NMIS_TRANSACTIONS.AMT_PER_UNIT;
- **Backend tables:** NMIS_FISCAL_YEARS, NMIS_ID_LOCATIONS, NMIS_LOCATIONS, NMIS_SOURCE_LOTS, NMIS_TRANSACTIONS
- **Opens:** Form:NMIS_ID_LOCATIONS_SOURCE
- **Opened from:** Form_NMIS_SOURCE_LOTS, Form_NMIS_SOURCE_LOTS_bu
- **Migration:** 0 of 10 bound fields mapped. Main GrowHub screens: none

**Controls**
- CommandButton Update_Sow_Unit_Amts "Click to Update Amt/Units"  [FormHeader]
- ComboBox FISCAL_YEAR = `FISCAL_YEAR` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![NMIS_SOURCE_LOTS]![Activity].[Form]![Fiscal_Year]`
- TextBox NUMBER_OF_ACTIVITY_UNITS = `NUMBER_OF_ACTIVITY_UNITS` · default `0`
- TextBox AMT_PER_UNIT = `AMT_PER_UNIT` · default `0` · events: Exit
- TextBox AMT_PER_UNIT_INV_GROSS = `AMT_PER_UNIT_INV_GROSS` · default `0`
- TextBox CONTRACT_ITEM = `CONTRACT_ITEM`
- TextBox CHARGE_PER_AMT_OVERRIDE = `CHARGE_PER_AMT_OVERRIDE`
- TextBox CHARGE_PER_UNIT_OVERRIDE = `CHARGE_PER_UNIT_OVERRIDE`
- ComboBox ID_LOCATION_CN = `ID_LOCATION_CN` · rows: `SELECT NMIS_ID_LOCATIONS.CN, [LOCATION] & IIf((IsNull([Sublot_No]) Or [Sublot_No]=" "),"","(" & [sublot_no] & ")") & " " & [BEGIN_INDEX] & IIf(IsNull([END_INDEX]),""," - " & [END_INDEX]) AS [Location(s)], NMIS_ID_LOCATIONS.UNIT_CODE, NMIS_ID_LOCATIONS.BEGIN_DATE, IIf(IsNull([BEGIN_COUNTER]) Or IsNull([END_COUNTER]),Round(Abs(([BEGIN_INDEX]-[END_INDEX])*[INDEX_INCREMENT]),0),Abs([END_COUNTER]-[BEGI`
- ComboBox ID_LOCATION_UNIT_CODE = `ID_LOCATION_CN` · rows: `SELECT NMIS_ID_LOCATIONS.CN, NMIS_ID_LOCATIONS.UNIT_CODE FROM NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN;`
- TextBox ID_ACTIVITY_CN = `ID_ACTIVITY_CN` · default `=[Forms]![NMIS_SOURCE_LOTS]![Activity].[Form]![CN]`

## Form: NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE_NEW_LOTS
- **Caption:** SOURCE LOCATIONS
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE_NEW_LOTS
- **Record source:** SELECT NMIS_TRANSACTIONS.*, Round(Abs(([BEGIN_INDEX]-[END_INDEX])*[INDEX_INCREMENT]),0) AS Est_Units, NMIS_ID_LOCATIONS.SOURCE_LOT_CN FROM NMIS_TRANSACTIONS LEFT JOIN (NMIS_LOCATIONS RIGHT JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN) ON NMIS_TRANSACTIONS.ID_LOCATION_CN = NMIS_ID_LOCATIONS.CN WHERE (((NMIS_TRANSACTIONS.ID_ACTIVITY_CN)=[Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_ACTIVITIES Subform].[Form]![CN])) ORDER BY NMIS_LOCATIONS.LOCATION, NMIS_ID_LOCATIONS.SUBLOT_NO, NMIS_TRANSACTIONS.AMT_PER_UNIT;
- **Backend tables:** NMIS_FISCAL_YEARS, NMIS_ID_ACTIVITIES, NMIS_ID_LOCATIONS, NMIS_LOCATIONS, NMIS_TRANSACTIONS
- **Opens:** Form:NMIS_ID_LOCATIONS_SOURCE
- **Opened from:** Form_NMIS_SOURCE_LOTS_INPUT
- **Migration:** 1 of 10 bound fields mapped. Main GrowHub screens: none

**Controls**
- CommandButton Update_Sow_Unit_Amts "Click to Update Amt/Units"  [FormHeader]
- ComboBox FISCAL_YEAR = `FISCAL_YEAR` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_ACTIVITIES Subform].[Form]![Fiscal_Year]`
- TextBox NUMBER_OF_ACTIVITY_UNITS = `NUMBER_OF_ACTIVITY_UNITS`
- TextBox AMT_PER_UNIT = `AMT_PER_UNIT` · events: Exit
- TextBox AMT_PER_UNIT_INV_GROSS = `AMT_PER_UNIT_INV_GROSS` · default `0`
- TextBox CONTRACT_ITEM = `CONTRACT_ITEM`
- TextBox CHARGE_PER_AMT_OVERRIDE = `CHARGE_PER_AMT_OVERRIDE`
- TextBox CHARGE_PER_UNIT_OVERRIDE = `CHARGE_PER_UNIT_OVERRIDE`
- ComboBox ID_LOCATION_CN = `ID_LOCATION_CN` · rows: `SELECT NMIS_ID_LOCATIONS.CN, [LOCATION] & IIf((IsNull([Sublot_No]) Or [Sublot_No]=" "),"","(" & [sublot_no] & ")") & " " & [BEGIN_INDEX] & IIf(IsNull([END_INDEX]),""," - " & [END_INDEX]) AS [Location(s)], NMIS_ID_LOCATIONS.UNIT_CODE, NMIS_ID_LOCATIONS.BEGIN_DATE, IIf(IsNull([BEGIN_COUNTER]) Or IsNull([END_COUNTER]),Round(Abs(([BEGIN_INDEX]-[END_INDEX])*[INDEX_INCREMENT]),0),Abs([END_COUNTER]-[BEGI`
- ComboBox ID_LOCATION_UNIT_CODE = `ID_LOCATION_CN` · rows: `SELECT NMIS_ID_LOCATIONS.CN, NMIS_ID_LOCATIONS.UNIT_CODE FROM NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN;`
- TextBox ID_ACTIVITY_CN = `ID_ACTIVITY_CN` · default `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_ACTIVITIES Subform].[Form]![CN]`

## Form: NMIS_ID_ACTIVITIES_TRANSACTIONS_subform
- **Caption:** NMIS_Cultrual_TRANSACTIONS subform
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_ID_ACTIVITIES_TRANSACTIONS_subform
- **Record source:** SELECT NMIS_TRANSACTIONS.*, Round(Abs(([BEGIN_INDEX]-[END_INDEX])*[INDEX_INCREMENT]),0) AS Est_Units FROM NMIS_TRANSACTIONS LEFT JOIN (NMIS_LOCATIONS RIGHT JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN) ON NMIS_TRANSACTIONS.ID_LOCATION_CN = NMIS_ID_LOCATIONS.CN ORDER BY NMIS_LOCATIONS.LOCATION, NMIS_ID_LOCATIONS.SUBLOT_NO, NMIS_TRANSACTIONS.AMT_PER_UNIT;
- **Order by:** [NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].[NUMBER_OF_ACTIVITY_UNITS]
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_FISCAL_YEARS, NMIS_ID_LOCATIONS, NMIS_LOCATIONS, NMIS_TRANSACTIONS
- **Opens:** Form:NMIS_ID_LOCATIONS subform1B, Form:NMIS_ID_LOCATIONS_Sow_Form
- **Form events with code:** AfterDelConfirm, AfterInsert, AfterUpdate, Current
- **Migration:** 0 of 10 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ID_ACTIVITY_CN = `ID_ACTIVITY_CN`  [FormHeader]
- CommandButton Update_Sow_Unit_Amts "Click to Update Amt/Units" · events: Click  [FormHeader]
- CommandButton Update_Inv_Info "Click to Update Inv Info" · events: Click  [FormHeader]
- TextBox Default_ID_Location_CN  [FormHeader]
- ComboBox FISCAL_YEAR = `FISCAL_YEAR` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` · default `[Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].[Form]![FISCAL_YEAR]`
- TextBox NUMBER_OF_ACTIVITY_UNITS = `NUMBER_OF_ACTIVITY_UNITS` · default `0` · events: AfterUpdate, Enter, Exit
- TextBox AMT_PER_UNIT = `AMT_PER_UNIT` · default `0` · events: Exit
- TextBox AMT_PER_UNIT_INV_GROSS = `AMT_PER_UNIT_INV_GROSS` · default `0` · events: DblClick, Exit
- TextBox CONTRACT_ITEM = `CONTRACT_ITEM` · default `=[Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].[Form]![CONTRACT_ITEM]`
- TextBox CHARGE_PER_AMT_OVERRIDE = `CHARGE_PER_AMT_OVERRIDE`
- TextBox CHARGE_PER_UNIT_OVERRIDE = `CHARGE_PER_UNIT_OVERRIDE`
- ComboBox ID_LOCATION_CN = `ID_LOCATION_CN` · rows: `SELECT NMIS_ID_LOCATIONS.CN, [LOCATION] & IIf((IsNull([Sublot_No]) Or [Sublot_No]=" "),"","(" & [sublot_no] & ")") & " " & [BEGIN_INDEX] & IIf(IsNull([END_INDEX]),""," - " & [END_INDEX]) AS [Location(s)], NMIS_ID_LOCATIONS.UNIT_CODE, NMIS_ID_LOCATIONS.BEGIN_DATE, IIf(IsNull([BEGIN_COUNTER]) Or IsNull([END_COUNTER]),Round(Abs(([BEGIN_INDEX]-[END_INDEX])*[INDEX_INCREMENT]),0),Abs([END_COUNTER]-[BEGI` · events: DblClick, Enter, Exit
- ComboBox ID_LOCATION_UNIT_CODE = `ID_LOCATION_CN` · rows: `SELECT NMIS_ID_LOCATIONS.CN, NMIS_ID_LOCATIONS.UNIT_CODE FROM NMIS_AGREEMENT_LOTS INNER JOIN (NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN=NMIS_ID_LOCATIONS.LOCATION_CN) ON NMIS_AGREEMENT_LOTS.CN=NMIS_ID_LOCATIONS.AGREEMENT_LOT_CN;`

## Form: NMIS_ID_ACTIVITY_FORM
- **Caption:** NMIS ID Activities and Transactions
- **Menu path:** Switchboard › NMIS_ID_ACTIVITY_FORM
- **Record source:** SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.TOTAL_REQUEST, NMIS_PRODUCTS.UNIT_CODE, Source_Lot_ID_and_Source_string.ID_SOURCE2, "FY's: " & [BEGIN_FY] & "-" & [END_FY] AS FYs, IIf([PRODUCT_GROUP]="PLANT","M","LB") AS DEFAULT_UNIT_CODE FROM (NMIS_PRODUCT_TYPES RIGHT JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE = NMIS_PRODUCTS.END_PRODUCT_TYPE) RIGHT JOIN ((NMIS_AGREEMENT_LOTS LEFT JOIN NMIS_SPECIES_PRODUCTS ON NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN = NMIS_SPECIES_PRODUCTS.CN) INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN = Source_Lot_ID_and_Source_string.CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN ORDER BY NMIS_AGREEMENT_LOTS.Index;
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_AGREEMENT_LOTS, NMIS_PRODUCTS, NMIS_PRODUCT_TYPES, NMIS_SPECIES_PRODUCTS
- **Subforms:** Form.NMIS_ID_ACTIVITIES_ACTIVITIES3_subform, Form.NMIS_ORDERS_Contract_Item, Form.NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform
- **Opens:** Form:NMIS_AGREEMENT_LOTS
- **Form events with code:** Current
- **Migration:** 2 of 8 bound fields mapped. Main GrowHub screens: /orders/new (1), /admin/products/new (1)

**Controls**
- CommandButton Refresh_Close "Close"  [FormHeader]
- ComboBox Default_Activity_Code · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES;` · default `"MONFCO"` · events: AfterUpdate  [FormHeader]
- TextBox PRODUCT_GROUP = `PRODUCT_GROUP`  [FormHeader]
- TextBox DEFAULT_ID_ACTIVITY_UNIT_CODE = `DEFAULT_UNIT_CODE`  [FormHeader]
- TextBox Default_Date · default `Date()-1` · events: AfterUpdate  [FormHeader]
- ComboBox Agreement_Lot_Lookup · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, Source_Lot_ID_and_Source_string.ID_SOURCE2 FROM Source_Lot_ID_and_Source_string INNER JOIN NMIS_AGREEMENT_LOTS ON Source_Lot_ID_and_Source_string.CN=NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID;` · events: AfterUpdate, DblClick
- TabControl TabCtl67
- Subform NMIS_ID_ACTIVITIES_ACTIVITIES3_subform subform `Form.NMIS_ID_ACTIVITIES_ACTIVITIES3_subform` (master CN → child AGREEMENT_LOT_CN)
- Subform NMIS_ORDERS_Contract_Item subform `Form.NMIS_ORDERS_Contract_Item` (master Link3_Text → child CN) · tab Invisible_Subforms
- Subform NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform subform `Form.NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform` (master ID_ACTIVITY_CN → child CN) · tab Invisible_Subforms
- TextBox ID_ACTIVITY_CN = `=[NMIS_ID_ACTIVITIES_ACTIVITIES3_subform].[Form]![CN]` · tab Invisible_Subforms
- TextBox Link3_Text = `=[NMIS_ID_ACTIVITIES_ACTIVITIES3_subform].[Form]![ORDER_CN]` · tab Invisible_Subforms
- TextBox Combo138 "Req:" = `TOTAL_REQUEST` → GrowHub grow_request.requestedSeedlingQuantity (blank)
- TextBox SOURCE_LOT_CN "Source:" = `ID_SOURCE2`
- TextBox UNIT_CODE = `UNIT_CODE` → GrowHub species_product.endUnitOfMeasurement (yes)
- TextBox CN = `CN`
- TextBox AGREEMENT_LOT_CN = `CN`
- TextBox FYs = `FYs`

## Form: NMIS_ID_ACTIVITY_TRANSACTIONS_FORM
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_AGREEMENTS, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_FISCAL_YEARS, NMIS_LOCATIONS, NMIS_PRODUCTS, NMIS_SOURCE_LOTS, NMIS_SPECIES_PRODUCTS, NMIS_UNITS
- **Subforms:** Form.NMIS_ID_LOCATIONS subform2, Form.NMIS_ID_ACTIVITIES_ACTIVITIES_subform, Form.Transaction_Totals_By_Location_and_amt_per_unit1a subform, Form.NMIS_ID_ACTIVITIES_TRANSACTIONS_subform, Form.NMIS_ORDERS_Contract_Item, Form.NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform
- **Opens:** Form:NMIS_AGREEMENT_LOTS, Form:NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE, Form:NMIS_AGREEMENT_LOT_SELECT
- **Opened from:** Activity_Transactions_Form_Open Module, Form_Client_Bill_Menu, Form_H_ASF
- **Form events with code:** Current, Open
- **Migration:** 4 of 9 bound fields mapped. Main GrowHub screens: /orders/new (1), /admin/products/new (1)

**Controls**
- CommandButton Refresh_Close "Close"  [FormHeader]
- ComboBox Default_Activity_Code · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES;` · events: Enter  [FormHeader]
- TextBox Default_Date · default `Date()-1` · events: AfterUpdate, Enter  [FormHeader]
- ComboBox Default_Container · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_TYPE, NMIS_UNITS.UNIT_DESC FROM NMIS_UNITS;` · events: Enter  [FormHeader]
- ComboBox Default_Location · rows: `SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.LOCATION_DESC FROM NMIS_LOCATIONS ORDER BY NMIS_LOCATIONS.LOCATION;` · events: Enter  [FormHeader]
- TextBox DEFAULT_ID_ACTIVITY_UNIT_CODE = `DEFAULT_UNIT_CODE`  [FormHeader]
- TextBox Default_Sublot  [FormHeader]
- TextBox PRODUCT_GROUP = `PRODUCT_GROUP`  [FormHeader]
- TextBox Like_Agreement_Lots · default `"*"` · events: AfterUpdate, DblClick  [FormHeader]
- CheckBox first_open "first_open" · default `True`  [FormHeader]
- Subform NMIS_ID_LOCATIONS subform2 "NMIS_ID_LOCATIONS subform2" subform `Form.NMIS_ID_LOCATIONS subform2` (master ID_LOCATION_UNIT_CODE → child CN)  [FormHeader]
- TextBox ID_LOCATION_UNIT_CODE = `=[NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].[Form]![ID_LOCATION_CN]`  [FormHeader]
- ComboBox Filter_For_Fy · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC;` · default `"*"` · events: DblClick  [FormHeader]
- ComboBox Filter_For_Client · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.ASSOCIATE) Not Like "99*")) ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;` · default `"*"` · events: DblClick  [FormHeader]
- ComboBox Filter_For_End_FY "End FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC;` · default `"*"` · events: DblClick  [FormHeader]
- TextBox Filter_For_Source_ID · default `"*"` · events: DblClick  [FormHeader]
- CommandButton Wildcard_Tip "Wildcard Tip" · events: Click  [FormHeader]
- ComboBox Agreement_Lot_Lookup · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_PRODUCTS.PRODUCT_CLASS, "FY's " & [NMIS_AGREEMENT_LOTS].[BEGIN_FY] & "-" & [NMIS_AGREEMENT_LOTS].[END_FY] AS [FY's], Source_Lot_ID_and_Source_string.ID_SOURCE2 AS [ID/Source], IIf(Not IsNull([nmis_agreement_lots_1].[id]),"Prev ID: " & [nmis_agreement_lots_1].[id]) AS [Prev ID], [CLIENT_ASSOCIATE] & " " AS Client, NMIS_AGREEMENT_LOTS.ID_OR` · events: AfterUpdate, DblClick, Enter  [FormHeader]
- TextBox Combo138 "Req:" = `TOTAL_REQUEST` → GrowHub grow_request.requestedSeedlingQuantity (blank)  [FormHeader]
- TextBox SOURCE_LOT_CN "Source:" = `ID_SOURCE2`  [FormHeader]
- TextBox UNIT_CODE = `UNIT_CODE` → GrowHub species_product.endUnitOfMeasurement (yes)  [FormHeader]
- TextBox AGREEMENT_LOT_CN = `CN` → GrowHub source_lot.accessLegacyId (yes)  [FormHeader]
- TextBox FYs = `FYs`  [FormHeader]
- TextBox What_It_Is_Longer = `What_It_Is_Longer`  [FormHeader]
- TextBox CN = `CN` → GrowHub source_lot.accessLegacyId (yes)  [FormHeader]
- TabControl TabCtl67
- Subform NMIS_ID_ACTIVITIES_ACTIVITIES_subform subform `Form.NMIS_ID_ACTIVITIES_ACTIVITIES_subform` (master CN → child AGREEMENT_LOT_CN) · tab Activities_Transactions · events: Enter, Exit
- Subform Transaction_Totals_By_Location_and_amt_per_unit1a subform subform `Form.Transaction_Totals_By_Location_and_amt_per_unit1a subform` (master  → child ) · tab Activities_Transactions
- Subform NMIS_ID_ACTIVITIES_TRANSACTIONS_subform subform `Form.NMIS_ID_ACTIVITIES_TRANSACTIONS_subform` (master ID_ACTIVITY_CN → child ID_ACTIVITY_CN) · tab Activities_Transactions · events: Enter, Exit
- CommandButton Agreement_lot_Activities_Transactions "Agreement Lot Act/Trans..." · tab Page169 · events: Click
- CommandButton Agreement_lot_Act_Tran_Balances "Agreemt Lot Act/Trans Balance..." · tab Page169 · events: Click
- Subform NMIS_ORDERS_Contract_Item subform `Form.NMIS_ORDERS_Contract_Item` (master Link3_Text → child CN) · tab Invisible_Subforms
- Subform NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform subform `Form.NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform` (master ID_ACTIVITY_CN → child CN) · tab Invisible_Subforms
- TextBox ID_ACTIVITY_CN = `=NMIS_ID_ACTIVITIES_ACTIVITIES_subform.Form!CN` · tab Invisible_Subforms
- TextBox Link3_Text = `=NMIS_ID_ACTIVITIES_ACTIVITIES_subform.Form!ORDER_CN` · tab Invisible_Subforms

## Form: NMIS_ID_LOCATIONS subform
- **Caption:** NMIS_ID_LOCATIONS subform1
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › NMIS_ID_LOCATIONS subform
- **Record source:** NMIS_ID_LOCATIONS
- **Order by:** NMIS_ID_LOCATIONS.Index DESC
- **Backend tables:** NMIS_ID_LOCATIONS, NMIS_LOCATIONS, NMIS_UNITS
- **Opens:** Form:NMIS_LOCATIONS_FOR_SOURCE_LOTS2
- **Migration:** 2 of 11 bound fields mapped. Main GrowHub screens: /source-lots/new (1)

**Controls**
- TextBox SOURCE_LOT_CN = `SOURCE_LOT_CN`  [FormHeader]
- TextBox NMIS_ID_LOCATIONS.CN = `CN`  [FormHeader]
- TextBox Index = `Index`  [FormHeader]
- TextBox BEGIN DATE = `BEGIN_DATE` · default `=Now()` → GrowHub storage.startDate (yes)
- TextBox END DATE = `END_DATE` · default `=Now()` → GrowHub storage.endDate (yes)
- TextBox BEGIN_INDEX = `BEGIN_INDEX`
- TextBox END_INDEX = `END_INDEX`
- ComboBox UNIT_CODE = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="STORE" Or (NMIS_UNITS.UNIT_TYPE)="LC"));` · default `"BOX"`
- TextBox SUBLOT_NO = `SUBLOT_NO`
- ComboBox LOCATION = `LOCATION_CN` · rows: `SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.LOCATION_TYPE FROM NMIS_LOCATIONS WHERE (((NMIS_LOCATIONS.LOCATION_TYPE) In ("FREEZER","THAWBOX","COOLER","REFRIDGE","SHOP","STRAT ROOM","WALKIN"))) ORDER BY NMIS_LOCATIONS.LOCATION;` · events: Change, GotFocus, LostFocus, NotInList
- ComboBox LOCATION_TYPE = `LOCATION_CN` · rows: `SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION_TYPE, NMIS_ID_LOCATIONS.UNIT_CODE FROM NMIS_LOCATIONS LEFT JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN=NMIS_ID_LOCATIONS.LOCATION_CN ORDER BY NMIS_LOCATIONS.LOCATION_TYPE;`

## Form: NMIS_ID_LOCATIONS subform1B
- **Caption:** NMIS ID Locations Form
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_ID_ACTIVITIES_TRANSACTIONS_subform › NMIS_ID_LOCATIONS subform1B
- **Record source:** SELECT NMIS_ID_LOCATIONS.*, NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.SOW_DIRECTION FROM NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN WHERE (((NMIS_LOCATIONS.LOCATION) Like IIf([Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].[Form]![ACTIVITY_CODE]="FAHVP","Cool*","*"))) ORDER BY NMIS_LOCATIONS.LOCATION, [BEGIN_INDEX]*[sow_direction]*IIf([Forms]![NMIS_ID_LOCATIONS subform1B]![SOW_DIRECTION]=True,1,-1);
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_ID_LOCATIONS, NMIS_LOCATIONS, NMIS_UNITS
- **Opened from:** Form_NMIS_ID_ACTIVITIES_TRANSACTIONS_subform
- **Form events with code:** Close, Current, Open
- **Migration:** 2 of 17 bound fields mapped. Main GrowHub screens: /source-lots/new (1)

**Controls**
- TextBox Index = `Index`  [FormHeader]
- ComboBox AGREEMENT_LOT_CN "AGREEMENT LOT:" = `AGREEMENT_LOT_CN` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID FROM NMIS_AGREEMENT_LOTS;` · default `=[Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![CN]`  [FormHeader]
- TextBox CN = `CN`  [FormHeader]
- TextBox New_CN = `=[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code` · default `"Id_Loc_Sub" & Now()`  [FormHeader]
- TextBox Last_ID_Location_CN  [FormHeader]
- TextBox Last_Est_Units  [FormHeader]
- CommandButton Refresh_Close "Close"  [FormHeader]
- TextBox Default_Unit_Code · default `=[Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Container]`  [FormHeader]
- ComboBox LOCATION_CN = `LOCATION_CN` · rows: `SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION AS Location, NMIS_LOCATIONS.LOCATION_TYPE AS Type, NMIS_LOCATIONS.INDEX_MAX AS [Max Index], Round([Index_max]/IIf([location_type]="FIELD",[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Field_Index_Increment_Default],1),1) AS [Max Index Units] FROM NMIS_LOCATIONS WHERE (((NMIS_LOCATIONS.LOCATION) Like IIf([Forms]![NMIS_ID_ACTIV` · events: DblClick, Enter, Exit
- TextBox BEGIN_DATE = `BEGIN_DATE` · default `=[Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].[Form]![ACTIVITY_DATE]` → GrowHub storage.startDate (yes)
- TextBox BEGIN_INDEX = `BEGIN_INDEX` · events: Exit
- TextBox END_INDEX = `END_INDEX` · events: Exit
- ComboBox UNIT_CODE = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.CELLS_PER_CONTAINER FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="G" Or (NMIS_UNITS.UNIT_TYPE)="STORE" Or (NMIS_UNITS.UNIT_TYPE)="LC")) Or (((NMIS_UNITS.UNIT_CODE)="FT" Or (NMIS_UNITS.UNIT_CODE)="SB" Or (NMIS_UNITS.UNIT_CODE)="TB" Or (NMIS_UNITS.UNIT_CODE)="LB")) Or (((NMIS_UNITS.UNIT_CODE)="tote")) ORDER BY NMIS_UNITS.UNIT_CODE;` · events: Enter, Exit
- TextBox DIST_FROM_BED_BEG = `DIST_FROM_BED_BEG`
- TextBox NOTE = `NOTE`
- TextBox SUBLOT_NO = `SUBLOT_NO` · default `=[Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Sublot]`
- TextBox END_DATE = `END_DATE` → GrowHub storage.endDate (yes)
- TextBox INDEX_INCREMENT = `INDEX_INCREMENT` · events: Enter
- TextBox Est_Units = `=IIf(IsNull([BEGIN_COUNTER]) Or IsNull([END_COUNTER]),Round(Abs(([BEGIN_INDEX]-[END_INDEX])*[INDEX_INCREMENT]),0),Abs([END_COUNTER]-[BEGIN_COUNTER]))`
- CheckBox SOWN_BACKWARDS = `SOWN_BACKWARDS`
- TextBox SOW_DIRECTION = `SOW_DIRECTION`
- TextBox BEGIN_COUNTER = `BEGIN_COUNTER` · default `Null`
- TextBox END_COUNTER = `END_COUNTER`

## Form: NMIS_ID_LOCATIONS subform2
- **Caption:** NMIS_ID_LOCATIONS subform2
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_ID_LOCATIONS subform2
- **Record source:** SELECT [NMIS_ID_LOCATIONS].[CN], [NMIS_ID_LOCATIONS].[UNIT_CODE] FROM [NMIS_ID_LOCATIONS]
- **Backend tables:** NMIS_ID_LOCATIONS
- **Migration:** 0 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox CN "CN" = `CN`
- TextBox UNIT_CODE "Unit Code" = `UNIT_CODE`

## Form: NMIS_ID_LOCATIONS2 subform
- **Caption:** NMIS_ID_LOCATIONS subform1
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ID_LOCATIONS2 subform
- **Record source:** SELECT NMIS_ID_LOCATIONS.* FROM NMIS_ID_LOCATIONS WHERE (((NMIS_ID_LOCATIONS.SOURCE_LOT_CN) Is Not Null));
- **Backend tables:** NMIS_ID_LOCATIONS, NMIS_LOCATIONS, NMIS_UNITS
- **Opens:** Form:NMIS_LOCATIONS_FOR_SOURCE_LOTS_NEW
- **Migration:** 2 of 12 bound fields mapped. Main GrowHub screens: /source-lots/new (1)

**Controls**
- TextBox SOURCE_LOT_CN = `SOURCE_LOT_CN`  [FormHeader]
- TextBox NMIS_ID_LOCATIONS.CN = `CN`  [FormHeader]
- TextBox Index = `Index`  [FormHeader]
- TextBox BEGIN DATE = `BEGIN_DATE` · default `=Date()` → GrowHub storage.startDate (yes)
- TextBox END DATE = `END_DATE` → GrowHub storage.endDate (yes)
- TextBox BEGIN_INDEX = `BEGIN_INDEX`
- TextBox END_INDEX = `END_INDEX`
- ComboBox UNIT_CODE = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="STORE" Or (NMIS_UNITS.UNIT_TYPE)="LC")) ORDER BY NMIS_UNITS.UNIT_CODE;` · default `"BOX"`
- TextBox SUBLOT_NO = `SUBLOT_NO`
- ComboBox LOCATION = `LOCATION_CN` · rows: `SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.LOCATION_TYPE FROM NMIS_LOCATIONS WHERE (((NMIS_LOCATIONS.LOCATION_TYPE) In ("FREEZER","THAWBOX","COOLER","REFRIDGE","SHOP","STRAT ROOM","WALKIN"))) ORDER BY NMIS_LOCATIONS.LOCATION;` · events: AfterUpdate, Change, GotFocus, LostFocus, NotInList
- ComboBox LOCATION_TYPE = `LOCATION_CN` · rows: `SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION_TYPE, NMIS_ID_LOCATIONS.UNIT_CODE FROM NMIS_LOCATIONS LEFT JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN=NMIS_ID_LOCATIONS.LOCATION_CN ORDER BY NMIS_LOCATIONS.LOCATION_TYPE;`
- TextBox NOTE = `NOTE`

## Form: NMIS_ID_LOCATIONS_for_Source_Withdrawal subform
- **Caption:** Location for Source Lot
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › Seed_Ship_Ticket_ID_ACTIVITIES subform › NMIS_ID_LOCATIONS_for_Source_Withdrawal subform
- **Record source:** SELECT NMIS_ID_LOCATIONS.* FROM NMIS_ID_LOCATIONS WHERE (((NMIS_ID_LOCATIONS.SOURCE_LOT_CN)=[Forms]![Seed_Shipping_Ticket Subform]![Seed_Ship_Ticked_ID_ACTIVITIES subform].[Form]![SOURCE_LOT_CN]));
- **Backend tables:** NMIS_ID_LOCATIONS, NMIS_LOCATIONS, NMIS_SOURCE_LOTS, NMIS_UNITS
- **Opens:** Form:NMIS_LOCATIONS_FOR_SOURCE_LOTS3
- **Opened from:** Form_Seed_Ship_Ticket_ID_ACTIVITIES subform
- **Migration:** 1 of 7 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox SOURCE_LOT_CN = `SOURCE_LOT_CN` · default `=[Forms]![Seed_Shipping_Ticket Subform]![Seed_Ship_Ticked_ID_ACTIVITIES subform].[Form]![SOURCE_LOT_CN]`  [FormHeader]
- TextBox NMIS_ID_LOCATIONS.CN = `CN` → GrowHub source_lot.accessLegacyId (yes)  [FormHeader]
- TextBox Index = `Index`  [FormHeader]
- ComboBox Text75 "Lot:" = `=[Source_lot_CN]` · rows: `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS;`  [FormHeader]
- ComboBox UNIT_CODE = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="STORE" Or (NMIS_UNITS.UNIT_TYPE)="LC"));` · default `"BOX"`
- TextBox SUBLOT_NO = `SUBLOT_NO`
- ComboBox LOCATION = `LOCATION_CN` · rows: `SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.LOCATION_TYPE FROM NMIS_LOCATIONS WHERE (((NMIS_LOCATIONS.LOCATION_TYPE) In ("FREEZER","THAWBOX","COOLER","REFRIDGE","SHOP","STRAT ROOM","WALKIN"))) OR (((NMIS_LOCATIONS.LOCATION)="cool2")) ORDER BY NMIS_LOCATIONS.LOCATION;` · events: Change, GotFocus, LostFocus, NotInList
- ComboBox LOCATION_TYPE = `LOCATION_CN` · rows: `SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION_TYPE, NMIS_ID_LOCATIONS.UNIT_CODE FROM NMIS_LOCATIONS LEFT JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN=NMIS_ID_LOCATIONS.LOCATION_CN ORDER BY NMIS_LOCATIONS.LOCATION_TYPE;`

## Form: NMIS_ID_LOCATIONS_for_Sow_Withdrawal subform
- **Caption:** Location for Source Lot
- **Menu path:** Switchboard › Seed_Sow_Withdrawal_Ticket Subform › Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform › NMIS_ID_LOCATIONS_for_Sow_Withdrawal subform
- **Record source:** SELECT NMIS_ID_LOCATIONS.* FROM NMIS_ID_LOCATIONS WHERE (((NMIS_ID_LOCATIONS.SOURCE_LOT_CN)=[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].[Form]![SOURCE_LOT_CN]));
- **Backend tables:** NMIS_ID_LOCATIONS, NMIS_LOCATIONS, NMIS_SOURCE_LOTS, NMIS_UNITS
- **Opens:** Form:NMIS_LOCATIONS_FOR_SOURCE_LOTS3
- **Opened from:** Form_Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform
- **Migration:** 1 of 7 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox SOURCE_LOT_CN = `SOURCE_LOT_CN` · default `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].[Form]![SOURCE_LOT_CN]`  [FormHeader]
- TextBox NMIS_ID_LOCATIONS.CN = `CN` → GrowHub source_lot.accessLegacyId (yes)  [FormHeader]
- TextBox Index = `Index`  [FormHeader]
- ComboBox Text75 "Lot:" = `=[Source_lot_CN]` · rows: `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS;`  [FormHeader]
- ComboBox UNIT_CODE = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="STORE" Or (NMIS_UNITS.UNIT_TYPE)="LC"));` · default `"BOX"`
- TextBox SUBLOT_NO = `SUBLOT_NO`
- ComboBox LOCATION = `LOCATION_CN` · rows: `SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.LOCATION_TYPE FROM NMIS_LOCATIONS WHERE (((NMIS_LOCATIONS.LOCATION_TYPE) In ("FREEZER","THAWBOX","COOLER","REFRIDGE","SHOP","STRAT ROOM","WALKIN"))) OR (((NMIS_LOCATIONS.LOCATION)="cool2")) ORDER BY NMIS_LOCATIONS.LOCATION;` · events: Change, GotFocus, LostFocus, NotInList
- ComboBox LOCATION_TYPE = `LOCATION_CN` · rows: `SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION_TYPE, NMIS_ID_LOCATIONS.UNIT_CODE FROM NMIS_LOCATIONS LEFT JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN=NMIS_ID_LOCATIONS.LOCATION_CN ORDER BY NMIS_LOCATIONS.LOCATION_TYPE;`

## Form: NMIS_ID_LOCATIONS_FORM
- **Caption:** NMIS ID Locations Form
- **Menu path:** Switchboard › NMIS_ID_LOCATIONS_FORM
- **Record source:** NMIS_AGREEMENT_LOTS
- **Order by:** NMIS_AGREEMENT_LOTS.Index DESC
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_FISCAL_YEARS, NMIS_PRODUCTS, NMIS_SPECIES_PRODUCTS, NMIS_UNITS
- **Subforms:** Form.NMIS_ID_LOCATIONS_FORM_SUBFORM
- **Form events with code:** Close, Current, Open
- **Migration:** 0 of 1 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox Default_Date "Default Date:"  [FormHeader]
- ComboBox Find_Lot "Find Lot:" · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_PRODUCTS.PRODUCT_CLASS AS StockType, Source_Lot_ID_and_Source_string.ID_SOURCE2 AS Source, NMIS_AGREEMENT_LOTS.BEGIN_FY AS [Begin FY] FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (Source_Lot_ID_and_Source_string INNER JOIN NMIS_AGREEMENT_LOTS ON Source_Lot_ID_and_Source_string.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN) ON ` · events: AfterUpdate  [FormHeader]
- ComboBox Screen_For_Begin_FY "Like Begin FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC;` · default `"*"` · events: AfterUpdate  [FormHeader]
- TextBox CN = `CN`  [FormHeader]
- ComboBox Filter_for_Product_Type · rows: `B;Bareroot Plant;C;Container Plant;N;Native Propagules;*;All Product Types` · default `"*"` · events: AfterUpdate  [FormHeader]
- ComboBox Default_Unit_Code "Default Unit Code:" · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE) In ("g","store","lc","weigh"))) ORDER BY NMIS_UNITS.UNIT_TYPE, NMIS_UNITS.UNIT_CODE;`  [FormHeader]
- Subform NMIS_ID_LOCATIONS_FORM_SUBFORM subform `Form.NMIS_ID_LOCATIONS_FORM_SUBFORM` (master CN → child AGREEMENT_LOT_CN) · events: Enter

## Form: NMIS_ID_LOCATIONS_FORM_Husky
- **Menu path:** Switchboard › Forms_Open Module.Open_NMIS_ID_LOCATIONS_FORM_Husky_for_LOCCHG_From_Switchboard › NMIS_ID_LOCATIONS_FORM_Husky
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_AGREEMENT_LOTS, NMIS_LOCATIONS
- **Subforms:** Form.Agreement_Lot_Grow_Containers
- **Opens:** Form:Agreement_Lot_ID_Change_Form, Report:Husky_Mpro_Dump_Report_by_Location2
- **Opened from:** Forms_Open Module
- **Form events with code:** AfterInsert, Close, Delete, Error, Open
- **Migration:** 0 of 14 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox Default_Agreement_Lot_CN · events: Exit  [FormHeader]
- CheckBox Map_Backwards · default `False`  [FormHeader]
- TextBox Last_ID_Location  [FormHeader]
- TextBox FY "FY:" · default `=[Forms]![Switchboard]![FY_For_Reports]`  [FormHeader]
- CheckBox Fall_TP_Prior_to_OCT1 "Fall Transplant prior to October 1:" · default `False`  [FormHeader]
- TextBox LOCATION_NEXT_Index  [FormHeader]
- TextBox LOCATION_PREVIOUS_Index  [FormHeader]
- TextBox Unit_Code_Default  [FormHeader]
- TextBox Location_Type_Default  [FormHeader]
- CheckBox SOWN_BACKWARDS · default `False` · events: AfterUpdate  [FormHeader]
- TextBox Location_Last_CN  [FormHeader]
- TextBox LOCATION_NEXT  [FormHeader]
- TextBox LOCATION_PREVIOUS  [FormHeader]
- TextBox Begin_Date_Default  [FormHeader]
- TextBox Last_Est_Units  [FormHeader]
- TextBox Beg_Index_Last  [FormHeader]
- TextBox End_Index_Last  [FormHeader]
- TextBox End_Counter_Last · default `0`  [FormHeader]
- TextBox Beg_Counter_Last · default `0`  [FormHeader]
- CheckBox Est_Counter "Est Counter:" · default `False`  [FormHeader]
- Subform grow_containers subform `Form.Agreement_Lot_Grow_Containers` (master Agr_Lot_CN → child Agreement_Lot_CN)  [FormHeader]
- CheckBox Sublot_Tabstop " Enter Sublots:" · default `False` · events: AfterUpdate  [FormHeader]
- TextBox Agr_Lot_CN = `=[CN_In]`  [FormHeader]
- ComboBox DEFAULT_ACTIVITY_CODE "Activity Code:" · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="sow" Or (NMIS_ACTIVITY_CODES.ACTIVITY_CODE) Like "xplt*" Or (NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="locchg" Or (NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="xferfm" Or (NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="CTSTRK")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;`  [FormHeader]
- ComboBox LOCATION_CN = `Locmod` · rows: `SELECT [LOCATION] & IIf([note] Like "*HISTORICAL*"," HIST") AS Location2, NMIS_LOCATIONS.LOCATION_DESC, NMIS_LOCATIONS.LOCATION_TYPE AS Type, NMIS_LOCATIONS.INDEX_MAX AS [Max Index], Round([Index_max]/IIf([location_type]="FIELD",[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Field_Index_Increment_Default],1),1) AS [Max Index Units], IIf([note] Like "*Historical*",-1,0) AS Exp` · events: DblClick, Enter, Exit
- TextBox BEGIN_DATE = `Date` · default `=[Forms]![NMIS_ID_LOCATIONS_FORM_Husky]![Begin_Date_Default]` · events: Exit
- TextBox BEGIN_INDEX = `Riser_Begin` · events: DblClick, Enter, Exit
- TextBox END_INDEX = `Riser_End` · events: DblClick, Enter, Exit
- ComboBox Agreement_Lot_CN = `CN_In` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, Source_Lot_ID_and_Source_string.ID_SOURCE2, Left$([CATEGORY_CODE],1) AS Sort FROM Source_Lot_ID_and_Source_string INNER JOIN NMIS_AGREEMENT_LOTS ON Source_Lot_ID_and_Source_string.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , Left$(nz([CATEGORY_CODE]," "),1), NMIS_AGREEMENT_LOTS.ID;` · events: AfterUpdate, Change, Exit
- TextBox SUBLOT_NO = `Sublot`
- TextBox Blank = `Blank`
- TextBox END_COUNTER = `Counter_End` · events: DblClick, Enter, Exit
- TextBox BEGIN_COUNTER = `Counter_Begin` · events: DblClick, Enter, Exit
- TextBox Note = `Note` · events: Enter
- TextBox DIST_FROM_BED_BEG = `Location`
- TextBox SOW_DIRECTION = `SOW_DIRECTION`
- TextBox Location_Key2 = `Location_Key2`
- TextBox INDEX_INCREMENT = `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Field_Index_Increment_Default]` · events: Enter
- ComboBox Activity_Code = `Activity_Code` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="sow" Or (NMIS_ACTIVITY_CODES.ACTIVITY_CODE) Like "xplt*" Or (NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="locchg" Or (NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="xferfm" Or (NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="CTSTRK")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;` · events: Exit
- CommandButton Process_Into_NMIS "Process Into NMIS" · events: Click  [FormFooter]
- CheckBox Processed_Into_NMIS "Processed Into NMIS" · default `False`  [FormFooter]
- CommandButton Preview_Checklist_Report "Preview Checklist" · events: Click  [FormFooter]

## Form: NMIS_ID_LOCATIONS_FORM_SUBFORM
- **Caption:** NMIS ID Locations Form
- **Menu path:** Switchboard › NMIS_ID_LOCATIONS_FORM › NMIS_ID_LOCATIONS_FORM_SUBFORM
- **Record source:** SELECT NMIS_ID_LOCATIONS.*, NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.SOW_DIRECTION, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.CN AS AGREEMENT_LOT__CN FROM NMIS_AGREEMENT_LOTS LEFT JOIN (NMIS_LOCATIONS RIGHT JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN) ON NMIS_AGREEMENT_LOTS.CN = NMIS_ID_LOCATIONS.AGREEMENT_LOT_CN ORDER BY NMIS_ID_LOCATIONS.BEGIN_DATE, NMIS_LOCATIONS.LOCATION, [BEGIN_INDEX]*[sow_direction]*IIf([Forms]![NMIS_ID_LOCATIONS_FORM]![SOW_DIRECTION]=True,1,-1);
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_ID_LOCATIONS, NMIS_LOCATIONS, NMIS_UNITS
- **Form events with code:** AfterInsert, Error
- **Migration:** 3 of 18 bound fields mapped. Main GrowHub screens: /source-lots/new (1)

**Controls**
- TextBox ID "Lot ID:" = `ID` → GrowHub grow_request.growLotId (blank)  [FormHeader]
- TextBox Index = `Index`  [FormHeader]
- TextBox CN = `CN`  [FormHeader]
- TextBox New_CN = `=[index] & [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery_Code]`  [FormHeader]
- TextBox Last_Est_Units  [FormHeader]
- TextBox AGREEMENT_LOT_CN = `AGREEMENT_LOT_CN`  [FormHeader]
- TextBox LOCATION_NEXT_Index  [FormHeader]
- TextBox LOCATION_PREVIOUS_Index  [FormHeader]
- TextBox Unit_Code_Default  [FormHeader]
- CheckBox Map_Backwards · default `False`  [FormHeader]
- TextBox Beg_Index_Last  [FormHeader]
- TextBox End_Index_Last  [FormHeader]
- TextBox Begin_Date_Default · default `Date()`  [FormHeader]
- TextBox Location_Type_Default  [FormHeader]
- TextBox End_Counter_Last  [FormHeader]
- TextBox Beg_Counter_Last  [FormHeader]
- ComboBox LOCATION_PREVIOUS · rows: `SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION FROM NMIS_LOCATIONS;`  [FormHeader]
- ComboBox LOCATION_NEXT · rows: `SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION FROM NMIS_LOCATIONS;`  [FormHeader]
- ComboBox Last_ID_Location_CN · rows: `SELECT NMIS_ID_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION FROM NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN;`  [FormHeader]
- ComboBox Location_Last_CN · rows: `SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION FROM NMIS_LOCATIONS;`  [FormHeader]
- ComboBox LOCATION_CN = `LOCATION_CN` · rows: `SELECT NMIS_LOCATIONS.CN, [LOCATION] & IIf([note] Like "*HISTORICAL*"," HIST") AS Location2, NMIS_LOCATIONS.LOCATION_TYPE AS Type, NMIS_LOCATIONS.INDEX_MAX AS [Max Index], Round([Index_max]/IIf([location_type]="FIELD",[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Field_Index_Increment_Default],1),1) AS [Max Index Units], NMIS_LOCATIONS.SOW_DIRECTION AS [Sow Dir] FROM NMIS_LO` · events: DblClick, Enter, Exit
- TextBox BEGIN_DATE = `BEGIN_DATE` · default `=IIf(Not IsNull([Forms]![NMIS_ID_LOCATIONS_FORM]![Default_Date]),[Forms]![NMIS_ID_LOCATIONS_FORM]![Default_Date],Date())` → GrowHub storage.startDate (yes)
- TextBox BEGIN_INDEX = `BEGIN_INDEX` · events: DblClick, Enter, Exit
- TextBox END_INDEX = `END_INDEX` · events: DblClick, Enter, Exit
- ComboBox UNIT_CODE = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.CELLS_PER_CONTAINER FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="G" Or (NMIS_UNITS.UNIT_TYPE)="STORE" Or (NMIS_UNITS.UNIT_TYPE)="LC")) Or (((NMIS_UNITS.UNIT_CODE)="FT" Or (NMIS_UNITS.UNIT_CODE)="SB" Or (NMIS_UNITS.UNIT_CODE)="TB" Or (NMIS_UNITS.UNIT_CODE)="LB")) Or (((NMIS_UNITS.UNIT_CODE)="tote")) ORDER BY NMIS_UNITS.UNIT_CODE;` · default `=[Forms]![NMIS_ID_LOCATIONS_FORM]![Default_Unit_Code]` · events: DblClick, Enter, Exit
- TextBox DIST_FROM_BED_BEG = `DIST_FROM_BED_BEG`
- TextBox NOTE = `NOTE`
- TextBox SUBLOT_NO = `SUBLOT_NO`
- TextBox END_DATE = `END_DATE` → GrowHub storage.endDate (yes)
- TextBox INDEX_INCREMENT = `INDEX_INCREMENT` · events: Enter
- TextBox Est_Units = `=IIf(IsNull([BEGIN_COUNTER]) Or IsNull([END_COUNTER]),Round(Abs(([BEGIN_INDEX]-[END_INDEX])*[INDEX_INCREMENT]),0),Abs([END_COUNTER]-[BEGIN_COUNTER]))`
- CheckBox SOWN_BACKWARDS = `SOWN_BACKWARDS` · default `False` · events: AfterUpdate
- TextBox SOW_DIRECTION = `SOW_DIRECTION`
- TextBox END_COUNTER = `END_COUNTER` · events: DblClick, Enter, Exit
- TextBox BEGIN_COUNTER = `BEGIN_COUNTER` · events: DblClick, Enter

## Form: NMIS_ID_LOCATIONS_SOURCE
- **Caption:** NMIS ID Locations Form
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE › NMIS_ID_LOCATIONS_SOURCE
- **Record source:** SELECT NMIS_ID_LOCATIONS.*, NMIS_LOCATIONS.LOCATION FROM NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN WHERE (((NMIS_ID_LOCATIONS.SOURCE_LOT_CN)=[Forms]![NMIS_SOURCE_LOTS]![CN])) ORDER BY NMIS_LOCATIONS.LOCATION;
- **Backend tables:** NMIS_ID_LOCATIONS, NMIS_LOCATIONS, NMIS_SOURCE_LOTS, NMIS_UNITS
- **Opened from:** Form_NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE, Form_NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE_NEW_LOTS
- **Form events with code:** Current, Open
- **Migration:** 4 of 11 bound fields mapped. Main GrowHub screens: /source-lots/new (2), /shipping/create (1)

**Controls**
- TextBox Index = `Index`  [FormHeader]
- ComboBox AGREEMENT_LOT_CN "SOURCE LOT:" = `=[Forms]![NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE]![SOURCE_LOT_CN]` · rows: `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS;`  [FormHeader]
- TextBox CN = `CN` → GrowHub source_lot.accessLegacyId (yes)  [FormHeader]
- TextBox New_CN = `=[Index] & [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery_Code]` · default `"Id_Loc_Sub" & Now()`  [FormHeader]
- ComboBox LOCATION_CN = `LOCATION_CN` · rows: `SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION AS Location, NMIS_LOCATIONS.LOCATION_TYPE AS Type, NMIS_LOCATIONS.INDEX_MAX AS [Max Index], Round([Index_max]/IIf([location_type]="FIELD",[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Field_Index_Increment_Default],1),1) AS [Max Index Units] FROM NMIS_LOCATIONS ORDER BY NMIS_LOCATIONS.LOCATION_TYPE, NMIS_LOCATIONS.LOCATION;` · events: DblClick, Exit
- TextBox BEGIN_DATE = `BEGIN_DATE` · default `=[Forms]![NMIS_SOURCE_LOTS]![Activity].[Form]![ACTIVITY_DATE]` → GrowHub storage.startDate (yes)
- TextBox BEGIN_INDEX = `BEGIN_INDEX` · events: Exit
- TextBox END_INDEX = `END_INDEX` · events: Exit
- ComboBox UNIT_CODE = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.CELLS_PER_CONTAINER FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="STORE")) OR (((NMIS_UNITS.UNIT_CODE)="tote")) ORDER BY NMIS_UNITS.UNIT_CODE;` · default `"LB"`
- TextBox DIST_FROM_BED_BEG = `DIST_FROM_BED_BEG`
- TextBox NOTE = `NOTE` → GrowHub source_lot.notes (yes)
- TextBox SUBLOT_NO = `SUBLOT_NO`
- TextBox END_DATE = `END_DATE` → GrowHub storage.endDate (yes)

## Form: NMIS_ID_LOCATIONS_SOURCE_LOTS
- **Caption:** NMIS ID Locations Form
- **Menu path:** Switchboard › NMIS_ID_LOCATIONS_SOURCE_LOTS
- **Record source:** SELECT NMIS_ID_LOCATIONS.* FROM NMIS_ID_LOCATIONS WHERE (((NMIS_ID_LOCATIONS.SOURCE_LOT_CN)=[Forms]![NMIS_ID_LOCATIONS_SOURCE_LOTS]![Source_LOT_CN] And (NMIS_ID_LOCATIONS.SOURCE_LOT_CN) Is Not Null));
- **Backend tables:** NMIS_ASSOCIATES, NMIS_ID_LOCATIONS, NMIS_LOCATIONS, NMIS_SOURCE_LOTS, NMIS_UNITS
- **Subforms:** Form.Seed_Balance2 Query subform
- **Opens:** Form:NMIS_ID_ACTIVITIES_MORE_INFO_ID_LOC_FORM, Form:NMIS_LOCATIONS_FOR_SOURCE_LOTS4
- **Form events with code:** Current, Open
- **Migration:** 2 of 7 bound fields mapped. Main GrowHub screens: /shipping/create (1), /source-lots/new (1)

**Controls**
- TextBox Index = `Index`  [FormHeader]
- ComboBox Source_LOT_CN "SOURCE LOT:" · rows: `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, "(" & [associate] & ")  " & [associate_name] AS [for] FROM NMIS_ASSOCIATES RIGHT JOIN NMIS_SOURCE_LOTS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE ORDER BY NMIS_SOURCE_LOTS.ID;` · events: AfterUpdate, DblClick  [FormHeader]
- TextBox CN = `CN` · default `=[CN]` → GrowHub source_lot.accessLegacyId (yes)  [FormHeader]
- TextBox New_CN = `=[Index] & [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery_Code]` · default `"Id_Loc_Sourc" & Now()`  [FormHeader]
- TextBox Text51 = `SOURCE_LOT_CN` · default `=[Source_LOT_CN]`  [FormHeader]
- Subform Seed_Balance2_ subform subform `Form.Seed_Balance2 Query subform` (master SOURCE_LOT_CN → child SOURCE_LOT_CN)  [FormHeader]
- CommandButton View_Activities "View Activities" · events: Click  [FormHeader]
- ComboBox LOCATION_CN = `LOCATION_CN` · rows: `SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION AS Location, NMIS_LOCATIONS.LOCATION_TYPE AS Type, NMIS_LOCATIONS.NOTE FROM NMIS_LOCATIONS WHERE (((NMIS_LOCATIONS.LOCATION_TYPE) Not In ("Field","Greenhouse","Shadehouse","pad","Bales","PRECOOLER"))) ORDER BY NMIS_LOCATIONS.LOCATION_TYPE DESC , NMIS_LOCATIONS.LOCATION;` · events: DblClick, Enter, Exit, NotInList
- ComboBox UNIT_CODE = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.CELLS_PER_CONTAINER FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="STORE")) OR (((NMIS_UNITS.UNIT_CODE)="tote")) ORDER BY NMIS_UNITS.UNIT_CODE;` · default `"Box"`
- TextBox NOTE = `NOTE` → GrowHub source_lot.notes (yes)
- TextBox SUBLOT_NO = `SUBLOT_NO`

## Form: NMIS_ID_LOCATIONS_storage_locchg
- **Caption:** NMIS ID Storage Location Change  Form
- **Menu path:** Switchboard › NMIS_ID_LOCATIONS_storage_locchg
- **Record source:** SELECT [**Husky_mpro_Xfer_Storage_Locchg_Table].* FROM [**Husky_mpro_Xfer_Storage_Locchg_Table];
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_ID_ACTIVITIES, NMIS_ID_LOCATIONS, NMIS_LOCATIONS, NMIS_ORDERS, NMIS_TRANSACTIONS
- **Opens:** Report:Husky_Mpro_Storage_Location_Change
- **Form events with code:** Open
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox Default_Date  [FormHeader]
- TextBox Default_To_Loc  [FormHeader]
- ComboBox Agreement_Lot_CN = `ID_LOCATION_CN` · rows: `SELECT NMIS_ID_LOCATIONS.CN AS ID_LOCATION_CN, [id] & " " & [nmis_locations].[location] & IIf(Not IsNull([sublot_no]),"(" & [sublot_no] & ")") & " " & [nmis_id_locations].[unit_code] AS ID_LOC, "Ord: " & Left$([nmis_orders].[cn],Len([nmis_orders].[cn])-7) & " For: " & [associate] & " " & [associate_name] AS Client_Code_Name, Left$([CATEGORY_CODE],1) AS Sort, Sum(NMIS_TRANSACTIONS.NUMBER_OF_ACTIVIT`
- TextBox Note = `Note`
- ComboBox LOCATION_TO = `Location_to` · rows: `SELECT NMIS_LOCATIONS.LOCATION AS Location, NMIS_LOCATIONS.LOCATION_TYPE AS Type, NMIS_LOCATIONS.INDEX_MAX AS [Max Index], Round([Index_max]/IIf([location_type]="FIELD",[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Field_Index_Increment_Default],1),1) AS [Max Index Units] FROM NMIS_LOCATIONS WHERE (((NMIS_LOCATIONS.LOCATION_TYPE)="COOLER")) ORDER BY NMIS_LOCATIONS.LOCATION_T` · events: Enter, Exit
- TextBox BEGIN_DATE = `Date` · events: Enter, Exit
- CommandButton Process_Into_NMIS "Process Into NMIS" · events: Click  [FormFooter]
- CheckBox Processed_Into_NMIS "Processed Into NMIS" · default `False`  [FormFooter]
- CommandButton Preview_Checklist_Report "Preview Checklist" · events: Click  [FormFooter]

## Form: NMIS_ID_MGMT_CODES subform
- **Caption:** Management Codes
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › NMIS_ID_ACTIVITIES Subform › NMIS_ID_MGMT_CODES subform
- **Record source:** NMIS_CLIENT_MGMT_CODES
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_CLIENT_MGMT_CODES, NMIS_ID_ACTIVITIES
- **Subforms:** Form.NMIS_CLIENT_MGMT_CODES subform, Form.NMIS_Special_Charges subform
- **Opened from:** Form_NMIS_ID_ACTIVITIES Subform
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox CN = `ACTIVITY_ID_CN` · default `=[Forms]![NMIS_SOURCE_LOTS]![Activity].[Form]![ID_Act_CN]`  [FormHeader]
- CommandButton Save_and_Exit "Close"  [FormHeader]
- Subform NMIS_CLIENT_MGMT_CODES subform subform `Form.NMIS_CLIENT_MGMT_CODES subform` (master CN → child ACTIVITY_ID_CN)
- Subform Special_Charges subform "Special Charges" subform `Form.NMIS_Special_Charges subform` (master CN → child CN)
- ComboBox Activity_No_Name "Activity Description:" = `ACTIVITY_ID_CN` · rows: `SELECT [NMIS_ID_ACTIVITIES].[CN], [NMIS_ACTIVITY_CODES].[ACTIVITY_NAME] FROM NMIS_ACTIVITY_CODES INNER JOIN NMIS_ID_ACTIVITIES ON ([NMIS_ACTIVITY_CODES].[ACTIVITY_CODE]=[NMIS_ID_ACTIVITIES].[ACTIVITY_CODE]) AND ([NMIS_ACTIVITY_CODES].[ACTIVITY_CODE]=[NMIS_ID_ACTIVITIES].[ACTIVITY_CODE]);` · default `=[Forms]![NMIS_SOURCE_LOTS]![Activity].[Form]![CN]`
- ComboBox Activity_Code = `ACTIVITY_ID_CN` · rows: `SELECT [NMIS_ID_ACTIVITIES].[CN], [NMIS_ACTIVITY_CODES].[ACTIVITY_CODE] FROM NMIS_ACTIVITY_CODES INNER JOIN NMIS_ID_ACTIVITIES ON ([NMIS_ACTIVITY_CODES].[ACTIVITY_CODE]=[NMIS_ID_ACTIVITIES].[ACTIVITY_CODE]) AND ([NMIS_ACTIVITY_CODES].[ACTIVITY_CODE]=[NMIS_ID_ACTIVITIES].[ACTIVITY_CODE]);` · default `=[Forms]![NMIS_SOURCE_LOTS]![Activity].[Form]![CN]`
- ComboBox Activity_Date = `ACTIVITY_ID_CN` · rows: `SELECT [NMIS_ID_ACTIVITIES].[CN], [NMIS_ID_ACTIVITIES].[ACTIVITY_DATE] FROM NMIS_ID_ACTIVITIES;` · default `=[Forms]![NMIS_SOURCE_LOTS]![Activity].[Form]![CN]`

## Form: NMIS_ID_MGMT_CODES2 subform
- **Caption:** Management Codes
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › NMIS_ID_ACTIVITIES2 Subform › NMIS_ID_MGMT_CODES2 subform
- **Record source:** NMIS_CLIENT_MGMT_CODES
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_CLIENT_MGMT_CODES, NMIS_ID_ACTIVITIES
- **Subforms:** Form.NMIS_CLIENT_MGMT_CODES subform, Form.NMIS_Special_Charges subform
- **Opened from:** Form_NMIS_ID_ACTIVITIES2 Subform
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox CN = `ACTIVITY_ID_CN` · default `=[Forms]![NMIS_SOURCE_LOTS]![NMIS_ID_ACTIVITIES2 Subform].[Form]![ID_Act2_CN]`  [FormHeader]
- CommandButton Save_and_Exit "Close" · events: Click  [FormHeader]
- Subform NMIS_CLIENT_MGMT_CODES subform subform `Form.NMIS_CLIENT_MGMT_CODES subform` (master CN → child ACTIVITY_ID_CN) · events: Exit
- Subform Special_Charges subform "Special Charges" subform `Form.NMIS_Special_Charges subform` (master CN → child CN)
- ComboBox Activity_No_Name "Activity Description:" = `ACTIVITY_ID_CN` · rows: `SELECT [NMIS_ID_ACTIVITIES].[CN], [NMIS_ACTIVITY_CODES].[ACTIVITY_NAME] FROM NMIS_ACTIVITY_CODES INNER JOIN NMIS_ID_ACTIVITIES ON ([NMIS_ACTIVITY_CODES].[ACTIVITY_CODE]=[NMIS_ID_ACTIVITIES].[ACTIVITY_CODE]) AND ([NMIS_ACTIVITY_CODES].[ACTIVITY_CODE]=[NMIS_ID_ACTIVITIES].[ACTIVITY_CODE]);` · default `=[Forms]![NMIS_SOURCE_LOTS]![NMIS_ID_ACTIVITIES2 Subform].[Form]![ID_Act2_CN]`
- ComboBox Activity_Code = `ACTIVITY_ID_CN` · rows: `SELECT [NMIS_ID_ACTIVITIES].[CN], [NMIS_ACTIVITY_CODES].[ACTIVITY_CODE] FROM NMIS_ACTIVITY_CODES INNER JOIN NMIS_ID_ACTIVITIES ON ([NMIS_ACTIVITY_CODES].[ACTIVITY_CODE]=[NMIS_ID_ACTIVITIES].[ACTIVITY_CODE]) AND ([NMIS_ACTIVITY_CODES].[ACTIVITY_CODE]=[NMIS_ID_ACTIVITIES].[ACTIVITY_CODE]);` · default `=[Forms]![NMIS_SOURCE_LOTS]![NMIS_ID_ACTIVITIES2 Subform].[Form]![ID_Act2_CN]`
- ComboBox Activity_Date = `ACTIVITY_ID_CN` · rows: `SELECT [NMIS_ID_ACTIVITIES].[CN], [NMIS_ID_ACTIVITIES].[ACTIVITY_DATE] FROM NMIS_ID_ACTIVITIES;` · default `=[Forms]![NMIS_SOURCE_LOTS]![NMIS_ID_ACTIVITIES2 Subform].[Form]![ID_Act2_CN]`

## Form: NMIS_ID_MGMT_CODES_NEW subform
- **Caption:** Management Codes
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ID_ACTIVITIES_NEW_LOTS Subform › NMIS_ID_MGMT_CODES_NEW subform
- **Record source:** NMIS_CLIENT_MGMT_CODES
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_CLIENT_MGMT_CODES, NMIS_ID_ACTIVITIES
- **Subforms:** Form.NMIS_CLIENT_MGMT_CODES_NEW subform, Form.NMIS_Special_Charges subform
- **Opened from:** Form_NMIS_ID_ACTIVITIES_NEW_LOTS Subform
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox CN = `ACTIVITY_ID_CN` · default `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_ACTIVITIES Subform].[Form]![CN]`  [FormHeader]
- CommandButton Save_and_Exit "Close" · events: Click  [FormHeader]
- Subform NMIS_CLIENT_MGMT_CODES subform subform `Form.NMIS_CLIENT_MGMT_CODES_NEW subform` (master CN → child ACTIVITY_ID_CN) · events: Exit
- Subform Special_Charges subform "Special Charges" subform `Form.NMIS_Special_Charges subform` (master CN → child CN)
- ComboBox Activity_No_Name "Activity Description:" = `ACTIVITY_ID_CN` · rows: `SELECT [NMIS_ID_ACTIVITIES].[CN], [NMIS_ACTIVITY_CODES].[ACTIVITY_NAME] FROM NMIS_ACTIVITY_CODES INNER JOIN NMIS_ID_ACTIVITIES ON ([NMIS_ACTIVITY_CODES].[ACTIVITY_CODE]=[NMIS_ID_ACTIVITIES].[ACTIVITY_CODE]) AND ([NMIS_ACTIVITY_CODES].[ACTIVITY_CODE]=[NMIS_ID_ACTIVITIES].[ACTIVITY_CODE]);` · default `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_ACTIVITIES Subform].[Form]![CN]`
- ComboBox Activity_Code = `ACTIVITY_ID_CN` · rows: `SELECT [NMIS_ID_ACTIVITIES].[CN], [NMIS_ACTIVITY_CODES].[ACTIVITY_CODE] FROM NMIS_ACTIVITY_CODES INNER JOIN NMIS_ID_ACTIVITIES ON ([NMIS_ACTIVITY_CODES].[ACTIVITY_CODE]=[NMIS_ID_ACTIVITIES].[ACTIVITY_CODE]) AND ([NMIS_ACTIVITY_CODES].[ACTIVITY_CODE]=[NMIS_ID_ACTIVITIES].[ACTIVITY_CODE]);` · default `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_ACTIVITIES Subform].[Form]![CN]`
- ComboBox Activity_Date = `ACTIVITY_ID_CN` · rows: `SELECT [NMIS_ID_ACTIVITIES].[CN], [NMIS_ID_ACTIVITIES].[ACTIVITY_DATE] FROM NMIS_ID_ACTIVITIES;` · default `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_ACTIVITIES Subform].[Form]![CN]`

## Form: NMIS_ID_MGMT_CODES_Ship_Ticket subform
- **Caption:** Management Codes
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › Seed_Ship_Ticket_ID_ACTIVITIES subform › NMIS_ID_MGMT_CODES_Ship_Ticket subform
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_ASSOCIATES, NMIS_SOURCE_LOTS
- **Subforms:** Form.NMIS_CLIENT_MGMT_CODES_ST subform, Form.NMIS_Special_Charges subform
- **Opened from:** Form_Contract_Payment_Estimate_Invoice subform2, Form_Seed_Ship_Ticket_ID_ACTIVITIES subform, Form_Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform
- **Form events with code:** Open

**Controls**
- TextBox CN · default `=[Forms]![Seed_Shipping_Ticket Subform]![Seed_Ship_Ticked_ID_ACTIVITIES subform].[Form]![CN]`  [FormHeader]
- CommandButton Refresh_Close "Close" · events: Click  [FormHeader]
- Subform NMIS_CLIENT_MGMT_CODES subform subform `Form.NMIS_CLIENT_MGMT_CODES_ST subform` (master CN → child ACTIVITY_ID_CN)
- Subform Special_Charges subform "Special Charges" subform `Form.NMIS_Special_Charges subform` (master CN → child CN)
- ComboBox Activity_No_Name "Activity Description:" = `=[Forms]![Seed_Shipping_Ticket Subform]![Seed_Ship_Ticked_ID_ACTIVITIES subform].[Form]![ACTIVITY_CODE]` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES;`
- ComboBox Combo29 = `=[Forms]![Seed_Shipping_Ticket Subform]![Seed_Ship_Ticked_ID_ACTIVITIES subform].[Form]![SOURCE_LOT_CN]` · rows: `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS;`
- TextBox Activity_Date = `=[Forms]![Seed_Shipping_Ticket Subform]![Seed_Ship_Ticked_ID_ACTIVITIES subform].[Form]![ACTIVITY_DATE]`
- TextBox Activity_Code = `=[Forms]![Seed_Shipping_Ticket Subform]![Seed_Ship_Ticked_ID_ACTIVITIES subform].[Form]![ACTIVITY_CODE]`
- ComboBox Stored_For = `=[Forms]![Seed_Shipping_Ticket Subform]![Seed_Ship_Ticked_ID_ACTIVITIES subform].[Form]![SOURCE_LOT_CN]` · rows: `SELECT NMIS_SOURCE_LOTS.CN, [STORED_FOR_ASSOCIATE] & " " & [Associate_Name] AS SF FROM NMIS_ASSOCIATES RIGHT JOIN NMIS_SOURCE_LOTS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE;`

## Form: NMIS_ID_MGMT_CODES_Sow_Withdrawal_Ticket subform
- **Caption:** Management Codes
- **Menu path:** Switchboard › Seed_Sow_Withdrawal_Ticket Subform › Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform › NMIS_ID_MGMT_CODES_Sow_Withdrawal_Ticket subform
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_ASSOCIATES, NMIS_SOURCE_LOTS
- **Subforms:** Form.NMIS_CLIENT_MGMT_CODES_SW subform, Form.NMIS_Special_Charges subform
- **Opened from:** Form_Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform
- **Form events with code:** Open

**Controls**
- TextBox CN · default `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].[Form]![CN]`  [FormHeader]
- CommandButton Refresh_Close "Close" · events: Click  [FormHeader]
- Subform NMIS_CLIENT_MGMT_CODES subform subform `Form.NMIS_CLIENT_MGMT_CODES_SW subform` (master CN → child ACTIVITY_ID_CN)
- Subform Special_Charges subform "Special Charges" subform `Form.NMIS_Special_Charges subform` (master CN → child CN)
- ComboBox Activity_No_Name "Activity Description:" = `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].[Form]![ACTIVITY_CODE]` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES;`
- ComboBox Combo29 = `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].[Form]![SOURCE_LOT_CN]` · rows: `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS;`
- TextBox Activity_Date = `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].[Form]![ACTIVITY_DATE]`
- TextBox Activity_Code = `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].[Form]![ACTIVITY_CODE]`
- ComboBox Stored_For = `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].[Form]![SOURCE_LOT_CN]` · rows: `SELECT NMIS_SOURCE_LOTS.CN, [STORED_FOR_ASSOCIATE] & " " & [Associate_Name] AS SF FROM NMIS_ASSOCIATES RIGHT JOIN NMIS_SOURCE_LOTS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE;`

## Form: NMIS_LOCATION_ACTIVITIES
- **Caption:** NMIS LOCATION ACTIVITIES
- **Menu path:** Switchboard › NMIS_LOCATION_ACTIVITIES
- **Record source:** SELECT [NMIS_AGREEMENT_LOTS].[ID], [NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN], [NMIS_AGREEMENT_LOTS].[SOURCE_LOT_CN], [NMIS_AGREEMENT_LOTS].[CN], [NMIS_AGREEMENT_LOTS].[MODIFIED_BY] FROM NMIS_AGREEMENT_LOTS;
- **Backend tables:** NMIS_AGREEMENT_LOTS
- **Subforms:** Form.NMIS_LOCATION_ACTIVITIES subform

**Controls**
- Subform NMIS_LOCATION_ACTIVITIES subform subform `Form.NMIS_LOCATION_ACTIVITIES subform` (master  → child )

## Form: NMIS_LOCATION_ACTIVITIES subform
- **Caption:** NMIS_LOCATION_ACTIVITIES subform
- **Menu path:** Switchboard › NMIS_LOCATION_ACTIVITIES › NMIS_LOCATION_ACTIVITIES subform
- **Record source:** SELECT NMIS_LOCATION_ACTIVITIES.CN, NMIS_LOCATION_ACTIVITIES.FISCAL_YEAR, NMIS_LOCATION_ACTIVITIES.ACTIVITY_CODE, NMIS_LOCATION_ACTIVITIES.ACTIVITY_DATE, NMIS_LOCATION_ACTIVITIES.ACTIVITY_TIME, NMIS_LOCATION_ACTIVITIES.LOCATION_BEGIN_INDEX, NMIS_LOCATION_ACTIVITIES.LOCATION_END_INDEX, NMIS_LOCATION_ACTIVITIES.ACTIVITY_UNITS, NMIS_LOCATION_ACTIVITIES.ALL_LOCATIONS, NMIS_LOCATION_ACTIVITIES.ACTIVITY_UNITS_PRESCRIBED, NMIS_LOCATION_ACTIVITIES.AMT_PER_UNIT, NMIS_LOCATION_ACTIVITIES.BEGIN_LOCATION_CN, NMIS_LOCATION_ACTIVITIES.END_LOCATION_CN, NMIS_LOCATION_ACTIVITIES.TREATMENT_PRODUCT_ID, NMIS_LOCATION_ACTIVITIES.UNIT_CODE, NMIS_LOCATION_ACTIVITIES.TICKET_CN, NMIS_LOCATION_ACTIVITIES.NOTE, NMIS_LOCATION_ACTIVITIES.Index FROM NMIS_LOCATION_ACTIVITIES;
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_FISCAL_YEARS, NMIS_LOCATIONS, NMIS_LOCATION_ACTIVITIES, NMIS_TICKETS, NMIS_TREATMENT_PRODUCTS, NMIS_UNITS
- **Migration:** 1 of 18 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox Index = `Index`  [FormHeader]
- TextBox Text36 = `CN` · default `"LocAct" & Now()`  [FormHeader]
- ComboBox FISCAL_YEAR = `FISCAL_YEAR` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![Switchboard]![NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_NUMBER]`
- ComboBox ACTIVITY_CODE = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ct")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_NAME;`
- TextBox ACTIVITY_DATE = `ACTIVITY_DATE`
- TextBox ACTIVITY_TIME = `ACTIVITY_TIME`
- TextBox LOCATION_BEGIN_INDEX = `LOCATION_BEGIN_INDEX`
- TextBox ACTIVITY_UNITS = `ACTIVITY_UNITS`
- TextBox ALL_LOCATIONS = `ALL_LOCATIONS`
- TextBox ACTIVITY_UNITS_PRESCRIBED = `ACTIVITY_UNITS_PRESCRIBED`
- TextBox AMT_PER_UNIT = `AMT_PER_UNIT`
- ComboBox TREATMENT_PRODUCT_ID = `TREATMENT_PRODUCT_ID` · rows: `SELECT NMIS_TREATMENT_PRODUCTS.TREATMENT_PRODUCT_ID, NMIS_TREATMENT_PRODUCTS.TREATMENT_PRODUCT_DESC, NMIS_TREATMENT_PRODUCTS.ORIG_NMIS_CODE FROM NMIS_TREATMENT_PRODUCTS;`
- ComboBox UNIT_CODE = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS;`
- TextBox NOTE = `NOTE`
- ComboBox TICKET_CN = `TICKET_CN` · rows: `SELECT NMIS_TICKETS.CN, NMIS_TICKETS.TKT_NO FROM NMIS_TICKETS;`
- ComboBox BEGIN_LOCATION_CN = `BEGIN_LOCATION_CN` · rows: `SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.INDEX_MAX FROM NMIS_LOCATIONS WHERE (((NMIS_LOCATIONS.LOCATION_TYPE)="Field" Or (NMIS_LOCATIONS.LOCATION_TYPE)="greenhouse" Or (NMIS_LOCATIONS.LOCATION_TYPE)="shadehouse" Or (NMIS_LOCATIONS.LOCATION_TYPE)="pad") AND ((NMIS_LOCATIONS.NOTE) Not Like "*historical*" Or (NMIS_LOCATIONS.NOTE) Is Null)) ORDER BY NMIS_LOCATIONS.LOCATION_TYP`
- TextBox LOCATION_END_INDEX = `LOCATION_END_INDEX`
- ComboBox END_LOCATION_CN = `END_LOCATION_CN` · rows: `SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.INDEX_MAX FROM NMIS_LOCATIONS WHERE (((NMIS_LOCATIONS.LOCATION_TYPE)="Field")) ORDER BY NMIS_LOCATIONS.LOCATION;`

## Form: NMIS_LOCATION_TYPES
- **Caption:** NMIS LOCATIONS
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_LOCATION_TYPES
- **Record source:** NMIS_LOCATION_TYPES
- **Backend tables:** NMIS_LOCATION_TYPES
- **Subforms:** Form.NMIS_LOCATION_TYPES subform, Form.NMIS_LOCATIONS Subform
- **Opens:** Report:NMIS_LOCATIONS_CHECKLIST, Report:Refresh_Close
- **Opened from:** Form_Lookup_Tables_Menu Subform, Form_xLookup_Tables_Menu
- **Migration:** 0 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- CommandButton Refresh_and_Close "Close" · events: Click  [FormHeader]
- Subform NMIS_LOCATION_TYPES subform subform `Form.NMIS_LOCATION_TYPES subform` (master  → child )
- TextBox LOCATION_TYPE "Type:" = `=[NMIS_LOCATION_TYPES subform].Form!Selected_Location`
- TextBox LOCATION_TYPE_DESC " Descripton:" = `LOCATION_TYPE_DESC`
- Subform NMIS_LOCATIONS Subform subform `Form.NMIS_LOCATIONS Subform` (master LOCATION_TYPE → child LOCATION_TYPE)
- TextBox Text11 = `Lo`
- TextBox Nursery_Assoc "Nursery Associate:" = `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
- CommandButton Preview_Locations_Checklist "Click to Preview Locations Checklist" · events: Click
- CheckBox Hide_Historical "Hide Historical" · default `False` · events: AfterUpdate

## Form: NMIS_LOCATION_TYPES subform
- **Caption:** NMIS_LOCATION_TYPES subform
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_LOCATION_TYPES › NMIS_LOCATION_TYPES subform
- **Record source:** SELECT NMIS_LOCATION_TYPES.LOCATION_TYPE, NMIS_LOCATION_TYPES.LOCATION_TYPE_DESC FROM NMIS_LOCATION_TYPES;
- **Backend tables:** NMIS_LOCATION_TYPES
- **Migration:** 0 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox Selected_Location "Selected Location Type:" = `=[LOCATION_TYPE]`  [FormHeader]
- TextBox LOCATION_TYPE = `LOCATION_TYPE`
- TextBox LOCATION_TYPE_DESC = `LOCATION_TYPE_DESC`

## Form: NMIS_LOCATIONS Subform
- **Caption:** NMIS_LOCATIONS
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_LOCATION_TYPES › NMIS_LOCATIONS Subform
- **Record source:** SELECT NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.INDEX_MAX, NMIS_LOCATIONS.LOCATION_DESC, NMIS_LOCATIONS.NOTE, NMIS_LOCATIONS.LOCATION_TYPE, NMIS_LOCATIONS.Index, NMIS_LOCATIONS.CN, NMIS_LOCATIONS.NURSERY_ASSOCIATE, NMIS_LOCATIONS.SOW_DIRECTION, NMIS_LOCATIONS.ZONE, IIf([Note] Like "*HIST*","Yes","No") AS Historical FROM NMIS_LOCATIONS WHERE (((IIf([Note] Like "*HIST*","Yes","No")) Like IIf([Forms]![NMIS_LOCATION_TYPES]![Hide_Historical],"No","*"))) ORDER BY NMIS_LOCATIONS.LOCATION;
- **Backend tables:** NMIS_ASSOCIATES, NMIS_LOCATIONS, NMIS_LOCATION_TYPES
- **Migration:** 3 of 11 bound fields mapped. Main GrowHub screens: /source-lots/new (3), /orders/new (1)

**Controls**
- TextBox CN = `CN` · default `"LocSub" & Now()`  [FormHeader]
- TextBox Index = `Index`  [FormHeader]
- ComboBox NURSERY_ASSOCIATE = `NURSERY_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;` · default `=[Forms]![NMIS_LOCATION_TYPES]![Nursery_Assoc]`  [FormHeader]
- TextBox LOCATION = `LOCATION` → GrowHub storage.section (yes)
- TextBox INDEX_MAX = `INDEX_MAX`
- TextBox LOCATION_DESC = `LOCATION_DESC`
- TextBox NOTE = `NOTE`
- ComboBox LOCATION_TYPE = `LOCATION_TYPE` · rows: `SELECT NMIS_LOCATION_TYPES.LOCATION_TYPE, NMIS_LOCATION_TYPES.LOCATION_TYPE_DESC FROM NMIS_LOCATION_TYPES;` · default `=[Forms]![NMIS_LOCATION_TYPES]![LOCATION_TYPE]` → GrowHub storage.type (yes)
- TextBox SOW_DIRECTION = `SOW_DIRECTION`
- TextBox Loc_type = `LOCATION_TYPE` · events: DblClick, Enter → GrowHub storage.type (yes)
- TextBox Zone = `ZONE`

## Form: NMIS_LOCATIONS_FOR_SOURCE_LOTS Subform
- **Caption:** NMIS_LOCATIONS
- **Menu path:** Switchboard › NMIS_ID_LOCATIONS_SOURCE_LOTS › NMIS_LOCATIONS_FOR_SOURCE_LOTS4 › NMIS_LOCATIONS_FOR_SOURCE_LOTS Subform
- **Record source:** SELECT [NMIS_LOCATIONS].[LOCATION], [NMIS_LOCATIONS].[INDEX_MAX], [NMIS_LOCATIONS].[LOCATION_DESC], [NMIS_LOCATIONS].[NOTE], [NMIS_LOCATIONS].[LOCATION_TYPE], [NMIS_LOCATIONS].[Index], [NMIS_LOCATIONS].[CN], [NMIS_LOCATIONS].[NURSERY_ASSOCIATE], [NMIS_LOCATIONS].[LOCATION_TYPE] FROM NMIS_LOCATIONS;
- **Backend tables:** NMIS_ASSOCIATES, NMIS_LOCATIONS, NMIS_LOCATION_TYPES
- **Migration:** 2 of 8 bound fields mapped. Main GrowHub screens: /source-lots/new (2), /orders/new (1)

**Controls**
- TextBox CN = `CN`  [FormHeader]
- TextBox Index = `Index`  [FormHeader]
- ComboBox NURSERY_ASSOCIATE = `NURSERY_ASSOCIATE` · rows: `SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;` · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]`  [FormHeader]
- TextBox LOCATION = `LOCATION` · events: Change → GrowHub storage.section (yes)
- TextBox INDEX_MAX = `INDEX_MAX`
- TextBox LOCATION_DESC = `LOCATION_DESC`
- TextBox NOTE = `NOTE`
- ComboBox LOCATION_TYPE = `LOCATION_TYPE` · rows: `SELECT [NMIS_LOCATION_TYPES].[LOCATION_TYPE], [NMIS_LOCATION_TYPES].[LOCATION_TYPE_DESC] FROM NMIS_LOCATION_TYPES;` · default `=[Forms]![NMIS_LOCATION_TYPES]![LOCATION_TYPE]` → GrowHub storage.type (yes)

## Form: NMIS_LOCATIONS_FOR_SOURCE_LOTS2
- **Caption:** NMIS LOCATIONS FOR SOURCE LOTS
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › NMIS_ID_LOCATIONS subform › NMIS_LOCATIONS_FOR_SOURCE_LOTS2
- **Record source:** SELECT [NMIS_LOCATION_TYPES].[LOCATION_TYPE], [NMIS_LOCATION_TYPES].[LOCATION_TYPE_DESC] FROM NMIS_LOCATION_TYPES WHERE ((([NMIS_LOCATION_TYPES].[LOCATION_TYPE])="FREEZER" Or ([NMIS_LOCATION_TYPES].[LOCATION_TYPE])="THAWBOX" Or ([NMIS_LOCATION_TYPES].[LOCATION_TYPE])="Cooler")) ORDER BY [NMIS_LOCATION_TYPES].[LOCATION_TYPE_DESC];
- **Backend tables:** NMIS_LOCATION_TYPES
- **Subforms:** Form.NMIS_LOCATIONS_FOR_SOURCE_LOTS Subform
- **Opened from:** Form_NMIS_ID_LOCATIONS subform
- **Form events with code:** Close
- **Migration:** 0 of 3 bound fields mapped. Main GrowHub screens: none

**Controls**
- CommandButton Refresh_and_Close "Close" · events: Click  [FormHeader]
- TextBox LOCATION_TYPE "Type:" = `LOCATION_TYPE`
- TextBox LOCATION_TYPE_DESC " Descripton:" = `LOCATION_TYPE_DESC`
- Subform NMIS_LOCATIONS Subform subform `Form.NMIS_LOCATIONS_FOR_SOURCE_LOTS Subform` (master LOCATION_TYPE → child LOCATION_TYPE)
- TextBox Text11 = `Lo`
- TextBox Nursery_Assoc "Nursery Associate:" = `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`

## Form: NMIS_LOCATIONS_FOR_SOURCE_LOTS3
- **Caption:** NMIS LOCATIONS FOR SOURCE LOTS
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › Seed_Ship_Ticket_ID_ACTIVITIES subform › NMIS_ID_LOCATIONS_for_Source_Withdrawal subform › NMIS_LOCATIONS_FOR_SOURCE_LOTS3
- **Record source:** SELECT [NMIS_LOCATION_TYPES].[LOCATION_TYPE], [NMIS_LOCATION_TYPES].[LOCATION_TYPE_DESC] FROM NMIS_LOCATION_TYPES WHERE ((([NMIS_LOCATION_TYPES].[LOCATION_TYPE])="FREEZER" Or ([NMIS_LOCATION_TYPES].[LOCATION_TYPE])="THAWBOX" Or ([NMIS_LOCATION_TYPES].[LOCATION_TYPE])="Cooler")) ORDER BY [NMIS_LOCATION_TYPES].[LOCATION_TYPE_DESC];
- **Backend tables:** NMIS_LOCATION_TYPES
- **Subforms:** Form.NMIS_LOCATIONS_FOR_SOURCE_LOTS Subform
- **Opened from:** Form_NMIS_ID_LOCATIONS_for_Source_Withdrawal subform, Form_NMIS_ID_LOCATIONS_for_Sow_Withdrawal subform
- **Form events with code:** Close
- **Migration:** 0 of 3 bound fields mapped. Main GrowHub screens: none

**Controls**
- CommandButton Refresh_and_Close "Close" · events: Click  [FormHeader]
- TextBox LOCATION_TYPE "Type:" = `LOCATION_TYPE`
- TextBox LOCATION_TYPE_DESC " Descripton:" = `LOCATION_TYPE_DESC`
- Subform NMIS_LOCATIONS Subform subform `Form.NMIS_LOCATIONS_FOR_SOURCE_LOTS Subform` (master LOCATION_TYPE → child LOCATION_TYPE)
- TextBox Text11 = `Lo`
- TextBox Nursery_Assoc "Nursery Associate:" = `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`

## Form: NMIS_LOCATIONS_FOR_SOURCE_LOTS4
- **Caption:** NMIS LOCATIONS FOR SOURCE LOTS
- **Menu path:** Switchboard › NMIS_ID_LOCATIONS_SOURCE_LOTS › NMIS_LOCATIONS_FOR_SOURCE_LOTS4
- **Record source:** SELECT [NMIS_LOCATION_TYPES].[LOCATION_TYPE], [NMIS_LOCATION_TYPES].[LOCATION_TYPE_DESC] FROM NMIS_LOCATION_TYPES WHERE ((([NMIS_LOCATION_TYPES].[LOCATION_TYPE])="FREEZER" Or ([NMIS_LOCATION_TYPES].[LOCATION_TYPE])="THAWBOX" Or ([NMIS_LOCATION_TYPES].[LOCATION_TYPE])="Cooler")) ORDER BY [NMIS_LOCATION_TYPES].[LOCATION_TYPE_DESC];
- **Backend tables:** NMIS_LOCATION_TYPES
- **Subforms:** Form.NMIS_LOCATIONS_FOR_SOURCE_LOTS Subform
- **Opened from:** Form_NMIS_ID_LOCATIONS_SOURCE_LOTS
- **Form events with code:** Close
- **Migration:** 0 of 3 bound fields mapped. Main GrowHub screens: none

**Controls**
- CommandButton Refresh_and_Close "Close" · events: Click  [FormHeader]
- TextBox LOCATION_TYPE "Type:" = `LOCATION_TYPE`
- TextBox LOCATION_TYPE_DESC " Descripton:" = `LOCATION_TYPE_DESC`
- Subform NMIS_LOCATIONS Subform subform `Form.NMIS_LOCATIONS_FOR_SOURCE_LOTS Subform` (master LOCATION_TYPE → child LOCATION_TYPE)
- TextBox Text11 = `Lo`
- TextBox Nursery_Assoc "Nursery Associate:" = `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`

## Form: NMIS_LOCATIONS_FOR_SOURCE_LOTS_NEW
- **Caption:** NMIS LOCATIONS FOR SOURCE LOTS
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ID_LOCATIONS2 subform › NMIS_LOCATIONS_FOR_SOURCE_LOTS_NEW
- **Record source:** SELECT [NMIS_LOCATION_TYPES].[LOCATION_TYPE], [NMIS_LOCATION_TYPES].[LOCATION_TYPE_DESC] FROM NMIS_LOCATION_TYPES WHERE ((([NMIS_LOCATION_TYPES].[LOCATION_TYPE])="FREEZER" Or ([NMIS_LOCATION_TYPES].[LOCATION_TYPE])="THAWBOX" Or ([NMIS_LOCATION_TYPES].[LOCATION_TYPE])="Cooler")) ORDER BY [NMIS_LOCATION_TYPES].[LOCATION_TYPE_DESC];
- **Backend tables:** NMIS_LOCATION_TYPES
- **Subforms:** Form.NMIS_LOCATIONS_FOR_SOURCE_LOTS Subform
- **Opened from:** Form_NMIS_ID_LOCATIONS2 subform
- **Migration:** 0 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- CommandButton Refresh_and_Close "Close" · events: Click  [FormHeader]
- TextBox LOCATION_TYPE_DESC " Descripton:" = `LOCATION_TYPE_DESC`
- Subform NMIS_LOCATIONS Subform subform `Form.NMIS_LOCATIONS_FOR_SOURCE_LOTS Subform` (master LOCATION_TYPE → child LOCATION_TYPE)
- TextBox Text11 = `Lo`
- TextBox Nursery_Assoc "Nursery Associate:" = `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
- ComboBox LOCATION_TYPE "Type:" · rows: `SELECT NMIS_LOCATION_TYPES.LOCATION_TYPE FROM NMIS_LOCATION_TYPES ORDER BY NMIS_LOCATION_TYPES.LOCATION_TYPE;`

## Form: NMIS_ORDER_BADJ_ACT subform
- **Caption:** NMIS_ORDR_ACT subform
- **Menu path:** Switchboard › NMIS_ORDER_BILL_ADJUSTMENTS › NMIS_ORDER_BADJ_ACT subform
- **Record source:** SELECT NMIS_ID_ACTIVITIES.ACTIVITY_DATE, NMIS_ID_ACTIVITIES.CN, NMIS_ID_ACTIVITIES.FISCAL_YEAR, NMIS_ID_ACTIVITIES.ACTIVITY_CODE, NMIS_ID_ACTIVITIES.ACTIVITY_UNITS, NMIS_ID_ACTIVITIES.ACTIVITY_TIME, NMIS_ID_ACTIVITIES.ACTIVITY_HOURS, NMIS_ID_ACTIVITIES.AMT_PER_UNIT, NMIS_ID_ACTIVITIES.CONTRACT_ITEM, NMIS_ID_ACTIVITIES.CHARGE_PER_HOUR_OVERRIDE, NMIS_ID_ACTIVITIES.CHARGE_PER_AMT_OVERRIDE, NMIS_ID_ACTIVITIES.CHARGE_PER_UNIT_OVERRIDE, NMIS_ID_ACTIVITIES.CHARGE_PER_ACTIVITY_OVERRIDE, NMIS_ID_ACTIVITIES.NOTE, NMIS_ID_ACTIVITIES.DESTINATION_ASSOCIATE, NMIS_ID_ACTIVITIES.SOURCE_LOT_CN, NMIS_ID_ACTIVITIES.AGREEMENT_LOT_CN, NMIS_ID_ACTIVITIES.ORDER_CN, NMIS_ID_ACTIVITIES.TICKET_CN, NMIS_ID_ACTIVITIES.Index, NMIS_ID_ACTIVITIES.UNIT_CODE, IIf(Not IsNull([ORDER_CN]),Left$([ORDER_CN],Len([ORDER_CN])-7),"") AS Order_ID FROM NMIS_ID_ACTIVITIES WHERE (((NMIS_ID_ACTIVITIES.AGREEMENT_LOT_CN)=[Forms]![NMIS_ORDER_BILL_ADJUSTMENTS]![CN])) ORDER BY NMIS_ID_ACTIVITIES.ACTIVITY_DATE, NMIS_ID_ACTIVITIES.CN;
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_ID_ACTIVITIES
- **Migration:** 5 of 12 bound fields mapped. Main GrowHub screens: /source-lots/new (5)

**Controls**
- TextBox Order_ID = `Order_ID`
- TextBox ACTIVITY_DATE = `ACTIVITY_DATE` · events: Exit → GrowHub processing_activity.activityDate (yes)
- ComboBox ACTIVITY_CODE = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES;` → GrowHub processing_activity.activityType (yes)
- TextBox ACTIVITY_UNITS = `ACTIVITY_UNITS` → GrowHub processing_activity.quantity (yes)
- TextBox UNIT_CODE = `UNIT_CODE` · default `"M"` → GrowHub processing_activity.unitOfMeasurement (yes)
- TextBox CHARGE_PER_UNIT_OVERRIDE = `CHARGE_PER_UNIT_OVERRIDE`
- TextBox CHARGE_PER_AMT_OVERRIDE = `CHARGE_PER_AMT_OVERRIDE`
- TextBox Note Label = `NOTE` → GrowHub processing_activity.notes (yes)
- TextBox Index = `Index`  [FormFooter]
- TextBox FISCAL_YEAR = `FISCAL_YEAR` · default `=[Forms]![NMIS_ORDER_BILL_ADJUSTMENTS]![NMIS_ORDR subform].[Form]![FISCAL_YEAR]`  [FormFooter]
- TextBox AGREEMENT_LOT_CN = `AGREEMENT_LOT_CN` · default `=[Forms]![NMIS_ORDER_BILL_ADJUSTMENTS]![CN]`  [FormFooter]
- TextBox New_CN = `=[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code`  [FormFooter]
- TextBox CN = `CN`  [FormFooter]

## Form: NMIS_ORDER_BADJ_GRADES subform
- **Caption:** NMIS_ORDR subform
- **Menu path:** Switchboard › NMIS_ORDER_BILL_ADJUSTMENTS › NMIS_ORDER_BADJ_GRADES subform
- **Record source:** SELECT NMIS_ORDERS.CN, NMIS_ORDERS.FISCAL_YEAR, NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ORDERS.ACTIVITY_CODE, NMIS_ORDERS.ORDER_AMT, NMIS_ORDERS.AGREEMENT_LOT_CN, NMIS_ORDER_GRADES.PRODUCT_GRADE, NMIS_ORDER_GRADES.GRADE_PCT, NMIS_ORDER_GRADES.CHARGE_PER_UNIT_OVERRIDE, NMIS_ORDER_GRADES.CHARGE_PER_AMT_OVERRIDE, NMIS_ORDER_GRADES.ORDER_CN FROM NMIS_ORDER_GRADES INNER JOIN NMIS_ORDERS ON NMIS_ORDER_GRADES.ORDER_CN = NMIS_ORDERS.CN ORDER BY NMIS_ORDERS.FISCAL_YEAR DESC;
- **Backend tables:** NMIS_ORDERS, NMIS_ORDER_GRADES, NMIS_PRODUCT_GRADES
- **Migration:** 0 of 5 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox GRADE_PCT = `GRADE_PCT`
- TextBox CHARGE_PER_UNIT_OVERRIDE = `CHARGE_PER_UNIT_OVERRIDE`
- TextBox CHARGE_PER_AMT_OVERRIDE = `CHARGE_PER_AMT_OVERRIDE`
- ComboBox PRODUCT_GRADE = `PRODUCT_GRADE` · rows: `SELECT NMIS_PRODUCT_GRADES.PRODUCT_GRADE FROM NMIS_PRODUCT_GRADES ORDER BY NMIS_PRODUCT_GRADES.PRODUCT_GRADE DESC;`
- TextBox ORDER_CN = `ORDER_CN` · default `=[Forms]![NMIS_ORDER_GRADES]![ORDER_CN]`  [FormFooter]

## Form: NMIS_ORDER_BILL_ADJUSTMENTS
- **Caption:** NMIS Order Invoice Adjustments
- **Menu path:** Switchboard › NMIS_ORDER_BILL_ADJUSTMENTS
- **Record source:** SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN, NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN, NMIS_AGREEMENT_LOTS.ORDER_CN FROM NMIS_AGREEMENT_LOTS;
- **Backend tables:** NMIS_AGREEMENTS, NMIS_AGREEMENT_LOTS, NMIS_CLIENT_MGMT_CODES, NMIS_CONTACTS, NMIS_ORDERS, NMIS_PRODUCTS, NMIS_PRODUCT_TYPES, NMIS_SPECIES_PRODUCTS
- **Subforms:** Form.NMIS_ORDR subform, Form.NMIS_ORDER_BADJ_GRADES subform, Form.NMIS_ORDER_BADJ_ACT subform, Form.NMIS_PROCESSING_ORDERS_ID_MC Subform
- **Opened from:** Form_Client_Bill_Menu

**Controls**
- ComboBox SOURCE_LOT_CN "Source:" = `=[cn]` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, Source_Lot_ID_and_Source_string.ID_SOURCE2 FROM Source_Lot_ID_and_Source_string INNER JOIN NMIS_AGREEMENT_LOTS ON Source_Lot_ID_and_Source_string.CN=NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN;`
- Subform NMIS_ORDR subform subform `Form.NMIS_ORDR subform` (master CN → child AGREEMENT_LOT_CN)
- TextBox ORDER_CN = `=[NMIS_ORDR subform].[Form]![CN]`
- ComboBox SPECIES_PRODUCT = `=[cn]` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, [PLNTMSTR_SYMBOL] & " " & [SPECIES_PRODUCT_DESC] AS SP FROM NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN=NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN;`
- ComboBox PRODUCT "Product:" = `=[cn]` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_PRODUCTS.PRODUCT_DESC FROM (NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON NMIS_PRODUCTS.CN=NMIS_SPECIES_PRODUCTS.PRODUCT_CN) INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN=NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN;`
- Subform NMIS_ORDER_GRADES subform "Order Grades" subform `Form.NMIS_ORDER_BADJ_GRADES subform` (master ORDER_CN → child ORDER_CN)
- Subform NMIS_ORDER_BADJ_ACT subform "Activity Adjustments" subform `Form.NMIS_ORDER_BADJ_ACT subform` (master ORDER_CN → child ORDER_CN)
- Subform NMIS_PROCESSING_ORDERS_CLI_MC Subform "Order Job Codes" subform `Form.NMIS_PROCESSING_ORDERS_ID_MC Subform` (master ORDER_CN → child ORDER_CN)
- TextBox Like_Client "Like Order Client:" · default `="*"` · events: DblClick
- ComboBox Contact_CN "Like Order Primary Contact:" · rows: `SELECT NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] & IIf([Historical]," (Historic)") AS Name FROM NMIS_ORDERS INNER JOIN NMIS_CONTACTS ON NMIS_ORDERS.CONTACT_CN = NMIS_CONTACTS.CN WHERE (((NMIS_ORDERS.CLIENT_ASSOCIATE) Like [Forms]![NMIS_ORDER_BILL_ADJUSTMENTS]![Like_Client] & "*") AND ((NMIS_ORDERS.FISCAL_YEAR)=[Forms]![Switchboard]![Current FY:])) GROUP BY N` · events: DblClick, Enter
- ComboBox CN · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, Source_Lot_ID_and_Source_string.ID_SOURCE2, NMIS_ORDERS.FISCAL_YEAR, [NMIS_CONTACTS].[LAST_NAME] & IIf(Not IsNull([NMIS_CONTACTS].[First_name]),", ") & [NMIS_CONTACTS].[FIRST_name] & IIf([NMIS_CONTACTS].[Historical]," (Historic)") AS Name, NMIS_ORDERS.ACTIVITY_CODE, NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE FROM (NM` · events: Enter
- ComboBox Product_Group "Group:" · rows: `BPLANT;"Bareroot Plant";CPLANT;"Container Plant";*PLANT;"All Plants";NPROPAGULE;"Propagule"` · default `"*PLANT"`
- TextBox Like JobcodeClient "Like Job Code Client:" · default `="*"` · events: DblClick

## Form: NMIS_ORDER_COMFIRMATION_FORM
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_ORDER_COMFIRMATION_FORM
- **Backend tables:** NMIS_CONTACTS, NMIS_FISCAL_YEARS, NMIS_ORDERS
- **Opens:** Form:xPlease_Be_Patient_First_Report_Message, Report:ORDER_CONFIRM_MT, Report:ORDER_CONFIRM_NURSERY
- **Opened from:** Form_Reports_Menu_Processing Subform
- **Form events with code:** Close

**Controls**
- CommandButton Preview_Report "Click to Preview Orders by Stock Type" · events: Click
- ComboBox Plntmstr_Symbol "Species Code:" · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY;` · default `"*"` · events: DblClick
- CheckBox Data_Processed "Data Processed" · default `False`
- CheckBox Please_Wait "Please Wait Message Shown" · default `False`
- CommandButton Preview_Report2 "Click to Preview Orders by Lot ID" · events: Click
- ComboBox Diverse "Traditional/Non-Traditonal Species" · rows: `0;Traditional;-1;Non-Traditional;*;All` · default `"*"` · events: DblClick
- ComboBox Contact_CN "Like Primary Contact" · rows: `SELECT NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] AS Name FROM NMIS_ORDERS INNER JOIN NMIS_CONTACTS ON NMIS_ORDERS.CONTACT_CN = NMIS_CONTACTS.CN WHERE (((NMIS_CONTACTS.HISTORICAL)=False) AND ((NMIS_ORDERS.CLIENT_ASSOCIATE) Like [Forms]![NMIS_ORDER_COMFIRMATION_FORM]![Like_Client] & "*") AND ((NMIS_ORDERS.FISCAL_YEAR)=[Forms]![NMIS_ORDER_COMFIRMATION_FORM]![Or` · events: DblClick, Enter
- TextBox Like_Client "Associate:" · default `"*"` · events: AfterUpdate, DblClick
- ComboBox Order_FY "Order FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![Switchboard]![FY_For_Reports]` · events: AfterUpdate
- CheckBox Has_Desired_Date "Has Desired Date:" · default `False`
- TextBox Order_Mod_Date "Order Mod Date >= :" · default `"10/01/00"`
- CheckBox NoFreeze "No Freeze:" · default `False`
- ComboBox Product_Group "Group:" · rows: `BPLANT;"Bareroot Plant";CPLANT;"Container Plant";*PLANT;"All Plants";NPROPAGULE;"Propagule"` · default `"*PLANT"`

## Form: NMIS_ORDERS_Contract_Item
- **Caption:** NMIS_ORDERS_Contract_Item
- **Menu path:** Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_ORDERS_Contract_Item
- **Record source:** NMIS_ORDERS
- **Order by:** NMIS_ORDERS.Index DESC
- **Backend tables:** NMIS_ORDERS
- **Migration:** 0 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox CN = `CN`
- TextBox CONTRACT_ITEM = `CONTRACT_ITEM`

## Form: NMIS_ORDERS_Generic_Scheduled_Transplant
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_ORDERS_Generic_Scheduled_Transplant
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_CONTACTS, NMIS_FISCAL_YEARS
- **Opens:** Report:Orders_Checklist_Scheduled_Transplant, Report:Orders_Checklist_Summary, Report:Orders_Checklist_scheduled_transplant_not
- **Opened from:** Form_Reports_Menu_Processing Subform
- **Form events with code:** Open

**Controls**
- TextBox Plntmstr_Symbol "Like Species Code:" · default `"*"`
- TextBox Like_Client "Order Client:" · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Owned_Code]`
- CommandButton Preview_Orders_Checklist "Click to Preview Scheduled TP Orders Checklist Report" · events: Click
- ComboBox Begin_FY "Like Begin FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `"*"`
- ComboBox End_FY " Like End FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `"*"`
- CommandButton Preview_Order_Checklist_No_Orders "  Click to Preview   NO ORDERS Checklist Report" · events: Click
- ComboBox Contact "Contact:" · rows: `SELECT NMIS_CONTACTS.CN, [last_name] & IIf(Not IsNull([first_name]),", " & [first_name]) AS Contact, NMIS_CONTACTS.LAST_NAME, NMIS_CONTACTS.FIRST_NAME FROM NMIS_CONTACTS WHERE (((NMIS_CONTACTS.HISTORICAL)=False) AND ((NMIS_CONTACTS.HOME_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code])) OR (((NMIS_CONTACTS.LAST_NAME)="contact") AND ((NMIS_CONT`
- ComboBox Cost_Center "Cost Center:" · rows: `*;Bareroot and Container;B;Bareroot;C;Container` · default `"b"`
- CommandButton NMIS_ORDERS_GENERIC_CREATE "Create Generic Orders" · events: Click
- TextBox Root_Prune "Root Prune:" · default `8`
- ComboBox Product_Services "Special Service:" · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PROPERTIES_MODULE)="proc")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;` · default `"STDSVC"`
- TextBox Nursery_Comment "Nursery Note:" · default `"Generic Order"`
- CheckBox Bill_Agreement_Client "Bill Agreement Client" · default `False`

## Form: NMIS_ORDERS_Last_index
- **Caption:** NMIS_ORDERS_Last_index subform
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_PROCESS_LABELS_subform1 › NMIS_ORDERS_Last_index
- **Record source:** SELECT [NMIS_ORDERS_Last_index].[MaxOfIndex] FROM NMIS_ORDERS_Last_index;
- **Opened from:** Form_NMIS_PROCESS_LABELS_subform1
- **Migration:** 0 of 1 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox MaxOfIndex = `MaxOfIndex`

## Form: NMIS_ORDERS_NEW_AGREEMENT_INFO
- **Caption:** Agreement Info For New Orders
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › NMIS_ORDERS_NEW_AGREEMENT_INFO
- **Record source:** SELECT NMIS_AGREEMENTS.CLIENT_ASSOCIATE, NMIS_AGREEMENTS.AMOUNT_REQUESTED, NMIS_AGREEMENTS.BEGIN_FY, NMIS_AGREEMENTS.END_FY, NMIS_AGREEMENTS.NOTE, NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, NMIS_AGREEMENTS.AGREEMENT_LOT_CN, NMIS_AGREEMENTS.SPECIES_PRODUCT_CN, NMIS_AGREEMENTS.SOURCE_LOT_CN, NMIS_AGREEMENTS.CN, " Lot " & [nmis_agreement_lots].[ID] & " was requested sown by:" AS ID2, [Last_Name] & IIf(Not IsNull([first_name]),", " & [first_name]) AS Contact FROM ((NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENTS ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENTS.SOURCE_LOT_CN) INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_AGREEMENTS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) LEFT JOIN NMIS_CONTACTS ON NMIS_AGREEMENTS.CONTACT_CN = NMIS_CONTACTS.CN WHERE (((NMIS_AGREEMENTS.AGREEMENT_LOT_CN)=[Forms]![NMIS_PROCESSING_ORDERS_INPUT]![AGREEMENT_LOT_CN]));
- **Backend tables:** NMIS_AGREEMENTS, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_CONTACTS, NMIS_FISCAL_YEARS, NMIS_SOURCE_LOTS
- **Opened from:** Form_NMIS_PROCESSING_ORDERS_INPUT, Form_NMIS_PROCESSING_ORDERS_INPUT_LotIdLookup
- **Migration:** 3 of 7 bound fields mapped. Main GrowHub screens: /orders/new (2), /shipping/create (1), /source-lots/new (1)

**Controls**
- TextBox ID = `id2`  [FormHeader]
- ComboBox CLIENT_ASSOCIATE = `CLIENT_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE] & " - " & [ASSOCIATE_NAME] AS Expr1 FROM NMIS_ASSOCIATES;`
- TextBox AMOUNT_REQUESTED = `AMOUNT_REQUESTED`
- TextBox NOTE = `NOTE` → GrowHub source_lot.notes (yes)
- ComboBox BEGIN_FY = `BEGIN_FY` · rows: `SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;` → GrowHub order_cycle_planning.plannedSowDate (blank)
- ComboBox END_FY = `END_FY` · rows: `SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;` → GrowHub grow_request.targetLiftYear (blank)
- TextBox Text38 = `Contact`
- TextBox SUM_Amt_Requested = `=Sum([AMOUNT_REQUESTED])`  [FormFooter]

## Form: NMIS_ORDERS_Reports
- **Caption:** Orders  Reports
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_ORDERS_Reports
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_FISCAL_YEARS, NMIS_SEASONS
- **Opens:** Report:Orders_Checklist, Report:Orders_Checklist_LiftInNote, Report:Orders_Checklist_Summary, Report:Orders_Checklist_by_Lot_ID, Report:Orders_Checklist_no_orders
- **Opened from:** Form_Reports_Menu_Processing Subform
- **Form events with code:** Open

**Controls**
- TextBox Plntmstr_Symbol "Like Species Code:" · default `"*"`
- TextBox Like_Client "Like Client:" · default `"*"`
- CommandButton Preview_Orders_Checklist "Orders Checklist Report By Stocktype" · events: Click
- ComboBox Begin_FY "Like Begin FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `"*"`
- ComboBox End_FY " Like End FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![Switchboard]![FY_For_Reports]` · events: AfterUpdate
- CommandButton Preview_Order_Checklist_No_Orders "NO ORDERS Checklist Report" · events: Click
- ComboBox End_Product "End Product:" · rows: `Plant;Propagule` · default `"Plant"` · events: Change
- CommandButton Preview_Orders_Summary "Orders Summary Report" · events: Click
- ComboBox Cost_Center "Cost Center:" · rows: `*;Bareroot and Container;B;Bareroot;C;Container;CCTR;Container Contract` · default `"*"`
- CommandButton NMIS_ORDERS_GENERIC_CREATE "Create Generic Orders" · events: Click
- TextBox Root_Prune "Root Prune:"
- ComboBox Product_Services "Special Service:" · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PROPERTIES_MODULE)="proc")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;` · default `"STDSVC"`
- TextBox Nursery_Comment "Nursery Note:" · default `"Generic Order"`
- CommandButton Preview_Orders_Checklist_by_Lot_ID "Orders Checklist Report By Lot ID" · events: Click
- TextBox Like_Activity_Code "Like Activity Code:" · default `"*"` · events: DblClick
- CommandButton Preview_Orders_Checklist_LiftInNote "  Orders Checklist  'Lift' in Order Notes" · events: Click
- CheckBox XSSRPL_Orders "XSSRPL" · default `False`
- ComboBox Like_End_Season "Like End Sea:" · rows: `SELECT NMIS_SEASONS.SEASON_CODE, NMIS_SEASONS.SEASON_DESC FROM NMIS_SEASONS;` · default `"*"`

## Form: NMIS_ORDERS_REVIEW_AGREEMENT_INFO
- **Caption:** Agreement Info For Orders Review
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › NMIS_ORDERS_REVIEW_AGREEMENT_INFO
- **Record source:** SELECT NMIS_AGREEMENTS.CLIENT_ASSOCIATE, NMIS_AGREEMENTS.AMOUNT_REQUESTED, NMIS_AGREEMENTS.BEGIN_FY, NMIS_AGREEMENTS.END_FY, NMIS_AGREEMENTS.NOTE, NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, NMIS_AGREEMENTS.AGREEMENT_LOT_CN, NMIS_AGREEMENTS.SPECIES_PRODUCT_CN, NMIS_AGREEMENTS.SOURCE_LOT_CN, NMIS_AGREEMENTS.CN, " Lot " & [nmis_agreement_lots].[ID] & " was requested sown by:" AS ID2, [Last_Name] & IIf(Not IsNull([first_name]),", " & [first_name]) AS Contact FROM ((NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENTS ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENTS.SOURCE_LOT_CN) INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_AGREEMENTS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) LEFT JOIN NMIS_CONTACTS ON NMIS_AGREEMENTS.CONTACT_CN = NMIS_CONTACTS.CN WHERE (((NMIS_AGREEMENTS.AGREEMENT_LOT_CN)=[Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![AGREEMENT_LOT_CN]));
- **Backend tables:** NMIS_AGREEMENTS, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_CONTACTS, NMIS_FISCAL_YEARS, NMIS_SOURCE_LOTS
- **Opened from:** Form_NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE
- **Migration:** 3 of 7 bound fields mapped. Main GrowHub screens: /orders/new (2), /shipping/create (1), /source-lots/new (1)

**Controls**
- TextBox ID = `id2`  [FormHeader]
- ComboBox CLIENT_ASSOCIATE = `CLIENT_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE] & " - " & [ASSOCIATE_NAME] AS Expr1 FROM NMIS_ASSOCIATES;`
- TextBox AMOUNT_REQUESTED = `AMOUNT_REQUESTED`
- TextBox NOTE = `NOTE` → GrowHub source_lot.notes (yes)
- ComboBox BEGIN_FY = `BEGIN_FY` · rows: `SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;` → GrowHub order_cycle_planning.plannedSowDate (blank)
- ComboBox END_FY = `END_FY` · rows: `SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;` → GrowHub grow_request.targetLiftYear (blank)
- TextBox Text38 = `Contact`
- TextBox SUM_Amt_Requested = `=Sum([AMOUNT_REQUESTED])`  [FormFooter]

## Form: NMIS_ORDR subform
- **Caption:** NMIS_ORDR subform
- **Menu path:** Switchboard › NMIS_ORDER_BILL_ADJUSTMENTS › NMIS_ORDR subform
- **Record source:** SELECT NMIS_ORDERS.CN, NMIS_ORDERS.FISCAL_YEAR, NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ORDERS.ACTIVITY_CODE, NMIS_ORDERS.ORDER_AMT, NMIS_ORDERS.AGREEMENT_LOT_CN, NMIS_ORDERS.CONTRACT_ITEM, IIf(Not IsNull([nmis_orders].[CN]),Left$([nmis_orders].[CN],Len([nmis_orders].[CN])-7),"") AS Order_ID, NMIS_ORDERS_SIZE_SPEC_STRING.Order_Size_Spec_W_Prune2 FROM NMIS_ORDERS INNER JOIN NMIS_ORDERS_SIZE_SPEC_STRING ON NMIS_ORDERS.CN = NMIS_ORDERS_SIZE_SPEC_STRING.CN WHERE (((NMIS_ORDERS.FISCAL_YEAR) Like [Forms]![Switchboard]![FY_For_Reports]) AND ((NMIS_ORDERS.CLIENT_ASSOCIATE) Like [Forms]![NMIS_ORDER_BILL_ADJUSTMENTS]![Like_Client] & "*") AND ((NMIS_ORDERS.CONTACT_CN) Like [Forms]![NMIS_ORDER_BILL_ADJUSTMENTS]![Contact_CN] & "*")) ORDER BY NMIS_ORDERS.FISCAL_YEAR DESC , NMIS_ORDERS.CN;
- **Backend tables:** NMIS_ORDERS
- **Migration:** 1 of 9 bound fields mapped. Main GrowHub screens: /orders/new (1)

**Controls**
- TextBox CLIENT_ASSOCIATE = `CLIENT_ASSOCIATE` → GrowHub grow_request.clientUuid (blank)
- TextBox ACTIVITY_CODE = `ACTIVITY_CODE`
- TextBox ORDER_AMT = `ORDER_AMT`
- TextBox SIZE = `Order_Size_Spec_W_Prune2`
- TextBox FISCAL_YEAR = `FISCAL_YEAR`
- TextBox CONTRACT_ITEM = `CONTRACT_ITEM`
- TextBox Order_ID = `Order_ID`
- TextBox AGREEMENT_LOT_CN = `AGREEMENT_LOT_CN`  [FormFooter]
- TextBox CN = `CN`  [FormFooter]

## Form: NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS subform
- **Caption:** NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SPECIES › NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS subform
- **Record source:** SELECT NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS.DRILL_FUNNEL_SETTING, NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS.PLNTMSTR_SYMBOL, NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS.DRILL_MIN_REV_UNITS, NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS.DRILL_MAX_REV_UNITS FROM NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS;
- **Backend tables:** NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox PLNTMSTR_SYMBOL = `PLNTMSTR_SYMBOL`  [FormHeader]
- TextBox DRILL_FUNNEL_SETTING = `DRILL_FUNNEL_SETTING`
- TextBox DRILL_MIN_REV_UNITS = `DRILL_MIN_REV_UNITS`
- TextBox DRILL_MAX_REV_UNITS = `DRILL_MAX_REV_UNITS`

## Form: NMIS_OYJORD_SETTINGS
- **Caption:** NMIS OYJORD SETTINGS
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_OYJORD_SETTINGS
- **Record source:** SELECT NMIS_OYJORD_SETTINGS.OYJORD_ID, NMIS_OYJORD_SETTINGS.GEAR, NMIS_OYJORD_SETTINGS.ZMAX, NMIS_OYJORD_SETTINGS.TURNS, NMIS_OYJORD_SETTINGS.TRAVEL_PER_REVOLUTION FROM NMIS_OYJORD_SETTINGS ORDER BY NMIS_OYJORD_SETTINGS.OYJORD_ID, NMIS_OYJORD_SETTINGS.GEAR, NMIS_OYJORD_SETTINGS.ZMAX, NMIS_OYJORD_SETTINGS.TURNS, NMIS_OYJORD_SETTINGS.TRAVEL_PER_REVOLUTION;
- **Backend tables:** NMIS_OYJORD_SETTINGS
- **Opened from:** Form_Lookup_Tables_Menu Subform, Form_xLookup_Tables_Menu
- **Migration:** 0 of 5 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox OYJORD_ID = `OYJORD_ID`
- TextBox GEAR = `GEAR`
- TextBox ZMAX = `ZMAX`
- TextBox TURNS = `TURNS`
- TextBox TRAVEL_PER_REVOLUTION = `TRAVEL_PER_REVOLUTION`

## Form: NMIS_OYJORD_SETTINGS subform
- **Caption:** NMIS_OYJORD_SETTINGS subform
- **Menu path:** Switchboard › Oyjord_Calibration › Oyjord_Calibration subform › NMIS_OYJORD_SETTINGS subform
- **Record source:** SELECT Last(NMIS_OYJORD_SETTINGS1.TRAVEL_PER_REVOLUTION) AS LastOfTRAVEL_PER_REVOLUTION, NMIS_OYJORD_SETTINGS1.GEAR, Last(NMIS_OYJORD_SETTINGS1.ZMAX) AS LastOfZMAX, Last(NMIS_OYJORD_SETTINGS1.TURNS) AS LastOfTURNS, NMIS_OYJORD_SETTINGS1.gearsort FROM NMIS_OYJORD_SETTINGS1 GROUP BY NMIS_OYJORD_SETTINGS1.GEAR, NMIS_OYJORD_SETTINGS1.gearsort ORDER BY NMIS_OYJORD_SETTINGS1.gearsort DESC;
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox GEAR = `GEAR`
- TextBox ZMAX = `LastOfZMAX`
- TextBox TURNS = `LastOfTURNS`
- TextBox TRAVEL_PER_REVOLUTION = `LastOfTRAVEL_PER_REVOLUTION`

## Form: NMIS_PHONE_NUMBERS subform1
- **Caption:** NMIS_PHONE_NUMBERS subform1
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › NMIS_CONTACTS › NMIS_PHONE_NUMBERS subform1
- **Record source:** SELECT NMIS_PHONE_NUMBERS.PHONE_NUMBER, NMIS_CONTACTS.HOME_ASSOCIATE, NMIS_PHONE_NUMBERS.CONTACT_CN, NMIS_PHONE_NUMBERS.Index, NMIS_PHONE_NUMBERS.CN, NMIS_PHONE_NUMBERS.PHONE_TYPE_CN FROM NMIS_PHONE_NUMBERS INNER JOIN NMIS_CONTACTS ON NMIS_PHONE_NUMBERS.CONTACT_CN = NMIS_CONTACTS.CN ORDER BY NMIS_PHONE_NUMBERS.CONTACT_CN;
- **Backend tables:** NMIS_CONTACTS, NMIS_PHONE_NUMBERS, NMIS_PHONE_TYPES
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox CN = `CN` · default `"C_Ph_Sub" & Now()`  [FormHeader]
- TextBox Index = `Index`  [FormHeader]
- TextBox PHONE_NUMBER = `PHONE_NUMBER`
- ComboBox PHONE_TYPE = `PHONE_TYPE_CN` · rows: `SELECT NMIS_PHONE_TYPES.CN, NMIS_PHONE_TYPES.PHONE_TYPE FROM NMIS_PHONE_TYPES;`

## Form: NMIS_PHONE_NUMBERS_ASSOCIATE subform
- **Caption:** NMIS_PHONE_NUMBERS subform2
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ASSOCIATES › NMIS_PHONE_NUMBERS_ASSOCIATE subform
- **Record source:** SELECT [NMIS_PHONE_NUMBERS].[PHONE_NUMBER], [NMIS_PHONE_NUMBERS].[ASSOCIATE], [NMIS_PHONE_NUMBERS].[CN], [NMIS_PHONE_NUMBERS].[Index], [NMIS_PHONE_NUMBERS].[PHONE_TYPE_CN] FROM NMIS_PHONE_NUMBERS;
- **Backend tables:** NMIS_PHONE_NUMBERS, NMIS_PHONE_TYPES
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox CN = `CN` · default `"A_PH_SUB" & Now()`  [FormHeader]
- TextBox Index = `Index`  [FormHeader]
- TextBox PHONE_NUMBER = `PHONE_NUMBER`
- ComboBox PHONE_TYPE = `PHONE_TYPE_CN` · rows: `SELECT [NMIS_PHONE_TYPES].[CN], [NMIS_PHONE_TYPES].[PHONE_TYPE] FROM NMIS_PHONE_TYPES;`

## Form: NMIS_PHONE_NUMBERS_CONTACTS subform
- **Caption:** NMIS_PHONE_NUMBERS_CONTACTS subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ASSOCIATES › NMIS_PHONE_NUMBERS_CONTACTS subform
- **Record source:** NMIS_PHONE_NUMBERS
- **Backend tables:** NMIS_PHONE_NUMBERS, NMIS_PHONE_TYPES
- **Migration:** 0 of 5 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox CONTACT_CN = `CONTACT_CN`  [FormHeader]
- TextBox Index = `Index`  [FormHeader]
- TextBox CN = `CN` · default `"CONT_PH" & Now()`  [FormHeader]
- TextBox PHONE_NUMBER = `PHONE_NUMBER`
- ComboBox PHONE_TYPE_CN = `PHONE_TYPE_CN` · rows: `SELECT [NMIS_PHONE_TYPES].[CN], [NMIS_PHONE_TYPES].[PHONE_TYPE] FROM NMIS_PHONE_TYPES;`

## Form: NMIS_PROCESS_LABELS_MAIN
- **Caption:** Select Pack ID
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN
- **Backend tables:** NMIS_ASSOCIATES
- **Subforms:** Form.NMIS_PROCESS_LABELS_ST1, Form.NMIS_PROCESS_LABELS_ST2, Form.NMIS_PROCESS_LABELS_ST3, Form.NMIS_PROCESS_LABELS_ST4, Form.NMIS_ACCESS_USER_NURSERY subform1
- **Opens:** Form:Bag/Box Label, Form:Enter New Pack Id, Form:NMIS_PROCESS_PACK_LABELS, Form:NMIS_PROCESS_PACK_LABELS_040207, Form:NMIS_PROCESS_PACK_LABELS_050357, Form:NMIS_PROCESS_PACK_LABELS_ODD_BOX, Form:NMIS_PROCESS_PACK_LABELS_ODD_BOX_040207, Form:NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE, Form:NMIS_PROCESS_QI_LABELS, Report:Bag/Box Label, Report:Enter New Pack Id, Report:NMIS_PROCESS_PACK_LABELS, Report:NMIS_PROCESS_PACK_LABELS_040207, Report:NMIS_PROCESS_PACK_LABELS_050357, Report:NMIS_PROCESS_PACK_LABELS_ODD_BOX, Report:NMIS_PROCESS_PACK_LABELS_ODD_BOX_040207, Report:NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE, Report:NMIS_PROCESS_QI_LABELS
- **Opened from:** Form_Reports_Menu_Processing Subform, Form_xNative_Propagule_Harvest_Menu
- **Form events with code:** Open

**Controls**
- TabControl TabCtl48  [FormHeader]
- Subform NMIS_PROCESS_LABELS_ST1 subform `Form.NMIS_PROCESS_LABELS_ST1` (master  → child )  [FormHeader]
- Subform NMIS_PROCESS_LABELS_ST2 subform `Form.NMIS_PROCESS_LABELS_ST2` (master  → child )  [FormHeader]
- Subform NMIS_PROCESS_LABELS_ST3 subform `Form.NMIS_PROCESS_LABELS_ST3` (master  → child )  [FormHeader]
- Subform NMIS_PROCESS_LABELS_ST4 subform `Form.NMIS_PROCESS_LABELS_ST4` (master  → child )  [FormHeader]
- TextBox Ageement_Lot_CN_Select  [FormHeader]
- TextBox Order_CN  [FormHeader]
- TextBox Trees/Cont  [FormHeader]
- TextBox Table  [FormHeader]
- TextBox Pack_Date  [FormHeader]
- TextBox Pack_ID  [FormHeader]
- TextBox Comments  [FormHeader]
- TextBox Date_Lifted  [FormHeader]
- CommandButton Open_Box_Label_To_Edit · events: Click  [FormHeader]
- TextBox Order_Index_to_DUP  [FormHeader]
- TextBox Order_CN_to_Dup  [FormHeader]
- CommandButton Print_Processing_ODD_BOX_LABEL "Click HERE to Print Odd Box Label(s)" · events: Click  [FormHeader]
- TextBox NumberOfOddBoxLabels · default `1`  [FormHeader]
- ComboBox Label_Style "Label Style:" · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.ASSOCIATE) In ("061019","050357","040207","090707"))) ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;` · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]`  [FormHeader]
- TextBox Client  [FormHeader]
- TextBox New_Order_CN  [FormHeader]
- Subform NMIS_ACCESS_USER_NURSERY subform1 subform `Form.NMIS_ACCESS_USER_NURSERY subform1` (master  → child )  [FormHeader]

## Form: NMIS_PROCESS_LABELS_ST1
- **Caption:** Select Pack ID
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1
- **Record source:** SELECT [NMIS_AGREEMENT_LOTS].[CN], [NMIS_AGREEMENT_LOTS].[ID] FROM NMIS_AGREEMENT_LOTS;
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_ORDERS
- **Subforms:** Form.NMIS_PROCESS_LABELS_subform1, Form.NMIS_PROCESS_LABELS_subform2, Form.Species_Product_End_Product_Group  subform
- **Opens:** Form:Bag/Box Label, Form:Enter New Pack Id, Form:NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler, Form:NMIS_PROCESS_PACK_LABELS, Form:NMIS_PROCESS_PACK_LABELS_040207, Form:NMIS_PROCESS_PACK_LABELS_050357, Form:NMIS_PROCESS_PACK_LABELS_090707, Form:NMIS_PROCESS_PACK_LABELS_PROOF, Form:NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE, Form:NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_1, Form:NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_3, Form:NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change_form, Form:NMIS_PROCESS_QI_LABELS, Report:Bag/Box Label, Report:Enter New Pack Id, Report:NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler, Report:NMIS_PROCESS_PACK_LABELS, Report:NMIS_PROCESS_PACK_LABELS_040207, Report:NMIS_PROCESS_PACK_LABELS_050357, Report:NMIS_PROCESS_PACK_LABELS_090707, Report:NMIS_PROCESS_PACK_LABELS_PROOF, Report:NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE, Report:NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_1, Report:NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_3, Report:NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change_form, Report:NMIS_PROCESS_QI_LABELS
- **Form events with code:** Open

**Controls**
- CommandButton Command4 "Preview/Print Bag/Box Label" · events: Click
- CommandButton Command5 "Print Quality Label" · events: Click
- TextBox Table "Table/Belt:" · default `1`
- TextBox Trees/Cont "Amt/Cont:"
- TextBox Comments "Comments:" · events: DblClick
- Subform NMIS_PROCESS_LABELS_subform1 subform `Form.NMIS_PROCESS_LABELS_subform1` (master CN → child CN)
- TextBox CN = `=[Agreement_Lot_CN_Select]`
- ComboBox Agreement_Lot_CN_Select "Nursery ID:" · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID AS Nursery_ID, [Agreement_Lot_What_It_Is Query].Current_Product FROM [Agreement_Lot_What_It_Is Query] INNER JOIN (NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.[AGREEMENT_LOT_CN] = NMIS_AGREEMENT_LOTS.[CN]) ON [Agreement_Lot_What_It_Is Query].CN = NMIS_AGREEMENT_LOTS.CN GROUP BY NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_O` · events: AfterUpdate
- Subform NMIS_PROCESS_LABELS_subform2 subform `Form.NMIS_PROCESS_LABELS_subform2` (master CN → child CN)
- CommandButton Preview_Prooof_Label "Print Proof Label" · events: Click
- TextBox Lift_Date_Override
- TextBox Pack_Date · default `Date()`
- Subform Species_Product_End_Product_Group  subform subform `Form.Species_Product_End_Product_Group  subform` (master CN → child NMIS_AGREEMENT_LOTS_CN)
- TextBox Date_Lifted = `=IIf(IsNull([Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Lift_Date_Override]),[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![NMIS_PROCESS_LABELS_subform2].[Form]![DATE_LIFT],[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Lift_Date_Override])`
- ComboBox Order_Selected "Order Selected:" = `=IIf(IsNull([Agreement_Lot_CN_Select]),Null,[NMIS_PROCESS_LABELS_subform1].[Form]![Order_CN])` · rows: `SELECT NMIS_ORDERS.CN, Left$([CN],Len([CN])-7) & " - " & [ASSOCIATE_NAME] & " -  " & [ACTIVITY_NAME] AS Order_Client FROM NMIS_ACTIVITY_CODES INNER JOIN (NMIS_ASSOCIATES INNER JOIN NMIS_ORDERS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_ORDERS.CLIENT_ASSOCIATE) ON NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ORDERS.ACTIVITY_CODE;`
- TextBox Number_Of_Containers "# Cont:" · default `1` · events: Exit
- TextBox End_Container · events: DblClick
- TextBox Begin_Container "Beg/End:" · events: DblClick
- TextBox Sublot "Sublot:" · default `=Right$([Forms]![Switchboard]![FY_For_Reports],2)`
- CommandButton Lot_Change_Label_Form "     Preview     Lot Break Label" · events: Click
- CheckBox Odd_Box · default `False` · events: Click
- CommandButton Preview_Processing_Table_Sign "Table Sign" · events: Click
- TextBox Number_of_Boxes
- TextBox Amt "Amt:" = `=IIf([Number_Of_Containers]>0 And [Trees/Cont]>0,IIf([odd_box],Val([trees/Cont]),Val([End_Container])*Val([Trees/Cont])))`
- TextBox Labels_Per · default `[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_ACCESS_USER_NURSERY subform1].[Form]![Default6N]` · events: DblClick

## Form: NMIS_PROCESS_LABELS_ST2
- **Caption:** Select Pack ID
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST2
- **Record source:** SELECT [NMIS_AGREEMENT_LOTS].[CN], [NMIS_AGREEMENT_LOTS].[ID] FROM NMIS_AGREEMENT_LOTS;
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_ORDERS, NMIS_PRODUCTS, NMIS_PRODUCT_TYPES, NMIS_SPECIES_PRODUCTS
- **Subforms:** Form.NMIS_PROCESS_LABELS_subform1, Form.NMIS_PROCESS_LABELS_subform2
- **Opens:** Form:Bag/Box Label, Form:Enter New Pack Id, Form:NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler, Form:NMIS_PROCESS_PACK_LABELS, Form:NMIS_PROCESS_PACK_LABELS_040207, Form:NMIS_PROCESS_PACK_LABELS_050357, Form:NMIS_PROCESS_PACK_LABELS_PROOF, Form:NMIS_PROCESS_QI_LABELS, Report:Bag/Box Label, Report:Enter New Pack Id, Report:NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler, Report:NMIS_PROCESS_PACK_LABELS, Report:NMIS_PROCESS_PACK_LABELS_040207, Report:NMIS_PROCESS_PACK_LABELS_050357, Report:NMIS_PROCESS_PACK_LABELS_PROOF, Report:NMIS_PROCESS_QI_LABELS

**Controls**
- CommandButton Command4 "Preview/Print Bag/Box Label" · events: Click
- CommandButton Command5 "Print Quality Label" · events: Click
- TextBox Table "Table/Belt:" · default `2`
- TextBox Trees/Cont "Amt/Cont:"
- TextBox Comments "Comments:" · events: DblClick
- Subform NMIS_PROCESS_LABELS_subform1 subform `Form.NMIS_PROCESS_LABELS_subform1` (master CN → child CN)
- TextBox CN = `=[Agreement_Lot_CN_Select]`
- ComboBox Agreement_Lot_CN_Select "Nursery ID:" · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID AS Nursery_ID, [Agreement_Lot_What_It_Is Query].Current_Product FROM [Agreement_Lot_What_It_Is Query] INNER JOIN ((NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE = NMIS_PRODUCTS.END_PRODUCT_TYPE) INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_` · events: Change
- Subform NMIS_PROCESS_LABELS_subform2 subform `Form.NMIS_PROCESS_LABELS_subform2` (master CN → child CN)
- CommandButton Preview_Prooof_Label_ST2 "Print Proof Label" · events: Click
- TextBox Lift_Date_Override
- TextBox Pack_Date · default `Date()`
- TextBox Date_Lifted = `=IIf(IsNull([Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST2].[Form]![Lift_Date_Override]),[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST2].[Form]![NMIS_PROCESS_LABELS_subform2].[Form]![DATE_LIFT],[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST2].[Form]![Lift_Date_Override])`
- ComboBox Text36 "Order Selected:" = `=IIf(IsNull([Agreement_Lot_CN_Select]),Null,[NMIS_PROCESS_LABELS_subform1].[Form]![Order_CN])` · rows: `SELECT NMIS_ORDERS.CN, Left$([CN],Len([CN])-7) & " - " & [ASSOCIATE_NAME] & " -  " & [ACTIVITY_NAME] AS Order_Client FROM NMIS_ACTIVITY_CODES INNER JOIN (NMIS_ASSOCIATES INNER JOIN NMIS_ORDERS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_ORDERS.CLIENT_ASSOCIATE) ON NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ORDERS.ACTIVITY_CODE;`
- CommandButton Preview_Processing_Table_Sign "Table Sign" · events: Click
- TextBox Number_of_Boxes
- TextBox Labels_Per · default `=IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061019",3,2)`

## Form: NMIS_PROCESS_LABELS_ST3
- **Caption:** Select Pack ID
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST3
- **Record source:** SELECT [NMIS_AGREEMENT_LOTS].[CN], [NMIS_AGREEMENT_LOTS].[ID] FROM NMIS_AGREEMENT_LOTS;
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_ORDERS, NMIS_PRODUCTS, NMIS_PRODUCT_TYPES, NMIS_SPECIES_PRODUCTS
- **Subforms:** Form.NMIS_PROCESS_LABELS_subform1, Form.NMIS_PROCESS_LABELS_subform2
- **Opens:** Form:Bag/Box Label, Form:Enter New Pack Id, Form:NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler, Form:NMIS_PROCESS_PACK_LABELS, Form:NMIS_PROCESS_PACK_LABELS_040207, Form:NMIS_PROCESS_PACK_LABELS_050357, Form:NMIS_PROCESS_PACK_LABELS_PROOF, Form:NMIS_PROCESS_QI_LABELS, Report:Bag/Box Label, Report:Enter New Pack Id, Report:NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler, Report:NMIS_PROCESS_PACK_LABELS, Report:NMIS_PROCESS_PACK_LABELS_040207, Report:NMIS_PROCESS_PACK_LABELS_050357, Report:NMIS_PROCESS_PACK_LABELS_PROOF, Report:NMIS_PROCESS_QI_LABELS

**Controls**
- CommandButton Command4 "Preview/Print Bag/Box Label" · events: Click
- CommandButton Command5 "Print Quality Label" · events: Click
- TextBox Table "Table/Belt:" · default `3`
- TextBox Trees/Cont "Amt/Cont:"
- TextBox Comments "Comments:" · events: DblClick
- Subform NMIS_PROCESS_LABELS_subform1 subform `Form.NMIS_PROCESS_LABELS_subform1` (master CN → child CN)
- TextBox CN = `=[Agreement_Lot_CN_Select]`
- ComboBox Agreement_Lot_CN_Select "Nursery ID:" · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID AS Nursery_ID, [Agreement_Lot_What_It_Is Query].Current_Product FROM [Agreement_Lot_What_It_Is Query] INNER JOIN ((NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE = NMIS_PRODUCTS.END_PRODUCT_TYPE) INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_` · events: Change
- Subform NMIS_PROCESS_LABELS_subform2 subform `Form.NMIS_PROCESS_LABELS_subform2` (master CN → child CN)
- CommandButton Preview_Prooof_Label "Print Proof Label" · events: Click
- TextBox Lift_Date_Override
- TextBox Pack_Date · default `Date()`
- TextBox Date_Lifted = `=IIf(IsNull([Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST3].[Form]![Lift_Date_Override]),[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST3].[Form]![NMIS_PROCESS_LABELS_subform2].[Form]![DATE_LIFT],[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST3].[Form]![Lift_Date_Override])`
- ComboBox Text36 "Order Selected:" = `=IIf(IsNull([Agreement_Lot_CN_Select]),Null,[NMIS_PROCESS_LABELS_subform1].[Form]![Order_CN])` · rows: `SELECT NMIS_ORDERS.CN, Left$([CN],Len([CN])-7) & " - " & [ASSOCIATE_NAME] & " -  " & [ACTIVITY_NAME] AS Order_Client FROM NMIS_ACTIVITY_CODES INNER JOIN (NMIS_ASSOCIATES INNER JOIN NMIS_ORDERS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_ORDERS.CLIENT_ASSOCIATE) ON NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ORDERS.ACTIVITY_CODE;`
- CommandButton Preview_Processing_Table_Sign "Table Sign" · events: Click
- TextBox Number_of_Boxes
- TextBox Labels_Per · default `=IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061019",3,2)`

## Form: NMIS_PROCESS_LABELS_ST4
- **Caption:** Select Pack ID
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST4
- **Record source:** SELECT [NMIS_AGREEMENT_LOTS].[CN], [NMIS_AGREEMENT_LOTS].[ID] FROM NMIS_AGREEMENT_LOTS;
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_ORDERS, NMIS_PRODUCTS, NMIS_PRODUCT_TYPES, NMIS_SPECIES_PRODUCTS
- **Subforms:** Form.NMIS_PROCESS_LABELS_subform1, Form.NMIS_PROCESS_LABELS_subform2
- **Opens:** Form:Bag/Box Label, Form:Enter New Pack Id, Form:NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler, Form:NMIS_PROCESS_PACK_LABELS, Form:NMIS_PROCESS_PACK_LABELS_040207, Form:NMIS_PROCESS_PACK_LABELS_050357, Form:NMIS_PROCESS_PACK_LABELS_PROOF, Form:NMIS_PROCESS_QI_LABELS, Report:Bag/Box Label, Report:Enter New Pack Id, Report:NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler, Report:NMIS_PROCESS_PACK_LABELS, Report:NMIS_PROCESS_PACK_LABELS_040207, Report:NMIS_PROCESS_PACK_LABELS_050357, Report:NMIS_PROCESS_PACK_LABELS_PROOF, Report:NMIS_PROCESS_QI_LABELS

**Controls**
- CommandButton Command4 "Preview/Print Bag/Box Label" · events: Click
- CommandButton Command5 "Print Quality Label" · events: Click
- TextBox Table "Table/Belt:" · default `4`
- TextBox Trees/Cont "Amt/Cont:"
- TextBox Comments "Comments:" · events: DblClick
- Subform NMIS_PROCESS_LABELS_subform1 subform `Form.NMIS_PROCESS_LABELS_subform1` (master CN → child CN)
- TextBox CN = `=[Agreement_Lot_CN_Select]`
- ComboBox Agreement_Lot_CN_Select "Nursery ID:" · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID AS Nursery_ID, [Agreement_Lot_What_It_Is Query].Current_Product FROM [Agreement_Lot_What_It_Is Query] INNER JOIN ((NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE = NMIS_PRODUCTS.END_PRODUCT_TYPE) INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_` · events: Change
- Subform NMIS_PROCESS_LABELS_subform2 subform `Form.NMIS_PROCESS_LABELS_subform2` (master CN → child CN)
- CommandButton Preview_Prooof_Label "Print Proof Label" · events: Click
- TextBox Lift_Date_Override
- TextBox Pack_Date · default `Date()`
- TextBox Date_Lifted = `=IIf(IsNull([Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST4].[Form]![Lift_Date_Override]),[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST4].[Form]![NMIS_PROCESS_LABELS_subform2].[Form]![DATE_LIFT],[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST4].[Form]![Lift_Date_Override])`
- ComboBox Text36 "Order Selected:" = `=IIf(IsNull([Agreement_Lot_CN_Select]),Null,[NMIS_PROCESS_LABELS_subform1].[Form]![Order_CN])` · rows: `SELECT NMIS_ORDERS.CN, Left$([CN],Len([CN])-7) & " - " & [ASSOCIATE_NAME] & " -  " & [ACTIVITY_NAME] AS Order_Client FROM NMIS_ACTIVITY_CODES INNER JOIN (NMIS_ASSOCIATES INNER JOIN NMIS_ORDERS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_ORDERS.CLIENT_ASSOCIATE) ON NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ORDERS.ACTIVITY_CODE;`
- CommandButton Preview_Processing_Table_Sign "Table Sign" · events: Click
- TextBox Number_of_Boxes
- TextBox Labels_Per · default `=IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061019",3,2)`

## Form: NMIS_PROCESS_LABELS_subform1
- **Caption:** NMIS_DG_PROC_ORDERS subform
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_PROCESS_LABELS_subform1
- **Record source:** SELECT NMIS_ORDERS.AGREEMENT_LOT_CN AS CN, NMIS_ORDERS.CN AS Order_CN, Left(NMIS_ORDERS.CN,Len(NMIS_ORDERS.CN)-7) AS PACK_ID, NMIS_ORDERS.SPEC_MIN, NMIS_ORDERS.SPEC_MAX, NMIS_ORDERS.CALIPER_MIN, NMIS_ORDERS.ROOT_PRUNE_TARGET AS Root_Target, NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ORDERS.MODIFIED_BY, NMIS_ORDERS.MODIFIED_DATE, NMIS_ORDERS.CONTRACT_ITEM, NMIS_ORDERS.ACTIVITY_CODE, NMIS_ORDERS.FISCAL_YEAR FROM NMIS_ORDERS WHERE (((NMIS_ORDERS.FISCAL_YEAR)=[Forms]![Switchboard]![FY_For_Reports])) ORDER BY NMIS_ORDERS.CN, Left(NMIS_ORDERS.CN,Len(NMIS_ORDERS.CN)-7);
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_ASSOCIATES, NMIS_ORDERS
- **Opens:** Form:NMIS_ORDERS_Last_index, Form:NMIS_PROCESSING_ORDERS_SVCS_Labeler
- **Form events with code:** BeforeUpdate
- **Migration:** 1 of 11 bound fields mapped. Main GrowHub screens: /orders/new (1)

**Controls**
- TextBox New_Order_CN  [FormHeader]
- TextBox PACK_ID = `PACK_ID`
- TextBox SPEC_MIN = `SPEC_MIN` · events: AfterUpdate, DblClick, Exit
- TextBox SPEC_MAX = `SPEC_MAX` · events: AfterUpdate, DblClick, Exit
- TextBox CALIPER_MIN = `CALIPER_MIN` · events: AfterUpdate, DblClick, Exit
- TextBox ROOT_TARGET = `ROOT_TARGET` · events: AfterUpdate, DblClick, Exit
- CommandButton New_Pack_ID "Dup" · events: Click
- TextBox Order_CN = `Order_CN`
- TextBox MODIFIED_BY = `MODIFIED_BY`
- TextBox MODIFIED_DATE = `MODIFIED_DATE`
- TextBox CONTRACT_ITEM = `CONTRACT_ITEM` · events: DblClick
- ComboBox ACTIVITY_CODE = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ORDER"));` · events: AfterUpdate, DblClick
- CommandButton Open_ORDER_SERVICES "svc" · events: Click
- ComboBox CLIENT = `CLIENT_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE;` · events: AfterUpdate, DblClick, Exit → GrowHub grow_request.clientUuid (blank)

## Form: NMIS_PROCESS_LABELS_subform2
- **Caption:** NMIS_DG_SDLNG_LIFT subform
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_PROCESS_LABELS_subform2
- **Record source:** SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_ID_ACTIVITIES.ACTIVITY_CODE, NMIS_ID_ACTIVITIES.ACTIVITY_DATE AS Date_Lift, NMIS_ID_ACTIVITIES.FISCAL_YEAR FROM NMIS_AGREEMENT_LOTS INNER JOIN (NMIS_ACTIVITY_CODES INNER JOIN NMIS_ID_ACTIVITIES ON (NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ID_ACTIVITIES.ACTIVITY_CODE) AND (NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ID_ACTIVITIES.ACTIVITY_CODE)) ON NMIS_AGREEMENT_LOTS.CN = NMIS_ID_ACTIVITIES.AGREEMENT_LOT_CN WHERE (((NMIS_ID_ACTIVITIES.ACTIVITY_CODE)="FAHLF" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE)="FAMLF" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE)="CRHLF" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE)="CRMLF" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE)="LIFT") AND ((NMIS_ID_ACTIVITIES.FISCAL_YEAR)=[Forms]![Switchboard]![FY_For_Reports])) ORDER BY NMIS_ID_ACTIVITIES.ACTIVITY_DATE DESC;
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_AGREEMENT_LOTS, NMIS_ID_ACTIVITIES
- **Migration:** 0 of 3 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox NURSERY_ID_KEY = `NURSERY_ID_KEY`  [FormHeader]
- TextBox NURSERY_ID = `NURSERY_ID`  [FormHeader]
- TextBox DATE_LIFT = `DATE_LIFT`

## Form: NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_ORDERS, NMIS_PRODUCTS, NMIS_PRODUCT_TYPES, NMIS_SPECIES_PRODUCTS
- **Subforms:** Form.NMIS_PROCESSING_ORDERS_ID_UPDATE subform, Form.NMIS_PROCESSING_ORDERS_ID_SVCS_Review_Update Subform, Form.NMIS_PROCESSING_ORDERS_ID_MC Subform, Form.NMIS_PROCESSING_ORDERS_ID_GRADES Subform
- **Opens:** Form:NMIS_ORDERS_REVIEW_AGREEMENT_INFO, Form:NMIS_PROCESS_QUALITY_SAMPLES2, Form:ORDER_FORM mt_040207_edit, Form:ORDER_FORM mt_050357_edit, Form:ORDER_FORM_PROPAGULE mt, Form:PRODUCT_STORAGE_RECORD_FROM_ORDER_REVIEW_FORM, Form:order_form_from_order_edit mt, Report:NMIS_ORDERS_REVIEW_AGREEMENT_INFO, Report:NMIS_PROCESS_QUALITY_SAMPLES2, Report:ORDER_FORM mt_040207_edit, Report:ORDER_FORM mt_050357_edit, Report:ORDER_FORM_PROPAGULE mt, Report:PRODUCT_STORAGE_RECORD_FROM_ORDER_REVIEW_FORM, Report:order_form_from_order_edit mt
- **Form events with code:** Open

**Controls**
- ComboBox Order_CN · rows: `SELECT NMIS_ORDERS.CN, IIf([Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![View_by]=1,Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7) & "/" & [ID],[ID] & "/" & Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7)) AS [Lot ID/Order], [Client_Associate] & " " & [Associate_Name] AS Associate, NMIS_AGREEMENT_LOTS.TOTAL_REQUEST AS [Sow Req], NMIS_ORDERS.ORDER_AMT AS [Order], NMIS_ORDERS.OVERRUN_A` · events: Change, Enter  [FormHeader]
- TextBox VIEW_FY "FY:" · default `=[Forms]![Switchboard]![FY_For_Reports]` · events: AfterUpdate, Change, Click  [FormHeader]
- TextBox Like_Client "Like Client:" · default `"*"` · events: DblClick, Exit  [FormHeader]
- ComboBox Product_Group "Group:" · rows: `BPLANT;"Bareroot Plant";CPLANT;"Container Plant";*PLANT;"All Plants";NPROPAGULE;"Propagule"` · default `"*PLANT"` · events: Exit  [FormHeader]
- CommandButton PrvwOrdrFrm "Preview Order Form" · events: Click  [FormHeader]
- CommandButton PrvwStrgRcrd "Preview Storage Form" · events: Click  [FormHeader]
- CheckBox Open_Flag "Flag" · default `True`  [FormHeader]
- CommandButton Open_Sow_Req_Info "Sow Req Info" · events: Click  [FormHeader]
- OptionGroup View_by · default `2` · events: Click  [FormHeader]
- OptionButton Option47 "Lot ID/Order ID"  [FormHeader]
- OptionButton Option45 "Order ID/Lot ID"  [FormHeader]
- CheckBox order_form_data_processed "order_form_data_processed" · default `False`  [FormHeader]
- Subform NMIS_PROCESSING_ORDERS_ID_UPDATE subform subform `Form.NMIS_PROCESSING_ORDERS_ID_UPDATE subform` (master ORDER_CN → child CN) · events: Enter
- Subform Child102 subform `Form.NMIS_PROCESSING_ORDERS_ID_SVCS_Review_Update Subform` (master ORDER_CN → child ORDER_CN) · events: Enter
- Subform Child103 subform `Form.NMIS_PROCESSING_ORDERS_ID_MC Subform` (master ORDER_CN → child ORDER_CN) · events: Enter
- Subform Child104 subform `Form.NMIS_PROCESSING_ORDERS_ID_GRADES Subform` (master ORDER_CN → child ORDER_CN) · events: Enter
- ComboBox AGREEMENT_LOT_CN = `=[NMIS_PROCESSING_ORDERS_ID_UPDATE subform].[Form]![AGREEMENT_LOT_CN]` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, "Agreement Lot: " & [ID] & "   " & [Species_Products_String_Longest] AS Display FROM Species_Products_with_SizeSpecString INNER JOIN NMIS_AGREEMENT_LOTS ON Species_Products_with_SizeSpecString.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN;`

## Form: NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2
- **Caption:** NMIS PROCESSING ORDERS UPDATE
- **Menu path:** Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_ID_ACTIVITIES_ACTIVITIES3_subform › Property_Module_Form_Opening Module.Property_Module_Form_Open › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_ORDERS, NMIS_PRODUCTS, NMIS_PRODUCT_TYPES, NMIS_SPECIES_PRODUCTS
- **Subforms:** Form.NMIS_PROCESSING_ORDERS_ID_UPDATE2 subform, Form.NMIS_PROCESSING_ORDERS_ID_SVCS2 Subform, Form.NMIS_PROCESSING_ORDERS_ID_MC Subform, Form.NMIS_PROCESSING_ORDERS_ID_GRADES Subform
- **Opens:** Form:NMIS_PROCESS_QUALITY_SAMPLES2
- **Opened from:** Property_Module_Form_Opening Module

**Controls**
- ComboBox Order_CN "Agreement Lot ID/Order ID:" · rows: `SELECT NMIS_ORDERS.CN, [ID] & "/" & Left$([NMIS_ORDERS].[CN],(Len([NMIS_ORDERS].[CN])-7)) AS ID_n_Order, [Client_Associate] & " " & [Associate_Name] AS ASSOCIATE, NMIS_AGREEMENT_LOTS.TOTAL_REQUEST, NMIS_ORDERS.ACTIVITY_CODE, NMIS_PRODUCT_TYPES.PRODUCT_GROUP FROM (NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE = NMIS_PRODUCTS.END_PRODUCT_TYPE) INNER JOIN (NMIS_SPECIE` · default `=[Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].[Form]![ORDER_CN]`  [FormHeader]
- Subform NMIS_PROCESSING_ORDERS_ID_UPDATE2 subform subform `Form.NMIS_PROCESSING_ORDERS_ID_UPDATE2 subform` (master ORDER_CN → child CN)
- Subform Child102 subform `Form.NMIS_PROCESSING_ORDERS_ID_SVCS2 Subform` (master ORDER_CN → child ORDER_CN)
- Subform Child103 subform `Form.NMIS_PROCESSING_ORDERS_ID_MC Subform` (master ORDER_CN → child ORDER_CN)
- Subform Child104 subform `Form.NMIS_PROCESSING_ORDERS_ID_GRADES Subform` (master ORDER_CN → child ORDER_CN)

## Form: NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change_form
- **Caption:** Report Input
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change_form
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_ORDERS, NMIS_PRODUCTS, NMIS_PRODUCT_TYPES, NMIS_SPECIES_PRODUCTS
- **Opens:** Report:NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change
- **Opened from:** Form_NMIS_PROCESS_LABELS_ST1

**Controls**
- CommandButton Preview_Report "       Click to review       Lot Change Labels" · events: Click
- ComboBox Like_Lot_ID "Lot ID:" · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID AS Nursery_ID FROM (NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE = NMIS_PRODUCTS.END_PRODUCT_TYPE) INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_` · default `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![CN]`

## Form: NMIS_PROCESS_QUALITY_COUNTS subform
- **Caption:** NMIS_PROCESSING_QUALITY_COUNTS subform
- **Menu path:** Switchboard › NMIS_PROCESS_QUALITY_SAMPLES › NMIS_PROCESS_QUALITY_COUNTS subform
- **Record source:** SELECT [NMIS_PROCESSING_QI_COUNTS].[ORDER_CN], [NMIS_PROCESSING_QI_COUNTS].[COUNT_DATE], [NMIS_PROCESSING_QI_COUNTS].[COUNT_TIME], [NMIS_PROCESSING_QI_COUNTS].[COUNT_DESIRED], [NMIS_PROCESSING_QI_COUNTS].[COUNT_ACTUAL] FROM NMIS_PROCESSING_QI_COUNTS;
- **Backend tables:** NMIS_ORDERS, NMIS_PROCESSING_QI_COUNTS
- **Migration:** 0 of 5 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox COUNT_DATE = `COUNT_DATE` · default `Date()`
- TextBox COUNT_TIME = `COUNT_TIME`
- TextBox COUNT_DESIRED = `COUNT_DESIRED`
- TextBox COUNT_ACTUAL = `COUNT_ACTUAL`
- ComboBox ORDER_Index = `ORDER_CN` · rows: `SELECT [NMIS_ORDERS].[CN], Left$([CN],Len([CN])-7) AS [Order] FROM NMIS_ORDERS;` · default `=[Forms]![NMIS_PROCESS_QUALITY_SAMPLES]![Order_CN]`

## Form: NMIS_PROCESS_QUALITY_SAMPLES
- **Menu path:** Switchboard › NMIS_PROCESS_QUALITY_SAMPLES
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_ORDERS, NMIS_PRODUCTS, NMIS_PRODUCT_TYPES, NMIS_SPECIES_PRODUCTS
- **Subforms:** Form.Sample_Input_JHSN, Form.NMIS_PROCESS_QUALITY_SAMPLES Subform1, Form.NMIS_PROCESS_QUALITY_SAMPLES Subform2, Form.NMIS_PROCESS_QUALITY_SAMPLES_NOTES subform, Form.NMIS_PROCESS_QUALITY_COUNTS subform
- **Opens:** Form:NMIS_PROCESS_QUALITY_SAMPLES2, Form:Processing_QI_Daily_Checklist
- **Opened from:** Form_PROCESS_PAYMENT_ESTIMATE_INVOICE
- **Form events with code:** Open

**Controls**
- TextBox VIEW_FY "Like Order FY:" · default `=[Forms]![Switchboard]![FY_For_Reports]` · events: AfterUpdate, Change  [FormHeader]
- ComboBox Order_CN · rows: `SELECT NMIS_ORDERS.CN, IIf([Forms]![NMIS_PROCESS_QUALITY_SAMPLES]![View_by]=1,Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7) & "/" & [ID],[ID] & "/" & Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7)) AS [Lot ID/Order], [Client_Associate] & " " & [Associate_Name] AS Associate, NMIS_AGREEMENT_LOTS.TOTAL_REQUEST AS [Sow Req], NMIS_ORDERS.ORDER_AMT AS [Order], NMIS_ORDERS.OVERRUN_AMT, NMIS_OR` · events: Enter  [FormHeader]
- OptionGroup View_by · default `1` · events: AfterUpdate  [FormHeader]
- OptionButton Option47 "Lot ID/Order ID"  [FormHeader]
- OptionButton Option45 "Order ID/Lot ID"  [FormHeader]
- TabControl TabCtl70
- Subform Sample_Input_JHSN subform `Form.Sample_Input_JHSN` (master order_cn → child order) · tab Page93 · events: Exit
- TextBox Text96 · tab Page93
- TextBox Default_Date "Default Date:" · default `Date()` · tab Page93 · events: AfterUpdate
- Subform NMIS_PROCESS_QUALITY_SAMPLES Subform1 subform `Form.NMIS_PROCESS_QUALITY_SAMPLES Subform1` (master ORDER_CN → child ORDER_CN)
- Subform NMIS_PROCESS_QUALITY_SAMPLES Subform2 subform `Form.NMIS_PROCESS_QUALITY_SAMPLES Subform2` (master ORDER_CN → child ORDER_CN)
- Subform NMIS_PROCESSING_QI_NOTES subform subform `Form.NMIS_PROCESS_QUALITY_SAMPLES_NOTES subform` (master ORDER_CN → child ORDER_CN)
- Subform NMIS_PROCESSING_QUALITY_COUNTS subform subform `Form.NMIS_PROCESS_QUALITY_COUNTS subform` (master ORDER_CN → child ORDER_CN)
- CommandButton Open_Process_QI_Reports_Form "Quality Monitoring Reports..." · events: Click

## Form: NMIS_PROCESS_QUALITY_SAMPLES Subform1
- **Caption:** NMIS PROCESSING QUALITY  SAMPLES
- **Menu path:** Switchboard › NMIS_PROCESS_QUALITY_SAMPLES › NMIS_PROCESS_QUALITY_SAMPLES Subform1
- **Record source:** SELECT NMIS_PROCESSING_QI_SAMPLES.* FROM NMIS_PROCESSING_QI_SAMPLES ORDER BY [NMIS_PROCESSING_QI_SAMPLES].[ORDER_CN], [NMIS_PROCESSING_QI_SAMPLES].[SAMPLE_STATION], [NMIS_PROCESSING_QI_SAMPLES].[SAMPLE_MODE], [NMIS_PROCESSING_QI_SAMPLES].[SAMPLE_DATE], [NMIS_PROCESSING_QI_SAMPLES].[SAMPLE_TIME];
- **Backend tables:** NMIS_ORDERS, NMIS_PROCESSING_QI_SAMPLES
- **Opens:** Form:NMIS_PROCESS_QUALITY_SAMPLES2
- **Migration:** 0 of 28 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox SAMPLE_MODE "Sample Type:" = `SAMPLE_MODE` · default `"T"`
- TextBox SAMPLE_STATION "Sample Station:" = `SAMPLE_STATION` · default `"T1"`
- TextBox SAMPLE_DATE "Pack Date:" = `SAMPLE_DATE`
- TextBox SAMPLE_TIME "Sample Time:" = `SAMPLE_TIME` · default `"0700"`
- TextBox SAMPLE_SIZE "Sample Size:" = `SAMPLE_SIZE` · default `1`
- TextBox CALIPER_HALF "Caliper 1/2:" = `CALIPER_HALF`
- TextBox CALIPER "Caliper:" = `CALIPER`
- TextBox HEIGHT_HALF "Height 1/2:" = `HEIGHT_HALF`
- TextBox HEIGHT "Height:" = `HEIGHT`
- TextBox POOR_DEVELOPMENT "Poor Development:" = `POOR_DEVELOPMENT`
- TextBox OTHER_DEFECT "Other Defect:" = `OTHER_DEFECT`
- TextBox TOP_DISEASED "Diseased:" = `TOP_DISEASED`
- TextBox TOP_INSECT_DAMAGE "Insect Damage:" = `TOP_INSECT_DAMAGE`
- TextBox TOP_BOTTLE_BRUSH "Bottle Brush:" = `TOP_BOTTLE_BRUSH`
- TextBox TOP_MULTIPLE_TOPS "Multiple Tops:" = `TOP_MULTIPLE_TOPS`
- TextBox TOP_MECH_DAMAGE "Mechanical Damage:" = `TOP_MECH_DAMAGE`
- TextBox TOP_BURNT_NEEDLES "Burnt Needles:" = `TOP_BURNT_NEEDLES`
- TextBox ROOT_DISEASED "Diseased:" = `ROOT_DISEASED`
- TextBox ROOT_INSECT_DAMAGE "Insect Damage:" = `ROOT_INSECT_DAMAGE`
- TextBox ROOT_MECH_DAMAGE "Mechanical Damage:" = `ROOT_MECH_DAMAGE`
- TextBox ROOT_NAT_SHORT "Natural Short:" = `ROOT_NAT_SHORT`
- TextBox ROOT_SWEPT "Swept:" = `ROOT_SWEPT`
- TextBox PRUNE_INCIDENTALS "Prune: " = `PRUNE_INCIDENTALS`
- TextBox PRUNE_LONG "Long:" = `PRUNE_LONG`
- TextBox PRUNE_LONG_MARGINAL "Long Marginal:" = `PRUNE_LONG_MARGINAL`
- TextBox PRUNE_SHORT "Short:" = `PRUNE_SHORT`
- TextBox PRUNE_SHORT_MARGINAL "Short Marginal:" = `PRUNE_SHORT_MARGINAL`
- ComboBox ORDER_CN "Order ID:" = `ORDER_CN` · rows: `SELECT [NMIS_ORDERS].[CN], Left$([CN],(Len([CN])-7)) AS [ORDER] FROM NMIS_ORDERS;` · default `=[Forms]![NMIS_PROCESS_QUALITY_SAMPLES]![Order_CN]`

## Form: NMIS_PROCESS_QUALITY_SAMPLES Subform2
- **Caption:** Process_Quality subform9
- **Menu path:** Switchboard › NMIS_PROCESS_QUALITY_SAMPLES › NMIS_PROCESS_QUALITY_SAMPLES Subform2
- **Record source:** SELECT NMIS_PROCESSING_QI_SAMPLES.* FROM NMIS_PROCESSING_QI_SAMPLES ORDER BY NMIS_PROCESSING_QI_SAMPLES.SAMPLE_STATION, NMIS_PROCESSING_QI_SAMPLES.SAMPLE_MODE, NMIS_PROCESSING_QI_SAMPLES.SAMPLE_DATE, NMIS_PROCESSING_QI_SAMPLES.SAMPLE_TIME;
- **Backend tables:** NMIS_PROCESSING_QI_SAMPLES
- **Migration:** 0 of 27 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox Sample Type = `SAMPLE_MODE`
- TextBox Station = `SAMPLE_STATION`
- TextBox Date = `SAMPLE_DATE`
- TextBox Time = `SAMPLE_TIME`
- TextBox Size = `SAMPLE_SIZE`
- TextBox 1/2 Cal = `CALIPER_HALF`
- TextBox Cal = `CALIPER`
- TextBox 1/2 Ht = `HEIGHT_HALF`
- TextBox Ht = `HEIGHT`
- TextBox Poor Dev = `POOR_DEVELOPMENT`
- TextBox Other = `OTHER_DEFECT`
- TextBox Disease = `TOP_DISEASED`
- TextBox Ins Dmg = `TOP_INSECT_DAMAGE`
- TextBox Bttl Brsh = `TOP_BOTTLE_BRUSH`
- TextBox Multi Top = `TOP_MULTIPLE_TOPS`
- TextBox Mec. Dmg = `TOP_MECH_DAMAGE`
- TextBox Brnt Ndls = `TOP_BURNT_NEEDLES`
- TextBox Rt Dis = `ROOT_DISEASED`
- TextBox ROOT_INSECT_DAMAGE = `ROOT_INSECT_DAMAGE`
- TextBox Mch Dmg = `ROOT_MECH_DAMAGE`
- TextBox Nat Shrt = `ROOT_NAT_SHORT`
- TextBox Swpt Rts = `ROOT_SWEPT`
- TextBox Incidental = `PRUNE_INCIDENTALS`
- TextBox Long = `PRUNE_LONG`
- TextBox Lng Marg = `PRUNE_LONG_MARGINAL`
- TextBox Short = `PRUNE_SHORT`
- TextBox Shrt Marg = `PRUNE_SHORT_MARGINAL`

## Form: NMIS_PROCESS_QUALITY_SAMPLES_NOTES subform
- **Caption:** NMIS_PROCESSING_QI_NOTES subform
- **Menu path:** Switchboard › NMIS_PROCESS_QUALITY_SAMPLES › NMIS_PROCESS_QUALITY_SAMPLES_NOTES subform
- **Record source:** SELECT [NMIS_PROCESSING_QI_NOTES].[ORDER_CN], [NMIS_PROCESSING_QI_NOTES].[DATE], [NMIS_PROCESSING_QI_NOTES].[TIME], [NMIS_PROCESSING_QI_NOTES].[NOTE] FROM NMIS_PROCESSING_QI_NOTES ORDER BY [NMIS_PROCESSING_QI_NOTES].[DATE], [NMIS_PROCESSING_QI_NOTES].[TIME], [NMIS_PROCESSING_QI_NOTES].[NOTE];
- **Backend tables:** NMIS_PROCESSING_QI_NOTES
- **Migration:** 0 of 3 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox DATE = `DATE`
- TextBox TIME = `TIME`
- TextBox NOTE = `NOTE`

## Form: NMIS_PROCESSING_Labels_ORDERS_ID_MC Subform
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_PROCESS_LABELS_subform1 › NMIS_PROCESSING_ORDERS_SVCS_Labeler › NMIS_PROCESSING_Labels_ORDERS_ID_MC Subform
- **Backend tables:** NMIS_ASSOCIATES
- **Migration:** 0 of 5 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox FISCAL_YEAR_USED = `FISCAL_YEAR_USED` · default `=[Forms]![Switchboard]![NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_NUMBER]`  [FormHeader]
- TextBox MGMT_CODE = `MGMT_CODE` · events: DblClick
- TextBox MGMT_CODE_PCT = `MGMT_CODE_PCT`
- TextBox ORDER_CN = `ORDER_CN` · default `=[Forms]![NMIS_PROCESSING_ORDERS_BY_ID]![NMIS_PROCESSING_ORDERS_ID subform].[Form]![CN]`
- ComboBox CLIENT_ASSOCIATE = `CLIENT_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;` · events: DblClick
- TextBox PCT_TOTAL "% Total" = `=Sum([MGMT_CODE_PCT])`  [FormFooter]

## Form: NMIS_PROCESSING_ORDERS_ID_GRADES Subform
- **Caption:** NMIS_PROCESSING_ORDERS_GRADES Subform
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › NMIS_PROCESSING_ORDERS_ID_GRADES Subform
- **Record source:** NMIS_ORDER_GRADES
- **Backend tables:** NMIS_ORDER_GRADES, NMIS_PRODUCT_GRADES
- **Form events with code:** BeforeUpdate
- **Migration:** 0 of 3 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ORDER_CN = `ORDER_CN` · default `=[Forms]![NMIS_PROCESSING_ORDERS_BY_ID]![NMIS_PROCESSING_ORDERS_ID subform].[Form]![CN]`  [FormHeader]
- TextBox GRADE_PCT = `GRADE_PCT` · default `100`
- ComboBox Combo10 = `PRODUCT_GRADE` · rows: `SELECT NMIS_PRODUCT_GRADES.PRODUCT_GRADE FROM NMIS_PRODUCT_GRADES;`
- TextBox TOTAL_PCT "% Total" = `=Sum([GRADE_PCT])`  [FormFooter]

## Form: NMIS_PROCESSING_ORDERS_ID_INFO_New_Orders subform
- **Caption:** NMIS_ORDER_ID_INFO
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_ID_INFO_New_Orders subform
- **Record source:** SELECT [**NMIS_ORDER_ID_INFO_ORDERS_NEW_TABLE].CN, [**NMIS_ORDER_ID_INFO_ORDERS_NEW_TABLE].TOTAL_REQUEST, [**NMIS_ORDER_ID_INFO_ORDERS_NEW_TABLE].PRODUCT_DESC, NMIS_LOT_SURPLUS2.NET_INV, [**NMIS_ORDER_ID_INFO_ORDERS_NEW_TABLE].GROSS_INV, [**NMIS_ORDER_ID_INFO_ORDERS_NEW_TABLE].SPEC_MIN, [**NMIS_ORDER_ID_INFO_ORDERS_NEW_TABLE].SPEC_MAX, [**NMIS_ORDER_ID_INFO_ORDERS_NEW_TABLE].CALIPER_MIN, [**NMIS_ORDER_ID_INFO_ORDERS_NEW_TABLE].SOURCE, IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]<>"040207",[**NMIS_ORDER_ID_INFO_ORDERS_NEW_TABLE].[ID_SOURCEB],[ID_LPN]) AS ID_SOURCEB, NMIS_LOT_SURPLUS2.SUM_ORDER, NMIS_LOT_SURPLUS2.LOT_SURPLUS FROM NMIS_LOT_SURPLUS2 INNER JOIN [**NMIS_ORDER_ID_INFO_ORDERS_NEW_TABLE] ON NMIS_LOT_SURPLUS2.CN = [**NMIS_ORDER_ID_INFO_ORDERS_NEW_TABLE].CN;
- **Migration:** 0 of 11 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox SOURCE_CODE "Source:" = `ID_SOURCEB`
- TextBox PRODUCT_DESC "Stock Type:" = `PRODUCT_DESC`
- TextBox NET_INV "Net:" = `NET_INV`
- TextBox GROSS_INV "Inventory     Gross:" = `GROSS_INV`
- TextBox AGREEMENT_LOT_CN = `AGREEMENT_LOT_CN`
- TextBox SPEC_MIN = `SPEC_MIN`
- TextBox SPEC_MAX = `SPEC_MAX`
- TextBox CALIPER_MIN = `CALIPER_MIN`
- TextBox TOTAL_REQUEST "Sow Request:" = `TOTAL_REQUEST`
- TextBox TOTAL_ORDER_AMT "Total Orders for Lot:" = `SUM_ORDER`
- TextBox SURPLUS = `LOT_SURPLUS`

## Form: NMIS_PROCESSING_ORDERS_ID_INFO_REVIEW_Orders subform
- **Caption:** NMIS_ORDER_ID_INFO
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › NMIS_PROCESSING_ORDERS_ID_UPDATE subform › NMIS_PROCESSING_ORDERS_ID_INFO_REVIEW_Orders subform
- **Record source:** SELECT [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].CN, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].TOTAL_REQUEST, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].PRODUCT_DESC, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].NET_INV, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].GROSS_INV, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].SPEC_MIN, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].SPEC_MAX, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].CALIPER_MIN, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].SOURCE, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].ID_SOURCEB, NMIS_LOT_SURPLUS2.SUM_ORDER, NMIS_LOT_SURPLUS2.LOT_SURPLUS FROM NMIS_LOT_SURPLUS2 INNER JOIN [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE] ON NMIS_LOT_SURPLUS2.CN = [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].CN;
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox NET_INV " Inv Net:" = `NET_INV`
- TextBox AGREEMENT_LOT_CN = `AGREEMENT_LOT_CN`
- TextBox TOTAL_ORDER_AMT "Total Orders for Lot:" = `SUM_ORDER`
- TextBox LOT_SURPLUS "Balance:" = `LOT_SURPLUS`

## Form: NMIS_PROCESSING_ORDERS_ID_INFO_Review_Orders_Form
- **Caption:** Order ID Info
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › NMIS_PROCESSING_ORDERS_ID_UPDATE subform › NMIS_PROCESSING_ORDERS_ID_INFO_Review_Orders_Form
- **Record source:** SELECT [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].CN, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].TOTAL_REQUEST, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].PRODUCT_DESC, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].NET_INV, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].GROSS_INV, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].SPEC_MIN, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].SPEC_MAX, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].CALIPER_MIN, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].SOURCE, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].ID_SOURCEB, NMIS_LOT_SURPLUS2.SUM_ORDER, NMIS_LOT_SURPLUS2.LOT_SURPLUS, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].ID, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].LastOfNOTE, [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].MaxOfACTIVITY_DATE AS ACTIVITY_DATE FROM NMIS_LOT_SURPLUS2 INNER JOIN [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE] ON NMIS_LOT_SURPLUS2.CN = [**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].CN WHERE ((([**NMIS_ORDER_ID_INFO_ORDERS_Review_TABLE].CN)=[Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![AGREEMENT_LOT_CN]));
- **Opened from:** Form_NMIS_PROCESSING_ORDERS_ID_UPDATE subform
- **Migration:** 0 of 15 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox SOURCE_CODE "Source:" = `ID_SOURCEB`
- TextBox PRODUCT_DESC "Stock Type:" = `PRODUCT_DESC`
- TextBox NET_INV "Net:" = `NET_INV`
- TextBox GROSS_INV "Gross:" = `GROSS_INV`
- TextBox AGREEMENT_LOT_CN = `AGREEMENT_LOT_CN`
- TextBox SPEC_MIN = `SPEC_MIN`
- TextBox SPEC_MAX = `SPEC_MAX`
- TextBox CALIPER_MIN = `CALIPER_MIN`
- TextBox TOTAL_REQUEST "Sow Request:" = `TOTAL_REQUEST`
- TextBox TOTAL_ORDER_AMT "Total Orders for Lot:" = `SUM_ORDER`
- TextBox SURPLUS = `LOT_SURPLUS`
- TextBox Text108 = `ID`
- TextBox Text110 "Balance Available:" = `LOT_SURPLUS`
- TextBox Inv_Note "Note:" = `LastOfNOTE`
- TextBox Inv_Date "Date:" = `ACTIVITY_DATE`

## Form: NMIS_PROCESSING_ORDERS_ID_MC Subform
- **Menu path:** Switchboard › NMIS_ORDER_BILL_ADJUSTMENTS › NMIS_PROCESSING_ORDERS_ID_MC Subform
- **Backend tables:** NMIS_ASSOCIATES
- **Migration:** 0 of 6 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox FISCAL_YEAR_USED = `FISCAL_YEAR_USED`  [FormHeader]
- TextBox MGMT_CODE = `MGMT_CODE`
- TextBox MGMT_CODE_PCT = `MGMT_CODE_PCT`
- TextBox ORDER_CN = `ORDER_CN` · default `=[Forms]![NMIS_PROCESSING_ORDERS_BY_ID]![NMIS_PROCESSING_ORDERS_ID subform].[Form]![CN]`
- ComboBox CLIENT_ASSOCIATE = `CLIENT_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;`
- TextBox Combo104 = `FISCAL_YEAR_USED` · default `=[Forms]![Switchboard]![FY_For_Reports]`
- TextBox PCT_TOTAL "% Total" = `=Sum([MGMT_CODE_PCT])`  [FormFooter]

## Form: NMIS_PROCESSING_ORDERS_ID_SVCS Subform
- **Caption:** NMIS_ORDER_SERVICES
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_PROCESS_LABELS_subform1 › NMIS_PROCESSING_ORDERS_SVCS_Labeler › NMIS_PROCESSING_ORDERS_ID_SVCS Subform
- **Record source:** NMIS_ORDER_SERVICES
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_ORDER_SERVICES
- **Migration:** 0 of 5 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ORDER_CN = `ORDER_CN` · default `=[Forms]![NMIS_PROCESSING_ORDERS_BY_ID]![NMIS_PROCESSING_ORDERS_ID subform].[Form]![CN]`  [FormHeader]
- TextBox RecordCount = `=Count([ACTIVITY_CODE])`  [FormHeader]
- ComboBox ACTIVITY_CODE = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.DEFAULT_CONTRACT_ITEM FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SPCSVC")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;`
- TextBox CHARGE_PER_UNIT_OVERRIDE = `CHARGE_PER_UNIT_OVERRIDE`
- TextBox CHARGE_PER_AMT_OVERRIDE = `CHARGE_PER_AMT_OVERRIDE`
- TextBox CONTRACT_ITEM = `CONTRACT_ITEM` · events: Enter

## Form: NMIS_PROCESSING_ORDERS_ID_SVCS2 Subform
- **Caption:** NMIS_ORDER_SERVICES
- **Menu path:** Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_ID_ACTIVITIES_ACTIVITIES3_subform › Property_Module_Form_Opening Module.Property_Module_Form_Open › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2 › NMIS_PROCESSING_ORDERS_ID_SVCS2 Subform
- **Record source:** NMIS_ORDER_SERVICES
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_ORDER_SERVICES
- **Migration:** 0 of 5 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ORDER_CN = `ORDER_CN` · default `=[Forms]![NMIS_PROCESSING_ORDERS_BY_ID]![NMIS_PROCESSING_ORDERS_ID subform].[Form]![CN]`  [FormHeader]
- TextBox RecordCount = `=Count([ACTIVITY_CODE])`  [FormHeader]
- ComboBox ACTIVITY_CODE = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.DEFAULT_CONTRACT_ITEM FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SPCSVC")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;`
- TextBox CHARGE_PER_UNIT_OVERRIDE = `CHARGE_PER_UNIT_OVERRIDE`
- TextBox CHARGE_PER_AMT_OVERRIDE = `CHARGE_PER_AMT_OVERRIDE`
- ComboBox CONTRACT_ITEM = `CONTRACT_ITEM` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.DEFAULT_CONTRACT_ITEM FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.ACTIVITY_CODE)=[Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2]![Child102].[Form]![ACTIVITY_CODE]));` · events: Enter

## Form: NMIS_PROCESSING_ORDERS_ID_SVCS_Review_Update Subform
- **Caption:** NMIS_ORDER_SERVICES
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › NMIS_PROCESSING_ORDERS_ID_SVCS_Review_Update Subform
- **Record source:** NMIS_ORDER_SERVICES
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_ORDER_SERVICES
- **Form events with code:** BeforeUpdate
- **Migration:** 0 of 5 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ORDER_CN = `ORDER_CN` · default `=[Forms]![NMIS_PROCESSING_ORDERS_BY_ID]![NMIS_PROCESSING_ORDERS_ID subform].[Form]![CN]`  [FormHeader]
- TextBox RecordCount = `=Count([ACTIVITY_CODE])`  [FormHeader]
- ComboBox ACTIVITY_CODE = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SPCSVC")) OR (((NMIS_ACTIVITY_CODES.ACTIVITY_CODE) In ("DSTROY","SCSUP"))) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;`
- TextBox CHARGE_PER_UNIT_OVERRIDE = `CHARGE_PER_UNIT_OVERRIDE`
- TextBox CHARGE_PER_AMT_OVERRIDE = `CHARGE_PER_AMT_OVERRIDE`
- ComboBox CONTRACT_ITEM = `CONTRACT_ITEM` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.DEFAULT_CONTRACT_ITEM FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.ACTIVITY_CODE)=[Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![Child102].[Form]![ACTIVITY_CODE]));` · events: Enter

## Form: NMIS_PROCESSING_ORDERS_ID_UPDATE subform
- **Caption:** NMIS_PROCESSING_ORDERS subform
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › NMIS_PROCESSING_ORDERS_ID_UPDATE subform
- **Record source:** NMIS_ORDERS
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_CONTACTS, NMIS_CONTACT_LINKS, NMIS_CONTRACT_ITEMS, NMIS_ORDERS
- **Subforms:** Form.NMIS_PROCESSING_ORDERS_ID_INFO_REVIEW_Orders subform
- **Opens:** Form:NMIS_CONTACTS, Form:NMIS_PROCESSING_ORDERS_ID_INFO_Review_Orders_Form
- **Form events with code:** BeforeUpdate
- **Migration:** 4 of 25 bound fields mapped. Main GrowHub screens: /orders/new (3)

**Controls**
- TextBox ORDER_AMT = `ORDER_AMT` · events: AfterUpdate, DblClick, Enter
- TextBox OVERRUN_AMT = `OVERRUN_AMT` · events: AfterUpdate, DblClick, Enter
- CheckBox OVERRUN_ALL_Check = `OVERRUN_ALL` · default `[n]`
- TextBox SPEC_MIN "Min" = `SPEC_MIN`
- TextBox SPEC_MAX "Max" = `SPEC_MAX`
- TextBox CALIPER_MIN "Caliper" = `CALIPER_MIN`
- TextBox ROOT_PRUNE_TARGET = `ROOT_PRUNE_TARGET`
- ComboBox CONTACT_CN "Primary" = `CONTACT_CN` · rows: `SELECT NMIS_CONTACTS.CN, [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)") AS name, Contact_Phone_Number_Primary.PHONE_NUMBER FROM Contact_Phone_Number_Primary RIGHT JOIN (NMIS_CONTACTS LEFT JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN) ON Contact_Phone_Number_Primary.CONTACT_CN = NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((NMIS_CONTACTS.HISTORICAL) Like IIf(Not ([NMIS_C` · events: AfterUpdate → GrowHub grow_request.contact (blank)
- ComboBox SECONDARY_CONTACT_CN "Secondary" = `SECONDARY_CONTACT_CN` · rows: `SELECT NMIS_CONTACTS.CN, [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)") AS name, Contact_Phone_Number_Primary.PHONE_NUMBER FROM Contact_Phone_Number_Primary RIGHT JOIN (NMIS_CONTACTS LEFT JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN) ON Contact_Phone_Number_Primary.CONTACT_CN = NMIS_CONTACTS.CN WHERE (((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=IIf(Left([Forms]![NMIS_PR` · events: AfterUpdate, DblClick, Enter
- TextBox DESIRED_DATE "Desired Date" = `DESIRED_DATE` → GrowHub order_cycle_planning.requestDate (blank)
- TextBox DESTINATION_ASSOCIATE "Destination" = `DESTINATION_ASSOCIATE`
- TextBox CLIENT_NOTE "Client Comments" = `CLIENT_NOTE` · events: DblClick → GrowHub grow_request.notes (blank)
- TextBox NURSERY_NOTE "Nursery Comments" = `NURSERY_NOTE` · events: DblClick
- ComboBox ACTIVITY_CODE "Order Code" = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ORDER")) OR (((NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="lotinv")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;`
- ComboBox CLIENT_ASSOCIATE "Associate" = `CLIENT_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME_UPPER FROM NMIS_ASSOCIATES;` · events: DblClick, Enter, Exit → GrowHub grow_request.clientUuid (blank)
- ComboBox CONTRACT_ITEM "Contract Item" = `CONTRACT_ITEM` · rows: `SELECT NMIS_CONTRACT_ITEMS.FISCAL_YEAR, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC FROM NMIS_CONTRACT_ITEMS WHERE (((NMIS_CONTRACT_ITEMS.FISCAL_YEAR)=Forms!Switchboard!NMIS_FISCAL_YEAR_Current.Form!FISCAL_YEAR_NUMBER));`
- TextBox Text608 "Total" = `=Round(NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0),3)`
- TextBox CN = `CN` · default `=[New_CN]`
- TextBox MODIFIED_DATE = `MODIFIED_DATE`
- TextBox MODIFIED_BY = `MODIFIED_BY`
- TextBox INSERTED_BY = `INSERTED_BY` · default `=[Forms]![Switchboard]![Current_User_Name]`
- TextBox INSERTED_DATE = `INSERTED_DATE` · default `Date()`
- TextBox FISCAL_YEAR "FY:" = `FISCAL_YEAR`
- CommandButton Open_NMIS_PROCESSING_ORDERS_ID_INFO_Review_Orders_Form "Click to View Order/Inventory Info" · events: Click
- ComboBox AGREEMENT_LOT_CN "Agreement Lot:" = `AGREEMENT_LOT_CN` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, Species_Products_with_SizeSpecString.Species_Products_String_Longest FROM Species_Products_with_SizeSpecString INNER JOIN NMIS_AGREEMENT_LOTS ON Species_Products_with_SizeSpecString.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN ORDER BY NMIS_AGREEMENT_LOTS.ID;` · events: DblClick, Enter
- TextBox Contact_CN_Backup
- Subform NMIS_PROCESSING_ORDERS_ID_INFO_REVIEW_Orders subform subform `Form.NMIS_PROCESSING_ORDERS_ID_INFO_REVIEW_Orders subform` (master AGREEMENT_LOT_CN → child CN)
- TextBox Order_Label = `=IIf([Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![Product_Group]="NPROPAGULE","Harv BF","Amount")`
- TextBox Overrun_Label = `="O'run Amt/All"`
- TextBox ROOT_PRUNE_MIN = `ROOT_PRUNE_MIN`
- CheckBox BE_AT_PACK = `BE_AT_PACK`

## Form: NMIS_PROCESSING_ORDERS_ID_UPDATE2 subform
- **Caption:** NMIS_PROCESSING_ORDERS subform
- **Menu path:** Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_ID_ACTIVITIES_ACTIVITIES3_subform › Property_Module_Form_Opening Module.Property_Module_Form_Open › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2 › NMIS_PROCESSING_ORDERS_ID_UPDATE2 subform
- **Record source:** NMIS_ORDERS
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_ASSOCIATES, NMIS_CONTACTS, NMIS_CONTACT_LINKS, NMIS_CONTRACT_ITEMS, NMIS_FISCAL_YEARS, NMIS_ORDERS
- **Opens:** Form:NMIS_CONTACTS
- **Form events with code:** BeforeUpdate
- **Migration:** 4 of 24 bound fields mapped. Main GrowHub screens: /orders/new (3)

**Controls**
- TextBox ORDER_AMT "Amount" = `ORDER_AMT`
- TextBox OVERRUN_AMT "O'run Amt/All" = `OVERRUN_AMT`
- CheckBox OVERRUN_ALL_Check = `OVERRUN_ALL` · default `[n]`
- ComboBox CONTACT_CN "Primary" = `CONTACT_CN` · rows: `SELECT NMIS_CONTACTS.CN, NMIS_CONTACTS.CONTACT_NAME_UPPER, NMIS_CONTACT_LINKS.LINK_ASSOCIATE FROM NMIS_CONTACTS INNER JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=[Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2]![NMIS_PROCESSING_ORDERS_ID_UPDATE2 subform].[Form]![CLIENT_ASSOCIATE]));` → GrowHub grow_request.contact (blank)
- ComboBox SECONDARY_CONTACT_CN "Secondary" = `SECONDARY_CONTACT_CN` · rows: `SELECT NMIS_CONTACTS.CN, NMIS_CONTACTS.CONTACT_NAME_UPPER, NMIS_CONTACT_LINKS.LINK_ASSOCIATE FROM NMIS_CONTACTS INNER JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=[Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2]![NMIS_PROCESSING_ORDERS_ID_UPDATE2 subform].[Form]![CLIENT_ASSOCIATE]));` · events: DblClick
- TextBox DESIRED_DATE "Desired Date" = `DESIRED_DATE` → GrowHub order_cycle_planning.requestDate (blank)
- TextBox DESTINATION_ASSOCIATE "Destination" = `DESTINATION_ASSOCIATE`
- TextBox CLIENT_NOTE "Client Comments" = `CLIENT_NOTE` → GrowHub grow_request.notes (blank)
- TextBox NURSERY_NOTE "Nursery Comments" = `NURSERY_NOTE`
- ComboBox ACTIVITY_CODE "Order Code" = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ORDER")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;`
- ComboBox CLIENT_ASSOCIATE "Associate" = `CLIENT_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME_UPPER FROM NMIS_ASSOCIATES;` · events: DblClick, Enter → GrowHub grow_request.clientUuid (blank)
- ComboBox CONTRACT_ITEM "Contract Item" = `CONTRACT_ITEM` · rows: `SELECT NMIS_CONTRACT_ITEMS.FISCAL_YEAR, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC FROM NMIS_CONTRACT_ITEMS WHERE (((NMIS_CONTRACT_ITEMS.FISCAL_YEAR)=Forms!Switchboard!NMIS_FISCAL_YEAR_Current.Form!FISCAL_YEAR_NUMBER));`
- TextBox Text608 "Total" = `=Round(NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0),3)`
- TextBox CN = `CN` · default `=[New_CN]`
- TextBox MODIFIED_DATE = `MODIFIED_DATE` · default `Date()`
- TextBox MODIFIED_BY = `MODIFIED_BY`
- TextBox INSERTED_BY = `INSERTED_BY` · default `=[Forms]![Switchboard]![Current_User_Name]`
- TextBox INSERTED_DATE = `INSERTED_DATE` · default `Date()`
- TextBox Text610 = `=Left$([CN],Len([CN])-7)`
- ComboBox FISCAL_YEAR "FY:" = `FISCAL_YEAR` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER DESC;`
- TextBox SPEC_MIN "Min" = `SPEC_MIN`
- TextBox SPEC_MAX "Max" = `SPEC_MAX`
- TextBox CALIPER_MIN "Caliper" = `CALIPER_MIN`
- TextBox ROOT_PRUNE_TARGET "Prune" = `ROOT_PRUNE_TARGET`
- TextBox ROOT_PRUNE_MIN = `ROOT_PRUNE_MIN`
- CheckBox BE_AT_PACK = `BE_AT_PACK`

## Form: NMIS_PROCESSING_ORDERS_INPUT
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_CONTACTS, NMIS_CONTACT_LINKS, NMIS_CONTRACT_ITEMS
- **Subforms:** Form.NMIS_PROCESSING_ORDERs_INPUT_SVCS subform, Form.NMIS_PROCESSING_ORDERs_INPUT_GRADES subform, Form.NMIS_PROCESSING_ORDERS_ID_INFO_New_Orders subform, Form.NMIS_PROCESSING_ORDERS_INPUT_MC subform
- **Opens:** Form:NMIS_ASSOCIATES, Form:NMIS_CONTACTS, Form:NMIS_ORDERS_NEW_AGREEMENT_INFO, Form:ORDER_FORM mt_040207_input, Form:ORDER_FORM mt_050357_input, Form:PRODUCT_STORAGE_RECORD_FROM_ORDER_INPUT_FORM, Form:order_form_from_order_input mt, Report:NMIS_CONTACTS, Report:NMIS_ORDERS_NEW_AGREEMENT_INFO, Report:ORDER_FORM mt_040207_input, Report:ORDER_FORM mt_050357_input, Report:PRODUCT_STORAGE_RECORD_FROM_ORDER_INPUT_FORM, Report:order_form_from_order_input mt
- **Opened from:** Form_NMIS_PROCESSING_ORDERS_BY_CLIENT, Form_NMIS_PROCESSING_ORDERS_BY_ID
- **Form events with code:** AfterInsert, AfterUpdate, Current, Open
- **Migration:** 0 of 29 bound fields mapped. Main GrowHub screens: none

**Controls**
- CommandButton cmdExit "Exit" · events: Click  [FormHeader]
- CommandButton CmdAddRec "Add Another Order" · events: Click  [FormHeader]
- TextBox Default_Client_Associate  [FormHeader]
- ComboBox Default_Order_Activity_Code "Default Order Act Code:" · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ORDER")) OR (((NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="lotinv")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;` · default `"PACK"`  [FormHeader]
- ComboBox Default_Special_Service_Activity_Code "Default Special Service Act Code:" · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SPCSVC")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;` · default `"STDSVC"`  [FormHeader]
- TextBox Default_Job_Code "Default Job Code:" · events: Exit  [FormHeader]
- TextBox Default_Contact_CN  [FormHeader]
- TextBox Last_Contract_Item  [FormHeader]
- TextBox Default_Contact2_CN  [FormHeader]
- TextBox ORDER_AMT "  Amount" = `ORDER_AMT` · events: Change, DblClick, Enter, Exit
- TextBox OVERRUN_AMT "O'run Amt" = `OVERRUN_AMT`
- CheckBox OVERRUN_ALL_Check = `OVERRUN_ALL` · default `[n]` · events: AfterUpdate
- TextBox SPEC_MIN "Min" = `SPEC_MIN`
- TextBox SPEC_MAX "Max" = `SPEC_MAX`
- TextBox CALIPER_MIN "Caliper" = `CALIPER_MIN`
- TextBox ROOT_PRUNE_TARGET = `ROOT_PRUNE_TARGET`
- ComboBox CONTACT_CN "Primary" = `CONTACT_CN` · rows: `SELECT NMIS_CONTACTS.CN, [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)") AS name, Contact_Phone_Number_Primary.PHONE_NUMBER FROM (Contact_Phone_Number_Primary RIGHT JOIN NMIS_CONTACTS ON Contact_Phone_Number_Primary.CONTACT_CN = NMIS_CONTACTS.CN) LEFT JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=IIf(Left([Forms]![NMIS_PR` · events: AfterUpdate, Exit
- ComboBox SECONDARY_CONTACT_CN "Secondary" = `SECONDARY_CONTACT_CN` · rows: `SELECT NMIS_CONTACTS.CN, [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)") AS name, Contact_Phone_Number_Primary.PHONE_NUMBER FROM Contact_Phone_Number_Primary RIGHT JOIN (NMIS_CONTACTS LEFT JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN) ON Contact_Phone_Number_Primary.CONTACT_CN = NMIS_CONTACTS.CN WHERE (((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=IIf(Left([Forms]![NMIS_PR` · events: AfterUpdate, DblClick, Enter, Exit
- TextBox DESIRED_DATE "Desired Date" = `DESIRED_DATE`
- TextBox DESTINATION_ASSOCIATE "Destination" = `DESTINATION_ASSOCIATE` · events: Enter
- TextBox CLIENT_NOTE "Client Comments" = `CLIENT_NOTE` · events: DblClick
- TextBox NURSERY_NOTE "Nursery Comments" = `NURSERY_NOTE` · events: DblClick
- ComboBox ACTIVITY_CODE "Activity Code" = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ORDER")) OR (((NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="lotinv")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;`
- ComboBox AGREEMENT_LOT_CN "Nursery ID:" = `AGREEMENT_LOT_CN` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, Species_Products_with_SizeSpecString.Species_Products_String_Longest, NMIS_AGREEMENT_LOTS.END_FY FROM NMIS_AGREEMENT_LOTS INNER JOIN Species_Products_with_SizeSpecString ON NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN = Species_Products_with_SizeSpecString.CN GROUP BY NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, Species_Products_with_SizeSpecStri` · events: DblClick, Enter
- ComboBox CLIENT_ASSOCIATE "Associate:" = `CLIENT_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Historical)") AS name, NMIS_ASSOCIATES.HISTORICAL FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.HISTORICAL) Like IIf(Not ([NMIS_ASSOCIATES].[HISTORICAL])=IsNull([Forms]![NMIS_PROCESSING_ORDERS_INPUT]![CLIENT_ASSOCIATE]),"*",False)));` · default `=[Default_Client_Associate]` · events: AfterUpdate, DblClick, Enter, Exit
- Subform NMIS_PROCESSING_ORDERs_INPUT_SVCS subform "Special Services" subform `Form.NMIS_PROCESSING_ORDERs_INPUT_SVCS subform` (master CN → child ORDER_CN) · events: Enter
- Subform NMIS_PROCESSING_ORDERs_INPUT_GRADES subform "Product Grades" subform `Form.NMIS_PROCESSING_ORDERs_INPUT_GRADES subform` (master CN → child ORDER_CN) · events: Enter
- Subform NMIS_PROCESSING_ORDERS_ID_INFO subform subform `Form.NMIS_PROCESSING_ORDERS_ID_INFO_New_Orders subform` (master Agreement_Lot_CN → child CN)
- TextBox AMT_SURPLUS = `=IIf(IsNull([CN])," ",NZ([NMIS_PROCESSING_ORDERS_ID_INFO subform].[Form]![SURPLUS],"0"))`
- TextBox New_CN = `=[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code`
- TextBox CN = `CN`
- TextBox NURSERY_ASSOCIATE = `NURSERY_ASSOCIATE` · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]`
- TextBox FISCAL_YEAR = `FISCAL_YEAR` · default `=[Forms]![Switchboard]![FY_For_Reports]`
- CommandButton PrvwOrdrFrm "Preview Order Form" · events: Click
- CommandButton PrvwStrgRcrd "Preview Storage Record" · events: Click
- Subform NMIS_PROCESSING_ORDERS_INPUT_MC subform "Job Codes" subform `Form.NMIS_PROCESSING_ORDERS_INPUT_MC subform` (master CN → child ORDER_CN) · events: Enter
- CheckBox PROCESSING_ORDER = `PROCESSING_ORDER` · default `Yes`
- TextBox Index = `Index`
- ComboBox CONTRACT_ITEM "Pack Contract Item" = `CONTRACT_ITEM` · rows: `SELECT NMIS_CONTRACT_ITEMS.FISCAL_YEAR, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC FROM NMIS_CONTRACT_ITEMS WHERE (((NMIS_CONTRACT_ITEMS.FISCAL_YEAR)=[Forms]![Switchboard]![FY_For_Reports])) ORDER BY NMIS_CONTRACT_ITEMS.CONTRACT_ITEM;` · events: Enter
- TextBox Total_Order "   Total" = `=Round([ORDER_AMT]+NZ([OVERRUN_AMT],0),3)`
- TextBox Agreement_Lot_CN_for_Lot_Info
- TextBox OrderID = `=IIf(Not IsNull([CN]),Left$([CN],Len([CN])-7),Null)`
- ComboBox Client_Associate_Name = `CLIENT_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Historical)") AS name, NMIS_ASSOCIATES.HISTORICAL FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.HISTORICAL) Like IIf(Not ([NMIS_ASSOCIATES].[HISTORICAL])=IsNull("Forms]![NMIS_PROCESSING_ORDERS_INPUT]![CLIENT_ASSOCIATE]"),"*",False)));` · events: AfterUpdate, DblClick, Enter
- CheckBox Dont_Change_Order_On_Exit "Don't Change Order Amt on Exit" · default `True`
- TextBox Contact_CN_Backup
- TextBox ASSOCIATE_backup
- CommandButton Open_Sow_Req_Info "View Sow Req Info" · events: Click
- TextBox ROOT_PRUNE_MIN = `ROOT_PRUNE_MIN`
- CheckBox BE_AT_PACK = `BE_AT_PACK`
- TextBox INSERTED_BY = `INSERTED_BY` · default `=[Forms]![Switchboard]![Current_User_Name]`  [FormFooter]
- TextBox INSERTED_DATE = `INSERTED_DATE` · default `Date()`  [FormFooter]
- TextBox INSERTED_INSTANCE = `INSERTED_INSTANCE` · default `=[NURSERY_ASSOCIATE]`  [FormFooter]
- TextBox MODIFIED_DATE "Modified Date:" = `MODIFIED_DATE` · default `Date()`  [FormFooter]

## Form: NMIS_PROCESSING_ORDERS_INPUT_MC subform
- **Caption:** NMIS_ORDER_MGMT_CODES Subform
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT_MC subform
- **Record source:** NMIS_CLIENT_MGMT_CODES
- **Backend tables:** NMIS_CLIENT_MGMT_CODES
- **Migration:** 0 of 5 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox FISCAL_YEAR_USED = `FISCAL_YEAR_USED` · default `=[Forms]![Switchboard]![NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_NUMBER]`  [FormHeader]
- TextBox ORDER_CN = `ORDER_CN` · default `=[Forms]![NMIS_PROCESSING_ORDERS_BY_ID]![NMIS_PROCESSING_ORDERS_ID subform].[Form]![CN]`  [FormHeader]
- TextBox MGMT_CODE = `MGMT_CODE`
- TextBox MGMT_CODE_PCT = `MGMT_CODE_PCT`
- TextBox CLIENT_ASSOCIATE = `CLIENT_ASSOCIATE`
- TextBox PCT_TOTAL "% Total" = `=Sum([MGMT_CODE_PCT])`  [FormFooter]

## Form: NMIS_PROCESSING_ORDERS_INPUT_Propagule
- **Caption:** NMIS PROCESSING ORDERS INPUT - Progagule
- **Menu path:** Switchboard › Forms_Open Module.Open_Propagule_Orders_New_Form_From_Switchboard › NMIS_PROCESSING_ORDERS_INPUT_Propagule
- **Record source:** SELECT NMIS_ORDERS.* FROM (NMIS_ORDERS INNER JOIN Agreement_lot_End_Product_Group ON NMIS_ORDERS.AGREEMENT_LOT_CN = Agreement_lot_End_Product_Group.CN) INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN WHERE (((Agreement_lot_End_Product_Group.PRODUCT_GROUP)="propagule")) ORDER BY NMIS_ORDERS.Index;
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_AGREEMENTS, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_CONTACTS, NMIS_CONTACT_LINKS, NMIS_ORDERS, NMIS_PRODUCTS, NMIS_PRODUCT_TYPES, NMIS_SPECIES_PRODUCTS
- **Subforms:** Form.NMIS_PROCESSING_ORDERs_Propagule_INPUT_GRADES subform, Form.NMIS_PROCESSING_ORDERS_Propagule_INPUT_MC subform, Form.NMIS_PROCESSING_ORDERs_Propagule_INPUT_SVCS subform, Form.*propagule_Grow_Containers_for_Orders_table subform
- **Opens:** Form:NMIS_CONTACTS, Report:Close_Form, Report:ORDER_FORM, Report:PRODUCT_STORAGE_RECORD
- **Opened from:** Forms_Open Module
- **Form events with code:** AfterInsert, Open
- **Migration:** 4 of 20 bound fields mapped. Main GrowHub screens: /orders/new (3)

**Controls**
- CommandButton cmdExit "Exit" · events: Click  [FormHeader]
- CommandButton CmdAddRec "Add Record" · events: Click  [FormHeader]
- TextBox Default_Client_Associate  [FormHeader]
- ComboBox CONTACT_CN "Primary" = `CONTACT_CN` · rows: `SELECT NMIS_CONTACTS.CN, [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)") AS name FROM NMIS_CONTACTS LEFT JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=IIf(Left([Forms]![NMIS_PROCESSING_ORDERS_INPUT_Propagule].[Form]![CLIENT_ASSOCIATE],2)="99","990000",[Forms]![NMIS_PROCESSING_ORDERS_INPUT_Propagule].[Form]![CLIENT_ASSOCIA` → GrowHub grow_request.contact (blank)
- ComboBox SECONDARY_CONTACT_CN "Secondary" = `SECONDARY_CONTACT_CN` · rows: `SELECT NMIS_CONTACTS.CN, [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)") AS name, NMIS_CONTACT_LINKS.LINK_ASSOCIATE FROM NMIS_CONTACTS INNER JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=IIf(Left([Forms]![NMIS_PROCESSING_ORDERS_INPUT_Propagule].[Form]![CLIENT_ASSOCIATE],2)="99","990000",[Forms]![NMIS_PROCESSING_ORDERS_INP` · events: DblClick, Enter
- TextBox DESIRED_DATE "Desired Date" = `DESIRED_DATE` → GrowHub order_cycle_planning.requestDate (blank)
- TextBox DESTINATION_ASSOCIATE "Destination" = `DESTINATION_ASSOCIATE` · default `=[Default_Client_Associate]`
- TextBox CLIENT_NOTE "Client Comments" = `CLIENT_NOTE` → GrowHub grow_request.notes (blank)
- TextBox NURSERY_NOTE "Nursery Comments" = `NURSERY_NOTE`
- ComboBox ACTIVITY_CODE "Activity Code:" = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ORDER")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;` · default `"FAHVP"`
- ComboBox AGREEMENT_LOT_CN "Nursery ID:" = `AGREEMENT_LOT_CN` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENTS.CLIENT_ASSOCIATE, NMIS_CONTACTS.CONTACT_NAME_UPPER, IIf(IsNull([NMIS_ORDERS].[CN]),"No Order","Order") AS [Has Order] FROM (NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE = NMIS_PRODUCTS.END_PRODUCT_TYPE) INNER JOIN (NMIS_ORDERS RIGHT JOIN ((NMIS_AGREEMENTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER` · events: Enter
- ComboBox CLIENT_ASSOCIATE "Associate:" = `CLIENT_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME_UPPER FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE;` · default `=[Default_Client_Associate]` · events: Exit → GrowHub grow_request.clientUuid (blank)
- TextBox New_CN = `=[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code`
- TextBox CN = `CN`
- TextBox NURSERY_ASSOCIATE = `NURSERY_ASSOCIATE` · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]`
- TextBox FISCAL_YEAR = `FISCAL_YEAR` · default `=[Forms]![Switchboard]![NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_NUMBER]`
- CheckBox PROCESSING_ORDER = `PROCESSING_ORDER` · default `Yes`
- TextBox Index = `Index`
- TextBox Agreement_Lot_CN_for_Lot_Info
- TextBox Text626 = `=IIf(Not IsNull([CN]),"Order ID: " & Left$([CN],Len([CN])-7),Null)`
- TextBox ORDER_AMT "Bed Feet to Harvest:" = `ORDER_AMT` · events: Enter
- Subform NMIS_PROCESSING_ORDERs_Propagule_INPUT_GRADES subform subform `Form.NMIS_PROCESSING_ORDERs_Propagule_INPUT_GRADES subform` (master CN → child ORDER_CN)
- Subform NMIS_PROCESSING_ORDERS_Propagule_INPUT_MC subform subform `Form.NMIS_PROCESSING_ORDERS_Propagule_INPUT_MC subform` (master CN → child ORDER_CN)
- Subform NMIS_PROCESSING_ORDERs_Propagule_INPUT_SVCS subform subform `Form.NMIS_PROCESSING_ORDERs_Propagule_INPUT_SVCS subform` (master CN → child ORDER_CN)
- TextBox OVERRUN_AMT "Bed Feet for Startup Charge:" = `OVERRUN_AMT`
- TextBox Combo638 "Fiscal Year:" = `FISCAL_YEAR` · default `=[Forms]![Switchboard]![FY_For_Reports]`
- Subform *propagule_Grow_Containers_for_Orders_table subform subform `Form.*propagule_Grow_Containers_for_Orders_table subform` (master AGREEMENT_LOT_CN → child AGREEMENT_LOT_CN)
- TextBox INSERTED_BY = `INSERTED_BY` · default `=[Forms]![Switchboard]![Current_User_Name]`  [FormFooter]
- TextBox INSERTED_DATE = `INSERTED_DATE` · default `Date()`  [FormFooter]
- TextBox INSERTED_INSTANCE = `INSERTED_INSTANCE` · default `=[NURSERY_ASSOCIATE]`  [FormFooter]

## Form: NMIS_PROCESSING_ORDERs_INPUT_SVCS subform
- **Caption:** NMIS_PROCESSING_ORDERS_INPUT_SVCS subform
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERs_INPUT_SVCS subform
- **Record source:** NMIS_ORDER_SERVICES
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_ORDER_SERVICES
- **Form events with code:** GotFocus
- **Migration:** 0 of 5 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ORDER_CN = `ORDER_CN` · default `=[Forms]![NMIS_PROCESSING_ORDERS_INPUT]![CN]`  [FormHeader]
- ComboBox ACTIVITY_CODE = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.DEFAULT_CONTRACT_ITEM FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SPCSVC")) OR (((NMIS_ACTIVITY_CODES.ACTIVITY_CODE) In ("DSTROY","SCSUP"))) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;`
- TextBox CHARGE_PER_UNIT_OVERRIDE = `CHARGE_PER_UNIT_OVERRIDE`
- TextBox CHARGE_PER_AMT_OVERRIDE = `CHARGE_PER_AMT_OVERRIDE`
- TextBox CONTRACT_ITEM = `CONTRACT_ITEM` · events: Enter

## Form: NMIS_PROCESSING_ORDERs_Propagule_INPUT_GRADES subform
- **Caption:** NMIS_PROCESSING_ORDERS_GRADES Subform
- **Menu path:** Switchboard › Forms_Open Module.Open_Propagule_Orders_New_Form_From_Switchboard › NMIS_PROCESSING_ORDERS_INPUT_Propagule › NMIS_PROCESSING_ORDERs_Propagule_INPUT_GRADES subform
- **Record source:** NMIS_ORDER_GRADES
- **Backend tables:** NMIS_ORDER_GRADES, NMIS_PRODUCT_GRADES
- **Migration:** 0 of 3 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ORDER_CN = `ORDER_CN` · default `=[Forms]![NMIS_PROCESSING_ORDERS_BY_ID]![NMIS_PROCESSING_ORDERS_ID subform].[Form]![CN]`  [FormHeader]
- TextBox GRADE_PCT = `GRADE_PCT`
- ComboBox PRODUCT_GRADE = `PRODUCT_GRADE` · rows: `SELECT NMIS_PRODUCT_GRADES.PRODUCT_GRADE FROM NMIS_PRODUCT_GRADES;`
- TextBox TOTAL_PCT "% Total" = `=Sum([GRADE_PCT])`  [FormFooter]

## Form: NMIS_PROCESSING_ORDERS_Propagule_INPUT_MC subform
- **Caption:** NMIS_ORDER_MGMT_CODES Subform
- **Menu path:** Switchboard › Forms_Open Module.Open_Propagule_Orders_New_Form_From_Switchboard › NMIS_PROCESSING_ORDERS_INPUT_Propagule › NMIS_PROCESSING_ORDERS_Propagule_INPUT_MC subform
- **Record source:** NMIS_CLIENT_MGMT_CODES
- **Backend tables:** NMIS_CLIENT_MGMT_CODES
- **Migration:** 0 of 5 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox FISCAL_YEAR_USED = `FISCAL_YEAR_USED` · default `=[Forms]![Switchboard]![NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_NUMBER]`  [FormHeader]
- TextBox ORDER_CN = `ORDER_CN` · default `=[Forms]![NMIS_PROCESSING_ORDERS_BY_ID]![NMIS_PROCESSING_ORDERS_ID subform].[Form]![CN]`  [FormHeader]
- TextBox MGMT_CODE = `MGMT_CODE`
- TextBox MGMT_CODE_PCT = `MGMT_CODE_PCT`
- TextBox CLIENT_ASSOCIATE = `CLIENT_ASSOCIATE`
- TextBox PCT_TOTAL "% Total" = `=Sum([MGMT_CODE_PCT])`  [FormFooter]

## Form: NMIS_PROCESSING_ORDERs_Propagule_INPUT_SVCS subform
- **Caption:** NMIS_PROCESSING_ORDERS_INPUT_SVCS subform
- **Menu path:** Switchboard › Forms_Open Module.Open_Propagule_Orders_New_Form_From_Switchboard › NMIS_PROCESSING_ORDERS_INPUT_Propagule › NMIS_PROCESSING_ORDERs_Propagule_INPUT_SVCS subform
- **Record source:** NMIS_ORDER_SERVICES
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_ORDER_SERVICES
- **Form events with code:** GotFocus
- **Migration:** 0 of 5 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ORDER_CN = `ORDER_CN` · default `=[Forms]![NMIS_PROCESSING_ORDERS_INPUT]![CN]`  [FormHeader]
- ComboBox ACTIVITY_CODE = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SPCSVC")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;`
- TextBox CHARGE_PER_UNIT_OVERRIDE = `CHARGE_PER_UNIT_OVERRIDE`
- TextBox CHARGE_PER_AMT_OVERRIDE = `CHARGE_PER_AMT_OVERRIDE`
- ComboBox CONTRACT_ITEM = `CONTRACT_ITEM` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.DEFAULT_CONTRACT_ITEM FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.ACTIVITY_CODE)=Forms!NMIS_PROCESSING_ORDERS_INPUT![NMIS_PROCESSING_ORDERs_INPUT_SVCS subform].Form!ACTIVITY_CODE));` · events: Enter

## Form: NMIS_PROCESSING_ORDERS_SVCS_Labeler
- **Caption:** NMIS ORDER SERVICES
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_PROCESS_LABELS_subform1 › NMIS_PROCESSING_ORDERS_SVCS_Labeler
- **Record source:** SELECT NMIS_ORDER_SERVICES.*, Left$([ORDER_CN],Len([ORDER_CN])-7) AS ORDER_ID, NMIS_ORDERS.CLIENT_NOTE, NMIS_ORDERS.NURSERY_NOTE, NMIS_ORDERS.DESTINATION_ASSOCIATE, NMIS_ORDERS.CONTACT_CN, NMIS_ORDERS.SECONDARY_CONTACT_CN, NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ORDERS.ORDER_AMT, NMIS_ORDERS.OVERRUN_AMT, NMIS_ORDERS.OVERRUN_ALL FROM NMIS_ORDER_SERVICES RIGHT JOIN NMIS_ORDERS ON NMIS_ORDER_SERVICES.ORDER_CN = NMIS_ORDERS.CN WHERE (((NMIS_ORDERS.CN)=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Order_CN]));
- **Backend tables:** NMIS_CONTACTS, NMIS_CONTACT_LINKS, NMIS_ORDERS, NMIS_ORDER_SERVICES
- **Subforms:** Form.NMIS_PROCESSING_Labels_ORDERS_ID_MC Subform, Form.NMIS_PROCESSING_ORDERS_ID_SVCS Subform
- **Opened from:** Form_NMIS_PROCESS_LABELS_subform1
- **Form events with code:** Close, Open
- **Migration:** 3 of 9 bound fields mapped. Main GrowHub screens: /orders/new (3)

**Controls**
- TextBox ORDER_ID "ORDER ID:" = `=Left$([Forms]![NMIS_PROCESS_LABELS_MAIN]![Order_CN],Len([Forms]![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN])-7)`  [FormHeader]
- TextBox ORDER_CN = `ORDER_CN`  [FormHeader]
- TextBox CLIENT_ASSOCIATE = `CLIENT_ASSOCIATE` → GrowHub grow_request.clientUuid (blank)  [FormHeader]
- TextBox NURSERY_NOTE "Nursery Note:" = `NURSERY_NOTE` · events: DblClick, Enter
- TextBox CLIENT_NOTE "Client Note:" = `CLIENT_NOTE` · events: DblClick, Enter → GrowHub grow_request.notes (blank)
- Subform NMIS_PROCESSING_ORDERS_ID_MC Subform subform `Form.NMIS_PROCESSING_Labels_ORDERS_ID_MC Subform` (master ORDER_CN → child ORDER_CN)
- Subform Child102 subform `Form.NMIS_PROCESSING_ORDERS_ID_SVCS Subform` (master ORDER_CN → child ORDER_CN)
- ComboBox CONTACT_CN "Primary" = `CONTACT_CN` · rows: `SELECT NMIS_CONTACTS.CN, [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)") AS name FROM NMIS_CONTACTS LEFT JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=IIf(Left([Forms]![NMIS_PROCESSING_ORDERS_SVCS_Labeler]![CLIENT_ASSOCIATE],2)="  ","990000",[Forms]![NMIS_PROCESSING_ORDERS_SVCS_Labeler]![CLIENT_ASSOCIATE])) AND ((NMIS_CON` → GrowHub grow_request.contact (blank)
- ComboBox SECONDARY_CONTACT_CN "Secondary" = `SECONDARY_CONTACT_CN` · rows: `SELECT NMIS_CONTACTS.CN, [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)") AS name FROM NMIS_CONTACTS LEFT JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=IIf(Left([Forms]![NMIS_PROCESSING_ORDERS_SVCS_Labeler]![CLIENT_ASSOCIATE],2)="  ","990000",[Forms]![NMIS_PROCESSING_ORDERS_SVCS_Labeler]![CLIENT_ASSOCIATE])) AND ((NMIS_CON`
- TextBox ORDER_AMT "Order Amt:" = `ORDER_AMT`
- TextBox OVERRUN_AMT "Overrun Amt:" = `OVERRUN_AMT`
- CheckBox OVERRUN_ALL "Overrun All" = `OVERRUN_ALL`

## Form: NMIS_PRODUCT_CHARGES
- **Caption:** NMIS PRODUCT CHARGES
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_PRODUCTS › NMIS_PRODUCT_CHARGES
- **Record source:** SELECT NMIS_ACTIVITY_CODE_PARENT_SORT_ORDER.PARENT_ACTIVITY_SORT_ORDER, NMIS_PRODUCT_CHARGES.*, [FISCAL_YEAR] & [PRODUCT_CN] & [CATEGORY_CODE] & [NMIS_PRODUCT_CHARGES].[ACTIVITY_CODE] & [PRODUCT_GRADE] AS PMC_LINK, NMIS_ACTIVITY_CODE_PARENT_SORT_ORDER.PARENT_ACTIVITY_CODE FROM NMIS_ACTIVITY_CODE_PARENT_SORT_ORDER RIGHT JOIN NMIS_PRODUCT_CHARGES ON NMIS_ACTIVITY_CODE_PARENT_SORT_ORDER.ACTIVITY_CODE = NMIS_PRODUCT_CHARGES.ACTIVITY_CODE WHERE (((NMIS_PRODUCT_CHARGES.FISCAL_YEAR) Like [Forms]![NMIS_PRODUCT_CHARGES]![View_FY] & "*") AND ((NMIS_ACTIVITY_CODE_PARENT_SORT_ORDER.PARENT_ACTIVITY_CODE) Like NZ([Forms]![NMIS_PRODUCT_CHARGES]![Filter_For_Parent_Activity],"*")) AND ((NMIS_PRODUCT_CHARGES.PRODUCT_CN)=[Forms]![NMIS_PRODUCTS]![CN]) AND ((IIf([CHARGE_PER_AMT]=0,-1,0)) Like IIf([Forms]![NMIS_PRODUCT_CHARGES]![Hide_0_Charges]=-1,0,"*")) AND ((IIf([CHARGE_PER_UNIT]=0,-1,0)) Like IIf([Forms]![NMIS_PRODUCT_CHARGES]![Hide_0_Charges]=-1,0,"*"))) ORDER BY NMIS_PRODUCT_CHARGES.FISCAL_YEAR DESC , NMIS_ACTIVITY_CODE_PARENT_SORT_ORDER.PARENT_ACTIVITY_SORT_ORDER, NMIS_PRODUCT_CHARGES.ACTIVITY_CODE, NMIS_PRODUCT_CHARGES.PRODUCT_GRADE DESC;
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_CATEGORIES, NMIS_PRODUCTS, NMIS_PRODUCT_CHARGES, NMIS_PRODUCT_GRADES
- **Subforms:** Form.NMIS_PRODUCT_MGMT_CODES1 Subform
- **Opened from:** Form_NMIS_PRODUCTS, Form_NMIS_PRODUCTS_Unlocked, Form_NMIS_Product_Charges_add_activity_codes_and_MCs Form
- **Form events with code:** Open
- **Migration:** 0 of 9 bound fields mapped. Main GrowHub screens: none

**Controls**
- ComboBox PRODUCT_CN = `PRODUCT_CN` · rows: `SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" & IIf([HISTORICAL]," Historical") AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_CLASS, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE FROM NMIS_PRODUCTS WHERE (((Left$([CATEGORY_CODE],1)) Like [Forms]![NMIS_PRODUCTS]![Filter_for_Product_Type] & "*"))` · default `=[Forms]![NMIS_PRODUCTS]![CN]`  [FormHeader]
- TextBox View_FY · default `=[Forms]![Switchboard]![FY_For_Reports]` · events: DblClick  [FormHeader]
- TextBox Filter_For_Parent_Activity · events: Change, DblClick  [FormHeader]
- CheckBox Hide_0_Charges "Hide $0.00's:" · default `True` · events: Click  [FormHeader]
- TextBox FISCAL_YEAR = `FISCAL_YEAR` · default `=[Forms]![Switchboard]![NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_TEXT]`
- TextBox CHARGE_PER_UNIT = `CHARGE_PER_UNIT`
- TextBox CHARGE_PER_AMT = `CHARGE_PER_AMT`
- ComboBox ACTIVITY_CODE = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ORDER" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="LIFT" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="PROC" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SPCSVC" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SHIP"));`
- ComboBox PRODUCT_GRADE = `PRODUCT_GRADE` · rows: `SELECT NMIS_PRODUCT_GRADES.PRODUCT_GRADE FROM NMIS_PRODUCT_GRADES;`
- ComboBox CATEGORY_CODE = `CATEGORY_CODE` · rows: `SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES;` · default `=[Forms]![NMIS_PRODUCTS]![CATEGORY_CODE]`
- TextBox PMC_LINK = `PMC_LINK`
- TextBox PARENT_ACTIVITY_CODE = `PARENT_ACTIVITY_CODE` · events: DblClick
- Subform NMIS_PRODUCT_MGMT_CODES1 Subform subform `Form.NMIS_PRODUCT_MGMT_CODES1 Subform` (master  → child )  [FormFooter]

## Form: NMIS_PRODUCT_CHARGES2
- **Caption:** NMIS PRODUCT CHARGES
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_PRODUCT_CHARGES2
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_CATEGORIES, NMIS_PRODUCTS, NMIS_PRODUCT_GRADES
- **Subforms:** Form.NMIS_PRODUCT_MGMT_CODES1 Subform2
- **Opens:** Form:NMIS_Product_Charges_add_activity_codes_and_MCs Form, Form:Products_Price_Reports
- **Opened from:** Form_Client_Bill_Menu, Form_Propagule_Billing_Report, Form_xLookup_Tables_Menu
- **Form events with code:** AfterUpdate, Current, Open
- **Migration:** 0 of 9 bound fields mapped. Main GrowHub screens: none

**Controls**
- ComboBox PRODUCT_CN · rows: `SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" & IIf([HISTORICAL]," Historical") AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_CLASS, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE FROM NMIS_PRODUCTS WHERE (((NMIS_PRODUCTS.PRODUCT_CLASS) Like nz([Forms]![NMIS_PRODUCT_CHARGES2]![Like_Grow_Unit],"*` · events: AfterUpdate, DblClick, Enter  [FormHeader]
- TextBox View_FY · default `=[Forms]![Switchboard]![FY_For_Reports]` · events: DblClick  [FormHeader]
- TextBox Filter_For_Parent_Activity · events: AfterUpdate, DblClick  [FormHeader]
- CheckBox Hide_0_Charges "Hide $0.00's:" · default `True` · events: Click  [FormHeader]
- ComboBox Filter_for_Product_Type · rows: `B;Bareroot Plant;C;Container Plant;N;Native Propagules;*;All Product Types` · default `"*"` · events: Change  [FormHeader]
- TextBox Like_Grow_Unit · default `"*"` · events: AfterUpdate, DblClick  [FormHeader]
- CommandButton Wildcard_Tip "Wildcard Tip" · events: Click  [FormHeader]
- TextBox Like_Activity · events: AfterUpdate, DblClick  [FormHeader]
- TextBox Like_Product_Grade · events: AfterUpdate, DblClick  [FormHeader]
- TextBox Like_Category_Code · default `"*"` · events: AfterUpdate, DblClick  [FormHeader]
- CheckBox Hide_Historical "Hide Historical:" · default `True` · events: Click  [FormHeader]
- TextBox FISCAL_YEAR = `FISCAL_YEAR` · default `=[Forms]![Switchboard]![FY_For_Reports]` · events: DblClick
- TextBox CHARGE_PER_UNIT = `CHARGE_PER_UNIT`
- TextBox CHARGE_PER_AMT = `CHARGE_PER_AMT`
- ComboBox ACTIVITY_CODE = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ORDER" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="LIFT" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="PROC" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SPCSVC" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVI` · events: DblClick
- ComboBox PRODUCT_GRADE = `PRODUCT_GRADE` · rows: `SELECT NMIS_PRODUCT_GRADES.PRODUCT_GRADE, NMIS_PRODUCT_GRADES.PRODUCT_GRADE_DESC FROM NMIS_PRODUCT_GRADES;` · events: DblClick
- ComboBox CATEGORY_CODE = `CATEGORY_CODE` · rows: `SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES;`
- TextBox PMC_LINK = `PMC_LINK`
- TextBox PARENT_ACTIVITY_CODE = `PARENT_ACTIVITY_CODE` · events: DblClick
- ComboBox Product = `PRODUCT_CN` · rows: `SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" & IIf([HISTORICAL]," Historical") AS PRODUCT_DESCRIPTION FROM NMIS_PRODUCTS ORDER BY Left$(nz([CATEGORY_CODE],"B"),1), [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" & IIf([HISTORICAL]," Historical");` · default `=[PRODUCT_CN]` · events: DblClick
- Subform NMIS_PRODUCT_MGMT_CODES1 Subform subform `Form.NMIS_PRODUCT_MGMT_CODES1 Subform2` (master  → child )  [FormFooter]
- CommandButton Products_Price_Reports "Products Charges Reports..." · events: Click  [FormFooter]
- CommandButton Add_Activity_and_Mgmt_Codes "Add Activity and Mgmt Codes" · events: Click  [FormFooter]

## Form: NMIS_Product_Charges_add_activity_codes_and_MCs Form
- **Caption:** NMIS PRODUCTS
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_PRODUCT_CHARGES2 › NMIS_Product_Charges_add_activity_codes_and_MCs Form
- **Record source:** SELECT NMIS_PRODUCTS.* FROM NMIS_PRODUCTS ORDER BY NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_DESC, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE;
- **Backend tables:** NMIS_PRODUCTS
- **Opens:** Form:NMIS_PRODUCTS_CHECKLIST1, Form:NMIS_PRODUCT_CHARGES, Form:NMIS_Product_Charges_add_activity_codes_and_MCs1b, Report:NMIS_PRODUCTS_CHECKLIST1, Report:NMIS_PRODUCT_CHARGES, Report:NMIS_Product_Charges_add_activity_codes_and_MCs1b
- **Opened from:** Form_NMIS_PRODUCT_CHARGES2

**Controls**
- ComboBox Find · rows: `SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" & IIf([HISTORICAL]," Historical") AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_CLASS, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE, NMIS_PRODUCTS.HISTORICAL FROM NMIS_PRODUCTS WHERE (((NMIS_PRODUCTS.HISTORICAL) Like IIf([Forms]![NMIS_Product_Charg`
- ComboBox Filter_for_Product_Type · rows: `B;Bareroot Plant;C;Container Plant;N;Native Propagules;*;All Product Types` · default `"*"` · events: AfterUpdate
- TextBox Text100 · default `"*"`
- CommandButton Wildcard_Tip "Wildcard Tip" · events: Click
- CheckBox Hide_Historical "Hide Historical" · default `True` · events: Click
- CommandButton Command77 "Cancel" · events: Click
- CommandButton Add_Activity_and_Mgmt_Codes "Copy" · events: Click

## Form: NMIS_PRODUCT_CHARGES_ROLL_OVER
- **Menu path:** Switchboard › Rollover_Charges_module.Rollover_Product_Charges › NMIS_PRODUCT_CHARGES_ROLL_OVER
- **Opened from:** Rollover_Charges_module
- **Migration:** 0 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox MaxOfFISCAL_YEAR "MaxOfFISCAL_YEAR:" = `MaxOfFISCAL_YEAR`
- TextBox Product_Charges_Current "Product_Charges_Current:" = `Product_Charges_Current`

## Form: NMIS_PRODUCT_GRADES Subform
- **Caption:** NMIS_PRODUCT_GRADES
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_PRODUCTS › NMIS_PRODUCT_GRADES Subform
- **Record source:** SELECT NMIS_PRODUCT_GRADES.* FROM NMIS_PRODUCT_GRADES;
- **Backend tables:** NMIS_PRODUCT_GRADES
- **Migration:** 0 of 3 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox PRODUCT_GRADE = `PRODUCT_GRADE`
- TextBox PRODUCT_GRADE_DESC = `PRODUCT_GRADE_DESC`
- CheckBox GRADE_DEFAULT = `GRADE_DEFAULT`

## Form: NMIS_PRODUCT_INVENTORIES
- **Menu path:** Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_ID_ACTIVITIES, NMIS_PRODUCT_INVENTORIES, NMIS_SPECIES_PRODUCTS
- **Subforms:** Form.NMIS_PRODUCT_INVENTORY_ID_ACTIVITIES subform, Form.Agreement_Lot_Total_Containers subform, Form.Transaction_Totals_For_Product_Inventory subform, Form.Blank subform, Form.Agreement_Lot_Inventory_Factors_For_Cycle subform, Form.NMIS_PRODUCT_INVENTORY_SAMPLES subform, Form.NMIS_PRODUCT_INVENTORIES subform1, Form.Blank subform, Form.NMIS_PRODUCT_INVENTORY_SIZES subform, Form.NMIS_PRODUCT_INVENTORY_TRANSACTIONS_subform, Form.Blank subform, Form.Agreement_Lot_Default_Factors_For_Cycle subform, Form.NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform, Form.NMIS_AGREEMENT_LOTS subform
- **Opens:** Form:NMIS_AGREEMENT_LOTS, Form:NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT, Form:NMIS_PRODUCT_INVENTORY_INGROWTH_PCTs_Checklist, Form:Plant_Inventory_Worksheets Form, Form:Refresh_Close, Form:xPlease_Be_Patient_First_Report_Message, Report:NMIS_PRODUCT_INVENTORY_INGROWTH_PCTs_Checklist, Report:Plant_Inventory_Worksheets Form, Report:Plant_inventory_Rpt_Size_Matrix, Report:Plant_inventory_Rpt_Size_Matrix_PCT_Only, Report:Product_Inventory_Data_Summary, Report:Refresh_Close
- **Form events with code:** Open

**Controls**
- TextBox MODIFIED_BY = `=[NMIS_ID_ACTIVITIES subform1].Form!CN`  [FormHeader]
- CommandButton Close "Close" · events: Click  [FormHeader]
- TextBox ID_ACTIVITY_CODE = `=[NMIS_ID_ACTIVITIES subform1].Form!ACTIVITY_CODE`  [FormHeader]
- TextBox Default_Date  [FormHeader]
- ComboBox Filter_for_Product_Type · rows: `B;Bareroot Plant;C;Container Plant;*;All Product Types` · default `"*"` · events: AfterUpdate  [FormHeader]
- Subform NMIS_ID_ACTIVITIES subform1 subform `Form.NMIS_PRODUCT_INVENTORY_ID_ACTIVITIES subform` (master CN → child AGREEMENT_LOT_CN) · events: Enter
- ComboBox SPECIES_PRODUCT "Species Product:" = `=[cn]` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, [PLNTMSTR_SYMBOL] & " " & [SPECIES_PRODUCT_DESC] AS SP FROM NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN=NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN;`
- ComboBox SOURCE_LOT_CN "Source Lot:" = `=[cn]` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, Source_Lot_ID_and_Source_string.ID_SOURCE2 FROM Source_Lot_ID_and_Source_string INNER JOIN NMIS_AGREEMENT_LOTS ON Source_Lot_ID_and_Source_string.CN=NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN;`
- ComboBox CN · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, [BEGIN_FY] & "-" & [End_fy] AS Beg_End_FY, Source_Lot_ID_and_Source_string.ID_SOURCE2, [Agreement_Lot_What_It_Is Query].Current_Product, Left$(Nz([CATEGORY_CODE],"B"),1) AS Cost_Center FROM ((NMIS_AGREEMENT_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN = Source_Lot_ID_and_Source_string.CN) INNER JOIN Agre` · events: AfterUpdate, Change, DblClick, Enter
- ComboBox TOTAL_REQUEST "Request:" = `=[cn]` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.TOTAL_REQUEST FROM NMIS_AGREEMENT_LOTS;`
- Subform Agreement_Lot_Total_Containers subform subform `Form.Agreement_Lot_Total_Containers subform` (master CN → child Agreement_Lot_CN)
- Subform Transaction_Totals_For_Product_Inventory subform subform `Form.Transaction_Totals_For_Product_Inventory subform` (master  → child )
- TabControl TabCtl18 · events: Click
- Subform Child109 subform `Form.Blank subform` (master  → child ) · tab Lot Information
- CheckBox Count_Only "Count Only or Size Entry" · default `False` · tab Lot Information · events: Click
- Subform Agreement_Lot_Inventory_Factors_For_Cycle subform subform `Form.Agreement_Lot_Inventory_Factors_For_Cycle subform` (master  → child ) · tab Lot Information
- CheckBox Count_Empties "Count Empties" · default `False` · tab Lot Information
- Subform NMIS_PRODUCT_INVENTORY_SAMPLES subform1 subform `Form.NMIS_PRODUCT_INVENTORY_SAMPLES subform` (master MODIFIED_BY → child ID_ACTIVITY_CN) · tab Lot Information · events: Enter, Exit
- Subform NMIS_PRODUCT_INVENTORIES subform1 subform `Form.NMIS_PRODUCT_INVENTORIES subform1` (master MODIFIED_BY → child ID_ACTIVITY_CN) · tab Lot Information · events: Enter
- CheckBox ConvertCmHtToIn "Convert cm Ht to In" · default `False` · tab Lot Information
- CheckBox Enter_Sizes "Enter Go/No Go Sizes" · default `False` · tab Lot Information · events: Click
- Subform Child108 subform `Form.Blank subform` (master  → child ) · tab Inventory Sizes
- Subform NMIS_PRODUCT_INVENTORY_SIZES subform subform `Form.NMIS_PRODUCT_INVENTORY_SIZES subform` (master MODIFIED_BY → child ID_ACTIVITY_CN) · tab Inventory Sizes · events: Enter, Exit
- Subform NMIS_ID_ACTIVITIES_TRANSACTIONS_subform subform `Form.NMIS_PRODUCT_INVENTORY_TRANSACTIONS_subform` (master MODIFIED_BY → child ID_ACTIVITY_CN) · events: Enter
- Subform Blank subform subform `Form.Blank subform` (master  → child ) · tab Reports
- Subform Agreement_Lot_Default_Factors_For_Cycle subform subform `Form.Agreement_Lot_Default_Factors_For_Cycle subform` (master CN → child CN) · tab Reports
- Subform NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform subform `Form.NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform` (master ID_ACTIVITY_CODE → child ACTIVITY_CODE) · tab Reports
- Subform NMIS_AGREEMENT_LOTS subform subform `Form.NMIS_AGREEMENT_LOTS subform` (master CN → child CN) · tab Reports
- CheckBox Data_Processed "No Location Changes" · default `False` · tab Reports
- CommandButton Field_Worksheets... "Plant Inventory Worksheets..." · tab Reports
- CommandButton Size_Distribution_Report "Size Distribution Report" · tab Reports · events: Click
- CommandButton Data_Summary_Report "Data Summary Report" · tab Reports · events: Click
- CommandButton Ingrowth_Pcts_Checklist "Ingowth Percents Checklist" · tab Reports · events: Click, Enter
- CommandButton Size_Distribution_Report_PCT_Only "Size Distribution Report % Only" · tab Reports · events: Click
- TextBox Like_Agreement_Lots · default `"*"` · events: AfterUpdate, DblClick

## Form: NMIS_PRODUCT_INVENTORIES subform1
- **Caption:** NMIS_PRODUCT_INVENTORIES subform1
- **Menu path:** Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › NMIS_PRODUCT_INVENTORIES subform1
- **Record source:** SELECT NMIS_PRODUCT_INVENTORIES.* FROM NMIS_PRODUCT_INVENTORIES;
- **Backend tables:** NMIS_PRODUCT_INVENTORIES
- **Opens:** Form:NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT
- **Form events with code:** Current
- **Migration:** 2 of 19 bound fields mapped. Main GrowHub screens: none

**Controls**
- CommandButton Use_Default_Factors "1 Click to Use Default Factors" · events: Click
- CheckBox Specs_Changed · default `False`
- TextBox ID_ACTIVITY_CN = `ID_ACTIVITY_CN` · default `=[Forms]![NMIS_PRODUCT_INVENTORIES]![MODIFIED_BY]`
- TextBox INV_FACTOR_1 = `INV_FACTOR_1`
- TextBox INV_FACTOR_2 "Inventory Factor 2:" = `INV_FACTOR_2`
- TextBox INV_FACTOR_3 "Default Target Factor:" = `INV_FACTOR_3`
- TextBox NET_INV "Est. Net Inventory:" = `NET_INV` · events: AfterUpdate → GrowHub inventory_progress.estimatedNetInventory (blank)
- TextBox GROSS_INV "Gross Inv:" = `GROSS_INV` → GrowHub inventory_progress.grossInventory (blank)
- TextBox TARGET_FACTOR "Computed Target Factor:" = `TARGET_FACTOR` · events: Enter
- TextBox SAMPLES "Samples:" = `SAMPLES` · default `1`
- TextBox SAMPLES_SPACING "Samples Spacing:" = `SAMPLES_SPACING` · default `1`
- TextBox ADDITIONAL_SAMPLES "Additional Samples:" = `ADDITIONAL_SAMPLES`
- TextBox ADDITIONAL_SAMPLES_SPACING "Additional Samples Spacing:" = `ADDITIONAL_SAMPLES_SPACING`
- CommandButton Calculate_Net "3 Click for Net" · events: Click
- TextBox Plot_Area "Plot Area:" = `=Forms!NMIS_PRODUCT_INVENTORIES![Agreement_Lot_Default_Factors_For_Cycle subform].Form!INV_SAMPLES_PER_CONTAINER`
- TextBox Net_Per_Unit "Net/U:" = `=IIf([Forms]![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Total_Containers subform].[Form]![Total_Containers]>0,Round([NET_INV]*1000/[Forms]![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Total_Containers subform].[Form]![Total_Containers],3),0)`
- TextBox Gross_Per_Unit "Gross/U:" = `=IIf([Forms]![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Total_Containers subform].[Form]![Total_Containers]>0,Round([GROSS_INV]*1000/[Forms]![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Total_Containers subform].[Form]![Total_Containers],3),0)`
- TextBox Shipping_Factor "Shipping Factor:" = `=NZ(([INV_FACTOR_1]/100*[INV_FACTOR_2]/100*IIf(IsNull([TARGET_FACTOR]),[INV_FACTOR_3]/100,[TARGET_FACTOR]/100))*100,100)`
- CommandButton Calculate_Gross "2 Click for Gross" · events: Click
- TextBox SPEC_MIN "Ht. Min:" = `SPEC_MIN` · events: Change
- TextBox SPEC_MAX "Ht. Max:" = `SPEC_MAX` · events: Change
- TextBox CALIPER_MIN "Caliper Min:" = `CALIPER_MIN` · events: Change
- TextBox SPEC_MIN_ALT "Ht. Min:" = `SPEC_MIN_ALT` · events: Change
- TextBox SPEC_MAX_ALT "Ht. Max:" = `SPEC_MAX_ALT` · events: Change
- TextBox CALIPER_MIN_ALT "Caliper Min:" = `CALIPER_MIN_ALT` · events: Change
- TextBox TARGET_FACTOR_ALT = `TARGET_FACTOR_ALT` · events: Enter
- TextBox Shipping_Factor_Alt = `=IIf(Not IsNull([TARGET_FACTOR_ALT]),NZ(([INV_FACTOR_1]/100*[INV_FACTOR_2]/100*IIf(IsNull([TARGET_FACTOR_ALT]),[INV_FACTOR_3]/100,[TARGET_FACTOR_ALT]/100))*100,100),Null)`
- TextBox NET_INV_ALT = `NET_INV_ALT`
- TextBox FACTOR1_CODE = `=[Forms]![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Default_Factors_For_Cycle subform].[Form]![INV_1_FACTOR_CODE]`
- TextBox FACTOR2_CODE = `=[Forms]![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Default_Factors_For_Cycle subform].[Form]![INV_2_FACTOR_CODE]`

## Form: NMIS_PRODUCT_INVENTORIES subform1b
- **Caption:** NMIS_PRODUCT_INVENTORIES subform1
- **Menu path:** Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_ID_ACTIVITIES_ACTIVITIES3_subform › Property_Module_Form_Opening Module.Property_Module_Form_Open › NMIS_PRODUCT_INVENTORIES2 › NMIS_PRODUCT_INVENTORIES subform1b
- **Record source:** SELECT NMIS_PRODUCT_INVENTORIES.* FROM NMIS_PRODUCT_INVENTORIES;
- **Backend tables:** NMIS_PRODUCT_INVENTORIES
- **Opens:** Form:NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT
- **Migration:** 2 of 19 bound fields mapped. Main GrowHub screens: none

**Controls**
- CheckBox Specs_Changed · default `False`
- TextBox ID_ACTIVITY_CN = `ID_ACTIVITY_CN` · default `=[Forms]![NMIS_PRODUCT_INVENTORIES]![MODIFIED_BY]`
- TextBox INV_FACTOR_1 = `INV_FACTOR_1`
- TextBox INV_FACTOR_2 "Inventory Factor 2:" = `INV_FACTOR_2`
- TextBox INV_FACTOR_3 "Default Target Factor:" = `INV_FACTOR_3`
- TextBox NET_INV "Est. Net Inventory:" = `NET_INV` · events: AfterUpdate → GrowHub inventory_progress.estimatedNetInventory (blank)
- TextBox GROSS_INV "Gross Inv:" = `GROSS_INV` → GrowHub inventory_progress.grossInventory (blank)
- TextBox TARGET_FACTOR "Computed Target Factor:" = `TARGET_FACTOR` · events: Enter
- TextBox SAMPLES "Samples:" = `SAMPLES` · default `1`
- TextBox SAMPLES_SPACING "Samples Spacing:" = `SAMPLES_SPACING` · default `1`
- TextBox ADDITIONAL_SAMPLES "Additional Samples:" = `ADDITIONAL_SAMPLES`
- TextBox ADDITIONAL_SAMPLES_SPACING "Additional Samples Spacing:" = `ADDITIONAL_SAMPLES_SPACING`
- TextBox Shipping_Factor "Shipping Factor:" = `=NZ(([INV_FACTOR_1]/100*[INV_FACTOR_2]/100*IIf(IsNull([TARGET_FACTOR]),[INV_FACTOR_3]/100,[TARGET_FACTOR]/100))*100,100)`
- TextBox SPEC_MIN "Ht. Min:" = `SPEC_MIN` · events: Change
- TextBox SPEC_MAX "Ht. Max:" = `SPEC_MAX` · events: Change
- TextBox CALIPER_MIN "Caliper Min:" = `CALIPER_MIN` · events: Change
- TextBox SPEC_MIN_ALT "Ht. Min:" = `SPEC_MIN_ALT` · events: Change
- TextBox SPEC_MAX_ALT "Ht. Max:" = `SPEC_MAX_ALT` · events: Change
- TextBox CALIPER_MIN_ALT "Caliper Min:" = `CALIPER_MIN_ALT` · events: Change
- TextBox TARGET_FACTOR_ALT = `TARGET_FACTOR_ALT` · events: Enter
- TextBox Shipping_Factor_Alt = `=IIf(Not IsNull([TARGET_FACTOR_ALT]),NZ(([INV_FACTOR_1]/100*[INV_FACTOR_2]/100*IIf(IsNull([TARGET_FACTOR_ALT]),[INV_FACTOR_3]/100,[TARGET_FACTOR_ALT]/100))*100,100),Null)`
- TextBox NET_INV_ALT = `NET_INV_ALT`
- TextBox FACTOR1_CODE = `=[Forms]![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Default_Factors_For_Cycle subform].[Form]![INV_1_FACTOR_CODE]`
- TextBox FACTOR2_CODE = `=[Forms]![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Default_Factors_For_Cycle subform].[Form]![INV_2_FACTOR_CODE]`

## Form: NMIS_PRODUCT_INVENTORIES2
- **Caption:** NMIS Product Inventories
- **Menu path:** Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_ID_ACTIVITIES_ACTIVITIES3_subform › Property_Module_Form_Opening Module.Property_Module_Form_Open › NMIS_PRODUCT_INVENTORIES2
- **Record source:** NMIS_AGREEMENT_LOTS
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_SOURCE_LOTS
- **Subforms:** Form.NMIS_PRODUCT_INVENTORIES subform1b, Form.NMIS_PRODUCT_INVENTORY_SAMPLES subform2, Form.NMIS_PRODUCT_INVENTORY_SIZES subform2
- **Opens:** Form:Plant_Inventory_Worksheets Form, Form:Refresh_Close
- **Opened from:** Property_Module_Form_Opening Module

**Controls**
- TextBox MODIFIED_BY · default `=[Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].[Form]![CN]`  [FormHeader]
- CommandButton Close "Close" · events: Click  [FormHeader]
- TabControl TabCtl18
- Subform NMIS_PRODUCT_INVENTORIES subform1 subform `Form.NMIS_PRODUCT_INVENTORIES subform1b` (master MODIFIED_BY → child ID_ACTIVITY_CN) · tab Lot Information
- Subform NMIS_PRODUCT_INVENTORY_SAMPLES subform1b subform `Form.NMIS_PRODUCT_INVENTORY_SAMPLES subform2` (master MODIFIED_BY → child ID_ACTIVITY_CN) · tab Lot Information
- Subform NMIS_PRODUCT_INVENTORY_SIZES subform2d subform `Form.NMIS_PRODUCT_INVENTORY_SIZES subform2` (master MODIFIED_BY → child ID_ACTIVITY_CN)
- ComboBox CN = `=[Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].[Form]![AGREEMENT_LOT_CN]` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_SOURCE_LOTS.SOURCE_CODE FROM NMIS_SOURCE_LOTS RIGHT JOIN NMIS_AGREEMENT_LOTS ON NMIS_SOURCE_LOTS.CN=NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID;` · default `"\"`
- TextBox Inv_Date = `=[Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].[Form]![ACTIVITY_DATE]`

## Form: NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT
- **Caption:** NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT
- **Menu path:** Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT
- **Record source:** NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT
- **Opened from:** Form_**********dbdNMIS_PRODUCT_INVENTORIES, Form_NMIS_PRODUCT_INVENTORIES, Form_NMIS_PRODUCT_INVENTORIES subform1, Form_NMIS_PRODUCT_INVENTORIES subform1b, Form_NMIS_PRODUCT_INVENTORY_SIZES2 subform, Form_NMIS_PRODUCT_INVENTORY_SIZES2c subform
- **Form events with code:** Close, Open
- **Migration:** 0 of 12 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ID_ACTIVITY_CN = `ID_ACTIVITY_CN`
- TextBox TOTAL_COUNT_SIZED "Total Count" = `TOTAL_COUNT`
- TextBox AT_SPEC_SIZED "At Spec Count" = `AT_SPEC`
- TextBox PCT_AT_SPEC_SIZED "% at Spec" = `PCT_AT_SPEC`
- TextBox AT_SPEC_ALT "At Alt Spec Count" = `AT_SPEC_ALT`
- TextBox PCT_AT_SPEC_ALT_SIZED "% at Alt Spec" = `PCT_AT_SPEC_ALT`
- TextBox SumOfIngrowth_Count "Ingrowth Count" = `SumOfIngrowth_Count`
- TextBox Ingrowth_PCT "% Ingrowth" = `Ingrowth_PCT`
- TextBox Total_PCT "% Total" = `Total_PCT2`
- CommandButton Close_Form "Update Factor" · events: Click
- CommandButton Close_wo_Updating "Cancel" · events: Click
- TextBox Ingrowth_ALT_Count "Ingrowth Alt Count" = `SumOfIngrowth_ALT_Count`
- TextBox Ingrowth_ALT_PCT "% Ingrowth Alt" = `Ingrowth_ALT_PCT`
- TextBox Total_PCT_ALT "% Total Alt" = `Total_PCT_ALT2`

## Form: NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform
- **Caption:** NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform
- **Menu path:** Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform
- **Record source:** SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE FROM NMIS_ACTIVITY_CODES;
- **Backend tables:** NMIS_ACTIVITY_CODES
- **Migration:** 0 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ACTIVITY_CODE "Activity Code" = `ACTIVITY_CODE`
- TextBox PARENT_ACTIVITY_CODE "Parent Activity Code" = `PARENT_ACTIVITY_CODE`

## Form: NMIS_PRODUCT_INVENTORY_FORM
- **Caption:** Plant Product Inventory Report
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_FORM
- **Backend tables:** NMIS_AGREEMENTS, NMIS_CONTACTS, NMIS_FISCAL_YEARS
- **Opens:** Form:xPlease_Be_Patient_First_Report_Message, Report:NMIS_PRODUCT_INVENTORY_AgeClass_Species_Report, Report:NMIS_PRODUCT_INVENTORY_Checklist, Report:NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts, Report:NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2, Report:NMIS_PRODUCT_INVENTORY_No_Subtotals_Report, Report:NMIS_PRODUCT_INVENTORY_Report, Report:NMIS_PRODUCT_INVENTORY_Report2, Report:NMIS_PRODUCT_INVENTORY_Report2Sum, Report:NMIS_PRODUCT_INVENTORY_Species_AgeClass_Report
- **Opened from:** Form_Reports_Menu_Production Subform
- **Form events with code:** Close, Open

**Controls**
- CommandButton Preview_Report2 "Click to Preview Last Inventory from ALL Years..." · events: Click
- TextBox COLLECT_METHOD "Collection Code:" · default `"*"`
- ComboBox Plntmstr_Symbol "Like Species Code:" · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY;` · default `"*"` · events: DblClick
- CheckBox Data_Processed "Data Processed" · default `No`
- CheckBox Location_Processed "Location Processed" · default `No`
- CheckBox Please_Wait "Please Wait Message Shown" · default `No`
- CheckBox Data_Processed2 "Data Processed2" · default `No`
- CommandButton Preview_Client_Checklist "Inventory Client Checklist" · events: Click
- CommandButton Preview_Client_Checklist_w_contacts "Inventory Client Checklist w/Contacts" · events: Click
- ComboBox Diverse "Traditional/Non-Traditonal Species" · rows: `0;Traditional;-1;Non-Traditional;*;All` · default `"*"` · events: DblClick
- ComboBox Contact_CN " Like Contact" · rows: `SELECT NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] AS Name FROM NMIS_CONTACTS INNER JOIN NMIS_AGREEMENTS ON NMIS_CONTACTS.CN = NMIS_AGREEMENTS.CONTACT_CN WHERE (((NMIS_CONTACTS.HISTORICAL)=False) AND ((NMIS_AGREEMENTS.CLIENT_ASSOCIATE) Like [Forms]![NMIS_PRODUCT_INVENTORY_FORM]![Like_Client] & "*")) GROUP BY NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([Firs` · events: DblClick, Enter
- TextBox Like_Client "Like Associate:" · default `"*"` · events: AfterUpdate, DblClick
- ComboBox Begin_FY "Begin FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `"*"` · events: AfterUpdate
- ComboBox End_FY "End FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `"*"` · events: AfterUpdate
- TextBox Parent_Associate "Parent Associate:" · default `"*"` · events: DblClick
- CommandButton Preview_Report_No_Subtotals "Click to Preview Inventory for CURRENT Year Only without Subtotals..." · events: Click
- CommandButton Preview_Client_Checklist_w_contacts2 "Inventory Contact Checklist w/Client" · events: Click
- CommandButton Preview_Report_Species_AgeClass "Click for Inventory by Species and Age Class for CURRENT Year" · events: Click
- CommandButton Preview_Report_AgeClass_Species "Click for Inventory by Age Class and Species for CURRENT Year " · events: Click
- CommandButton Preview_Report "Click to Preview Inventory for CURRENT Year Only..." · events: Click
- CommandButton Preview_Report2Sum "Click to Preview Last Inventory from ALL Years by Stocktype/Lot..." · events: Click

## Form: NMIS_PRODUCT_INVENTORY_ID_ACTIVITIES subform
- **Caption:** NMIS_LOCATION_ACTIVITIES subform
- **Menu path:** Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › NMIS_PRODUCT_INVENTORY_ID_ACTIVITIES subform
- **Record source:** SELECT NMIS_ID_ACTIVITIES.* FROM NMIS_ID_ACTIVITIES WHERE (((NMIS_ID_ACTIVITIES.AGREEMENT_LOT_CN) Is Not Null)) ORDER BY NMIS_ID_ACTIVITIES.ACTIVITY_DATE, NMIS_ID_ACTIVITIES.Index;
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_FISCAL_YEARS, NMIS_ID_ACTIVITIES
- **Form events with code:** Current
- **Migration:** 5 of 9 bound fields mapped. Main GrowHub screens: /source-lots/new (5)

**Controls**
- TextBox Index = `Index`  [FormHeader]
- TextBox CN = `CN`  [FormHeader]
- TextBox AGREEMENT_LOT_CN = `AGREEMENT_LOT_CN`  [FormHeader]
- TextBox New_CN = `=[Index] & [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery_Code]`  [FormHeader]
- ComboBox ACTIVITY_CODE = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE FROM NMIS_ACTIVITY_CODES ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_NAME;` · default `"LOTINV"` → GrowHub processing_activity.activityType (yes)
- TextBox ACTIVITY_DATE = `ACTIVITY_DATE` · events: Change, Enter, Exit, LostFocus → GrowHub processing_activity.activityDate (yes)
- TextBox NOTE = `NOTE` → GrowHub processing_activity.notes (yes)
- ComboBox FISCAL_YEAR = `FISCAL_YEAR` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![Switchboard]![FY_For_Reports]`
- TextBox ACTIVITY_UNITS = `ACTIVITY_UNITS` · events: Enter → GrowHub processing_activity.quantity (yes)
- TextBox UNIT_CODE = `UNIT_CODE` · default `"M"` → GrowHub processing_activity.unitOfMeasurement (yes)

## Form: NMIS_PRODUCT_INVENTORY_MATRIX
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_MATRIX
- **Backend tables:** NMIS_AGREEMENTS, NMIS_AGREEMENT_LOTS, NMIS_CONTACTS, NMIS_FISCAL_YEARS
- **Opens:** Form:xPlease_Be_Patient_First_Report_Message, Report:Plant_inventory_Rpt_Size_Matrix_Group, Report:Plant_inventory_Rpt_Size_Matrix_PCT_Only_Group
- **Opened from:** Form_Reports_Menu_Production Subform
- **Form events with code:** Close, Open

**Controls**
- TextBox Like_Client "Like Associate:" · default `"*"` · events: AfterUpdate, DblClick
- CommandButton Preview_Report "Click to Preview Count and Percent Report" · events: Click
- ComboBox Begin_FY "Begin FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `"*"`
- ComboBox End_FY "End FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `"*"`
- TextBox Parent_Associate "Parent Associate:" · default `"*"`
- TextBox COLLECT_METHOD "Collection Code:" · default `"*"`
- ComboBox Plntmstr_Symbol "Like Species Code:" · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY;` · default `"*"`
- CheckBox Data_Processed "Data Processed" · default `False`
- ComboBox Cost_Center "Stock Type:" · rows: `*;Bareroot and Container;B;Bareroot;C;Container` · default `"*"`
- ComboBox Contact_CN " Like Contact" · rows: `SELECT NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] & IIf([historical]," (Historical)") AS Name FROM NMIS_CONTACTS INNER JOIN NMIS_AGREEMENTS ON NMIS_CONTACTS.CN = NMIS_AGREEMENTS.CONTACT_CN WHERE (((NMIS_AGREEMENTS.CLIENT_ASSOCIATE) Like [Forms]![NMIS_PRODUCT_INVENTORY_MATRIX]![like_client] & "*")) GROUP BY NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First` · events: DblClick, Enter
- CommandButton Preview_PCT_Only_Report "Click to Preview Percent Only Report" · events: Click
- ComboBox Like_Lot_ID "Like Lot ID (Blank for All):" · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID FROM NMIS_AGREEMENT_LOTS WHERE (((Left$([CATEGORY_CODE],1)) Like [Forms]![NMIS_PRODUCT_INVENTORY_MATRIX]![Cost_Center]) AND ((NMIS_AGREEMENT_LOTS.CATEGORY_CODE) Is Not Null) AND ((NMIS_AGREEMENT_LOTS.NURSERY_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code])) GROUP BY NMIS_AGREEMENT_LOTS.CN,` · default `"*"`

## Form: NMIS_PRODUCT_INVENTORY_SAMPLES subform
- **Menu path:** Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › NMIS_PRODUCT_INVENTORY_SAMPLES subform
- **Backend tables:** NMIS_PRODUCT_INVENTORIES
- **Opens:** Form:NMIS_PRODUCT_INVENTORY_SIZES2c subform
- **Form events with code:** AfterInsert
- **Migration:** 0 of 6 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ID_ACTIVITY_CN = `ID_ACTIVITY_CN`  [FormHeader]
- TextBox Next_Count · default `1`  [FormHeader]
- TextBox EmptyCellTemp = `=([Forms]![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Inventory_Factors_For_Cycle subform].[Form]![Cells_Per_Container]/[Forms]![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Inventory_Factors_For_Cycle subform].[Form]![INV_SAMPLES_PER_CONTAINER])` · default `1`  [FormHeader]
- TextBox SAMPLE_NO = `SAMPLE_NO` · default `0`
- TextBox SAMPLE_COUNT = `SAMPLE_COUNT` · default `Null` · events: AfterUpdate, DblClick
- TextBox SMALL = `SMALL` · events: Exit
- TextBox TARGET = `TARGET`
- TextBox LARGE = `LARGE` · events: Exit
- TextBox TOTAL_SIZED = `=(Nz([SMALL],0)+Nz([LARGE],0)+NZ([TARGET],0))`
- TextBox Max_Sample_No = `=Max([SAMPLE_NO])`  [FormFooter]
- TextBox Sum_of_Sample_Count = `=Sum([SAMPLE_COUNT])`  [FormFooter]
- TextBox Sum_of_Small = `=Sum([SMALL])`  [FormFooter]
- TextBox Sum_of_Target = `=Sum([TARGET])`  [FormFooter]
- TextBox Sum_of_Large = `=Sum([LARGE])`  [FormFooter]
- TextBox Sum_Of_Total_Sized = `=Sum(Nz([SMALL],0)+Nz([LARGE],0)+NZ([TARGET],0))`  [FormFooter]
- TextBox Mean = `=Sum([SAMPLE_COUNT])/Max([SAMPLE_NO])`  [FormFooter]
- TextBox SumX2 = `=Sum([SAMPLE_COUNT]^2)`  [FormFooter]
- TextBox SumXsq = `=Sum([SAMPLE_COUNT])^2`  [FormFooter]
- TextBox STD = `=IIf(Nz([Max_Sample_No],1)>1,(Sqr(([SumX2]-([SumXsq]/[Max_Sample_No]))/([Max_Sample_No]-1))),Null)`  [FormFooter]
- TextBox CF = `=[STD]/[Mean]*100`  [FormFooter]
- TextBox SampleCount = `=Count([SAMPLE_NO])`  [FormFooter]
- TextBox CheckSampleCountMessage = `=IIf([Max_Sample_No]<>[SampleCount],"CHECK SAMPLE #'s")`  [FormFooter]

## Form: NMIS_PRODUCT_INVENTORY_SAMPLES subform2
- **Caption:** Inventory Counts
- **Menu path:** Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_ID_ACTIVITIES_ACTIVITIES3_subform › Property_Module_Form_Opening Module.Property_Module_Form_Open › NMIS_PRODUCT_INVENTORIES2 › NMIS_PRODUCT_INVENTORY_SAMPLES subform2
- **Record source:** SELECT NMIS_PRODUCT_INVENTORY_SAMPLES.ID_ACTIVITY_CN, NMIS_PRODUCT_INVENTORY_SAMPLES.SAMPLE_NO, NMIS_PRODUCT_INVENTORY_SAMPLES.SAMPLE_COUNT, NMIS_PRODUCT_INVENTORY_SAMPLES.SMALL, NMIS_PRODUCT_INVENTORY_SAMPLES.TARGET, NMIS_PRODUCT_INVENTORY_SAMPLES.LARGE FROM NMIS_PRODUCT_INVENTORY_SAMPLES ORDER BY NMIS_PRODUCT_INVENTORY_SAMPLES.ID_ACTIVITY_CN, NMIS_PRODUCT_INVENTORY_SAMPLES.SAMPLE_NO;
- **Backend tables:** NMIS_PRODUCT_INVENTORY_SAMPLES
- **Opens:** Form:NMIS_PRODUCT_INVENTORY_SIZES2 subform
- **Form events with code:** AfterInsert
- **Migration:** 0 of 6 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ID_ACTIVITY_CN = `ID_ACTIVITY_CN`  [FormHeader]
- TextBox Next_Count · default `1`  [FormHeader]
- TextBox SAMPLE_NO = `SAMPLE_NO`
- TextBox SAMPLE_COUNT = `SAMPLE_COUNT` · events: DblClick
- TextBox SMALL = `SMALL`
- TextBox TARGET = `TARGET`
- TextBox LARGE = `LARGE` · events: Exit
- TextBox TOTAL_SIZED = `=(Nz([SMALL],0)+Nz([LARGE],0)+NZ([TARGET],0))`
- TextBox Max_Sample_No = `=Max([SAMPLE_NO])`  [FormFooter]
- TextBox Sum_of_Sample_Count = `=Sum([SAMPLE_COUNT])`  [FormFooter]
- TextBox Sum_of_Small = `=Sum([SMALL])`  [FormFooter]
- TextBox Sum_of_Target = `=Sum([TARGET])`  [FormFooter]
- TextBox Sum_of_Large = `=Sum([LARGE])`  [FormFooter]
- TextBox Sum_Of_Total_Sized = `=Sum(Nz([SMALL],0)+Nz([LARGE],0)+NZ([TARGET],0))`  [FormFooter]
- TextBox Mean = `=Sum([SAMPLE_COUNT])/Max([SAMPLE_NO])`  [FormFooter]
- TextBox SumX2 = `=Sum([SAMPLE_COUNT]^2)`  [FormFooter]
- TextBox SumXsq = `=Sum([SAMPLE_COUNT])^2`  [FormFooter]
- TextBox STD = `=IIf(Nz([Max_Sample_No],1)>1,(Sqr(([SumX2]-([SumXsq]/[Max_Sample_No]))/([Max_Sample_No]-1))),Null)`  [FormFooter]
- TextBox CF = `=[STD]/[Mean]*100`  [FormFooter]

## Form: NMIS_PRODUCT_INVENTORY_SIZES subform
- **Caption:** NMIS_PRODUCT_INVENTORY_SIZES subform
- **Menu path:** Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › NMIS_PRODUCT_INVENTORY_SIZES subform
- **Record source:** SELECT NMIS_PRODUCT_INVENTORY_SIZES.SAMPLE_NO, NMIS_PRODUCT_INVENTORY_SIZES.HEIGHT, NMIS_PRODUCT_INVENTORY_SIZES.CALIPER, NMIS_PRODUCT_INVENTORY_SIZES.COUNT, NMIS_PRODUCT_INVENTORY_SIZES.ID_ACTIVITY_CN FROM NMIS_PRODUCT_INVENTORY_SIZES ORDER BY NMIS_PRODUCT_INVENTORY_SIZES.SAMPLE_NO, NMIS_PRODUCT_INVENTORY_SIZES.HEIGHT, NMIS_PRODUCT_INVENTORY_SIZES.CALIPER;
- **Backend tables:** NMIS_PRODUCT_INVENTORY_SIZES
- **Form events with code:** AfterDelConfirm, AfterInsert, AfterUpdate, GotFocus
- **Migration:** 0 of 5 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ID_ACTIVITY_CN = `ID_ACTIVITY_CN`  [FormHeader]
- TextBox SAMPLE_NO = `SAMPLE_NO` · default `=[Forms]![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].[Form]![SAMPLE_NO]`
- TextBox HEIGHT = `HEIGHT` · events: AfterUpdate
- TextBox CALIPER = `CALIPER`
- TextBox COUNT = `[Count]`
- TextBox TOTAL_SIZED = `=Sum([Count])`  [FormFooter]

## Form: NMIS_PRODUCT_INVENTORY_SIZES subform2
- **Caption:** NMIS_PRODUCT_INVENTORY_SIZES subform
- **Menu path:** Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_ID_ACTIVITIES_ACTIVITIES3_subform › Property_Module_Form_Opening Module.Property_Module_Form_Open › NMIS_PRODUCT_INVENTORIES2 › NMIS_PRODUCT_INVENTORY_SIZES subform2
- **Record source:** SELECT NMIS_PRODUCT_INVENTORY_SIZES.SAMPLE_NO, NMIS_PRODUCT_INVENTORY_SIZES.HEIGHT, NMIS_PRODUCT_INVENTORY_SIZES.CALIPER, NMIS_PRODUCT_INVENTORY_SIZES.COUNT, NMIS_PRODUCT_INVENTORY_SIZES.ID_ACTIVITY_CN FROM NMIS_PRODUCT_INVENTORY_SIZES ORDER BY NMIS_PRODUCT_INVENTORY_SIZES.SAMPLE_NO, NMIS_PRODUCT_INVENTORY_SIZES.HEIGHT, NMIS_PRODUCT_INVENTORY_SIZES.CALIPER;
- **Backend tables:** NMIS_PRODUCT_INVENTORY_SIZES
- **Form events with code:** AfterDelConfirm, AfterInsert, AfterUpdate, GotFocus
- **Migration:** 0 of 5 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ID_ACTIVITY_CN = `ID_ACTIVITY_CN`  [FormHeader]
- TextBox SAMPLE_NO = `SAMPLE_NO`
- TextBox HEIGHT = `HEIGHT`
- TextBox CALIPER = `CALIPER`
- TextBox COUNT = `[Count]`
- TextBox TOTAL_SIZED = `=Sum([Count])`  [FormFooter]

## Form: NMIS_PRODUCT_INVENTORY_SIZES2 subform
- **Caption:** NMIS_PRODUCT_INVENTORY_SIZES subform
- **Menu path:** Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_ID_ACTIVITIES_ACTIVITIES3_subform › Property_Module_Form_Opening Module.Property_Module_Form_Open › NMIS_PRODUCT_INVENTORIES2 › NMIS_PRODUCT_INVENTORY_SAMPLES subform2 › NMIS_PRODUCT_INVENTORY_SIZES2 subform
- **Record source:** SELECT NMIS_PRODUCT_INVENTORY_SIZES.SAMPLE_NO, NMIS_PRODUCT_INVENTORY_SIZES.HEIGHT, NMIS_PRODUCT_INVENTORY_SIZES.CALIPER, NMIS_PRODUCT_INVENTORY_SIZES.ID_ACTIVITY_CN, NMIS_PRODUCT_INVENTORY_SIZES.COUNT FROM NMIS_PRODUCT_INVENTORY_SIZES WHERE (((NMIS_PRODUCT_INVENTORY_SIZES.SAMPLE_NO)=Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form!SAMPLE_NO) And ((NMIS_PRODUCT_INVENTORY_SIZES.ID_ACTIVITY_CN)=Forms!NMIS_PRODUCT_INVENTORIES![NMIS_ID_ACTIVITIES subform1].Form!CN)) ORDER BY NMIS_PRODUCT_INVENTORY_SIZES.SAMPLE_NO, NMIS_PRODUCT_INVENTORY_SIZES.HEIGHT, NMIS_PRODUCT_INVENTORY_SIZES.CALIPER;
- **Backend tables:** NMIS_ID_ACTIVITIES, NMIS_PRODUCT_INVENTORIES, NMIS_PRODUCT_INVENTORY_SAMPLES, NMIS_PRODUCT_INVENTORY_SIZES
- **Opens:** Form:NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT
- **Opened from:** Form_NMIS_PRODUCT_INVENTORY_SAMPLES subform2
- **Form events with code:** Close
- **Migration:** 0 of 6 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ID_ACTIVITY_CN = `ID_ACTIVITY_CN` · default `=[Forms]![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES subform1].[Form]![CN]`  [FormHeader]
- TextBox SAMPLE_NO = `SAMPLE_NO` · default `=[Forms]![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].[Form]![SAMPLE_NO]`  [FormHeader]
- TextBox HEIGHT = `HEIGHT`
- TextBox CALIPER = `CALIPER`
- TextBox COUNT = `COUNT` · default `1`
- TextBox Text11 = `COUNT`
- TextBox TOTAL_SIZED = `=Sum([Count])`  [FormFooter]

## Form: NMIS_PRODUCT_INVENTORY_SIZES2c subform
- **Menu path:** Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › NMIS_PRODUCT_INVENTORY_SAMPLES subform › NMIS_PRODUCT_INVENTORY_SIZES2c subform
- **Opens:** Form:NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT
- **Opened from:** Form_NMIS_PRODUCT_INVENTORY_SAMPLES subform
- **Form events with code:** Close
- **Migration:** 0 of 6 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ID_ACTIVITY_CN = `ID_ACTIVITY_CN` · default `=[Forms]![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES subform1].[Form]![CN]`  [FormHeader]
- TextBox SAMPLE_NO = `SAMPLE_NO` · default `=[Forms]![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].[Form]![SAMPLE_NO]`  [FormHeader]
- TextBox HEIGHT = `HEIGHT` · events: AfterUpdate
- TextBox CALIPER = `CALIPER`
- TextBox COUNT = `COUNT` · default `1`
- TextBox Text11 = `COUNT`
- TextBox TOTAL_SIZED = `=Sum([Count])`  [FormFooter]

## Form: NMIS_PRODUCT_INVENTORY_TRANSACTIONS_subform
- **Caption:** NMIS_Cultrual_TRANSACTIONS subform
- **Menu path:** Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › NMIS_PRODUCT_INVENTORY_TRANSACTIONS_subform
- **Record source:** SELECT NMIS_TRANSACTIONS.* FROM NMIS_TRANSACTIONS INNER JOIN (NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN) ON NMIS_TRANSACTIONS.ID_LOCATION_CN = NMIS_ID_LOCATIONS.CN ORDER BY NMIS_LOCATIONS.LOCATION, NMIS_ID_LOCATIONS.SUBLOT_NO;
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_FISCAL_YEARS, NMIS_ID_LOCATIONS, NMIS_LOCATIONS, NMIS_PRODUCT_INVENTORIES, NMIS_TRANSACTIONS
- **Form events with code:** AfterDelConfirm, AfterInsert, AfterUpdate, Current
- **Migration:** 0 of 10 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ID_ACTIVITY_CN = `ID_ACTIVITY_CN`  [FormHeader]
- CommandButton Update_Tranasctions "Click to Update ALL Transactions" · events: Click  [FormHeader]
- ComboBox FISCAL_YEAR = `FISCAL_YEAR` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![Switchboard]![NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_TEXT]`
- TextBox NUMBER_OF_ACTIVITY_UNITS = `NUMBER_OF_ACTIVITY_UNITS`
- TextBox AMT_PER_UNIT = `AMT_PER_UNIT` · default `=[Forms]![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].[Form]![Net_Per_Unit]`
- TextBox AMT_PER_UNIT_INV_GROSS = `AMT_PER_UNIT_INV_GROSS` · default `=[Forms]![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].[Form]![Gross_Per_Unit]`
- ComboBox ID_LOCATION_CN = `ID_LOCATION_CN` · rows: `SELECT NMIS_ID_LOCATIONS.CN, [LOCATION] & IIf((IsNull([Sublot_No]) Or [Sublot_No]=" "),"","(" & [sublot_no] & ")") & " " & [BEGIN_INDEX] & IIf(IsNull([END_INDEX]),""," - " & [END_INDEX]) AS [Location(s)], NMIS_ID_LOCATIONS.UNIT_CODE, NMIS_ID_LOCATIONS.BEGIN_INDEX AS [End], NMIS_ID_LOCATIONS.END_INDEX AS [Begin], NMIS_LOCATIONS.LOCATION_TYPE FROM NMIS_AGREEMENT_LOTS INNER JOIN (NMIS_LOCATIONS INNER` · events: Enter
- TextBox CONTRACT_ITEM = `CONTRACT_ITEM`
- TextBox CHARGE_PER_AMT_OVERRIDE = `CHARGE_PER_AMT_OVERRIDE`
- TextBox CHARGE_PER_UNIT_OVERRIDE = `CHARGE_PER_UNIT_OVERRIDE`
- ComboBox Combo16 = `ID_LOCATION_CN` · rows: `SELECT NMIS_ID_LOCATIONS.CN, NMIS_ID_LOCATIONS.SUBLOT_NO, NMIS_AGREEMENT_LOTS.ID, NMIS_LOCATIONS.LOCATION_TYPE FROM NMIS_AGREEMENT_LOTS INNER JOIN (NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN=NMIS_ID_LOCATIONS.LOCATION_CN) ON NMIS_AGREEMENT_LOTS.CN=NMIS_ID_LOCATIONS.AGREEMENT_LOT_CN WHERE (((NMIS_LOCATIONS.LOCATION_TYPE)="Field" Or (NMIS_LOCATIONS.LOCATION_TYPE)="Greenhouse" O`

## Form: NMIS_PRODUCT_MGMT_CODES1 Subform
- **Caption:** NMIS_PRODUCT_MGMT_CODES
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_PRODUCTS › NMIS_PRODUCT_CHARGES › NMIS_PRODUCT_MGMT_CODES1 Subform
- **Record source:** SELECT [FISCAL_YEAR] & [PRODUCT_CN] & [CATEGORY_CODE] & [ACTIVITY_CODE] & [PRODUCT_GRADE] AS PMC_LINK, NMIS_PRODUCT_MGMT_CODES.ACTIVITY_CODE, NMIS_PRODUCT_MGMT_CODES.PRODUCT_GRADE, NMIS_PRODUCT_MGMT_CODES.PRODUCT_CN, NMIS_PRODUCT_MGMT_CODES.CATEGORY_CODE, NMIS_PRODUCT_MGMT_CODES.FISCAL_YEAR, NMIS_PRODUCT_MGMT_CODES.MGMT_CODE, NMIS_PRODUCT_MGMT_CODES.PERCENT_OF_CHARGE FROM NMIS_PRODUCT_MGMT_CODES WHERE ((([FISCAL_YEAR] & [PRODUCT_CN] & [CATEGORY_CODE] & [ACTIVITY_CODE] & [PRODUCT_GRADE])=[Forms]![NMIS_PRODUCT_CHARGES]![PMC_LINK]));
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_CATEGORIES, NMIS_PRODUCT_CHARGES, NMIS_PRODUCT_GRADES, NMIS_PRODUCT_MGMT_CODES
- **Migration:** 0 of 7 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox PRODUCT_CN = `PRODUCT_CN` · default `=[Forms]![NMIS_PRODUCT_CHARGES]![PRODUCT_CN]`
- TextBox FISCAL_YEAR = `FISCAL_YEAR` · default `=[Forms]![NMIS_PRODUCT_CHARGES]![FISCAL_YEAR]`
- TextBox MGMT_CODE = `MGMT_CODE`
- TextBox PERCENT_OF_CHARGE = `PERCENT_OF_CHARGE` · default `100`
- ComboBox CATEGORY_CODE = `CATEGORY_CODE` · rows: `SELECT [NMIS_CATEGORIES].[CATEGORY_CODE], [NMIS_CATEGORIES].[CATEGORY_DESC] FROM NMIS_CATEGORIES;` · default `=[Forms]![NMIS_PRODUCT_CHARGES]![CATEGORY_CODE]`
- ComboBox ACTIVITY_CODE = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ORDER" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="LIFT" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="PROC" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SPCSVC" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SHIP"));` · default `=[Forms]![NMIS_PRODUCT_CHARGES]![ACTIVITY_CODE]`
- ComboBox PRODUCT_GRADE = `PRODUCT_GRADE` · rows: `SELECT [NMIS_PRODUCT_GRADES].[PRODUCT_GRADE] FROM NMIS_PRODUCT_GRADES;` · default `=[Forms]![NMIS_PRODUCT_CHARGES]![PRODUCT_GRADE]`
- TextBox Text27 = `=Sum([PERCENT_OF_CHARGE])` · default `100`  [FormFooter]

## Form: NMIS_PRODUCT_MGMT_CODES1 Subform2
- **Caption:** NMIS_PRODUCT_MGMT_CODES
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_PRODUCT_CHARGES2 › NMIS_PRODUCT_MGMT_CODES1 Subform2
- **Record source:** SELECT [FISCAL_YEAR] & [PRODUCT_CN] & [CATEGORY_CODE] & [ACTIVITY_CODE] & [PRODUCT_GRADE] AS PMC_LINK, NMIS_PRODUCT_MGMT_CODES.ACTIVITY_CODE, NMIS_PRODUCT_MGMT_CODES.PRODUCT_GRADE, NMIS_PRODUCT_MGMT_CODES.PRODUCT_CN, NMIS_PRODUCT_MGMT_CODES.CATEGORY_CODE, NMIS_PRODUCT_MGMT_CODES.FISCAL_YEAR, NMIS_PRODUCT_MGMT_CODES.MGMT_CODE, NMIS_PRODUCT_MGMT_CODES.PERCENT_OF_CHARGE FROM NMIS_PRODUCT_MGMT_CODES WHERE ((([FISCAL_YEAR] & [PRODUCT_CN] & [CATEGORY_CODE] & [ACTIVITY_CODE] & [PRODUCT_GRADE])=[Forms]![NMIS_PRODUCT_CHARGES2]![PMC_LINK] Or ([FISCAL_YEAR] & [PRODUCT_CN] & [CATEGORY_CODE] & [ACTIVITY_CODE] & [PRODUCT_GRADE]) Is Null));
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_CATEGORIES, NMIS_PRODUCT_GRADES, NMIS_PRODUCT_MGMT_CODES
- **Migration:** 0 of 7 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox PRODUCT_CN = `PRODUCT_CN` · default `=[Forms]![NMIS_PRODUCT_CHARGES2]![Product]`
- TextBox FISCAL_YEAR = `FISCAL_YEAR` · default `=[Forms]![NMIS_PRODUCT_CHARGES2]![FISCAL_YEAR]`
- TextBox MGMT_CODE = `MGMT_CODE`
- TextBox PERCENT_OF_CHARGE = `PERCENT_OF_CHARGE` · default `100`
- ComboBox CATEGORY_CODE = `CATEGORY_CODE` · rows: `SELECT [NMIS_CATEGORIES].[CATEGORY_CODE], [NMIS_CATEGORIES].[CATEGORY_DESC] FROM NMIS_CATEGORIES;` · default `=[Forms]![NMIS_PRODUCT_CHARGES2]![CATEGORY_CODE]`
- ComboBox ACTIVITY_CODE = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ORDER" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="LIFT" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="PROC" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SPCSVC" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SHIP"));` · default `=[Forms]![NMIS_PRODUCT_CHARGES2]![ACTIVITY_CODE]`
- ComboBox PRODUCT_GRADE = `PRODUCT_GRADE` · rows: `SELECT [NMIS_PRODUCT_GRADES].[PRODUCT_GRADE] FROM NMIS_PRODUCT_GRADES;` · default `=IIf(Not IsNull([Forms]![NMIS_PRODUCT_CHARGES2]![PRODUCT_GRADE]),[Forms]![NMIS_PRODUCT_CHARGES2]![PRODUCT_GRADE])`
- TextBox Text27 = `=Sum([PERCENT_OF_CHARGE])` · default `100`  [FormFooter]

## Form: NMIS_Product_ship Ticket_multiple_orders subform
- **Caption:** NMIS_ORDERS subform
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_Product_ship Ticket_multiple_orders subform
- **Record source:** *NMIS_Product_ship Ticket_multiple_orders Table
- **Migration:** 0 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox CN = `CN`
- TextBox NumOrders = `NumOrders`
- TextBox Multiple_Orders = `=IIf([NumOrders]>1,"Multiple Orders for Agreement Lot " & [id])`

## Form: NMIS_PRODUCT_TYPES subform
- **Caption:** NMIS_PRODUCT_TYPES subform
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_PRODUCTS › NMIS_PRODUCT_TYPES subform
- **Record source:** NMIS_PRODUCT_TYPES
- **Backend tables:** NMIS_PRODUCT_TYPES
- **Migration:** 0 of 3 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox PRODUCT_TYPE = `PRODUCT_TYPE`
- TextBox PRODUCT_TYPE_DESC = `PRODUCT_TYPE_DESC`
- TextBox PRODUCT_GROUP = `PRODUCT_GROUP`

## Form: NMIS_PRODUCTS
- **Caption:** NMIS PRODUCTS
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_PRODUCTS
- **Record source:** SELECT NMIS_PRODUCTS.* FROM NMIS_PRODUCTS ORDER BY NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_DESC, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE;
- **Backend tables:** NMIS_CATEGORIES, NMIS_PRODUCTS, NMIS_PRODUCT_TYPES, NMIS_UNITS
- **Subforms:** Form.NMIS_SPECIES_PRODUCTS Subform1, Form.NMIS_PRODUCT_GRADES Subform, Form.NMIS_PRODUCT_TYPES subform
- **Opens:** Form:NMIS_PRODUCTS_CHECKLIST1, Form:NMIS_PRODUCT_CHARGES, Report:NMIS_PRODUCTS_CHECKLIST1, Report:NMIS_PRODUCT_CHARGES
- **Opened from:** Form_Lookup_Tables_Menu Subform, Form_NMIS_AGREEMENTS_old Subform, Form_NMIS_SPECIES_PRODUCTS Form, Form_NMIS_SPECIES_PRODUCTS Form Unlockable, Form_NMIS_SPECIES_PRODUCTS_Duplicate Form, Form_xLookup_Tables_Menu
- **Form events with code:** Open
- **Migration:** 4 of 22 bound fields mapped. Main GrowHub screens: /admin/products/new (4)

**Controls**
- CommandButton Command77 "Close" · events: Click  [FormHeader]
- ComboBox PRODUCT_Lookup · rows: `SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" & IIf([HISTORICAL]," Historical") AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_CLASS, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE, NMIS_PRODUCTS.HISTORICAL FROM NMIS_PRODUCTS WHERE (((NMIS_PRODUCTS.PRODUCT_CLASS) Like Nz([Forms]![NMIS_PRODUCTS]![` · events: AfterUpdate, Enter  [FormHeader]
- CommandButton Open Products Checklist Report "View Checklist" · events: Click  [FormHeader]
- ComboBox Filter_for_Product_Type · rows: `B;Bareroot Plant;C;Container Plant;N;Native Propagules;*;All Product Types` · default `"*"`  [FormHeader]
- TextBox Like_Grow_Unit · default `"*"`  [FormHeader]
- CommandButton Wildcard_Tip "Wildcard Tip" · events: Click  [FormHeader]
- CheckBox Hide_Historical "Hide Historical" · default `False`  [FormHeader]
- TextBox PRODUCT_DESC "Product Description " = `PRODUCT_DESC` · events: DblClick, Enter
- TextBox PRODUCT_CLASS "Class" = `PRODUCT_CLASS` · events: Enter
- TextBox PRODUCT_CLASS_CONDENSED "Class Condensed" = `PRODUCT_CLASS_CONDENSED` · events: Enter
- TextBox HARVEST_1_FACTOR_CODE "Harvest Code 1" = `HARVEST_1_FACTOR_CODE`
- TextBox HARVEST_2_FACTOR_CODE "Code 2" = `HARVEST_2_FACTOR_CODE`
- TextBox HARVEST_3_FACTOR_CODE "Code 3" = `HARVEST_3_FACTOR_CODE`
- TextBox HARVEST_4_FACTOR_CODE "Code 4" = `HARVEST_4_FACTOR_CODE`
- TextBox INV_1_FACTOR_CODE "Inventory Code 1" = `INV_1_FACTOR_CODE`
- TextBox INV_2_FACTOR_CODE "Code 2" = `INV_2_FACTOR_CODE`
- TextBox INV_3_FACTOR_CODE "Code 3" = `INV_3_FACTOR_CODE`
- TextBox CONTAINER_1_FACTOR_CODE "Container Code 1" = `CONTAINER_1_FACTOR_CODE`
- TextBox CONTAINER_2_FACTOR_CODE "Code 2" = `CONTAINER_2_FACTOR_CODE`
- TextBox CONTAINER_3_FACTOR_CODE "Code 3" = `CONTAINER_3_FACTOR_CODE`
- TextBox NOTE "Note" = `NOTE` → GrowHub species_product.notes (maybe)
- ComboBox CATEGORY_CODE "Category:" = `CATEGORY_CODE` · rows: `SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC, NMIS_CATEGORIES.NURSERY_ASSOCIATE FROM NMIS_CATEGORIES WHERE (((NMIS_CATEGORIES.NURSERY_ASSOCIATE) Like [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code])) ORDER BY NMIS_CATEGORIES.CATEGORY_DESC;` · events: DblClick, Enter
- TabControl TabCtl43
- Subform NMIS_SPECIES_PRODUCTS1 subform `Form.NMIS_SPECIES_PRODUCTS Subform1` (master CN → child PRODUCT_CN)
- CommandButton Product_Charges_Form "View/Edit Product Charges" · events: Click
- Subform NMIS_PRODUCT_GRADES Subform "Product Grades" subform `Form.NMIS_PRODUCT_GRADES Subform` (master NURSERY_ASSOCIATE → child NURSERY_ASSOCIATE) · tab Product Types and Grades
- Subform Child88 "Product Types:" subform `Form.NMIS_PRODUCT_TYPES subform` (master  → child ) · tab Product Types and Grades
- ComboBox BEGIN_PRODUCT_TYPE "Begin Type:" = `BEGIN_PRODUCT_TYPE` · rows: `SELECT NMIS_PRODUCT_TYPES.PRODUCT_TYPE, NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC FROM NMIS_PRODUCT_TYPES ORDER BY NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC;` · events: Enter → GrowHub species_product.beginType (yes)
- ComboBox END_PRODUCT_TYPE "End Type:" = `END_PRODUCT_TYPE` · rows: `SELECT NMIS_PRODUCT_TYPES.PRODUCT_TYPE, NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC FROM NMIS_PRODUCT_TYPES ORDER BY NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC;` · events: Enter → GrowHub species_product.endType (yes)
- ComboBox UNIT_CODE "Unit Code" = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="AMT")) Or (((NMIS_UNITS.UNIT_TYPE)="area"));` · default `"M"` → GrowHub species_product.endUnitOfMeasurement (yes)
- TextBox CN = `CN` · default `"Products_Form" & Now()`
- TextBox Index = `Index`
- TextBox NURSERY_ASSOCIATE = `NURSERY_ASSOCIATE` · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]`
- CheckBox HISTORICAL "Historical" = `HISTORICAL` · default `False`
- TextBox Text205 = `=IIf([Historical],"HISTORICAL")`

## Form: NMIS_SEASONS
- **Caption:** NMIS SEASONS
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_SEASONS
- **Record source:** NMIS_SEASONS
- **Backend tables:** NMIS_SEASONS
- **Opened from:** Form_Lookup_Tables_Menu Subform, Form_xLookup_Tables_Menu
- **Migration:** 0 of 5 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox SEASON_CODE = `SEASON_CODE`
- TextBox SEASON_DESC = `SEASON_DESC`
- TextBox SEASON_BEGIN = `SEASON_BEGIN`
- TextBox SEASON_END = `SEASON_END`
- TextBox SEASON_FY_OFFSET = `SEASON_FY_OFFSET`

## Form: NMIS_SHIPPING_ID_ACTIVITIES subform
- **Caption:** NMIS_SHIPPING_ID_ACTIVITIES subform
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_SHIPPING_ID_ACTIVITIES subform
- **Record source:** SELECT NMIS_ID_ACTIVITIES.* FROM NMIS_ID_ACTIVITIES WHERE (((NMIS_ID_ACTIVITIES.TICKET_CN) Is Not Null) AND ((NMIS_ID_ACTIVITIES.SOURCE_LOT_CN) Is Null));
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_ID_ACTIVITIES, NMIS_ORDERS, NMIS_TICKETS, NMIS_UNITS
- **Opens:** Form:NMIS_CLIENT_MGMT_CODES_Prod_Ship, Form:NMIS_ID_ACTIVITIES_MORE_INFO_PRODUCTION_ShipTicket_SUBFORM
- **Form events with code:** Current, Open
- **Migration:** 7 of 13 bound fields mapped. Main GrowHub screens: /source-lots/new (5)

**Controls**
- TextBox TICKET_CN = `TICKET_CN` · default `=[Forms]![NMIS_SHIPPING_TICKET]![CN]`  [FormHeader]
- TextBox Index = `Index`  [FormHeader]
- TextBox DESTINATION_ASSOCIATE = `DESTINATION_ASSOCIATE`  [FormHeader]
- TextBox New_CN = `=[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code`  [FormHeader]
- TextBox CN = `CN`  [FormHeader]
- TextBox Order_ID_Label = `=IIf([Forms]![NMIS_SHIPPING_TICKET subform]![View_by]=1,"Order ID/Lot ID","Lot ID/Order ID")`  [FormHeader]
- ComboBox Like_Client "Like Client:" · rows: `SELECT NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_TICKETS, NMIS_ASSOCIATES INNER JOIN NMIS_ORDERS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_ORDERS.CLIENT_ASSOCIATE WHERE (((NMIS_ORDERS.FISCAL_YEAR) Like [Forms]![NMIS_SHIPPING_TICKET subform]![View_FY] & "*")) GROUP BY NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME ORDER BY NMIS_ORDERS.CLIENT_ASSOCIATE;` · default `"*"` · events: DblClick  [FormHeader]
- TextBox ACTIVITY_UNITS = `ACTIVITY_UNITS` → GrowHub processing_activity.quantity (yes)
- TextBox ACTIVITY_DATE = `ACTIVITY_DATE` → GrowHub processing_activity.activityDate (yes)
- ComboBox AGREEMENT_LOT_CN = `AGREEMENT_LOT_CN` · rows: `SELECT agreement_lot_ID_and_source_string.AGREEMENT_LOT_CN, agreement_lot_ID_and_source_string.ID_SOURCE2 FROM agreement_lot_ID_and_source_string;`
- ComboBox UNIT_CODE = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS;` → GrowHub processing_activity.unitOfMeasurement (yes)
- ComboBox ORDER_CN = `ORDER_CN` · rows: `SELECT NMIS_ORDERS.CN, IIf([Forms]![NMIS_SHIPPING_TICKET subform]![View_by]=1,Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7) & "/" & [ID],[ID] & "/" & Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7)) AS [Order], NMIS_ORDERS.CLIENT_ASSOCIATE AS Client, NMIS_ORDERS.ACTIVITY_CODE AS [Act Code], Round([Order_Amt],3) & " M" AS [Order Amt], Sum(Round([NO_CONTAINERS]*[DENSITY]/[UNIT_MULTIPLIER],` · events: AfterUpdate, DblClick
- CommandButton Open_Client_MGMT_CODE_FORM "JobCode" · events: Click
- TextBox NOTE = `NOTE` · default `=[Forms]![NMIS_SHIPPING_TICKET subform]![NOTE]` → GrowHub processing_activity.notes (yes)
- CommandButton Open_More_Info_Form "+" · events: Click
- ComboBox ACTIVITY_CODE = `ACTIVITY_CODE` · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SHIP" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ORDER")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;` → GrowHub processing_activity.activityType (yes)
- ComboBox Ticket = `TICKET_CN` · rows: `SELECT NMIS_TICKETS.CN, NMIS_TICKETS.TKT_NO, NMIS_TICKETS.DELIVERED_TO_ASSOCIATE, NMIS_TICKETS.NOTE, NMIS_TICKETS.TICKET_TYPE FROM NMIS_TICKETS WHERE (((NMIS_TICKETS.TICKET_TYPE)="p") AND ((NMIS_TICKETS.FY) Like [Forms]![NMIS_SHIPPING_TICKET subform]![View_FY])) ORDER BY NMIS_TICKETS.TKT_NO DESC;` · events: DblClick, Enter
- TextBox FISCAL_YEAR = `FISCAL_YEAR`

## Form: NMIS_SHIPPING_TICKET subform
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform
- **Backend tables:** NMIS_ACTIVITY_CODES, NMIS_ASSOCIATES, NMIS_CONTACTS, NMIS_CONTACT_LINKS, NMIS_FISCAL_YEARS, NMIS_TICKETS
- **Subforms:** Form.NMIS_CLIENT_MGMT_CODES_prod_ship subform, Form.NMIS_Product_ship Ticket_multiple_orders subform, Form.NMIS_SHIPPING_ID_ACTIVITIES subform, Form.NMIS_SHIPPING_TRANSACTIONS_subform, Form.NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform, Form.NMIS_SHIPPING_TICKET_LOT_BALANCES subform
- **Opens:** Form:Close_Form, Form:NMIS_ASSOCIATES_Ship_Miles_st, Form:NMIS_CONTACTS, Form:NMIS_TICKETS_charge_per_ticket2, Form:NMIS_TICKET_NOTE_FORM, Form:PRODUCT_PULL_ticket, Form:PRODUCT_ticket, Form:Ship_Ticket_Product_spd, Form:Ship_Ticket_Product_spd2, Form:Ticket_Container_Summary, Report:Close_Form, Report:NMIS_ASSOCIATES_Ship_Miles_st, Report:NMIS_CONTACTS, Report:NMIS_TICKETS_charge_per_ticket2, Report:PRODUCT_PULL_ticket, Report:PRODUCT_ticket, Report:Ship_Ticket_Product_spd, Report:Ship_Ticket_Product_spd2, Report:Ticket_Container_Summary
- **Opened from:** Form_Client_Bill_Menu, Forms_Open Module, Property_Module_Form_Opening Module
- **Form events with code:** Current, Open
- **Migration:** 6 of 15 bound fields mapped. Main GrowHub screens: /shipping/create (3)

**Controls**
- CommandButton Refresh_Close "Close" · events: Click  [FormHeader]
- CommandButton Create Shipping Ticket "Click to Preview Shipping Ticket" · events: Click  [FormHeader]
- TextBox CN = `CN`  [FormHeader]
- OptionGroup View_by · default `=IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061019",2,2)` · events: AfterUpdate  [FormHeader]
- OptionButton Option45 "Order ID/Lot ID"  [FormHeader]
- OptionButton Option47 "Lot ID/Order ID"  [FormHeader]
- CommandButton Ship_Ticket_Product_spd "Tkt SPD" · events: Click  [FormHeader]
- CommandButton Create Pull Ticket "Click to Preview Pull Checklist" · events: Click  [FormHeader]
- CommandButton Ship_Ticket_Product_spd2 "Tkt SPD Detailed " · events: Click  [FormHeader]
- Subform NMIS_CLIENT_MGMT_CODES_prod_ship subform subform `Form.NMIS_CLIENT_MGMT_CODES_prod_ship subform` (master TextLink1 → child ACTIVITY_ID_CN)
- Subform NMIS_ORDERS subform subform `Form.NMIS_Product_ship Ticket_multiple_orders subform` (master ORDER_CN → child CN)
- Subform NMIS_SHIPPING_ID_ACTIVITIES subform subform `Form.NMIS_SHIPPING_ID_ACTIVITIES subform` (master CN → child TICKET_CN) · events: Enter
- TextBox NOTE = `NOTE` · events: DblClick
- TextBox DESIRED_DATE = `DESIRED_DATE` · default `Date()` · events: Enter → GrowHub source_shipment.shipDate (yes)
- TextBox CHARGE_PER_TICKET = `CHARGE_PER_TICKET` → GrowHub source_shipment.shippingFees (yes)
- TextBox GBL_PCT = `GBL_PCT`
- ComboBox DELIVERED_TO_ASSOCIATE = `DELIVERED_TO_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Hist)") AS AN, NMIS_ASSOCIATES.NOTE FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.HISTORICAL) Like IIf(Not ([NMIS_ASSOCIATES].[HISTORICAL])=IsNull([Forms]![NMIS_SHIPPING_TICKET subform]![DELIVERED_BY_ASSOCIATE]),"*",False))) ORDER BY [ASSOCIATE_NAME] & IIf([historical]," (Hist)");` · events: DblClick
- ComboBox DELIVERED_BY_ASSOCIATE = `DELIVERED_BY_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Hist)") AS AN FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.HISTORICAL) Like IIf(Not ([NMIS_ASSOCIATES].[HISTORICAL])=IsNull([Forms]![NMIS_SHIPPING_TICKET subform]![DELIVERED_BY_ASSOCIATE]),"*",False))) ORDER BY [ASSOCIATE_NAME] & IIf([historical]," (Hist)");`
- TextBox TKT_NO = `TKT_NO` · events: DblClick, Enter, Exit
- TextBox EXT_DOC_REF = `EXT_DOC_REF` → GrowHub source_shipment.carrierTrackingInfo (yes)
- TextBox FISCAL_YEAR "Fiscal Year:" = `FY` · default `=[Forms]![Switchboard]![FY_For_Reports]` · events: DblClick, Enter
- TextBox NURSERY_ASSOCIATE = `NURSERY_ASSOCIATE` · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]` → GrowHub source_shipment.shippedFrom (yes)
- ComboBox DFLT_ACT "Act. Code:" · rows: `SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SHIP"));` · default `"SHIP"`
- TextBox TICKET_TYPE = `TICKET_TYPE` · default `"P"`
- TextBox Index = `Index`
- ComboBox NURSERY_CONTACT_CN "Nursery Contact:" = `NURSERY_CONTACT_CN` · rows: `SELECT NMIS_CONTACT_LINKS.CONTACT_CN, [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)") AS name FROM NMIS_CONTACTS LEFT JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((NMIS_CONTACTS.HISTORICAL) Like IIf(Not (NMIS_CONTACTS.HISTORICAL)=IsNull([Forms]![NMIS_SHIPPING_TICKET subform]![NURSERY_CONTACT_CN]),"*",False)) AND ((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=[Forms]` · events: Enter
- TextBox TextLink1 = `=[NMIS_SHIPPING_ID_ACTIVITIES subform].Form!CN`
- TextBox TextLink2 = `=[NMIS_SHIPPING_ID_ACTIVITIES subform].Form!ORDER_CN`
- TextBox New_CN = `=[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code`
- TextBox MAX_TKT_USED = `=Max([NEXT_NO])`
- Subform NMIS_SHIPPING_TRANSACTIONS_subform subform `Form.NMIS_SHIPPING_TRANSACTIONS_subform` (master TextLink1 → child ID_ACTIVITY_CN) · events: Enter
- TextBox SUM_OF_TRANSACTIONS = `=IIf(Not IsNull([NMIS_SHIPPING_ID_ACTIVITIES subform].Form!ORDER_CN),IIf([NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform].Form!Product_Units="M",ROUND(Abs(NMIS_SHIPPING_TRANSACTIONS_subform.Form!TRANSACTIONS_SUM/1000),3),ROUND(Abs(NMIS_SHIPPING_TRANSACTIONS_subform.Form!TRANSACTIONS_SUM),3)),"")` · events: DblClick
- Subform NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform subform `Form.NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform` (master TEXTLINK2 → child CN)
- ComboBox Find_Ticket "Find Ticket:" · rows: `SELECT NMIS_TICKETS.TKT_NO, IIf(Not ([Forms]![NMIS_SHIPPING_TICKET subform]![By_TSO]),[TKT_NO] & " (FY" & Right$([FY],2) & ")",[EXT_DOC_REF]) AS [Ticket #/FY], IIf([Forms]![NMIS_SHIPPING_TICKET subform]![By_TSO],[TKT_NO] & " (FY" & Right$([FY],2) & ")",[EXT_DOC_REF] & IIf(Not IsNull([EXT_DOC_REF])," " & [GBL_PCT] & "%")) AS TSO, [CHARGE_PER_TICKET]*1 AS [TSO $], "(" & [DELIVERED_TO_ASSOCIATE] & ")` · events: AfterUpdate, Enter
- CommandButton New_Ticket "Click Here for a New Ticket" · events: Click
- CommandButton Update_ID_Activity_Units "Ship" · events: Click
- ComboBox View_FY "Like View FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC;` · default `=[Forms]![Switchboard]![FY_For_Reports]` · events: Exit
- ComboBox Bill_To · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;`
- Subform NMIS_SHIPPING_TICKET_LOT_BALANCES subform subform `Form.NMIS_SHIPPING_TICKET_LOT_BALANCES subform` (master  → child )
- TextBox MGMT_CODE
- CheckBox Hide_Zero_Bal_Trans · default `True` · events: Click
- CheckBox By_TSO "By TSO:" · default `False` · events: Click
- CommandButton Ticket_Info_By_TSO " Click to Enter Info by TSO..." · events: Click
- ComboBox Like_Client "Like Client:" · rows: `SELECT NMIS_TICKETS.DELIVERED_TO_ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES RIGHT JOIN NMIS_TICKETS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_TICKETS.DELIVERED_TO_ASSOCIATE WHERE (((NMIS_TICKETS.FY) Like [Forms]![NMIS_SHIPPING_TICKET subform]![View_FY] & "*")) GROUP BY NMIS_TICKETS.DELIVERED_TO_ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_TICKETS.DELIVERED_TO_ASSOCIATE ORDER BY NM` · default `"*"` · events: AfterUpdate
- CommandButton Ticket_Container_Summary "Tkt/TSO Unit Sum" · events: Click
- TextBox Order_CN = `=[NMIS_SHIPPING_ID_ACTIVITIES subform].[Form]![ORDER_CN]`
- CheckBox Show_Activity_note "Show Activity Note:" · default `False`
- ComboBox Client_Contact_CN = `CONTACT_CN` · rows: `SELECT NMIS_CONTACTS.CN, [LAST_NAME] & ", " & [FIRST_NAME] & IIf([historical]," (hist)") AS Name FROM NMIS_CONTACTS WHERE (((NMIS_CONTACTS.HISTORICAL) Like IIf(IsNull([Forms]![NMIS_SHIPPING_TICKET subform]![Client_Contact_CN]),"0","*"))) ORDER BY [LAST_NAME] & ", " & [FIRST_NAME] & IIf([historical]," (hist)");` · events: DblClick

## Form: NMIS_SHIPPING_TICKET_LOT_BALANCES subform
- **Caption:** nmis_shipping_ticket_lot_balances subform
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_SHIPPING_TICKET_LOT_BALANCES subform
- **Record source:** NMIS_SHIP_TKT_LOT_BALANCES query
- **Backend tables:** NMIS_ID_LOCATIONS, NMIS_LOCATIONS, NMIS_UNITS
- **Migration:** 0 of 6 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox NO_CONTAINERS = `NO_CONTAINERS`
- TextBox DENSITY = `DENSITY`
- TextBox Net_M = `=Round([NO_CONTAINERS]*[DENSITY]/[UNIT_MULTIPLIER],3)`
- ComboBox UNIT_CODE = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC FROM NMIS_UNITS;`
- TextBox ORDER_ID = `ORDER_ID`
- TextBox Net_M_Errorkey = `=IIf([NO_CONTAINERS]<0,-1,0)`
- ComboBox ID_LOCATION_CN = `ID_LOCATION_CN` · rows: `SELECT NMIS_ID_LOCATIONS.CN, [LOCATION] & IIf(Not IsNull([SUBLOT_NO]) Or [Sublot_No]<>" ","(" & [SUBLOT_NO] & ")") AS LOCATION2 FROM NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN;`
- CommandButton Ship "Ship" · events: Click
- TextBox Balance = `=Sum(Round([NO_CONTAINERS]*[DENSITY]/[UNIT_MULTIPLIER],3))`  [FormFooter]
- TextBox AGREEMENT_LOT_CN = `AGREEMENT_LOT_CN`  [FormFooter]
- TextBox Balance_Error = `=IIf([Net_M_Errorkey_Sum]<0,"CHECK AMOUNTS!",IIf([Balance]<0,"BALANCE ERROR!",""))`  [FormFooter]
- TextBox Net_M_Errorkey_Sum = `=Sum(IIf([NO_CONTAINERS]<0,-1,0))`  [FormFooter]
- CommandButton Ship_All "Ship All" · events: Click  [FormFooter]

## Form: NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform
- **Caption:** NMIS_ORDERS subform
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform
- **Record source:** SELECT NMIS_ORDERS.CN, NMIS_ORDERS.AGREEMENT_LOT_CN, IIf(NMIS_PRODUCTS.UNIT_CODE="M","M","LB") AS Product_Units, NMIS_PRODUCT_TYPES.PRODUCT_GROUP FROM NMIS_PRODUCT_TYPES INNER JOIN (NMIS_PRODUCTS INNER JOIN ((NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) INNER JOIN NMIS_SPECIES_PRODUCTS ON NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN = NMIS_SPECIES_PRODUCTS.CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN) ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE = NMIS_PRODUCTS.END_PRODUCT_TYPE;
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_ORDERS, NMIS_PRODUCTS, NMIS_PRODUCT_TYPES, NMIS_SPECIES_PRODUCTS
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox CN = `CN`
- TextBox AGREEMENT_LOT_CN = `AGREEMENT_LOT_CN`
- TextBox Product_Units = `Product_Units`
- TextBox PRODUCT_GROUP = `PRODUCT_GROUP`

## Form: NMIS_SHIPPING_TRANSACTIONS_subform
- **Caption:** NMIS_Cultrual_TRANSACTIONS subform
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_SHIPPING_TRANSACTIONS_subform
- **Record source:** SELECT NMIS_TRANSACTIONS.*, NMIS_ID_LOCATIONS.AGREEMENT_LOT_CN FROM NMIS_TRANSACTIONS INNER JOIN (NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN) ON NMIS_TRANSACTIONS.ID_LOCATION_CN = NMIS_ID_LOCATIONS.CN WHERE (((NMIS_TRANSACTIONS.ID_ACTIVITY_CN)=[Forms]![NMIS_SHIPPING_TICKET subform]![TextLink1])) ORDER BY NMIS_LOCATIONS.LOCATION, NMIS_ID_LOCATIONS.SUBLOT_NO;
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_ID_LOCATIONS, NMIS_LOCATIONS, NMIS_TRANSACTIONS
- **Form events with code:** AfterDelConfirm, AfterInsert, AfterUpdate, Current
- **Migration:** 0 of 10 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox FISCAL_YEAR = `FISCAL_YEAR` · default `=[Forms]![Switchboard]![NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_TEXT]`  [FormHeader]
- TextBox ID_ACTIVITY_CN = `ID_ACTIVITY_CN` · default `=[Forms]![NMIS_SHIPPING_TICKET]![NMIS_SHIPPING_TICKET Subform].[Form]![TextLink1]`  [FormHeader]
- TextBox NUMBER_OF_ACTIVITY_UNITS = `NUMBER_OF_ACTIVITY_UNITS` · events: Enter, Exit
- TextBox AMT_PER_UNIT = `AMT_PER_UNIT` · events: Exit
- TextBox AMT_PER_UNIT_INV_GROSS = `AMT_PER_UNIT_INV_GROSS`
- TextBox CHARGE_PER_AMT_OVERRIDE = `CHARGE_PER_AMT_OVERRIDE`
- TextBox CHARGE_PER_UNIT_OVERRIDE = `CHARGE_PER_UNIT_OVERRIDE`
- ComboBox ID_LOCATION_CN = `ID_LOCATION_CN` · rows: `SELECT NMIS_ID_LOCATIONS.CN, [LOCATION] & IIf(IsNull([Sublot_No]),"","(" & [sublot_no] & ")") & " " & [BEGIN_INDEX] & IIf(IsNull([END_INDEX]),""," - " & [END_INDEX]) AS LOCATION2, NMIS_ID_LOCATIONS.UNIT_CODE, NMIS_LOCATIONS.LOCATION_TYPE FROM NMIS_AGREEMENT_LOTS INNER JOIN (NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN=NMIS_ID_LOCATIONS.LOCATION_CN) ON NMIS_AGREEMENT_LOTS.CN=NMI`
- ComboBox Combo24 = `ID_LOCATION_CN` · rows: `SELECT NMIS_ID_LOCATIONS.CN, NMIS_ID_LOCATIONS.UNIT_CODE FROM NMIS_AGREEMENT_LOTS INNER JOIN (NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN=NMIS_ID_LOCATIONS.LOCATION_CN) ON NMIS_AGREEMENT_LOTS.CN=NMIS_ID_LOCATIONS.AGREEMENT_LOT_CN;`
- TextBox TRANSACTIONS_SUM = `=ROUND(Sum([NUMBER_OF_ACTIVITY_UNITS]*[AMT_PER_UNIT]),3)`
- TextBox Text30 = `AMT_PER_UNIT_INV_GROSS`

## Form: NMIS_SOURCE_LastTestData Query subform
- **Caption:** NMIS_SOURCELastTestData Query subform
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_AGREEMENTS › NMIS_SOURCE_LastTestData Query subform
- **Record source:** **NMIS_SOURCE_LastTestData_Table
- **Migration:** 0 of 8 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox TEST_DATE = `TEST_DATE`
- TextBox GROSS_SOURCE_PER_UNIT = `GROSS_SOURCE_PER_UNIT`
- CheckBox STRATIFIED = `STRATIFIED`
- TextBox GERM_PCT = `GERM_PCT`
- TextBox PURITY_PCT = `PURITY_PCT`
- CheckBox CHECK_STRAT = `CHECK_STRAT`
- TextBox Text47 = `TYPE_OF_TEST`
- TextBox Text49 = `FILLED_PCT`

## Form: NMIS_SOURCE_LastTestData2 Query subform
- **Caption:** NMIS_SOURCELastTestData Query subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › NMIS_SOURCE_LastTestData2 Query subform
- **Record source:** NMIS_SOURCE_LastTestData2b Query
- **Migration:** 0 of 8 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox TEST_DATE = `TEST_DATE`
- TextBox GROSS_SOURCE_PER_UNIT = `GROSS_SOURCE_PER_UNIT`
- CheckBox STRATIFIED = `STRATIFIED`
- TextBox GERM_PCT = `GERM_PCT`
- TextBox PURITY_PCT = `PURITY_PCT`
- CheckBox CHECK_STRAT = `CHECK_STRAT`
- TextBox FILLED_PCT = `FILLED_PCT`
- TextBox MOISTURE_PCT = `MOISTURE_PCT`

## Form: NMIS_SOURCE_LastTestData2b Query subform
- **Caption:** NMIS_SOURCELastTestData Query subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_LastTestData2b Query subform
- **Record source:** NMIS_SOURCE_LastTestData2b Query
- **Migration:** 0 of 8 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox TEST_DATE = `TEST_DATE`
- TextBox GROSS_SOURCE_PER_UNIT = `GROSS_SOURCE_PER_UNIT`
- CheckBox STRATIFIED = `STRATIFIED`
- TextBox GERM_PCT = `GERM_PCT`
- TextBox PURITY_PCT = `PURITY_PCT`
- CheckBox CHECK_STRAT = `CHECK_STRAT`
- TextBox FILLED_PCT = `FILLED_PCT`
- TextBox MOISTURE_PCT = `MOISTURE_PCT`

## Form: NMIS_SOURCE_LastTestData2c Query subform
- **Caption:** NMIS_SOURCELastTestData Query subform
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › Seed_Ship_Ticket_ID_ACTIVITIES subform › NMIS_SOURCE_TESTS_Ship_Ticket Form › NMIS_SOURCE_LastTestData2c Query subform
- **Record source:** NMIS_SOURCE_LastTestData2c Query
- **Migration:** 0 of 8 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox TEST_DATE = `TEST_DATE`
- TextBox GROSS_SOURCE_PER_UNIT = `GROSS_SOURCE_PER_UNIT`
- CheckBox STRATIFIED = `STRATIFIED`
- TextBox GERM_PCT = `GERM_PCT`
- TextBox PURITY_PCT = `PURITY_PCT`
- CheckBox CHECK_STRAT = `CHECK_STRAT`
- TextBox FILLED_PCT = `FILLED_PCT`
- TextBox MOISTURE_PCT = `MOISTURE_PCT`

## Form: NMIS_SOURCE_LOT_INFO subform
- **Caption:** NMIS_SOURCE_LOT_INFO subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › NMIS_SOURCE_LOT_INFO subform
- **Record source:** SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.NOTE, NMIS_SOURCE_LOTS.SOURCE_CODE, NMIS_SOURCE_LOTS.GEOGRAPHIC_LOCATION, NMIS_SOURCE_LOTS.CERT_CODE, NMIS_SOURCE_LOTS.PROAG_ELEVATION, NMIS_SOURCE_LOTS.DATE_COLLECTED, NMIS_SOURCE_LOTS.COLLECT_METHOD, NMIS_SOURCE_LOTS.ORIGIN_ELEVATION, NMIS_SOURCE_LOTS.BREEDING_ZONE, NMIS_SOURCE_LOTS.HUC, NMIS_SOURCE_LOTS.GENETIC_BASE, NMIS_SOURCE_LOTS.HABITAT, NMIS_SOURCE_LOTS.SEED_ZONE, NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE, NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE, NMIS_SOURCE_LOTS.COLLECTED_BY_ASSOCIATE, NMIS_SOURCE_LOTS.CATEGORY_CODE, NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_LOTS.ID2, NMIS_SOURCE_LOTS.PRODUCT_CN, NMIS_SOURCE_LOTS.INSERTED_BY, NMIS_SOURCE_LOTS.INSERTED_DATE, NMIS_SOURCE_LOTS.INSERTED_INSTANCE, NMIS_SOURCE_LOTS.MODIFIED_BY, NMIS_SOURCE_LOTS.MODIFIED_DATE, NMIS_SOURCE_LOTS.MODIFIED_INSTANCE, NMIS_SOURCE_LOTS.TRANSFERRED_BY, NMIS_SOURCE_LOTS.TRANSFERRED_DATE, NMIS_SOURCE_LOTS.TRANSFERRED_INSTANCE, NMIS_SOURCE_LOTS.CROP_YEAR, NMIS_SOURCE_LOTS.COMBINED, NMIS_SOURCE_LOTS.BREEDING_SUBUNIT, NMIS_SOURCE_LOTS.TREE_NUMBER, NMIS_SOURCE_LOTS.LATTITUDE, NMIS_SOURCE_LOTS.LONGITUDE, NMIS_SOURCE_LOTS.TOWNSHIP, NMIS_SOURCE_LOTS.RANGE, NMIS_SOURCE_LOTS.SECTION, NMIS_SOURCE_LOTS.MERIDIAN, NMIS_SOURCE_LOTS.BREEDING_ZONE_OLD FROM NMIS_SOURCE_LOTS;
- **Backend tables:** NMIS_ASSOCIATES, NMIS_CATEGORIES, NMIS_PRODUCTS, NMIS_SOURCE_LOTS, NMIS_SPECIES
- **Migration:** 23 of 42 bound fields mapped. Main GrowHub screens: /source-lots/new (16), /orders/new (14), /admin/products/new (1)

**Controls**
- TextBox INSERTED_BY "Inserted By:" = `INSERTED_BY`
- TextBox INSERTED_DATE "Inserted Date:" = `=[NMIS_SOURCE_LOTS_Select subform].Form!INSERTED_DATE` · default `=Now()`
- TextBox INSERTED_INSTANCE "Inserted  Instance:" = `INSERTED_INSTANCE`
- TextBox MODIFIED_BY "Modified By:" = `MODIFIED_BY`
- TextBox MODIFIED_DATE "Modified Date:" = `MODIFIED_DATE` · default `=Now()`
- TextBox MODIFIED_INSTANCE "Modified Instance:" = `MODIFIED_INSTANCE`
- TextBox TRANSFERRED_BY "Transferred By:" = `TRANSFERRED_BY`
- TextBox TRANSFERRED_DATE "Transferred Date:" = `TRANSFERRED_DATE` · default `=Now()`
- TextBox TRANSFERRED_INSTANCE "Transferred Instance:" = `TRANSFERRED_INSTANCE`
- TextBox ID = `ID` → GrowHub source_lot.lotId (yes)
- TextBox Source_Code = `SOURCE_CODE` → GrowHub source_lot.sourceCode (yes)
- ComboBox Text62 = `PLNTMSTR_SYMBOL` · rows: `SELECT [NMIS_SPECIES].[PLNTMSTR_SYMBOL], [NMIS_SPECIES].[VERNACULAR] FROM NMIS_SPECIES;` → GrowHub source_lot.speciesUuid (yes)
- ComboBox STORED_FOR_ASSOCIATE "Stored For:" = `STORED_FOR_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;` → GrowHub source_lot.clientUuid (yes)
- ComboBox STORED_AT_ASSOCIATE "Stored  At:" = `STORED_AT_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE;` · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]` → GrowHub source_lot.storageFacility (yes)
- TextBox DATE_COLLECTED "Collect Date:" = `DATE_COLLECTED` → GrowHub source_lot.dateCollected (yes)
- TextBox CROP_YEAR "Crop Year:" = `CROP_YEAR`
- ComboBox CATEGORY_CODE "Category:" = `CATEGORY_CODE` · rows: `SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES ORDER BY NMIS_CATEGORIES.CATEGORY_CODE;` → GrowHub source_lot.category (yes)
- ComboBox PRODUCT_CN "Product:" = `PRODUCT_CN` · rows: `SELECT NMIS_PRODUCTS.CN, NMIS_PRODUCTS.PRODUCT_DESC, NMIS_PRODUCTS.CATEGORY_CODE FROM NMIS_PRODUCTS WHERE (((NMIS_PRODUCTS.CATEGORY_CODE) Like "nsps"));`
- ComboBox PLNTMSTR_SYMBOL "Species Code:" = `PLNTMSTR_SYMBOL` · rows: `SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.VERNACULAR FROM NMIS_SPECIES;` → GrowHub source_lot.speciesUuid (yes)
- TextBox BREEDING_ZONE "Breeding Zone:" = `BREEDING_ZONE` → GrowHub source_lot.breedingZone (yes)
- TextBox BREEDING_SUBUNIT "Breeding Subunit:" = `BREEDING_SUBUNIT` → GrowHub source_lot.orchardSubUnit (yes)
- TextBox SEED_ZONE "Seed Zone:" = `SEED_ZONE` → GrowHub source_lot.seedZone (yes)
- TextBox ORIGIN_ELEVATION "Elevation:" = `ORIGIN_ELEVATION` → GrowHub source_lot.exactElevation (yes)
- TextBox COLLECT_METHOD "Collect Method:" = `COLLECT_METHOD` → GrowHub source_lot.collectionMethod (yes)
- TextBox GENETIC_BASE "Genetic Base:" = `GENETIC_BASE`
- TextBox CERT_CODE "Cert Class:" = `CERT_CODE`
- TextBox PROAG_ELEVATION "Proag Elevation:" = `PROAG_ELEVATION` → GrowHub source_lot.elevationRange (yes)
- TextBox GEOGRAPHIC_LOCATION "Geographic Loc:" = `GEOGRAPHIC_LOCATION` → GrowHub source_lot.localAreaDescription (yes)
- ComboBox COLLECTED_BY_ASSOCIATE "Collected By:" = `COLLECTED_BY_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;` → GrowHub source_lot.collectedByUuid (yes)
- TextBox HUC "HUC:" = `HUC`
- TextBox HABITAT "Habitat:" = `HABITAT`
- TextBox TREE_NUMBER "Tree No.(s):" = `TREE_NUMBER` → GrowHub source_lot.treeNumber (yes)
- TextBox NOTE "Note:" = `NOTE` → GrowHub species_product.notes (maybe)
- CheckBox COMBINED "Combined:" = `COMBINED`
- ComboBox CATEGORY_DESCRIPTION = `CATEGORY_CODE` · rows: `SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC, NMIS_CATEGORIES.CATEGORY_CODE FROM NMIS_CATEGORIES;` → GrowHub source_lot.category (yes)
- TextBox ID2 "'Old' ID:" = `ID2`
- TextBox LATTITUDE "Lattitude:" = `LATTITUDE`
- TextBox LONGITUDE "Longitude:" = `LONGITUDE`
- TextBox TOWNSHIP "Township:" = `TOWNSHIP` → GrowHub source_lot.town (yes)
- TextBox RANGE "Range:" = `RANGE` → GrowHub source_lot.range (yes)
- TextBox SECTION "Section:" = `SECTION` → GrowHub source_lot.section (yes)
- TextBox MERIDIAN "Meridan:" = `MERIDIAN` → GrowHub source_lot.meridian (yes)
- TextBox BREEDING_ZONE_OLD "Old BZ:" = `BREEDING_ZONE_OLD`

## Form: NMIS_SOURCE_LOT_SELECT
- **Caption:** NMIS source Lot History Report
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SOURCE_LOT_SELECT
- **Record source:** Link_Table
- **Backend tables:** NMIS_ASSOCIATES, NMIS_SOURCE_LOTS, NMIS_SPECIES
- **Subforms:** Form.NMIS_SOURCE_LOTS_REPORT subform
- **Opens:** Report:NMIS_SOURCE_LOTS_REPORT_All_Tests, Report:NMIS_SOURCE_LOTS_REPORT_Last_Test_Only
- **Opened from:** Form_Reports_Menu_Source Subform

**Controls**
- ComboBox SOURCE_LOT_ID_SELECT · rows: `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE, NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, NMIS_SOURCE_LOTS.DATE_COLLECTED, NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE AS [Stored At], [Seed_Balance Query].[Sum Of ACTIVITY_UNITS] AS Balance FROM [Seed_Balance Query] INNER JOIN (NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_I` · events: Enter
- CommandButton NMIS_SOURCE_LOT_REPORT_CREATE "Click to Preview Source Lot History Report" · events: Click
- Subform NMIS_SOURCE_LOTS_REPORT subform subform `Form.NMIS_SOURCE_LOTS_REPORT subform` (master Link1_Text → child CN)
- TextBox Link1_Text = `=[SOURCE_LOT_ID_SELECT]`
- ComboBox Like Client · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES INNER JOIN NMIS_SOURCE_LOTS ON (NMIS_ASSOCIATES.ASSOCIATE = NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) AND (NMIS_ASSOCIATES.ASSOCIATE = NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) WHERE (((NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) Like [Forms]![NMIS_SOURCE_LOT_SELECT]![Like_Plntmstr_Symbol] & "*")) GROUP BY NMIS_ASSOCIATES.ASSOCI` · events: Enter
- ComboBox Like_Plntmstr_Symbol · rows: `SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.SPECIES_NO, NMIS_SPECIES.SPECIES_ABBREVIATION, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name, NMIS_SPECIES.VERNACULAR FROM (NMIS_SPECIES INNER JOIN NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query ON NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL) INNER JOIN NMIS_SOURCE_LOTS ON (NMIS_SPECIES.PLNTMST` · events: Enter
- CheckBox Include_All_Tests · default `False`

## Form: NMIS_SOURCE_LOTS
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS
- **Backend tables:** NMIS_ASSOCIATES, NMIS_SOURCE_LOTS
- **Subforms:** Form.NMIS_ID_ACTIVITIES2 Subform, Form.NMIS_SOURCE_LOT_INFO subform, Form.NMIS_ID_ACTIVITIES Subform, Form.NMIS_ID_LOCATIONS subform, Form.NMIS_SOURCE_LastTestData2 Query subform, Form.NMIS_SOURCE_TESTS Subform, Form.NMIS_ID_LOCATIONS subform, Form.NMIS_CLIENT_MGMT_CODES_Source_Lots_Subform
- **Opens:** Form:H_ASF_from_source, Form:Lot_ID_Input_Form, Form:Lot_ID_Input_Form2, Form:Lot_ID_Input_Form2b, Form:NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE, Form:NMIS_SOURCE_Card_2, Form:NMIS_SOURCE_Card_BACK, Form:NMIS_SOURCE_LOTS_INPUT, Form:NMIS_SOURCE_LOTS_REPORT2, Form:NMIS_SOURCE_LOTS_TI_form, Form:Refresh_Close, Report:Lot_ID_Input_Form, Report:Lot_ID_Input_Form2, Report:Lot_ID_Input_Form2b, Report:NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE, Report:NMIS_SOURCE_Card_2, Report:NMIS_SOURCE_Card_BACK, Report:NMIS_SOURCE_LOTS_INPUT, Report:NMIS_SOURCE_LOTS_REPORT2, Report:NMIS_SOURCE_LOTS_TI_form, Report:Refresh_Close
- **Opened from:** Form_NMIS_AGREEMENTS_old Subform, Form_NMIS_SOURCE_LOTS_TI_Form, Form_NMIS_SOURCE_TESTS Form, Form_NMIS_SOURCE_TESTS_Ship_Ticket Form, Form_NMIS_SOURCE_TESTS_for_Act_data Form, Property_Module_Form_Opening Module
- **Form events with code:** Open
- **Migration:** 1 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TabControl TabCtl70
- Subform NMIS_ID_ACTIVITIES2 Subform subform `Form.NMIS_ID_ACTIVITIES2 Subform` (master CN → child SOURCE_LOT_CN)
- Subform NMIS_SOURCE_LOT_INFO subform subform `Form.NMIS_SOURCE_LOT_INFO subform` (master CN → child CN) · tab Lot Information
- Subform Activity subform `Form.NMIS_ID_ACTIVITIES Subform` (master CN → child SOURCE_LOT_CN) · tab Lot Information
- Subform Storage subform `Form.NMIS_ID_LOCATIONS subform` (master CN → child SOURCE_LOT_CN) · tab Lot Information
- Subform NMIS_SOURCE_LastTestData2 Query subform "Last Test Data" subform `Form.NMIS_SOURCE_LastTestData2 Query subform` (master CN → child SOURCE_LOT_CN) · tab Lot Information
- CommandButton Transactions "Transactions" · tab Lot Information · events: Click
- CommandButton NMIS_SOURCE_CARD "Source Card 2" · tab Lot Information · events: Click
- CommandButton NMIS_SOURCE_CARD_BACK "Source Card Back" · tab Lot Information · events: Click
- TextBox INSERTED_BY "Inserted By:" = `INSERTED_BY` · default `=CurrentUserName()` · tab Lot Information
- TextBox INSERTED_DATE "Inserted Date:" = `INSERTED_DATE` · default `Date()` · tab Lot Information
- CommandButton Open_Source_TI "Source TI" · tab Lot Information · events: Click
- Subform NMIS_SOURCE_TESTS Subform "NMIS SOURCE TESTS" subform `Form.NMIS_SOURCE_TESTS Subform` (master CN → child SOURCE_LOT_CN) · events: Enter
- CommandButton Preview/Print Box Labels "Box Labels for selected Lot" · tab Reports
- CommandButton Preview_Box_Mini_Labels "Box Mini Labels..." · tab Reports · events: Click
- CommandButton NMIS_GERM_ACTIVITY_REPORT "Lot Germ/Activity Report" · tab Reports · events: Click
- CommandButton ASF_from_source "Harvest ASF/ Performance" · tab Reports · events: Click
- Subform NMIS_ID_LOCATIONS subform1 subform `Form.NMIS_ID_LOCATIONS subform` (master CN → child SOURCE_LOT_CN)
- Subform NMIS_CLIENT_MGMT_CODES_Source_Lot_Subform "Client Mgmt Codes for this Lot" subform `Form.NMIS_CLIENT_MGMT_CODES_Source_Lots_Subform` (master CN → child SOURCE_CN)
- ComboBox Selected_Source_ID "Enter a Lot ID:" · rows: `SELECT [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].CN, [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].ID, [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].SOURCE, [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].[Sum Of ACTIVITY_UNITS], [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].CATEGORY_CODE, [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].STORED_FOR_ASSOCIATE, [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].STORED_AT_ASSOCIATE FROM [*NMIS_SOURCE_DATA_MAINT_FORM_T` · events: AfterUpdate, Enter
- TextBox CN = `=IIf(Not IsNull([Selected_Source_ID]),[Selected_Source_ID],[Selected_Source_Code])`
- CommandButton Close "Close" · events: Click
- TextBox SOURCE_LOT_CN = `CN` → GrowHub source_lot.accessLegacyId (yes)
- TextBox Index = `Index`
- ComboBox Selected_Source_Code "Source:" · rows: `SELECT [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].CN, [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].SOURCE, [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].ID, [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].[Sum Of ACTIVITY_UNITS] FROM [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE] WHERE ((([*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].SOURCE) Is Not Null) AND ((IIf([STORED_AT_ASSOCIATE] Like [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform` · events: AfterUpdate, Enter
- ComboBox Like_Stored_For "Stored For:" · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES INNER JOIN NMIS_SOURCE_LOTS ON (NMIS_ASSOCIATES.ASSOCIATE = NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) AND (NMIS_ASSOCIATES.ASSOCIATE = NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) WHERE (((NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]) AN` · default `"*"` · events: AfterUpdate, Enter
- ComboBox Like_Species · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_ABBREVIATION, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY INNER JOIN (NMIS_ASSOCIATES INNER JOIN NMIS_S` · default `"*"` · events: Enter
- CheckBox Hide_Zero_Bal "Hide Zero Bal" · default `False` · events: AfterUpdate
- TextBox Default_Date "Default Date:" · default `Date()`
- CheckBox Hide_Non_Local_Storage "Hide Non-Local Storage " · default `True` · events: AfterUpdate

## Form: NMIS_SOURCE_LOTS_Bend
- **Caption:** NMIS SOURCE LOTS Bend
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_LOTS_Bend
- **Record source:** SELECT [*NMIS_SOURCE_LOTS_Bend].ID, [*NMIS_SOURCE_LOTS_Bend].SOURCE_CODE, [*NMIS_SOURCE_LOTS_Bend].STORED_AT_ASSOCIATE, [*NMIS_SOURCE_LOTS_Bend].STORED_FOR_ASSOCIATE, [*NMIS_SOURCE_LOTS_Bend].CN, [Seed_Balance_Bend Query].[Sum Of ACTIVITY_UNITS], [Seed_Balance_Bend Query].UNIT_CODE, [*NMIS_SOURCE_LOTS_Bend].PLNTMSTR_SYMBOL, NMIS_SPECIES.PLNTMSTR_SYMBOL FROM ([Seed_Balance_Bend Query] RIGHT JOIN [*NMIS_SOURCE_LOTS_Bend] ON [Seed_Balance_Bend Query].SOURCE_LOT_CN = [*NMIS_SOURCE_LOTS_Bend].CN) LEFT JOIN NMIS_SPECIES ON [*NMIS_SOURCE_LOTS_Bend].PLNTMSTR_SYMBOL = NMIS_SPECIES.PLNTMSTR_SYMBOL WHERE ((([*NMIS_SOURCE_LOTS_Bend].STORED_FOR_ASSOCIATE) Like [Forms]![NMIS_SOURCE_LOTS_Bend]![STORED_FOR_LIKE] & "*") AND (([*NMIS_SOURCE_LOTS_Bend].ID) Like [Forms]![NMIS_SOURCE_LOTS_Bend]![ID_LIKE] & "*")) ORDER BY [*NMIS_SOURCE_LOTS_Bend].STORED_FOR_ASSOCIATE, [*NMIS_SOURCE_LOTS_Bend].ID;
- **Backend tables:** NMIS_SPECIES
- **Opens:** Form:Change_Bend_plntmstr_symbol, Form:Change_Bend_stored_for, Form:NMIS_SPECIES
- **Opened from:** Form_NMIS_AGREEMENTS, Form_NMIS_AGREEMENTS_bu, Form_NMIS_AGREEMENTS_w_lot_lookup, Form_NMIS_SOURCE_LOTS_INPUT
- **Form events with code:** Close
- **Migration:** 0 of 8 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox CN = `CN`  [FormHeader]
- TextBox ID_LIKE "ID Like:" · default `"*"` · events: AfterUpdate, DblClick  [FormHeader]
- TextBox STORED_FOR_LIKE "Stored for Like:" · default `"*"` · events: AfterUpdate, DblClick  [FormHeader]
- TextBox ID = `ID`
- TextBox SOURCE_CODE = `SOURCE_CODE`
- TextBox STORED_AT_ASSOCIATE = `STORED_AT_ASSOCIATE`
- TextBox STORED_FOR_ASSOCIATE = `STORED_FOR_ASSOCIATE` · events: DblClick
- TextBox Sum Of ACTIVITY_UNITS = `Sum Of ACTIVITY_UNITS`
- TextBox PLNTMSTR_SYMBOL = `*NMIS_SOURCE_LOTS_Bend.PLNTMSTR_SYMBOL`
- TextBox NMIS_SPECIES.PLNTMSTR_SYMBOL = `NMIS_SPECIES.PLNTMSTR_SYMBOL`
- CommandButton Run Bend_To_JHSN_Source Query "Click to Add Selected Lot To Source Lots" · events: Click  [FormFooter]

## Form: NMIS_SOURCE_LOTS_ID subform
- **Caption:** NMIS_SOURCE_LOTS_ID subform
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_AGREEMENTS › NMIS_SOURCE_LOTS_ID subform
- **Record source:** SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM [NMIS_SOURCE_LOTS]
- **Backend tables:** NMIS_SOURCE_LOTS
- **Migration:** 2 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox CN = `CN` → GrowHub source_lot.accessLegacyId (yes)
- TextBox ID "Source Lot ID:" = `ID` → GrowHub source_lot.lotId (yes)

## Form: NMIS_SOURCE_LOTS_INPUT
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT
- **Backend tables:** NMIS_ASSOCIATES, NMIS_CATEGORIES, NMIS_ID_ACTIVITIES, NMIS_PRODUCTS, NMIS_SOURCE_LOTS
- **Subforms:** Form.NMIS_SPECIES_NO subform, Form.NMIS_ID_ACTIVITIES_NEW_LOTS Subform, Form.SOURCE_CODE_TYPE Subform, Form.NMIS_ID_LOCATIONS2 subform, Form.NMIS_SOURCE_TESTS_NEW Subform, Form.NMIS_CLIENT_MGMT_CODES_Source_Lots_new_Subform, Form.NMIS_SOURCE_LastTestData2b Query subform
- **Opens:** Form:Lot_ID_Input_Form, Form:Lot_ID_Input_Form2, Form:Lot_ID_Input_Form2c, Form:NMIS_ASSOCIATES, Form:NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE_NEW_LOTS, Form:NMIS_SOURCE_Card_Activities, Form:NMIS_SOURCE_Card_BACK, Form:NMIS_SOURCE_Card_Front, Form:NMIS_SOURCE_LOTS_Bend, Form:NMIS_SOURCE_LOTS_GERM_TESTS, Form:NMIS_SOURCE_LOTS_TI_form, Form:NMIS_SOURCE_TESTS_NEW_LOT Form, Form:NMIS_SPECIES, Form:Refresh_Close, Form:Seedbox_Label_Large_ID, Form:Seedbox_Labels, Form:Seedbox_Labels2, Report:Lot_ID_Input_Form, Report:Lot_ID_Input_Form2, Report:Lot_ID_Input_Form2c, Report:NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE_NEW_LOTS, Report:NMIS_SOURCE_Card_Activities, Report:NMIS_SOURCE_Card_BACK, Report:NMIS_SOURCE_Card_Front, Report:NMIS_SOURCE_LOTS_Bend, Report:NMIS_SOURCE_LOTS_GERM_TESTS, Report:NMIS_SOURCE_LOTS_TI_form, Report:NMIS_SOURCE_TESTS_NEW_LOT Form, Report:Refresh_Close, Report:Seedbox_Label_Large_ID, Report:Seedbox_Labels, Report:Seedbox_Labels2
- **Opened from:** Form_NMIS_AGREEMENTS, Form_NMIS_AGREEMENTS_bu, Form_NMIS_AGREEMENTS_w_lot_lookup, Form_NMIS_SOURCE_LOTS, Form_NMIS_SOURCE_LOTS2, Form_NMIS_SOURCE_LOTS_bu
- **Form events with code:** AfterInsert, Close, Open
- **Migration:** 23 of 40 bound fields mapped. Main GrowHub screens: /source-lots/new (17), /orders/new (14)

**Controls**
- Subform NMIS_SPECIES_NO subform subform `Form.NMIS_SPECIES_NO subform` (master PLNTMSTR_SYMBOL → child PLNTMSTR_SYMBOL)
- TextBox SOURCE_CODE "Source Code:" = `SOURCE_CODE` · events: AfterUpdate, Enter → GrowHub source_lot.sourceCode (yes)
- TabControl TabCtl70
- ComboBox STORED_FOR_ASSOCIATE "Stored For:" = `STORED_FOR_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Hist)") AS AN FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.HISTORICAL) Like IIf(Not ([NMIS_ASSOCIATES].[HISTORICAL])=IsNull([Forms]![NMIS_SOURCE_LOTS_INPUT]![STORED_FOR_ASSOCIATE]),"*",False)));` · tab Lot Information · events: Enter, NotInList → GrowHub source_lot.clientUuid (yes)
- ComboBox STORED_AT_ASSOCIATE "Stored  At:" = `STORED_AT_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE;` · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]` · tab Lot Information · events: Enter → GrowHub source_lot.storageFacility (yes)
- TextBox DATE_COLLECTED "Collect Date:" = `DATE_COLLECTED` · tab Lot Information · events: Exit → GrowHub source_lot.dateCollected (yes)
- TextBox CROP_YEAR "Crop Year YYYY:" = `CROP_YEAR` · tab Lot Information · events: Enter
- ComboBox CATEGORY_CODE "Category:" = `CATEGORY_CODE` · rows: `SELECT NMIS_CATEGORIES.CATEGORY_CODE, [CATEGORY_DESC] & IIf([historical]," (Hist)") AS cd, NMIS_CATEGORIES.HISTORICAL FROM NMIS_CATEGORIES WHERE (((NMIS_CATEGORIES.HISTORICAL) Like IIf(IsNull([Forms]![NMIS_SOURCE_LOTS_INPUT]![CATEGORY_CODE]),False,"*"))) ORDER BY NMIS_CATEGORIES.CATEGORY_CODE;` · tab Lot Information · events: Enter → GrowHub source_lot.category (yes)
- ComboBox COLLECTED_BY_ASSOCIATE "Collected By:" = `COLLECTED_BY_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;` · tab Lot Information → GrowHub source_lot.collectedByUuid (yes)
- ComboBox PRODUCT_CN "Product:" = `PRODUCT_CN` · rows: `SELECT NMIS_PRODUCTS.CN, IIf(Not IsNull([PRODUCT_DESC]),[PRODUCT_DESC],"") & IIf([historical]," (Hist)") AS PD, NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.HISTORICAL FROM NMIS_PRODUCTS WHERE (((NMIS_PRODUCTS.CATEGORY_CODE)="nsps") AND ((NMIS_PRODUCTS.HISTORICAL) Like IIf(Not ([NMIS_Products].[HISTORICAL])=IsNull([Forms]![NMIS_SOURCE_LOTS_INPUT]![PRODUCT_CN]),"*",False))) ORDER BY IIf(Not IsNull([P` · tab Lot Information · events: AfterUpdate, Enter
- TextBox TREE_NUMBER "Tree No.(s):" = `TREE_NUMBER` · tab Lot Information → GrowHub source_lot.treeNumber (yes)
- ComboBox PLNTMSTR_SYMBOL "Species Code:" = `PLNTMSTR_SYMBOL` · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_ABBREVIATION, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY ORDER BY NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOW` · tab Lot Information · events: NotInList → GrowHub source_lot.speciesUuid (yes)
- TextBox BREEDING_ZONE "Breeding Zone:" = `BREEDING_ZONE` · tab Lot Information · events: AfterUpdate, Enter → GrowHub source_lot.breedingZone (yes)
- TextBox BREEDING_SUBUNIT "Breeding Subunit:" = `BREEDING_SUBUNIT` · tab Lot Information → GrowHub source_lot.orchardSubUnit (yes)
- TextBox SEED_ZONE "Seed Zone:" = `SEED_ZONE` · tab Lot Information → GrowHub source_lot.seedZone (yes)
- TextBox ORIGIN_ELEVATION "Elevation:" = `ORIGIN_ELEVATION` · tab Lot Information → GrowHub source_lot.exactElevation (yes)
- TextBox HUC "HUC:" = `HUC` · tab Lot Information
- TextBox HABITAT "Habitat:" = `HABITAT` · tab Lot Information
- TextBox COLLECT_METHOD "Collect Method:" = `COLLECT_METHOD` · tab Lot Information → GrowHub source_lot.collectionMethod (yes)
- TextBox GENETIC_BASE "Genetic Base:" = `GENETIC_BASE` · tab Lot Information
- TextBox CERT_CODE "Cert Class:" = `CERT_CODE` · tab Lot Information
- TextBox PROAG_ELEVATION "Proag Elevation:" = `PROAG_ELEVATION` · tab Lot Information → GrowHub source_lot.elevationRange (yes)
- TextBox LATTITUDE "Lattitude:" = `LATTITUDE` · tab Lot Information
- TextBox LONGITUDE "Longitude:" = `LONGITUDE` · tab Lot Information
- TextBox GEOGRAPHIC_LOCATION "Geographic Loc:" = `GEOGRAPHIC_LOCATION` · tab Lot Information → GrowHub source_lot.localAreaDescription (yes)
- TextBox TOWNSHIP "Township:" = `TOWNSHIP` · tab Lot Information → GrowHub source_lot.town (yes)
- TextBox RANGE "Range:" = `RANGE` · tab Lot Information → GrowHub source_lot.range (yes)
- TextBox SECTION "Section:" = `SECTION` · tab Lot Information → GrowHub source_lot.section (yes)
- TextBox MERIDIAN "Meridan:" = `MERIDIAN` · tab Lot Information → GrowHub source_lot.meridian (yes)
- TextBox NOTE "Note:" = `NOTE` · tab Lot Information → GrowHub processing_activity.notes (yes)
- ComboBox CATEGORY_DESCRIPTION = `CATEGORY_CODE` · rows: `SELECT NMIS_CATEGORIES.CATEGORY_CODE, [CATEGORY_DESC] & IIf([historical]," (Hist)") AS cd, NMIS_CATEGORIES.CATEGORY_CODE FROM NMIS_CATEGORIES WHERE (((NMIS_CATEGORIES.HISTORICAL) Like IIf(IsNull([Forms]![NMIS_SOURCE_LOTS_INPUT]![CATEGORY_CODE]),False,"*")));` · tab Lot Information · events: AfterUpdate, Enter → GrowHub source_lot.category (yes)
- Subform NMIS_ID_ACTIVITIES Subform subform `Form.NMIS_ID_ACTIVITIES_NEW_LOTS Subform` (master CN → child SOURCE_LOT_CN) · tab Lot Information
- CommandButton Open NMIS_SOURCE_TEST_RESULTS_NEW_LOT "Enter Test Data" · tab Lot Information · events: Click
- Subform SOURCE_CODE_TYPE Subform subform `Form.SOURCE_CODE_TYPE Subform` (master STORED_FOR_ASSOCIATE → child ASSOCIATE) · tab Lot Information
- TextBox INSERTED_BY "Inserted By:" = `INSERTED_BY` · default `=CurrentUserName()` · tab Lot Information
- TextBox INSERTED_DATE "Inserted Date:" = `INSERTED_DATE` · default `Date()` · tab Lot Information
- TextBox Activity_Code = `=[NMIS_ID_ACTIVITIES Subform].Form!ACTIVITY_CODE` · tab Lot Information
- Subform NMIS_ID_LOCATIONS2 subform subform `Form.NMIS_ID_LOCATIONS2 subform` (master CN → child SOURCE_LOT_CN) · tab Lot Information
- CheckBox COMBINED "Combined:" = `COMBINED` · tab Lot Information
- CommandButton Seed_Box_Label "Seed Box Label" · tab Lot Information · events: Click
- CommandButton Seed_Box_Mini_Label "Seed Box Mini-Label" · tab Lot Information · events: Click
- CommandButton NMIS_SOURCE_CARD "Source Card" · tab Lot Information · events: Click
- CommandButton NMIS_SOURCE_CARD_BACK "Source Card Back" · tab Lot Information · events: Click
- CommandButton Open_Bend_Lots_Form " Bend Lots" · tab Lot Information · events: Click
- CommandButton Transactions "Transactions" · tab Lot Information · events: Click
- CommandButton Seed_Box_Label_Large_ID "Seed Box ID Label" · tab Lot Information · events: Click
- CheckBox Duplicate "Duplicate" · default `False` · tab Lot Information
- CommandButton NMIS_SOURCE_CARD_Activities "Card Activities" · tab Lot Information · events: Click
- CommandButton Open_Source_TI "Source TI" · tab Lot Information · events: Click
- TextBox BREEDING_ZONE_OLD "Old BZ:" = `BREEDING_ZONE_OLD` · tab Lot Information
- TextBox ACCESSION = `ACCESSION` · tab Lot Information
- TextBox TREE = `TREE` · tab Lot Information
- Subform NMIS_SOURCE_TESTS Subform subform `Form.NMIS_SOURCE_TESTS_NEW Subform` (master CN → child SOURCE_LOT_CN)
- Subform NMIS_CLIENT_MGMT_CODES_Source_Lot_Subform "Client Mgmt Codes for this Lot" subform `Form.NMIS_CLIENT_MGMT_CODES_Source_Lots_new_Subform` (master CN → child SOURCE_CN) · tab Page460
- Subform NMIS_SOURCE_LastTestData2 Query subform "Last Test Data" subform `Form.NMIS_SOURCE_LastTestData2b Query subform` (master CN → child SOURCE_LOT_CN) · tab Page460
- TextBox ID2 "'Old' ID:" = `ID2`
- CommandButton Generate_Source_Code "Generate" · events: Click
- TextBox ID "ID:" = `ID` · events: AfterUpdate, DblClick, Enter, Exit → GrowHub source_lot.lotId (yes)
- TextBox CN = `CN` → GrowHub source_lot.accessLegacyId (yes)
- TextBox Index = `Index`
- CommandButton Refresh and Close "Close"
- TextBox New_CN = `=[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code`
- ComboBox Source_Lot_Lookup · rows: `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_LOTS.SOURCE_CODE, NMIS_SOURCE_LOTS.CATEGORY_CODE, NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE FROM NMIS_SOURCE_LOTS ORDER BY NMIS_SOURCE_LOTS.ID;` · events: AfterUpdate, Enter
- TextBox Backup_ID
- TextBox Source_code_old "Old Source Code:" = `SOURCE_CODE_OLD`
- TextBox Backup_source_code
- TextBox BackupBreedingZone

## Form: NMIS_SOURCE_LOTS_REPORT subform
- **Caption:** NMIS_SOURCE_LOTS_REPORT subform
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SOURCE_LOT_SELECT › NMIS_SOURCE_LOTS_REPORT subform
- **Record source:** SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE FROM NMIS_SOURCE_LOTS;
- **Backend tables:** NMIS_ASSOCIATES, NMIS_SOURCE_LOTS
- **Migration:** 2 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox CN = `CN` → GrowHub source_lot.accessLegacyId (yes)
- ComboBox STORED_AT_ASSOCIATE = `STORED_AT_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;` → GrowHub source_lot.storageFacility (yes)

## Form: NMIS_SOURCE_PRICE_LINKS subform
- **Caption:** NMIS_SOURCE_PRICE_LINKS subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SPECIES › NMIS_SOURCE_PRICE_LINKS subform
- **Record source:** SELECT NMIS_SOURCE_PRICE_LINKS.FY, NMIS_SOURCE_PRICE_LINKS.PRICE_RATE_CODE, NMIS_SOURCE_PRICE_RATES.AMOUNT, NMIS_SOURCE_PRICE_RATES.DESCRIPTION, NMIS_SOURCE_PRICE_LINKS.PLNTMSTR_SYMBOL, NMIS_SOURCE_PRICE_RATES_BASE.BASE_AMOUNT, NMIS_SOURCE_PRICE_RATES.DESCRIPTION FROM (NMIS_SOURCE_PRICE_LINKS RIGHT JOIN NMIS_SOURCE_PRICE_RATES ON (NMIS_SOURCE_PRICE_LINKS.PRICE_RATE_CODE = NMIS_SOURCE_PRICE_RATES.PRICE_RATE_CODE) AND (NMIS_SOURCE_PRICE_LINKS.FY = NMIS_SOURCE_PRICE_RATES.FY)) INNER JOIN NMIS_SOURCE_PRICE_RATES_BASE ON NMIS_SOURCE_PRICE_RATES.FY = NMIS_SOURCE_PRICE_RATES_BASE.FY ORDER BY NMIS_SOURCE_PRICE_LINKS.FY DESC;
- **Backend tables:** NMIS_FISCAL_YEARS, NMIS_SOURCE_PRICE_LINKS, NMIS_SOURCE_PRICE_RATES, NMIS_SOURCE_PRICE_RATES_BASE, NMIS_SPECIES
- **Migration:** 0 of 6 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox DESCRIPTION = `DESCRIPTION`
- TextBox PLNTMSTR_SYMBOL = `PLNTMSTR_SYMBOL`
- ComboBox PRICE_RATE_CODE = `PRICE_RATE_CODE` · rows: `SELECT NMIS_SOURCE_PRICE_RATES.PRICE_RATE_CODE, NMIS_SOURCE_PRICE_RATES.FY, NMIS_SOURCE_PRICE_RATES.AMOUNT, NMIS_SOURCE_PRICE_RATES.DESCRIPTION FROM NMIS_SOURCE_PRICE_RATES GROUP BY NMIS_SOURCE_PRICE_RATES.PRICE_RATE_CODE, NMIS_SOURCE_PRICE_RATES.FY, NMIS_SOURCE_PRICE_RATES.AMOUNT, NMIS_SOURCE_PRICE_RATES.DESCRIPTION HAVING (((NMIS_SOURCE_PRICE_RATES.FY)=[Forms]![NMIS_SPECIES]![NMIS_SOURCE_PRICE_L` · default `=IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="050357",[Forms]![NMIS_SPECIES]![PLNTMSTR_SYMBOL])` · events: Enter
- ComboBox FY = `FY` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![Switchboard]![FY_For_Reports]`
- TextBox AMOUNT = `AMOUNT`
- TextBox BASE_AMOUNT = `BASE_AMOUNT`
- TextBox PRICE_RATE = `=[AMOUNT]*[BASE_AMOUNT]`

## Form: NMIS_SOURCE_PRICE_RATES
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_SOURCE_PRICE_RATES
- **Subforms:** Form.NMIS_SOURCE_PRICE_RATES Subform
- **Opened from:** Form_xLookup_Tables_Menu

**Controls**
- Subform NMIS_SOURCE_PRICE_RATES Subform subform `Form.NMIS_SOURCE_PRICE_RATES Subform` (master  → child )

## Form: NMIS_SOURCE_PRICE_RATES Subform
- **Caption:** NMIS_SOURCE_PRICE_RATES
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_SOURCE_PRICE_RATES › NMIS_SOURCE_PRICE_RATES Subform
- **Record source:** SELECT NMIS_SOURCE_PRICE_RATES.* FROM NMIS_SOURCE_PRICE_RATES ORDER BY NMIS_SOURCE_PRICE_RATES.FY DESC , NMIS_SOURCE_PRICE_RATES.PRICE_RATE_CODE;
- **Backend tables:** NMIS_SOURCE_PRICE_RATES
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox PRICE_RATE_CODE = `PRICE_RATE_CODE`
- TextBox FY = `FY`
- TextBox AMOUNT = `AMOUNT`
- TextBox DESCRIPTION = `DESCRIPTION`

## Form: NMIS_SOURCE_PRICE_RATES2 Subform
- **Caption:** NMIS_SOURCE_PRICE_RATES
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SPECIES › NMIS_SOURCE_PRICE_RATES2 Subform
- **Record source:** SELECT NMIS_SOURCE_PRICE_RATES.* FROM NMIS_SOURCE_PRICE_RATES ORDER BY NMIS_SOURCE_PRICE_RATES.FY DESC , NMIS_SOURCE_PRICE_RATES.PRICE_RATE_CODE;
- **Backend tables:** NMIS_SOURCE_PRICE_RATES
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox PRICE_RATE_CODE = `PRICE_RATE_CODE` · default `=IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="050357",[Forms]![NMIS_SPECIES]![PLNTMSTR_SYMBOL])`
- TextBox FY = `FY` · default `=[Forms]![Switchboard]![FY_For_Reports]`
- TextBox AMOUNT = `AMOUNT`
- TextBox DESCRIPTION = `DESCRIPTION`

## Form: NMIS_SOURCE_PRICE_RATES_BASE
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_SOURCE_PRICE_RATES_BASE
- **Subforms:** Form.NMIS_SOURCE_PRICE_RATES_BASE Subform
- **Opened from:** Form_xLookup_Tables_Menu

**Controls**
- Subform NMIS_SOURCE_PRICE_RATES_BASE Subform subform `Form.NMIS_SOURCE_PRICE_RATES_BASE Subform` (master  → child )

## Form: NMIS_SOURCE_PRICE_RATES_BASE Subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SPECIES › NMIS_SOURCE_PRICE_RATES_BASE Subform
- **Record source:** SELECT NMIS_SOURCE_PRICE_RATES_BASE.BASE_AMOUNT, NMIS_SOURCE_PRICE_RATES_BASE.FY FROM NMIS_SOURCE_PRICE_RATES_BASE ORDER BY NMIS_SOURCE_PRICE_RATES_BASE.FY DESC;
- **Backend tables:** NMIS_SOURCE_PRICE_RATES_BASE
- **Migration:** 0 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox BASE_AMOUNT = `BASE_AMOUNT` · default `1`
- TextBox FY = `FY` · default `=[Forms]![Switchboard]![FY_For_Reports]`

## Form: NMIS_SOURCE_PRICES_ROLL_OVER
- **Menu path:** Switchboard › Rollover_Charges_module.Rollover_Source_Prices › NMIS_SOURCE_PRICES_ROLL_OVER
- **Record source:** NMIS_SOURCE_PRICES_ROLLED_OVER
- **Opened from:** Rollover_Charges_module
- **Migration:** 0 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox MaxOfFY "MaxOfFISCAL_YEAR:" = `MaxOfFY`
- TextBox NMIS_SOURCE_PRICES_Current "Source_Prices_Current:" = `Source_Prices_Current`

## Form: NMIS_SOURCE_PROCESSING_LINKS
- **Caption:** NMIS_SOURCE_PROCESSING_LINKS subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SPECIES › NMIS_SOURCE_PROCESSING_LINKS
- **Record source:** SELECT NMIS_SOURCE_PROCESSING_LINKS.FY, NMIS_SOURCE_PROCESSING_LINKS.PLNTMSTR_SYMBOL, NMIS_SOURCE_PROCESSING_LINKS.PROCESSING_RATE_CODE FROM NMIS_SOURCE_PROCESSING_LINKS ORDER BY NMIS_SOURCE_PROCESSING_LINKS.FY DESC;
- **Backend tables:** NMIS_FISCAL_YEARS, NMIS_SOURCE_PROCESSING_LINKS, NMIS_SOURCE_PROCESSING_RATES
- **Migration:** 0 of 3 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox PLNTMSTR_SYMBOL = `PLNTMSTR_SYMBOL` · default `=[Forms]![NMIS_SPECIES]![PLNTMSTR_SYMBOL]`
- ComboBox PRICE_RATE_CODE = `PROCESSING_RATE_CODE` · rows: `SELECT NMIS_SOURCE_PROCESSING_RATES.PROCESSING_RATE_CODE, NMIS_SOURCE_PROCESSING_RATES.FY, NMIS_SOURCE_PROCESSING_RATES.DESCRIPTION FROM NMIS_SOURCE_PROCESSING_RATES GROUP BY NMIS_SOURCE_PROCESSING_RATES.PROCESSING_RATE_CODE, NMIS_SOURCE_PROCESSING_RATES.FY, NMIS_SOURCE_PROCESSING_RATES.DESCRIPTION ORDER BY NMIS_SOURCE_PROCESSING_RATES.PROCESSING_RATE_CODE, NMIS_SOURCE_PROCESSING_RATES.FY DESC;` · events: Enter
- ComboBox FY = `FY` · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![Switchboard]![FY_For_Reports]`

## Form: NMIS_SOURCE_PROCESSING_PRICES_ROLL_OVER
- **Menu path:** Switchboard › Rollover_Charges_module.Rollover_Source_Processing_Prices › NMIS_SOURCE_PROCESSING_PRICES_ROLL_OVER
- **Record source:** NMIS_SOURCE_PROCESSING_PRICES_ROLLED_OVER
- **Opened from:** Rollover_Charges_module
- **Migration:** 0 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox MaxOfFY "MaxOfFISCAL_YEAR:" = `MaxOfFY`
- TextBox NMIS_SOURCE_PROCESSING_PRICES_Current "Source_Proc_Prices_Current:" = `Source_Processing_Prices_Current`

## Form: NMIS_SOURCE_PROCESSING_RATES
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_SOURCE_PROCESSING_RATES
- **Subforms:** Form.NMIS_SOURCE_PROCESSING_RATES Subform
- **Opened from:** Form_xLookup_Tables_Menu

**Controls**
- Subform NMIS_SOURCE_PRICE_RATES Subform subform `Form.NMIS_SOURCE_PROCESSING_RATES Subform` (master  → child )
- TextBox Like_FY "View FY Like:" · default `=[Forms]![Switchboard]![FY_For_Reports]` · events: AfterUpdate

## Form: NMIS_SOURCE_PROCESSING_RATES Subform
- **Caption:** NMIS_SOURCE_PROCESSING_RATES
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_SOURCE_PROCESSING_RATES › NMIS_SOURCE_PROCESSING_RATES Subform
- **Record source:** SELECT NMIS_SOURCE_PROCESSING_RATES.* FROM NMIS_SOURCE_PROCESSING_RATES WHERE (((NMIS_SOURCE_PROCESSING_RATES.FY) Like [Forms]![NMIS_SOURCE_PROCESSING_RATES]![Like_FY] & "*")) ORDER BY NMIS_SOURCE_PROCESSING_RATES.FY DESC , NMIS_SOURCE_PROCESSING_RATES.PROCESSING_RATE_CODE, NMIS_SOURCE_PROCESSING_RATES.PROCESSING_RATE_CODE, NMIS_SOURCE_PROCESSING_RATES.ACTIVITY_CODE, NMIS_SOURCE_PROCESSING_RATES.MIN, NMIS_SOURCE_PROCESSING_RATES.MAX;
- **Backend tables:** NMIS_SOURCE_PROCESSING_RATES
- **Migration:** 0 of 11 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox PROCESSING_RATE_CODE = `PROCESSING_RATE_CODE`
- TextBox FY = `FY`
- TextBox CHARGE_PER_UNIT = `CHARGE_PER_UNIT`
- TextBox DESCRIPTION = `DESCRIPTION`
- TextBox CHARGE_PER_ACTIVITY = `CHARGE_PER_ACTIVITY`
- TextBox UNIT_CODE = `UNIT_CODE`
- TextBox MGMT_CODE = `MGMT_CODE`
- TextBox MIN = `MIN`
- TextBox MAX = `MAX`
- TextBox ACTIVITY_CODE = `ACTIVITY_CODE`
- TextBox CATEGORY_CODE = `CATEGORY_CODE`

## Form: NMIS_SOURCE_SPP_WORKSHEET
- **Caption:** Seed Per Pound Worksheet
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › NMIS_SOURCE_TESTS Subform › NMIS_SOURCE_SPP_WORKSHEET
- **Backend tables:** NMIS_SOURCE_LOTS
- **Opens:** Report:NMIS_Seed_Per_Pound_Worksheet
- **Opened from:** Form_NMIS_SOURCE_TESTS Form, Form_NMIS_SOURCE_TESTS Subform, Form_NMIS_SOURCE_TESTS_for_Act_data Form

**Controls**
- TextBox SAMPLE1 "Sample 1:" · default `Null` · events: Exit, LostFocus
- TextBox SAMPLE5 "Sample 5:" · default `Null` · events: Exit, LostFocus
- TextBox SAMPLE4 "Sample 4:" · default `Null` · events: Exit, LostFocus
- TextBox SAMPLE3 "Sample 3:" · default `Null` · events: Exit, LostFocus
- TextBox SAMPLE2 "Sample 2:" · default `Null` · events: Exit, LostFocus
- TextBox SAMPLE6 "Sample 6:" · default `Null` · events: Exit, LostFocus
- TextBox Average_Seed_Wt "Average:" = `=IIf([Total_Samples]>0,(NZ([Sample1],0)+NZ([Sample2],0)+NZ([Sample3],0)+NZ([Sample4],0)+NZ([Sample5],0)+NZ([Sample6],0)+NZ([Sample7],0)+NZ([Sample8],0))/[Total_Samples],Null)` · default `Null`
- TextBox Count_Sample1 = `=IIf(IsNull([SAMPLE1]) Or [SAMPLE1]=0,0,1)` · default `Null`
- TextBox Count_Sample2 = `=IIf(IsNull([SAMPLE2]) Or [SAMPLE2]=0,0,1)` · default `Null`
- TextBox Count_Sample3 = `=IIf(IsNull([SAMPLE3]) Or [SAMPLE3]=0,0,1)` · default `Null`
- TextBox Count_Sample4 = `=IIf(IsNull([SAMPLE4]) Or [SAMPLE4]=0,0,1)` · default `Null`
- TextBox Count_Sample5 = `=IIf(IsNull([SAMPLE5]) Or [SAMPLE5]=0,0,1)` · default `Null`
- TextBox Count_Sample6 = `=IIf(IsNull([SAMPLE6]) Or [SAMPLE6]=0,0,1)` · default `Null`
- TextBox Min "Min:" · default `Null`
- TextBox Max "Max:" · default `Null`
- TextBox Total_Samples "Samples:" = `=IIf([Count_Sample1]+[Count_Sample2]+[Count_Sample3]+[Count_Sample4]+[Count_Sample5]+[Count_Sample6]+[Count_Sample7]+[Count_Sample8]>0,[Count_Sample1]+[Count_Sample2]+[Count_Sample3]+[Count_Sample4]+[Count_Sample5]+[Count_Sample6]+[Count_Sample7]+[Count_Sample8],Null)` · default `Null`
- TextBox Total_Weight "Total Wt:" = `=IIf(NZ([Sample1],0)+NZ([Sample2],0)+NZ([Sample3],0)+NZ([Sample4],0)+NZ([Sample5],0)+NZ([Sample6],0)+NZ([Sample7],0)+NZ([Sample8],0)>0,NZ([Sample1],0)+NZ([Sample2],0)+NZ([Sample3],0)+NZ([Sample4],0)+NZ([Sample5],0)+NZ([Sample6],0)+NZ([Sample7],0)+NZ([Sample8],0),Null)` · default `Null`
- TextBox Max_minus_Min "Max - Min:" = `=[max]-[min]` · default `Null`
- TextBox Ten_PCT_of_Average "10% of Average:" = `=IIf([Total_Samples]>0,((NZ([Sample1],0)+NZ([Sample2],0)+NZ([Sample3],0)+NZ([Sample4],0)+NZ([Sample5],0)+NZ([Sample6],0)+NZ([Sample7],0)+NZ([Sample8],0))/[Total_Samples])/10,Null)` · default `Null`
- TextBox Thousand_Seed_Wt "1000 Seed Wt (gm):" = `=Round([Average_Seed_Wt]*(1000/[Seeds_Per_Sample]),3)` · default `Null`
- TextBox Seed_Per_Pound "Seed Per Pound:" = `=Round(453600/[Thousand_Seed_Wt],0)` · default `Null`
- TextBox Date "Date:" · default `=[Forms]![NMIS_SOURCE_LOTS]![Activity].[Form]![ACTIVITY_DATE]`
- TextBox Comments "Comments"
- ComboBox Lot ID "Lot ID:" · rows: `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS;` · default `=[Forms]![NMIS_SOURCE_LOTS]![CN]`
- CommandButton Preview_SPP_Worksheet "Preview Report" · events: Click
- TextBox SAMPLE7 "Sample 7:" · default `Null` · events: Exit, LostFocus
- TextBox Count_Sample7 = `=IIf(IsNull([SAMPLE7]) Or [SAMPLE7]=0,0,1)` · default `Null`
- TextBox SAMPLE8 "Sample 8:" · default `Null` · events: Exit, LostFocus
- TextBox Count_Sample8 = `=IIf(IsNull([SAMPLE8]) Or [SAMPLE8]=0,0,1)` · default `Null`
- TextBox Seeds_Per_Sample "Seeds/Sample:" · default `100`
- TextBox Text92 = `="Wt of " & [Seeds_Per_Sample] & " Seeds in grams"`

## Form: NMIS_SOURCE_SPP_WORKSHEET_NEW
- **Caption:** Seed Per Pound Worksheet
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_TESTS_NEW Subform › NMIS_SOURCE_SPP_WORKSHEET_NEW
- **Backend tables:** NMIS_SOURCE_LOTS
- **Opens:** Report:Field_tag_pairs_w_NIds, Report:Field_tag_pairs_w_NIds_Intermec, Report:Field_tag_pairs_wo_NIds, Report:Field_tag_pairs_wo_NIds_Intermec, Report:NMIS_Seed_Per_Pound_NEW_Worksheet, Report:NMIS_Seed_Per_Pound_Worksheet
- **Opened from:** Form_NMIS_SOURCE_TESTS_NEW Subform

**Controls**
- TextBox SAMPLE1 "Sample 1:" · default `Null` · events: Exit, LostFocus
- TextBox SAMPLE5 "Sample 5:" · default `Null` · events: Exit, LostFocus
- TextBox SAMPLE4 "Sample 4:" · default `Null` · events: Exit, LostFocus
- TextBox SAMPLE3 "Sample 3:" · default `Null` · events: Exit, LostFocus
- TextBox SAMPLE2 "Sample 2:" · default `Null` · events: Exit, LostFocus
- TextBox SAMPLE6 "Sample 6:" · default `Null` · events: Exit, LostFocus
- TextBox Average_100_Seed_Wt "Average:" = `=IIf([Total_Samples]>0,(NZ([Sample1],0)+NZ([Sample2],0)+NZ([Sample3],0)+NZ([Sample4],0)+NZ([Sample5],0)+NZ([Sample6],0))/[Total_Samples],Null)` · default `Null`
- TextBox Count_Sample1 = `=IIf(IsNull([SAMPLE1]) Or [SAMPLE1]=0,0,1)` · default `Null`
- TextBox Count_Sample2 = `=IIf(IsNull([SAMPLE2]) Or [SAMPLE2]=0,0,1)` · default `Null`
- TextBox Count_Sample3 = `=IIf(IsNull([SAMPLE3]) Or [SAMPLE3]=0,0,1)` · default `Null`
- TextBox Count_Sample4 = `=IIf(IsNull([SAMPLE4]) Or [SAMPLE4]=0,0,1)` · default `Null`
- TextBox Count_Sample5 = `=IIf(IsNull([SAMPLE5]) Or [SAMPLE5]=0,0,1)` · default `Null`
- TextBox Count_Sample6 = `=IIf(IsNull([SAMPLE6]) Or [SAMPLE6]=0,0,1)` · default `Null`
- TextBox Min "Min:" · default `Null`
- TextBox Max "Max:" · default `Null`
- TextBox Total_Samples "Samples:" = `=IIf([Count_Sample1]+[Count_Sample2]+[Count_Sample3]+[Count_Sample4]+[Count_Sample5]+[Count_Sample6]>0,[Count_Sample1]+[Count_Sample2]+[Count_Sample3]+[Count_Sample4]+[Count_Sample5]+[Count_Sample6],Null)` · default `Null`
- TextBox Total_Weight "Total Wt:" = `=IIf(NZ([Sample1],0)+NZ([Sample2],0)+NZ([Sample3],0)+NZ([Sample4],0)+NZ([Sample5],0)+NZ([Sample6],0)>0,NZ([Sample1],0)+NZ([Sample2],0)+NZ([Sample3],0)+NZ([Sample4],0)+NZ([Sample5],0)+NZ([Sample6],0),Null)` · default `Null`
- TextBox Max_minus_Min "Max - Min:" = `=[max]-[min]` · default `Null`
- TextBox Ten_PCT_of_Average "10% of Average:" = `=IIf([Total_Samples]>0,((NZ([Sample1],0)+NZ([Sample2],0)+NZ([Sample3],0)+NZ([Sample4],0)+NZ([Sample5],0)+NZ([Sample6],0))/[Total_Samples])/10,Null)` · default `Null`
- TextBox Thousand_Seed_Wt "1000 Seed Wt:" = `=Round([Average_100_Seed_Wt]*10,3)` · default `Null`
- TextBox Seed_Per_Pound "Seed Per Pound:" = `=Round(453600/[Thousand_Seed_Wt],0)` · default `Null`
- TextBox Date "Date:" · default `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_ACTIVITIES Subform].[Form]![ACTIVITY_DATE]`
- TextBox Comments "Comments"
- ComboBox Lot ID "Lot ID:" · rows: `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS;` · default `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![CN]`
- CommandButton Preview_SPP_Worksheet "Preview Report" · events: Click

## Form: NMIS_SOURCE_SPP_WORKSHEET_New_Lot
- **Caption:** Seed Per Pound Worksheet
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_TESTS_NEW_LOT Form › NMIS_SOURCE_SPP_WORKSHEET_New_Lot
- **Backend tables:** NMIS_SOURCE_LOTS
- **Opens:** Report:NMIS_Seed_Per_Pound_Worksheet, Report:NMIS_Seed_Per_Pound_Worksheet_new_lot
- **Opened from:** Form_NMIS_SOURCE_TESTS_NEW_LOT Form

**Controls**
- TextBox SAMPLE1 "Sample 1:" · default `Null` · events: Exit, LostFocus
- TextBox SAMPLE5 "Sample 5:" · default `Null` · events: Exit, LostFocus
- TextBox SAMPLE4 "Sample 4:" · default `Null` · events: Exit, LostFocus
- TextBox SAMPLE3 "Sample 3:" · default `Null` · events: Exit, LostFocus
- TextBox SAMPLE2 "Sample 2:" · default `Null` · events: Exit, LostFocus
- TextBox SAMPLE6 "Sample 6:" · default `Null` · events: Exit, LostFocus
- TextBox Average_Seed_Wt "Average:" = `=IIf([Total_Samples]>0,(NZ([Sample1],0)+NZ([Sample2],0)+NZ([Sample3],0)+NZ([Sample4],0)+NZ([Sample5],0)+NZ([Sample6],0)+NZ([Sample7],0)+NZ([Sample8],0))/[Total_Samples],Null)` · default `Null`
- TextBox Count_Sample1 = `=IIf(IsNull([SAMPLE1]) Or [SAMPLE1]=0,0,1)` · default `Null`
- TextBox Count_Sample2 = `=IIf(IsNull([SAMPLE2]) Or [SAMPLE2]=0,0,1)` · default `Null`
- TextBox Count_Sample3 = `=IIf(IsNull([SAMPLE3]) Or [SAMPLE3]=0,0,1)` · default `Null`
- TextBox Count_Sample4 = `=IIf(IsNull([SAMPLE4]) Or [SAMPLE4]=0,0,1)` · default `Null`
- TextBox Count_Sample5 = `=IIf(IsNull([SAMPLE5]) Or [SAMPLE5]=0,0,1)` · default `Null`
- TextBox Count_Sample6 = `=IIf(IsNull([SAMPLE6]) Or [SAMPLE6]=0,0,1)` · default `Null`
- TextBox Min "Min:" · default `Null`
- TextBox Max "Max:" · default `Null`
- TextBox Total_Samples "Samples:" = `=IIf([Count_Sample1]+[Count_Sample2]+[Count_Sample3]+[Count_Sample4]+[Count_Sample5]+[Count_Sample6]+[Count_Sample7]+[Count_Sample8]>0,[Count_Sample1]+[Count_Sample2]+[Count_Sample3]+[Count_Sample4]+[Count_Sample5]+[Count_Sample6]+[Count_Sample7]+[Count_Sample8],Null)` · default `Null`
- TextBox Total_Weight "Total Wt:" = `=IIf(NZ([Sample1],0)+NZ([Sample2],0)+NZ([Sample3],0)+NZ([Sample4],0)+NZ([Sample5],0)+NZ([Sample6],0)+NZ([Sample7],0)+NZ([Sample8],0)>0,NZ([Sample1],0)+NZ([Sample2],0)+NZ([Sample3],0)+NZ([Sample4],0)+NZ([Sample5],0)+NZ([Sample6],0)+NZ([Sample7],0)+NZ([Sample8],0),Null)` · default `Null`
- TextBox Max_minus_Min "Max - Min:" = `=[max]-[min]` · default `Null`
- TextBox Ten_PCT_of_Average "10% of Average:" = `=IIf([Total_Samples]>0,((NZ([Sample1],0)+NZ([Sample2],0)+NZ([Sample3],0)+NZ([Sample4],0)+NZ([Sample5],0)+NZ([Sample6],0)+NZ([Sample7],0)+NZ([Sample8],0))/[Total_Samples])/10,Null)` · default `Null`
- TextBox Thousand_Seed_Wt "1000 Seed Wt (gm):" = `=Round([Average_Seed_Wt]*(1000/[Seeds_Per_Sample]),3)` · default `Null`
- TextBox Seed_Per_Pound "Seed Per Pound:" = `=Round(453600/[Thousand_Seed_Wt],0)` · default `Null`
- TextBox Date "Date:" · default `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_ACTIVITIES Subform].[Form]![ACTIVITY_DATE]`
- TextBox Comments "Comments"
- ComboBox Lot ID "Lot ID:" · rows: `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS;` · default `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![CN]`
- CommandButton Preview_SPP_Worksheet "Preview Report" · events: Click
- TextBox SAMPLE7 "Sample 7:" · default `Null` · events: Exit, LostFocus
- TextBox Count_Sample7 = `=IIf(IsNull([SAMPLE7]) Or [SAMPLE7]=0,0,1)` · default `Null`
- TextBox SAMPLE8 "Sample 8:" · default `Null` · events: Exit, LostFocus
- TextBox Count_Sample8 = `=IIf(IsNull([SAMPLE8]) Or [SAMPLE8]=0,0,1)` · default `Null`
- TextBox Seeds_Per_Sample "Seeds/Sample:" · default `100`
- TextBox Text92 = `="Wt of " & [Seeds_Per_Sample] & " Seeds in grams"`

## Form: NMIS_SOURCE_SPP_WORKSHEET_ticket
- **Caption:** Seed Per Pound Worksheet
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › Seed_Ship_Ticket_ID_ACTIVITIES subform › NMIS_SOURCE_TESTS_Ship_Ticket Form › NMIS_SOURCE_SPP_WORKSHEET_ticket
- **Backend tables:** NMIS_SOURCE_LOTS
- **Opens:** Report:NMIS_Seed_Per_Pound_Worksheet, Report:NMIS_Seed_Per_Pound_Worksheet_ticket
- **Opened from:** Form_NMIS_SOURCE_LOTS_TI_Form, Form_NMIS_SOURCE_TESTS_Ship_Ticket Form

**Controls**
- TextBox SAMPLE1 "Sample 1:" · default `Null` · events: Exit, LostFocus
- TextBox SAMPLE5 "Sample 5:" · default `Null` · events: Exit, LostFocus
- TextBox SAMPLE4 "Sample 4:" · default `Null` · events: Exit, LostFocus
- TextBox SAMPLE3 "Sample 3:" · default `Null` · events: Exit, LostFocus
- TextBox SAMPLE2 "Sample 2:" · default `Null` · events: Exit, LostFocus
- TextBox SAMPLE6 "Sample 6:" · default `Null` · events: Exit, LostFocus
- TextBox Average_Seed_Wt "Average:" = `=IIf([Total_Samples]>0,(NZ([Sample1],0)+NZ([Sample2],0)+NZ([Sample3],0)+NZ([Sample4],0)+NZ([Sample5],0)+NZ([Sample6],0)+NZ([Sample7],0)+NZ([Sample8],0))/[Total_Samples],Null)` · default `Null`
- TextBox Count_Sample1 = `=IIf(IsNull([SAMPLE1]) Or [SAMPLE1]=0,0,1)` · default `Null`
- TextBox Count_Sample2 = `=IIf(IsNull([SAMPLE2]) Or [SAMPLE2]=0,0,1)` · default `Null`
- TextBox Count_Sample3 = `=IIf(IsNull([SAMPLE3]) Or [SAMPLE3]=0,0,1)` · default `Null`
- TextBox Count_Sample4 = `=IIf(IsNull([SAMPLE4]) Or [SAMPLE4]=0,0,1)` · default `Null`
- TextBox Count_Sample5 = `=IIf(IsNull([SAMPLE5]) Or [SAMPLE5]=0,0,1)` · default `Null`
- TextBox Count_Sample6 = `=IIf(IsNull([SAMPLE6]) Or [SAMPLE6]=0,0,1)` · default `Null`
- TextBox Min "Min:" · default `Null`
- TextBox Max "Max:" · default `Null`
- TextBox Total_Samples "Samples:" = `=IIf([Count_Sample1]+[Count_Sample2]+[Count_Sample3]+[Count_Sample4]+[Count_Sample5]+[Count_Sample6]+[Count_Sample7]+[Count_Sample8]>0,[Count_Sample1]+[Count_Sample2]+[Count_Sample3]+[Count_Sample4]+[Count_Sample5]+[Count_Sample6]+[Count_Sample7]+[Count_Sample8],Null)` · default `Null`
- TextBox Total_Weight "Total Wt:" = `=IIf(NZ([Sample1],0)+NZ([Sample2],0)+NZ([Sample3],0)+NZ([Sample4],0)+NZ([Sample5],0)+NZ([Sample6],0)+NZ([Sample7],0)+NZ([Sample8],0)>0,NZ([Sample1],0)+NZ([Sample2],0)+NZ([Sample3],0)+NZ([Sample4],0)+NZ([Sample5],0)+NZ([Sample6],0)+NZ([Sample7],0)+NZ([Sample8],0),Null)` · default `Null`
- TextBox Max_minus_Min "Max - Min:" = `=[max]-[min]` · default `Null`
- TextBox Ten_PCT_of_Average "10% of Average:" = `=IIf([Total_Samples]>0,((NZ([Sample1],0)+NZ([Sample2],0)+NZ([Sample3],0)+NZ([Sample4],0)+NZ([Sample5],0)+NZ([Sample6],0)+NZ([Sample7],0)+NZ([Sample8],0))/[Total_Samples])/10,Null)` · default `Null`
- TextBox Thousand_Seed_Wt "1000 Seed Wt (gm):" = `=Round([Average_Seed_Wt]*(1000/[Seeds_Per_Sample]),3)` · default `Null`
- TextBox Seed_Per_Pound "Seed Per Pound:" = `=Round(453600/[Thousand_Seed_Wt],0)` · default `Null`
- TextBox Date "Date:" · default `=[Forms]![NMIS_SOURCE_TESTS_Ship_Ticket Form]![TEST_DATE]`
- TextBox Comments "Comments"
- ComboBox Lot ID "Lot ID:" · rows: `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS;` · default `=[Forms]![NMIS_SOURCE_TESTS_Ship_Ticket Form]![SOURCE_LOT_CN]`
- CommandButton Preview_SPP_Worksheet "Preview Report" · events: Click
- TextBox SAMPLE7 "Sample 7:" · default `Null` · events: Exit, LostFocus
- TextBox Count_Sample7 = `=IIf(IsNull([SAMPLE7]) Or [SAMPLE7]=0,0,1)` · default `Null`
- TextBox SAMPLE8 "Sample 8:" · default `Null` · events: Exit, LostFocus
- TextBox Count_Sample8 = `=IIf(IsNull([SAMPLE8]) Or [SAMPLE8]=0,0,1)` · default `Null`
- TextBox Seeds_Per_Sample "Seeds/Sample:" · default `100`
- TextBox Text92 = `="Wt of " & [Seeds_Per_Sample] & " Seeds in grams"`

## Form: NMIS_SOURCE_TEST_RESULTS Subform
- **Caption:** NMIS_SOURCE_TEST_RESULTS Subform1
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › NMIS_SOURCE_TESTS Subform › NMIS_SOURCE_TEST_RESULTS Subform
- **Record source:** SELECT NMIS_SOURCE_TEST_RESULTS.SOURCE_TEST_CN, NMIS_SOURCE_TEST_RESULTS.ID_ACTIVITY_CN, NMIS_SOURCE_TEST_RESULTS.SOURCE_CN, NMIS_SOURCE_TEST_RESULTS.DAYS_STRAT, NMIS_SOURCE_TEST_RESULTS.DAYS, NMIS_SOURCE_TEST_RESULTS.GERM_PCT FROM NMIS_SOURCE_TEST_RESULTS ORDER BY NMIS_SOURCE_TEST_RESULTS.DAYS_STRAT, NMIS_SOURCE_TEST_RESULTS.DAYS;
- **Backend tables:** NMIS_SOURCE_TEST_RESULTS
- **Form events with code:** AfterInsert
- **Migration:** 3 of 6 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox ID_ACTIVITY_CN = `ID_ACTIVITY_CN` · default `=[Forms]![NMIS_SOURCE_LOTS]![NMIS_ID_ACTIVITIES Subform].[Form]![CN]`  [FormHeader]
- TextBox SOURCE_CN = `SOURCE_CN` · default `=[Forms]![NMIS_SOURCE_LOTS]![CN]`  [FormHeader]
- TextBox SOURCE_TEST_CN = `SOURCE_TEST_CN`  [FormHeader]
- TextBox Count_Increment · default `7`  [FormHeader]
- TextBox Default_Strat · default `0`  [FormHeader]
- TextBox Last_Day · default `0`  [FormHeader]
- TextBox DAYS_STRAT = `DAYS_STRAT` · default `=[Default_Strat]` · events: AfterUpdate → GrowHub source_lot_test.stratificationData (yes)
- TextBox DAYS = `DAYS` · default `=[Last_Day]+[Count_Increment]` → GrowHub source_lot_test.stratificationData (blank)
- TextBox GERM_PCT = `GERM_PCT` → GrowHub source_lot_test.stratificationData (yes)

## Form: NMIS_SOURCE_TESTS Form
- **Caption:** Source Test Entry Form
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › NMIS_ID_ACTIVITIES Subform › NMIS_SOURCE_TESTS Form
- **Record source:** NMIS_SOURCE_TESTS
- **Backend tables:** NMIS_ASSOCIATES, NMIS_ID_ACTIVITIES, NMIS_SOURCE_LOTS, NMIS_SOURCE_TESTS, NMIS_TEST_TYPES
- **Subforms:** Form.NMIS_SOURCE_TEST_RESULTS Subform
- **Opens:** Form:NMIS_SOURCE_LOTS, Form:NMIS_SOURCE_SPP_WORKSHEET
- **Opened from:** Form_NMIS_ID_ACTIVITIES Subform, Form_NMIS_ID_ACTIVITIES_NEW_LOTS Subform
- **Migration:** 11 of 16 bound fields mapped. Main GrowHub screens: /source-lots/new (9)

**Controls**
- CommandButton SaveAndClose "Close" · events: Click  [FormHeader]
- ComboBox Combo55 "Source Lot:" = `SOURCE_LOT_CN` · rows: `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS;` · default `=[Forms]![NMIS_SOURCE_LOTS]![CN]` → GrowHub lot_slip.sourceLotUuid (yes)  [FormHeader]
- TextBox CN "CN:" = `CN` · default `="SrceTst Frm3" & Now()` → GrowHub source_lot.accessLegacyId (yes)
- TextBox GROSS_SOURCE_PER_UNIT "Gross/Unit:" = `GROSS_SOURCE_PER_UNIT` · default `=[Forms]![NMIS_SOURCE_LOTS]![NMIS_SOURCE_LastTestData2 Query subform].[Form]![GROSS_SOURCE_PER_UNIT]` → GrowHub source_lot_test.testResults (yes)
- CheckBox STRATIFIED "Stratified?" = `STRATIFIED` · default `False` → GrowHub source_lot_test.testResults (yes)
- TextBox GERM_PCT "Germination %:" = `GERM_PCT` → GrowHub source_lot_test.testResults (yes)
- TextBox TEST_DOCUMENT "Document #:" = `TEST_DOCUMENT`
- TextBox PURITY_PCT "Purity %:" = `PURITY_PCT` · default `=[Forms]![NMIS_SOURCE_LOTS]![NMIS_SOURCE_LastTestData2 Query subform].[Form]![PURITY_PCT]` → GrowHub source_lot_test.testResults (yes)
- TextBox MOISTURE_PCT "Moisture :" = `MOISTURE_PCT` · default `=[Forms]![NMIS_SOURCE_LOTS]![NMIS_SOURCE_LastTestData2 Query subform].[Form]![MOISTURE_PCT]` → GrowHub source_lot_test.testResults (yes)
- TextBox FILLED_PCT "Filled %:" = `FILLED_PCT` · default `=[Forms]![NMIS_SOURCE_LOTS]![NMIS_SOURCE_LastTestData2 Query subform].[Form]![FILLED_PCT]` → GrowHub source_lot_test.testResults (yes)
- TextBox TEST_DATE "Test Date:" = `TEST_DATE` · default `=[Forms]![NMIS_SOURCE_LOTS]![Activity].[Form]![ACTIVITY_DATE]` → GrowHub source_lot_test.testDate (yes)
- TextBox NOTE "Note" = `NOTE` → GrowHub processing_activity.notes (yes)
- Subform NMIS_SOURCE_TEST_RESULTS Subform1 "NMIS SOURCE TEST RESULTS" subform `Form.NMIS_SOURCE_TEST_RESULTS Subform` (master CN → child SOURCE_TEST_CN)
- TextBox Index = `Index`
- ComboBox TYPE_OF_TEST = `TYPE_OF_TEST` · rows: `SELECT NMIS_TEST_TYPES.TYPE_OF_TEST, NMIS_TEST_TYPES.TYPE_OF_TEST_DESC FROM NMIS_TEST_TYPES WHERE (((NMIS_TEST_TYPES.HIDE) Like IIf(Not ([hide])=IsNull([Forms]![NMIS_SOURCE_TESTS Form]![TYPE_OF_TEST]),"*",False)));` · events: AfterUpdate, Enter → GrowHub source_lot_test.testType (yes)
- ComboBox TESTED_BY_ASSOCIATE "Tested By:" = `TESTED_BY_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & " (" & [associate] & ")" AS Name FROM NMIS_ASSOCIATES ORDER BY [ASSOCIATE_NAME] & " (" & [associate] & ")";` · default `=IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061019","991423",IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="050357","050357",""))`
- CheckBox CHECK_STRAT "Borderline Strat" = `CHECK_STRAT` · default `False`
- CommandButton Open_SPP_Calculator "Seed/Pound Calculator" · events: Click
- ComboBox ID_ACTIVITY_CN "Activity Date / Code:" = `ID_ACTIVITY_CN` · rows: `SELECT NMIS_ID_ACTIVITIES.CN, [ACTIVITY_DATE] & " / " & [ACTIVITY_CODE] AS Date_Code, NMIS_ID_ACTIVITIES.ACTIVITY_CODE FROM NMIS_ID_ACTIVITIES WHERE (((NMIS_ID_ACTIVITIES.ACTIVITY_CODE) In ("TEST","RETEST","XFRIN1","XFRIN2","ADDNON","Weigh","STONON","ADDNON") Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE) Like "tst*" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE) Like "rtst*" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE) L` · default `=[Forms]![NMIS_SOURCE_LOTS]![Activity].[Form]![CN]` · events: DblClick, Enter
- TextBox Text68 "1000 Seed Wt (gm):" = `=IIf([GROSS_SOURCE_PER_UNIT]>0,Round(453600/[GROSS_SOURCE_PER_UNIT],2))`

## Form: NMIS_SOURCE_TESTS Subform
- **Caption:** NMIS_SOURCE_TESTS Subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › NMIS_SOURCE_TESTS Subform
- **Record source:** SELECT NMIS_SOURCE_TESTS.* FROM NMIS_SOURCE_TESTS ORDER BY NMIS_SOURCE_TESTS.TEST_DATE DESC;
- **Backend tables:** NMIS_ASSOCIATES, NMIS_ID_ACTIVITIES, NMIS_SOURCE_LOTS, NMIS_SOURCE_TESTS, NMIS_TEST_TYPES
- **Subforms:** Form.NMIS_SOURCE_TEST_RESULTS Subform
- **Opens:** Form:NMIS_SOURCE_SPP_WORKSHEET
- **Form events with code:** Error
- **Migration:** 11 of 16 bound fields mapped. Main GrowHub screens: /source-lots/new (9)

**Controls**
- Subform NMIS_SOURCE_TEST_RESULTS Subform1 "TEST RESULTS" subform `Form.NMIS_SOURCE_TEST_RESULTS Subform` (master CN → child SOURCE_TEST_CN) · events: Enter
- TextBox CN "CN:" = `CN` · default `"Srce_Tst_Frm4" & Now()` → GrowHub source_lot.accessLegacyId (yes)
- TextBox SOURCE_LOT_CN "Source Lot CN:" = `SOURCE_LOT_CN` → GrowHub lot_slip.sourceLotUuid (yes)
- TextBox GROSS_SOURCE_PER_UNIT "Gross/Unit:" = `GROSS_SOURCE_PER_UNIT` · default `[Forms]![NMIS_SOURCE_LOTS]![NMIS_SOURCE_LastTestData2 Query subform].[Form]![GROSS_SOURCE_PER_UNIT]` → GrowHub source_lot_test.testResults (yes)
- CheckBox STRATIFIED "Stratified?" = `STRATIFIED` · default `False` → GrowHub source_lot_test.testResults (yes)
- TextBox GERM_PCT "Germination %:" = `GERM_PCT` → GrowHub source_lot_test.testResults (yes)
- TextBox TEST_DOCUMENT "Document #:" = `TEST_DOCUMENT`
- TextBox PURITY_PCT "Purity %:" = `PURITY_PCT` · default `=[Forms]![NMIS_SOURCE_LOTS]![NMIS_SOURCE_LastTestData2 Query subform].[Form]![PURITY_PCT]` → GrowHub source_lot_test.testResults (yes)
- TextBox MOISTURE_PCT "Moisture :" = `MOISTURE_PCT` · default `[Forms]![NMIS_SOURCE_LOTS]![NMIS_SOURCE_LastTestData2 Query subform].[Form]![MOISTURE_PCT]` → GrowHub source_lot_test.testResults (yes)
- TextBox FILLED_PCT "Filled %:" = `FILLED_PCT` · default `[Forms]![NMIS_SOURCE_LOTS]![NMIS_SOURCE_LastTestData2 Query subform].[Form]![FILLED_PCT]` → GrowHub source_lot_test.testResults (yes)
- TextBox TEST_DATE "Test Date:" = `TEST_DATE` · default `=[Forms]![NMIS_SOURCE_LOTS]![Activity].[Form]![ACTIVITY_DATE]` → GrowHub source_lot_test.testDate (yes)
- TextBox NOTE "Note" = `NOTE` → GrowHub processing_activity.notes (yes)
- TextBox Index = `Index`
- ComboBox Combo46 = `TYPE_OF_TEST` · rows: `SELECT NMIS_TEST_TYPES.TYPE_OF_TEST, NMIS_TEST_TYPES.TYPE_OF_TEST_DESC FROM NMIS_TEST_TYPES WHERE (((NMIS_TEST_TYPES.HIDE) Like IIf(Not ([hide])=IsNull([Forms]![NMIS_SOURCE_LOTS]![NMIS_SOURCE_TESTS Subform].[Form]![TYPE_OF_TEST]),"*",False)));` · events: AfterUpdate, Enter → GrowHub source_lot_test.testType (yes)
- ComboBox Tested_By_Associate "Tested By:" = `TESTED_BY_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & " (" & [associate] & ")" AS Name FROM NMIS_ASSOCIATES ORDER BY [ASSOCIATE_NAME] & " (" & [associate] & ")";` · default `=IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061019","991423",IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="050357","050357",IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="090707","08640301",IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="040207","ID6211",IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061505","061505","")))))`
- CheckBox CHECK_STRAT "Ck Strat" = `CHECK_STRAT` · default `False`
- CommandButton Open_SPP_Calculator "Seed/Pound Calculator" · events: Click
- ComboBox ID_ACTIVITY_CN "Activity Date / Code:" = `ID_ACTIVITY_CN` · rows: `SELECT NMIS_ID_ACTIVITIES.CN, [ACTIVITY_DATE] & " / " & [ACTIVITY_CODE] AS Date_Code, NMIS_ID_ACTIVITIES.ACTIVITY_CODE FROM NMIS_ID_ACTIVITIES WHERE (((NMIS_ID_ACTIVITIES.ACTIVITY_CODE) In ("TEST","RETEST","XFRIN1","XFRIN2","ADDNON","Weigh","STONON","ADDNON") Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE) Like "tst*" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE) Like "rts*" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE) Li` · default `=[Forms]![NMIS_SOURCE_LOTS]![Activity].[Form]![CN]`
- TextBox Text68 "1000 Seed Wt (gm):" = `=IIf([GROSS_SOURCE_PER_UNIT]>0,Round(453600/[GROSS_SOURCE_PER_UNIT],2))`

## Form: NMIS_SOURCE_TESTS_NEW Subform
- **Caption:** NMIS_SOURCE_TESTS Subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_TESTS_NEW Subform
- **Record source:** SELECT NMIS_SOURCE_TESTS.* FROM NMIS_SOURCE_TESTS ORDER BY NMIS_SOURCE_TESTS.TEST_DATE DESC;
- **Backend tables:** NMIS_ASSOCIATES, NMIS_ID_ACTIVITIES, NMIS_SOURCE_TESTS, NMIS_TEST_TYPES
- **Subforms:** Form.NMIS_SOURCE_TEST_RESULTS Subform
- **Opens:** Form:NMIS_SOURCE_SPP_WORKSHEET_NEW
- **Form events with code:** Error
- **Migration:** 11 of 16 bound fields mapped. Main GrowHub screens: /source-lots/new (9)

**Controls**
- Subform NMIS_SOURCE_TEST_RESULTS Subform1 "TEST RESULTS" subform `Form.NMIS_SOURCE_TEST_RESULTS Subform` (master CN → child SOURCE_TEST_CN) · events: Enter
- TextBox CN "CN:" = `CN` · default `"Srce_Tst_Frm2" & Now()` → GrowHub source_lot_test.legacyId (yes)
- TextBox SOURCE_LOT_CN "Source Lot CN:" = `SOURCE_LOT_CN` → GrowHub lot_slip.sourceLotUuid (yes)
- TextBox GROSS_SOURCE_PER_UNIT "Gross/Unit:" = `GROSS_SOURCE_PER_UNIT` · default `[Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_SOURCE_LastTestData2 Query subform].[Form]![GROSS_SOURCE_PER_UNIT]` → GrowHub source_lot_test.testResults (yes)
- CheckBox STRATIFIED "Stratified?" = `STRATIFIED` · default `False` → GrowHub source_lot_test.testResults (yes)
- TextBox GERM_PCT "Germination %:" = `GERM_PCT` → GrowHub source_lot_test.testResults (yes)
- TextBox TEST_DOCUMENT "Document #:" = `TEST_DOCUMENT`
- TextBox PURITY_PCT "Purity %:" = `PURITY_PCT` · default `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_SOURCE_LastTestData2 Query subform].[Form]![PURITY_PCT]` → GrowHub source_lot_test.testResults (yes)
- TextBox MOISTURE_PCT "Moisture :" = `MOISTURE_PCT` · default `[Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_SOURCE_LastTestData2 Query subform].[Form]![MOISTURE_PCT]` → GrowHub source_lot_test.testResults (yes)
- TextBox FILLED_PCT "Filled %:" = `FILLED_PCT` · default `[Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_SOURCE_LastTestData2 Query subform].[Form]![FILLED_PCT]` → GrowHub source_lot_test.testResults (yes)
- TextBox TEST_DATE "Test Date:" = `TEST_DATE` · default `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_ACTIVITIES Subform].[Form]![ACTIVITY_DATE]` → GrowHub source_lot_test.testDate (yes)
- TextBox NOTE "Note" = `NOTE` → GrowHub processing_activity.notes (yes)
- TextBox Index = `Index`
- ComboBox Combo46 = `TYPE_OF_TEST` · rows: `SELECT NMIS_TEST_TYPES.TYPE_OF_TEST, NMIS_TEST_TYPES.TYPE_OF_TEST_DESC FROM NMIS_TEST_TYPES WHERE (((NMIS_TEST_TYPES.HIDE) Like IIf(Not ([hide])=IsNull([Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_SOURCE_TESTS Subform].[Form]![TYPE_OF_TEST]),"*",False)));` · events: AfterUpdate, Enter → GrowHub source_lot_test.testType (yes)
- ComboBox Tested_By_Associate "Tested By:" = `TESTED_BY_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & " (" & [associate] & ")" AS Name FROM NMIS_ASSOCIATES ORDER BY [ASSOCIATE_NAME] & " (" & [associate] & ")";` · default `=IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061019","991423",IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="050357","050357",""))`
- CheckBox CHECK_STRAT "Ck Strat" = `CHECK_STRAT` · default `False`
- CommandButton Open_SPP_Calculator "Seed/Pound Calculator" · events: Click
- ComboBox ID_ACTIVITY_CN "Activity Date / Code:" = `ID_ACTIVITY_CN` · rows: `SELECT NMIS_ID_ACTIVITIES.CN, [ACTIVITY_DATE] & " / " & [ACTIVITY_CODE] AS Date_Code, NMIS_ID_ACTIVITIES.ACTIVITY_CODE FROM NMIS_ID_ACTIVITIES WHERE (((NMIS_ID_ACTIVITIES.ACTIVITY_CODE)="TEST" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE)="RETEST" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE)="XFRIN1" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE)="XFRIN2" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE)="ADDNON" Or (NMIS_ID_ACTIVIT` · default `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_ACTIVITIES Subform].[Form]![CN]` · events: Enter, GotFocus
- TextBox Text68 "1000 Seed Wt (gm):" = `=IIf([GROSS_SOURCE_PER_UNIT]>0,Round(453600/[GROSS_SOURCE_PER_UNIT],2))`

## Form: NMIS_SOURCE_TESTS_NEW_LOT Form
- **Caption:** Source Test Entry Form
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_TESTS_NEW_LOT Form
- **Record source:** NMIS_SOURCE_TESTS
- **Backend tables:** NMIS_ASSOCIATES, NMIS_ID_ACTIVITIES, NMIS_SOURCE_LOTS, NMIS_SOURCE_TESTS, NMIS_TEST_TYPES
- **Subforms:** Form.NMIS_SOURCE_TEST_RESULTS Subform
- **Opens:** Form:NMIS_SOURCE_SPP_WORKSHEET_New_Lot
- **Opened from:** Form_NMIS_SOURCE_LOTS_INPUT
- **Migration:** 11 of 17 bound fields mapped. Main GrowHub screens: /source-lots/new (9)

**Controls**
- CommandButton SaveAndClose "Close" · events: Click  [FormHeader]
- ComboBox Source_Lot_CN "Source Lot:" = `SOURCE_LOT_CN` · rows: `SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;` · default `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![CN]` → GrowHub lot_slip.sourceLotUuid (yes)  [FormHeader]
- TextBox CN "CN:" = `CN` · default `"Srce_Tst_Frm1" & Now()` → GrowHub source_lot.accessLegacyId (yes)
- TextBox ID_ACTIVITY_CN "ID Activity CN:" = `ID_ACTIVITY_CN` · default `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_ACTIVITIES Subform].[Form]![CN]`
- TextBox GROSS_SOURCE_PER_UNIT "Gross/Unit:" = `GROSS_SOURCE_PER_UNIT` · default `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_SOURCE_LastTestData2 Query subform].[Form]![GROSS_SOURCE_PER_UNIT]` → GrowHub source_lot_test.testResults (yes)
- CheckBox STRATIFIED "Stratified?" = `STRATIFIED` · default `False` → GrowHub source_lot_test.testResults (yes)
- TextBox GERM_PCT "Germination %:" = `GERM_PCT` → GrowHub source_lot_test.testResults (yes)
- TextBox TEST_DOCUMENT "Document #:" = `TEST_DOCUMENT`
- TextBox PURITY_PCT "Purity %:" = `PURITY_PCT` · default `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_SOURCE_LastTestData2 Query subform].[Form]![PURITY_PCT]` → GrowHub source_lot_test.testResults (yes)
- TextBox MOISTURE_PCT "Moisture :" = `MOISTURE_PCT` · default `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_SOURCE_LastTestData2 Query subform].[Form]![MOISTURE_PCT]` → GrowHub source_lot_test.testResults (yes)
- TextBox FILLED_PCT "Filled %:" = `FILLED_PCT` · default `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_SOURCE_LastTestData2 Query subform].[Form]![filled_PCT]` → GrowHub source_lot_test.testResults (yes)
- TextBox TEST_DATE "Test Date:" = `TEST_DATE` · default `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_ACTIVITIES Subform].[Form]![ACTIVITY_DATE]` → GrowHub source_lot_test.testDate (yes)
- TextBox NOTE "Note" = `NOTE` → GrowHub processing_activity.notes (yes)
- Subform NMIS_SOURCE_TEST_RESULTS Subform1 "NMIS SOURCE TEST RESULTS" subform `Form.NMIS_SOURCE_TEST_RESULTS Subform` (master CN → child SOURCE_TEST_CN)
- TextBox Index = `Index`
- ComboBox TYPE_OF_TEST = `TYPE_OF_TEST` · rows: `SELECT NMIS_TEST_TYPES.TYPE_OF_TEST, NMIS_TEST_TYPES.TYPE_OF_TEST_DESC FROM NMIS_TEST_TYPES WHERE (((NMIS_TEST_TYPES.HIDE) Like IIf(Not ([hide])=IsNull([Forms]![NMIS_SOURCE_TESTS_NEW_LOT Form]![TYPE_OF_TEST]),"*",False)));` · events: AfterUpdate, Enter → GrowHub source_lot_test.testType (yes)
- ComboBox TESTED_BY_ASSOCIATE "Tested By:" = `TESTED_BY_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & " (" & [associate] & ")" AS Name FROM NMIS_ASSOCIATES ORDER BY [ASSOCIATE_NAME] & " (" & [associate] & ")";` · default `=IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061019","991423",IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="050357","050357",IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="090707","08640301",IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="040207","ID6211",IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061505","061505","")))))`
- CheckBox CHECK_STRAT "Borderline Strat" = `CHECK_STRAT` · default `False`
- TextBox Text68 "1000 Seed Wt (gm):" = `=IIf([GROSS_SOURCE_PER_UNIT]>0,Round(453600/[GROSS_SOURCE_PER_UNIT],2))`
- CommandButton Open_SPP_Calculator "Seed/Pound Calculator" · events: Click
- ComboBox Combo58 "Activity Date / Code:" = `ID_ACTIVITY_CN` · rows: `SELECT NMIS_ID_ACTIVITIES.CN, [ACTIVITY_DATE] & " / " & [ACTIVITY_CODE] AS Date_Code, NMIS_ID_ACTIVITIES.ACTIVITY_CODE FROM NMIS_ID_ACTIVITIES WHERE (((NMIS_ID_ACTIVITIES.ACTIVITY_CODE) In ("TEST","RETEST","XFRIN1","XFRIN2","ADDNON","Weigh","STONON","ADDNON") Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE) Like "TST*" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE) Like "RTS*" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE) Li` · default `=[Forms]![NMIS_SOURCE_LOTS]![NMIS_ID_ACTIVITIES2 Subform].[Form]![CN]`

## Form: NMIS_SOURCE_TESTS_Ship_Ticket Form
- **Caption:** Source Test Entry Form
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › Seed_Ship_Ticket_ID_ACTIVITIES subform › NMIS_SOURCE_TESTS_Ship_Ticket Form
- **Record source:** NMIS_SOURCE_TESTS
- **Backend tables:** NMIS_ASSOCIATES, NMIS_ID_ACTIVITIES, NMIS_SOURCE_LOTS, NMIS_SOURCE_TESTS, NMIS_TEST_TYPES
- **Subforms:** Form.NMIS_SOURCE_TEST_RESULTS Subform, Form.NMIS_SOURCE_LastTestData2c Query subform
- **Opens:** Form:NMIS_SOURCE_LOTS, Form:NMIS_SOURCE_SPP_WORKSHEET_ticket
- **Opened from:** Form_Seed_Ship_Ticket_ID_ACTIVITIES subform
- **Migration:** 11 of 16 bound fields mapped. Main GrowHub screens: /source-lots/new (9)

**Controls**
- CommandButton SaveAndClose "Close" · events: Click  [FormHeader]
- ComboBox SOURCE_LOT_CN "Source Lot:" = `SOURCE_LOT_CN` · rows: `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS;` · default `=[Forms]![Seed_Shipping_Ticket Subform]![Seed_Ship_Ticked_ID_ACTIVITIES subform].[Form]![SOURCE_LOT_CN]` → GrowHub lot_slip.sourceLotUuid (yes)  [FormHeader]
- TextBox CN "CN:" = `CN` · default `="SourceTestS" & Now()` → GrowHub source_lot.accessLegacyId (yes)
- TextBox GROSS_SOURCE_PER_UNIT "Gross/Unit:" = `GROSS_SOURCE_PER_UNIT` · default `=[NMIS_SOURCE_LastTestData2c Query subform].[Form]![GROSS_SOURCE_PER_UNIT]` → GrowHub source_lot_test.testResults (yes)
- CheckBox STRATIFIED "Stratified?" = `STRATIFIED` · default `False` → GrowHub source_lot_test.testResults (yes)
- TextBox GERM_PCT "Germination %:" = `GERM_PCT` → GrowHub source_lot_test.testResults (yes)
- TextBox TEST_DOCUMENT "Document #:" = `TEST_DOCUMENT`
- TextBox PURITY_PCT "Purity %:" = `PURITY_PCT` · default `=[NMIS_SOURCE_LastTestData2c Query subform].[Form]![PURITY_PCT]` → GrowHub source_lot_test.testResults (yes)
- TextBox MOISTURE_PCT "Moisture :" = `MOISTURE_PCT` · default `=[NMIS_SOURCE_LastTestData2c Query subform].[Form]![MOISTURE_PCT]` → GrowHub source_lot_test.testResults (yes)
- TextBox FILLED_PCT "Filled %:" = `FILLED_PCT` · default `=[NMIS_SOURCE_LastTestData2c Query subform].[Form]![FILLED_PCT]` → GrowHub source_lot_test.testResults (yes)
- TextBox TEST_DATE "Test Date:" = `TEST_DATE` · default `=[Forms]![Seed_Shipping_Ticket Subform]![Seed_Ship_Ticked_ID_ACTIVITIES subform].[Form]![ACTIVITY_DATE]` → GrowHub source_lot_test.testDate (yes)
- TextBox NOTE "Note" = `NOTE` → GrowHub processing_activity.notes (yes)
- Subform NMIS_SOURCE_TEST_RESULTS Subform1 "NMIS SOURCE TEST RESULTS" subform `Form.NMIS_SOURCE_TEST_RESULTS Subform` (master CN → child SOURCE_TEST_CN)
- TextBox Index = `Index`
- ComboBox TESTED_BY_ASSOCIATE "Tested By:" = `TESTED_BY_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & " (" & [associate] & ")" AS Name FROM NMIS_ASSOCIATES ORDER BY [ASSOCIATE_NAME] & " (" & [associate] & ")";` · default `=IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061019","991423",IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="050357","050357",""))`
- CheckBox CHECK_STRAT "Borderline Strat" = `CHECK_STRAT` · default `False`
- CommandButton Open_SPP_Calculator "Seed/Pound Calculator" · events: Click
- ComboBox ID_ACTIVITY_CN "Activity Date / Code:" = `ID_ACTIVITY_CN` · rows: `SELECT NMIS_ID_ACTIVITIES.CN, [ACTIVITY_DATE] & " / " & [ACTIVITY_CODE] AS Date_Code, NMIS_ID_ACTIVITIES.ACTIVITY_CODE FROM NMIS_ID_ACTIVITIES WHERE (((NMIS_ID_ACTIVITIES.ACTIVITY_CODE)="TEST" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE)="RETEST" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE)="XFRIN1" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE)="XFRIN2" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE)="ADDNON" Or (NMIS_ID_ACTIVIT` · default `=[Forms]![Seed_Shipping_Ticket Subform]![Seed_Ship_Ticked_ID_ACTIVITIES subform].[Form]![CN]` · events: DblClick, Enter
- Subform NMIS_SOURCE_LastTestData2c Query subform subform `Form.NMIS_SOURCE_LastTestData2c Query subform` (master  → child )
- ComboBox Combo60 = `TYPE_OF_TEST` · rows: `SELECT NMIS_TEST_TYPES.TYPE_OF_TEST, NMIS_TEST_TYPES.TYPE_OF_TEST_DESC FROM NMIS_TEST_TYPES WHERE (((NMIS_TEST_TYPES.HIDE) Like IIf(Not ([hide])=IsNull([Forms]![NMIS_SOURCE_TESTS_Ship_Ticket Form]![TYPE_OF_TEST]),"*",False)));` → GrowHub source_lot_test.testType (yes)

## Form: NMIS_SOWING_ORDER
- **Caption:** Sowing Order Table
- **Menu path:** Switchboard › NMIS_SOWING_ORDER
- **Record source:** SELECT NMIS_SOWING_ORDER.* FROM NMIS_SOWING_ORDER WHERE (((NMIS_SOWING_ORDER.GROUP) Like NZ([Forms]![NMIS_SOWING_ORDER]![Like_Group],"*") Or (NMIS_SOWING_ORDER.GROUP) Is Null)) ORDER BY NMIS_SOWING_ORDER.GROUP, IIf([Forms]![NMIS_SOWING_ORDER]![Sort_By]="C",[SOWING_ORDER_CODE],IIf([SOWING_ORDER]<100,"0" & IIf([SOWING_ORDER]<10,"0") & [SOWING_ORDER]));
- **Backend tables:** NMIS_SOWING_ORDER
- **Opens:** Report:NMIS_Sow_Order_Checklist, Report:NMIS_Sow_Order_Checklist_by_Sow_Order
- **Opened from:** Form_NMIS_AGREEMENT_LOTS_Report, Form_NMIS_SPECIES_PRODUCTS Form, Form_NMIS_SPECIES_PRODUCTS Form Unlockable, Form_Oyjord_Calibration, Form_Reports_Menu_Production Subform
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- CommandButton Preview_Checklist "Preview Checklist" · events: Click  [FormHeader]
- ComboBox Sort_By · rows: `C;Code;O;Order` · default `"C"` · events: AfterUpdate  [FormHeader]
- ComboBox Like_Group · rows: `*;All Types;BS;Bareroot Sow;BT;Bareroot Transplant;CS;Container Sow;CT;Container Transplant` · default `"*"` · events: AfterUpdate, DblClick  [FormHeader]
- TextBox SOWING_ORDER_CODE = `SOWING_ORDER_CODE`
- TextBox SOWING_ORDER = `SOWING_ORDER`
- TextBox DESCRIPTION = `DESCRIPTION`
- ComboBox Group = `GROUP` · rows: `BS;Bareroot Sow;BT;Bareroot Transplant;CS;Container Sow;CT;Container Transplant` · events: DblClick

## Form: NMIS_Special_Charges subform
- **Caption:** Special_Charges subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › NMIS_ID_ACTIVITIES Subform › NMIS_ID_MGMT_CODES subform › NMIS_Special_Charges subform
- **Record source:** SELECT [NMIS_ID_ACTIVITIES].[CHARGE_PER_HOUR_OVERRIDE], [NMIS_ID_ACTIVITIES].[CHARGE_PER_AMT_OVERRIDE], [NMIS_ID_ACTIVITIES].[CHARGE_PER_UNIT_OVERRIDE], [NMIS_ID_ACTIVITIES].[CHARGE_PER_ACTIVITY_OVERRIDE], [NMIS_ID_ACTIVITIES].[CONTRACT_ITEM], [NMIS_ID_ACTIVITIES].[ACTIVITY_TIME], [NMIS_ID_ACTIVITIES].[ACTIVITY_HOURS], [NMIS_ID_ACTIVITIES].[CN] FROM NMIS_ID_ACTIVITIES;
- **Backend tables:** NMIS_ID_ACTIVITIES
- **Migration:** 0 of 6 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox CHARGE_PER_HOUR_OVERRIDE = `CHARGE_PER_HOUR_OVERRIDE`
- TextBox CHARGE_PER_AMT_OVERRIDE = `CHARGE_PER_AMT_OVERRIDE`
- TextBox CHARGE_PER_UNIT_OVERRIDE = `CHARGE_PER_UNIT_OVERRIDE`
- TextBox CHARGE_PER_ACTIVITY_OVERRIDE = `CHARGE_PER_ACTIVITY_OVERRIDE`
- TextBox CONTRACT_ITEM = `CONTRACT_ITEM`
- TextBox ACTIVITY_HOURS "Activity Hours:" = `ACTIVITY_HOURS`
- TextBox Hours "Hours"
- TextBox Charge_Per_Hour "X"
- TextBox Charge "=" = `=[Hours]*[Charge_Per_Hour]`

## Form: NMIS_SPECIES
- **Caption:** NMIS SPECIES
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SPECIES
- **Record source:** NMIS_SPECIES
- **Backend tables:** NMIS_SPECIES, NMIS_SPECIES_GROUP
- **Subforms:** Form.NMIS_SOURCE_PRICE_LINKS subform, Form.NMIS_SPECIES subform, Form.NMIS_SPECIES_RETEST subform, Form.NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS subform, Form.NMIS_SOURCE_PRICE_RATES2 Subform, Form.NMIS_SOURCE_PRICE_RATES_BASE Subform, Form.NMIS_SOURCE_PROCESSING_LINKS
- **Opens:** Form:*nrcs_plantlist, Form:NMIS_SPECIES_CHECKLIST, Form:nmis_species_vs_nrcs_plantlist, Form:nmis_species_vs_nrcs_plantlist_by_group, Report:*nrcs_plantlist, Report:NMIS_SPECIES_CHECKLIST, Report:nmis_species_vs_nrcs_plantlist, Report:nmis_species_vs_nrcs_plantlist_by_group
- **Opened from:** Form_Lookup_Tables_Menu Subform, Form_NMIS_AGREEMENTS_w_lot_lookup, Form_NMIS_SOURCE_LOTS_Bend, Form_NMIS_SOURCE_LOTS_INPUT, Form_xLookup_Tables_Menu
- **Form events with code:** Current, Open
- **Migration:** 0 of 17 bound fields mapped. Main GrowHub screens: none

**Controls**
- CheckBox DIVERSE "Non-Traditional?" = `DIVERSE` · default `True`
- TextBox SPECIES_NO "Species No:" = `SPECIES_NO`
- TextBox SPECIES_ABBREVIATION "Abbrv:" = `SPECIES_ABBREVIATION`
- TextBox VERNACULAR "Common Name:" = `VERNACULAR` · events: DblClick, Enter
- TextBox GENUS "Genus:" = `GENUS`
- TextBox SPECIES "Species:" = `SPECIES`
- TextBox SUBSP "Subspecies:" = `SUBSP`
- TextBox VARIETY "Variety:" = `VARIETY`
- ComboBox SPECIES_GROUP "Group:" = `SPECIES_GROUP` · rows: `NMIS_SPECIES_GROUP`
- TextBox PLNTMSTR_SYMBOL "Symbol:" = `PLNTMSTR_SYMBOL`
- TextBox Scientific_Name_Preview "Scientific Name Preview:" = `=[GENUS] & " " & [SPECIES] & IIf([SUBSP]>""," spp. " & [SUBSP],"") & IIf([VARIETY]>""," var. " & [VARIETY],"")`
- ComboBox VAR = `VAR` · rows: `"";"var."`
- ComboBox SPP = `SPP` · rows: `"";"spp."`
- ComboBox XGENUS = `XGENUS` · rows: `"";"X"`
- ComboBox XSPECIES = `XSPECIES` · rows: `"";"X"`
- TabControl TabCtl74
- Subform NMIS_SOURCE_PRICE_LINKS subform subform `Form.NMIS_SOURCE_PRICE_LINKS subform` (master PLNTMSTR_SYMBOL → child PLNTMSTR_SYMBOL) · tab Price Rates
- Subform NMIS_SPECIES subform subform `Form.NMIS_SPECIES subform` (master  → child ) · tab Local_NMIS_Species
- TextBox SELECTED_PLNTMSTR_SYMBOL · tab Local_NMIS_Species
- TextBox Like_Symbol "Symbol Like:" · tab Local_NMIS_Species · events: AfterUpdate, DblClick
- CommandButton Find "Find" · tab Local_NMIS_Species · events: Click
- CommandButton Open_NRCS_Plantlist "Open NRCS Plantlist" · tab NRCS_Plantlist · events: Click
- CommandButton Local_vs_NRCS "Local vs NRCS Plantlist" · tab NRCS_Plantlist · events: Click
- CommandButton Local_vs_NRCS_by_Group "Local vs NRCS Plantlist by Group" · tab NRCS_Plantlist · events: Click
- Subform NMIS_SPECIES_RETEST subform subform `Form.NMIS_SPECIES_RETEST subform` (master PLNTMSTR_SYMBOL → child PLNTMSTR_SYMBOL) · tab Species_Restest
- Subform NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS subform subform `Form.NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS subform` (master PLNTMSTR_SYMBOL → child PLNTMSTR_SYMBOL)
- Subform NMIS_SOURCE_PRICE_RATES2 Subform subform `Form.NMIS_SOURCE_PRICE_RATES2 Subform` (master plntmstr_symbol → child plntmstr_symbol) · tab Price Amount/Factor
- Subform NMIS_SOURCE_PRICE_RATES_BASE Subform subform `Form.NMIS_SOURCE_PRICE_RATES_BASE Subform` (master  → child ) · tab Price Rates Base
- Subform NMIS_SOURCE_PROCESSING_LINKS subform `Form.NMIS_SOURCE_PROCESSING_LINKS` (master PLNTMSTR_SYMBOL → child PLNTMSTR_SYMBOL)
- TextBox ENTERED_BY "Entered By:" = `ENTERED_BY` · default `=CurrentUserName()`
- TextBox ENTERED_DATE "Date Entered:" = `ENTERED_DATE` · default `Date()`
- CheckBox HIDE = `HIDE`
- CommandButton Preview Species Checklist "Preview Species Checklist..." · events: Click
- ComboBox Like_Plntmstr_Symbol "Lookup Species Code:" · rows: `SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.SPECIES_NO, NMIS_SPECIES.SPECIES_ABBREVIATION, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name, NMIS_SPECIES.VERNACULAR FROM NMIS_SPECIES INNER JOIN NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query ON NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL ORDER BY IIf([Forms]![NMIS_SPECIES]![Sort_By_Common_Na` · events: AfterUpdate, DblClick, Enter, Exit
- CheckBox Sort_By_Common_Name "By Common  Name" · default `False`

## Form: NMIS_SPECIES subform
- **Caption:** NMIS_SPECIES subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SPECIES › NMIS_SPECIES subform
- **Record source:** SELECT NMIS_SPECIES.* FROM NMIS_SPECIES WHERE (((NMIS_SPECIES.PLNTMSTR_SYMBOL) Like [Forms]![NMIS_SPECIES]![Like_Symbol] & "*")) ORDER BY NMIS_SPECIES.GENUS, NMIS_SPECIES.SPECIES;
- **Backend tables:** NMIS_SPECIES, NMIS_SPECIES_GROUP
- **Migration:** 0 of 7 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox PLNTMSTR_SYMBOL = `PLNTMSTR_SYMBOL`
- TextBox VERNACULAR = `VERNACULAR`
- TextBox SPECIES = `SPECIES`
- ComboBox SPECIES_GROUP = `SPECIES_GROUP` · rows: `SELECT [NMIS_SPECIES_GROUP].[SPECIES_GROUP] FROM NMIS_SPECIES_GROUP;`
- TextBox SPECIES_NO = `SPECIES_NO`
- TextBox SPECIES_ABBREVIATION = `SPECIES_ABBREVIATION`
- TextBox XGENUS = `GENUS`

## Form: NMIS_SPECIES_NO subform
- **Caption:** NMIS_SPECIES_NO subform
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SPECIES_NO subform
- **Record source:** SELECT [NMIS_SPECIES].[PLNTMSTR_SYMBOL], [NMIS_SPECIES].[SPECIES_NO], [NMIS_SPECIES].[SPECIES_ABBREVIATION] FROM NMIS_SPECIES;
- **Backend tables:** NMIS_SPECIES
- **Migration:** 0 of 3 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox PLNTMSTR_SYMBOL = `PLNTMSTR_SYMBOL`
- TextBox SPECIES_NO = `SPECIES_NO`
- TextBox SPECIES_ABBREVIATION = `SPECIES_ABBREVIATION`

## Form: NMIS_SPECIES_PRODUCT_CYCLES subform1
- **Caption:** NMIS_SPECIES_PRODUCT_CYCLES subform1
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_SPECIES_PRODUCTS Form › NMIS_SPECIES_PRODUCT_CYCLES subform1
- **Record source:** SELECT NMIS_SPECIES_PRODUCT_CYCLES.*, Product_Inventory_Factor_Desc_For_Species_Products.FACTOR1_DESC, Product_Inventory_Factor_Desc_For_Species_Products.FACTOR2_DESC, Product_Inventory_Factor_Desc_For_Species_Products.FACTOR3_DESC FROM Product_Inventory_Factor_Desc_For_Species_Products RIGHT JOIN NMIS_SPECIES_PRODUCT_CYCLES ON Product_Inventory_Factor_Desc_For_Species_Products.SPECIES_PRODUCT_CN = NMIS_SPECIES_PRODUCT_CYCLES.SPECIES_PRODUCT_CN ORDER BY NMIS_SPECIES_PRODUCT_CYCLES.SPECIES_PRODUCT_CN, NMIS_SPECIES_PRODUCT_CYCLES.NUMBER_OF_FY_MIN;
- **Backend tables:** NMIS_PRODUCTS, NMIS_SPECIES_PRODUCTS, NMIS_SPECIES_PRODUCT_CYCLES, NMIS_UNITS
- **Migration:** 0 of 15 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox SPECIES_PRODUCT_CN = `SPECIES_PRODUCT_CN`  [FormHeader]
- TextBox FACTOR1_DESC = `FACTOR1_DESC`  [FormHeader]
- TextBox Text81 = `FACTOR2_DESC`  [FormHeader]
- TextBox Text82 = `FACTOR3_DESC`  [FormHeader]
- TextBox NUMBER_OF_FY_MIN = `NUMBER_OF_FY_MIN` · default `0`
- TextBox NUMBER_OF_FY_MAX = `NUMBER_OF_FY_MAX` · default `0`
- CheckBox CYCLE_REQUIRES_PROCESSING = `CYCLE_REQUIRES_PROCESSING` · default `Yes`
- TextBox INV_TARGET_PCT = `INV_TARGET_PCT`
- TextBox INV_FACTOR_1 = `INV_FACTOR_1`
- TextBox INV_FACTOR_2 = `INV_FACTOR_2`
- TextBox INV_FACTOR_3 = `INV_FACTOR_3`
- TextBox INV_SIZE_SAMPLE = `INV_SIZE_SAMPLE`
- TextBox INV_MAX_CV = `INV_MAX_CV`
- ComboBox CURRENT_SPECIES_PRODUCT_CN = `CURRENT_PRODUCT_CN` · rows: `SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.PRODUCT_CLASS, NMIS_PRODUCTS.HISTORICAL FROM NMIS_PRODUCTS WHERE (((NMIS_PRODUCTS.HISTORICAL) Like IIf([Forms]![NMIS_SPECIES_PRODUCTS Form]![Hide_Historical],0,"*"))) ORDER BY [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")";` · default `=[Forms]![NMIS_SPECIES_PRODUCTS Form]![PRODUCT_CN]` · events: Enter, GotFocus
- ComboBox UNIT = `UNIT` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.CELL_DIMENSIONS FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE) Like IIf(IsNull("unit_code"),"g","g*"))) ORDER BY NMIS_UNITS.UNIT_CODE;` · default `=[Forms]![NMIS_SPECIES_PRODUCTS Form]![UNIT_CODE]`

## Form: NMIS_SPECIES_PRODUCT_CYCLES_Duplicate subform1
- **Caption:** NMIS_SPECIES_PRODUCT_CYCLES subform1
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_SPECIES_PRODUCTS Form › NMIS_SPECIES_PRODUCTS_Duplicate Form › NMIS_SPECIES_PRODUCT_CYCLES_Duplicate subform1
- **Record source:** SELECT NMIS_SPECIES_PRODUCT_CYCLES.*, Product_Inventory_Factor_Desc_For_Species_Products.FACTOR1_DESC, Product_Inventory_Factor_Desc_For_Species_Products.FACTOR2_DESC, Product_Inventory_Factor_Desc_For_Species_Products.FACTOR3_DESC FROM Product_Inventory_Factor_Desc_For_Species_Products RIGHT JOIN NMIS_SPECIES_PRODUCT_CYCLES ON Product_Inventory_Factor_Desc_For_Species_Products.SPECIES_PRODUCT_CN = NMIS_SPECIES_PRODUCT_CYCLES.SPECIES_PRODUCT_CN ORDER BY NMIS_SPECIES_PRODUCT_CYCLES.SPECIES_PRODUCT_CN, NMIS_SPECIES_PRODUCT_CYCLES.NUMBER_OF_FY_MIN;
- **Backend tables:** NMIS_PRODUCTS, NMIS_SPECIES_PRODUCT_CYCLES, NMIS_UNITS
- **Migration:** 0 of 15 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox SPECIES_PRODUCT_CN = `SPECIES_PRODUCT_CN`  [FormHeader]
- TextBox FACTOR1_DESC = `FACTOR1_DESC`  [FormHeader]
- TextBox Text81 = `FACTOR2_DESC`  [FormHeader]
- TextBox Text82 = `FACTOR3_DESC`  [FormHeader]
- TextBox NUMBER_OF_FY_MIN = `NUMBER_OF_FY_MIN` · default `0`
- TextBox NUMBER_OF_FY_MAX = `NUMBER_OF_FY_MAX` · default `0`
- CheckBox CYCLE_REQUIRES_PROCESSING = `CYCLE_REQUIRES_PROCESSING` · default `Yes`
- TextBox INV_TARGET_PCT = `INV_TARGET_PCT`
- TextBox INV_FACTOR_1 = `INV_FACTOR_1`
- TextBox INV_FACTOR_2 = `INV_FACTOR_2`
- TextBox INV_FACTOR_3 = `INV_FACTOR_3`
- TextBox INV_SIZE_SAMPLE = `INV_SIZE_SAMPLE`
- TextBox INV_MAX_CV = `INV_MAX_CV`
- ComboBox CURRENT_SPECIES_PRODUCT_CN = `CURRENT_PRODUCT_CN` · rows: `SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.PRODUCT_CLASS FROM NMIS_PRODUCTS ORDER BY [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")";` · default `=[Forms]![NMIS_SPECIES_PRODUCTS Form]![PRODUCT_CN]`
- ComboBox UNIT = `UNIT` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="g")) ORDER BY NMIS_UNITS.UNIT_CODE;`

## Form: NMIS_SPECIES_PRODUCTS Form
- **Caption:** NMIS SPECIES PRODUCTS
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_SPECIES_PRODUCTS Form
- **Backend tables:** NMIS_PRODUCTS, NMIS_PRODUCT_TYPES, NMIS_SEASONS, NMIS_SOWING_ORDER, NMIS_SPECIES, NMIS_SPECIES_PRODUCTS, NMIS_UNITS
- **Subforms:** Form.NMIS_SPECIES_PRODUCT_CYCLES subform1, Form.NMIS_FACTORS subform, Form.SpeciesProductAgreementLotSubform
- **Opens:** Form:NMIS_PRODUCTS, Form:NMIS_SOWING_ORDER, Form:NMIS_SPECIES_PRODUCTS_Duplicate Form, Form:Refresh_Close
- **Opened from:** Form_NMIS_AGREEMENTS, Form_NMIS_AGREEMENTS_bu, Form_NMIS_AGREEMENTS_w_lot_lookup, Form_xLookup_Tables_Menu
- **Form events with code:** Close, Open
- **Migration:** 14 of 25 bound fields mapped. Main GrowHub screens: /admin/products/new (10), /orders/new (4)

**Controls**
- TextBox Index = `Index`  [FormHeader]
- TextBox CN = `CN` · default `"SP_PROD_FRM" & Now()`  [FormHeader]
- CommandButton Refresh_and_Close "Close" · events: Click  [FormHeader]
- ComboBox SPECIES_PRODUCT_Lookup · rows: `SELECT NMIS_SPECIES_PRODUCTS.CN, IIf([Forms]![NMIS_SPECIES_PRODUCTS Form]![View_By_Scientific_Name]=False,[nmis_species].[Vernacular],[Scientific_Name]) & " (" & [NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL] & ") " & [NMIS_SPECIES_PRODUCTS].[SPECIES_PRODUCT_DESC] & " " & [SIZE_SPEC_STRING] & " " & [nmis_species_products].[BEGIN_SEASON_CODE] & " " & [nmis_species_products].[END_SEASON_CODE] & IIf([nmis` · events: AfterUpdate, Enter  [FormHeader]
- ComboBox Filter_for_Species · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, IIf([Forms]![NMIS_SPECIES_PRODUCTS Form]![View_By_Scientific_Name]=False,[Vernacular],[Scientific_Name]) AS Sort FROM ((NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_Q` · events: AfterUpdate, DblClick  [FormHeader]
- ComboBox Filter_for_Product_Type · rows: `B;Bareroot Plant;C;Container Plant;N;Native Propagules;*;All Product Types` · default `"*"` · events: AfterUpdate  [FormHeader]
- ComboBox Filter_For_Product · rows: `SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" & IIf([nmis_products].[historical]," (Historical)") AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_CLASS, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE FROM NMIS_PRODUCTS LEFT JOIN ([*Species_Products_Currently_Active_in_Grow_Containers] RIGHT JOIN N` · default `"*"` · events: AfterUpdate, DblClick, Enter  [FormHeader]
- TextBox New_CN = `=[Index] & [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery_Code]`  [FormHeader]
- CheckBox View_By_Scientific_Name · default `True` · events: AfterUpdate  [FormHeader]
- TextBox Like_Description · events: AfterUpdate, DblClick  [FormHeader]
- CheckBox Current_Crop_Only · default `False` · events: AfterUpdate  [FormHeader]
- CheckBox New_Species_Product "New Species Product" · default `False`  [FormHeader]
- CheckBox Hide_Historical "Hide Historical" · default `False`  [FormHeader]
- TextBox TOTAL_NUMBER_OF_FY "Total # of FY's:" = `TOTAL_NUMBER_OF_FY` · events: DblClick, Enter → GrowHub species_product.totalFiscalYears (yes)
- TextBox DRILL_FUNNEL_SETTING "FunnelSetting" = `DRILL_FUNNEL_SETTING` → GrowHub species_product.funnelSettings (yes)
- TextBox DRILL_MIN_REV_UNITS "Min Rev Units" = `DRILL_MIN_REV_UNITS` → GrowHub species_product.minUnitsPerRevolutions (yes)
- TextBox DRILL_MAX_REV_UNITS "Max Rev Units" = `DRILL_MAX_REV_UNITS` → GrowHub species_product.maxUnitsPerRevolutions (yes)
- ComboBox PLNTMSTR_SYMBOL "Species:" = `PLNTMSTR_SYMBOL` · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, IIf([Forms]![NMIS_SPECIES_PRODUCTS Form]![View_By_Scientific_Name]=True,[Scientific_Name],[VERNACULAR]) AS Expr1, IIf([Forms]![NMIS_SPECIES_PRODUCTS Form]![View_By_Scientific_Name]=False,[Scientific_Name],[VERNACULAR]) AS Expr2, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUER` → GrowHub species_product.speciesUuid (yes)
- ComboBox BEGIN_SEASON_CODE "Begin" = `BEGIN_SEASON_CODE` · rows: `SELECT NMIS_SEASONS.SEASON_CODE, NMIS_SEASONS.SEASON_DESC FROM NMIS_SEASONS;` · default `"S"`
- ComboBox END_SEASON_CODE "End" = `END_SEASON_CODE` · rows: `SELECT NMIS_SEASONS.SEASON_CODE, NMIS_SEASONS.SEASON_DESC FROM NMIS_SEASONS;` · default `"W"`
- CommandButton Open_NMIS_Factors_Form " Add or Edit Products" · events: Click
- TextBox AGE_STRING "Age String:" = `AGE_STRING` → GrowHub grow_cycle.growUnitUuid (maybe)
- TextBox SPECIES_PRODUCT_DESC "Description:" = `SPECIES_PRODUCT_DESC` · events: DblClick, Enter → GrowHub grow_request.speciesProductUuid (blank)
- ComboBox PRODUCT_CN "Product:" = `PRODUCT_CN` · rows: `SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_CLASS, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE FROM NMIS_PRODUCTS ORDER BY NMIS_PRODUCTS.CATEGORY_CODE, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")", NMIS_PRODUCTS.` · events: DblClick, Enter, Exit
- TabControl TabCtl45
- Subform NMIS_SPECIES_PRODUCT_CYCLES subform1 subform `Form.NMIS_SPECIES_PRODUCT_CYCLES subform1` (master CN → child SPECIES_PRODUCT_CN)
- Subform NMIS_FACTORS subform subform `Form.NMIS_FACTORS subform` (master CN → child SPECIES_PRODUCT_CN) · events: Exit
- Subform Child213 subform `Form.SpeciesProductAgreementLotSubform` (master CN → child SPECIES_PRODUCT_CN)
- ComboBox Species_Symbol = `PLNTMSTR_SYMBOL` · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, IIf([Forms]![NMIS_SPECIES_PRODUCTS Form]![View_By_Scientific_Name]=True,[Scientific_Name],[VERNACULAR]) AS [Common Name], IIf([Forms]![NMIS_SPECIES_PRODUCTS Form]![View_By_Scientific_Name]=False,[Scientific_Name],[VERNACULAR]) AS [Scientific Name], NMIS_SPECIES_PLNTMSTR_SYMBO` · events: DblClick, Enter → GrowHub species_product.speciesUuid (yes)
- ComboBox CULTURAL_GROUP "Sowing Group:" = `SOWING_GROUP` · rows: `SELECT NMIS_SOWING_ORDER.SOWING_ORDER_CODE, NMIS_SOWING_ORDER.DESCRIPTION FROM NMIS_SOWING_ORDER WHERE (((Right$(nz([group],"S"),1)) Like "S")) ORDER BY NMIS_SOWING_ORDER.DESCRIPTION;` · events: DblClick
- TextBox SPEC_MIN "Ht Min" = `SPEC_MIN` → GrowHub lift_request.minimumHeight (blank)
- TextBox SPEC_MAX "Ht Max" = `SPEC_MAX` → GrowHub lift_request.maximumHeight (blank)
- TextBox CALIPER_MIN "Cal Min" = `CALIPER_MIN` → GrowHub lift_request.caliper (blank)
- ComboBox SPECS_UNIT_CODE "Unit Code" = `SPECS_UNIT_CODE` · rows: `SELECT [NMIS_UNITS].[UNIT_CODE], [NMIS_UNITS].[UNIT_DESC], [NMIS_UNITS].[UNIT_TYPE] FROM NMIS_UNITS WHERE ((([NMIS_UNITS].[UNIT_TYPE])="LENGT"));` · default `=IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="050357","cm","I")`
- TextBox SPEC_MIN_ALT "Ht Min" = `SPEC_MIN_ALT`
- TextBox SPEC_MAX_ALT "Ht Max" = `SPEC_MAX_ALT`
- TextBox CALIPER_MIN_ALT "Cal Min" = `CALIPER_MIN_ALT`
- CommandButton Duplicate_Current_Species_Product "New Species Product From Selected" · events: Click
- CommandButton Tip_on_Create_New_Species_Product "Tip" · events: Click
- CheckBox HISTORICAL "Historical" = `HISTORICAL` · default `False` → GrowHub species_product.inactive (yes)
- ComboBox TRANSPLANT_GROUP "Transplant Group:" = `TRANSPLANT_GROUP` · rows: `SELECT NMIS_SOWING_ORDER.SOWING_ORDER_CODE, NMIS_SOWING_ORDER.DESCRIPTION, Right$(nz([group],"T"),1) AS Type FROM NMIS_SOWING_ORDER WHERE (((Right$(nz([group],"T"),1)) Like "T")) ORDER BY NMIS_SOWING_ORDER.DESCRIPTION;` · events: DblClick
- TextBox Text205 = `=IIf([Historical],"HISTORICAL")`
- ComboBox Combo208 "Final Container:" = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, [UNIT_DESC] & IIf([Unit_Type] Like "*HIST*"," (Hist)") AS ud, NMIS_UNITS.UNIT_CODE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE) Like IIf(IsNull("unit_desc"),"g","g*"))) ORDER BY [UNIT_DESC] & IIf([Unit_Type] Like "*HIST*"," (Hist)");` → GrowHub species_product.endUnitOfMeasurement (yes)
- ComboBox Combo210 = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, [UNIT_DESC] & IIf([Unit_Type] Like "*HIST*"," (Hist)") AS ud FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE) Like IIf(IsNull("unit_desc"),"g","g*"))) ORDER BY NMIS_UNITS.UNIT_CODE;` → GrowHub species_product.endUnitOfMeasurement (yes)

## Form: NMIS_SPECIES_PRODUCTS Subform1
- **Caption:** NMIS_SPECIES_PRODUCTS1
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_PRODUCTS › NMIS_SPECIES_PRODUCTS Subform1
- **Record source:** NMIS_SPECIES_PRODUCTS
- **Backend tables:** NMIS_SEASONS, NMIS_SPECIES_PRODUCTS, NMIS_UNITS
- **Opens:** Form:NMIS_FACTORS
- **Migration:** 11 of 22 bound fields mapped. Main GrowHub screens: /admin/products/new (7), /orders/new (4)

**Controls**
- TextBox SPECIES_PRODUCT_DESC "Species Product:" = `SPECIES_PRODUCT_DESC` → GrowHub grow_request.speciesProductUuid (blank)
- TextBox TOTAL_NUMBER_OF_FY "Total # of FY's:" = `TOTAL_NUMBER_OF_FY` → GrowHub species_product.totalFiscalYears (yes)
- TextBox SPEC_MIN "Ht Min" = `SPEC_MIN` → GrowHub lift_request.minimumHeight (blank)
- TextBox SPEC_MAX "Ht Max" = `SPEC_MAX` → GrowHub lift_request.maximumHeight (blank)
- TextBox CALIPER_MIN "Cal Min" = `CALIPER_MIN` → GrowHub lift_request.caliper (blank)
- TextBox DRILL_FUNNEL_SETTING "FunnelSetting" = `DRILL_FUNNEL_SETTING` → GrowHub species_product.funnelSettings (yes)
- TextBox DRILL_MIN_REV_UNITS "Min Rev Units" = `DRILL_MIN_REV_UNITS` → GrowHub species_product.minUnitsPerRevolutions (yes)
- TextBox DRILL_MAX_REV_UNITS "Max Rev Units" = `DRILL_MAX_REV_UNITS` → GrowHub species_product.maxUnitsPerRevolutions (yes)
- ComboBox PLNTMSTR_SYMBOL "Species:" = `PLNTMSTR_SYMBOL` · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY;` → GrowHub species_product.speciesUuid (yes)
- ComboBox BEGIN_SEASON_CODE "Begin" = `BEGIN_SEASON_CODE` · rows: `SELECT [NMIS_SEASONS].[SEASON_CODE], [NMIS_SEASONS].[SEASON_DESC] FROM NMIS_SEASONS;` · default `"S"`
- ComboBox END_SEASON_CODE "End" = `END_SEASON_CODE` · rows: `SELECT [NMIS_SEASONS].[SEASON_CODE], [NMIS_SEASONS].[SEASON_DESC] FROM NMIS_SEASONS;` · default `"W"`
- ComboBox UNIT_CODE "Final Container:" = `UNIT_CODE` · rows: `SELECT [NMIS_UNITS].[UNIT_CODE], [NMIS_UNITS].[UNIT_DESC], [NMIS_UNITS].[UNIT_CODE] FROM NMIS_UNITS WHERE ((([NMIS_UNITS].[UNIT_TYPE])="g"));`
- TextBox Index = `Index`
- ComboBox SPECS_UNIT_CODE "Unit Code" = `SPECS_UNIT_CODE` · rows: `SELECT [NMIS_UNITS].[UNIT_CODE], [NMIS_UNITS].[UNIT_DESC], [NMIS_UNITS].[UNIT_TYPE] FROM NMIS_UNITS WHERE ((([NMIS_UNITS].[UNIT_TYPE])="LENGT"));` · default `"I"`
- TextBox PRODUCT_CN = `PRODUCT_CN`
- TextBox CN = `CN` · default `"Species_Products_Form"`
- TextBox CULTURAL_GROUP "Sowing Group:" = `SOWING_GROUP`
- ComboBox Species_Symbol = `PLNTMSTR_SYMBOL` · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY ORDER BY NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL;` → GrowHub species_product.speciesUuid (yes)
- TextBox AGE_STRING "Age String:" = `AGE_STRING` → GrowHub grow_cycle.growUnitUuid (maybe)
- TextBox SPEC_MIN_ALT "Ht Min" = `SPEC_MIN_ALT`
- TextBox SPEC_MAX_ALT "Ht Max" = `SPEC_MAX_ALT`
- TextBox CALIPER_MIN_ALT "Cal Min" = `CALIPER_MIN_ALT`

## Form: NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1
- **Caption:** NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1
- **Menu path:** Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_AGREEMENT_LOTS › NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1
- **Record source:** SELECT NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER.SPECIES_PRODUCT_CN, NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER.BEGIN_CONTAINER, NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER.CELLS_PER_CONTAINER FROM NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER;
- **Migration:** 0 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox BEGIN_CONTAINER = `BEGIN_CONTAINER`
- TextBox CELLS_PER_CONTAINER = `CELLS_PER_CONTAINER`

## Form: NMIS_SPECIES_PRODUCTS_Duplicate Form
- **Caption:** NMIS Species Product Duplicate Form
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_SPECIES_PRODUCTS Form › NMIS_SPECIES_PRODUCTS_Duplicate Form
- **Record source:** SELECT NMIS_SPECIES_PRODUCTS.*, NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE FROM NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN ORDER BY NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_DESC, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE, NMIS_SPECIES_PRODUCTS.SPEC_MIN, NMIS_SPECIES_PRODUCTS.SPEC_MAX, NMIS_SPECIES_PRODUCTS.CALIPER_MIN, NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL;
- **Backend tables:** NMIS_PRODUCTS, NMIS_SEASONS, NMIS_SOWING_ORDER, NMIS_SPECIES_PRODUCTS, NMIS_UNITS
- **Subforms:** Form.NMIS_SPECIES_PRODUCT_CYCLES_Duplicate subform1, Form.NMIS_FACTORS_Duplicate subform
- **Opens:** Form:NMIS_PRODUCTS, Form:Refresh_Close
- **Opened from:** Form_NMIS_SPECIES_PRODUCTS Form, Form_NMIS_SPECIES_PRODUCTS Form Unlockable
- **Form events with code:** Close
- **Migration:** 13 of 24 bound fields mapped. Main GrowHub screens: /admin/products/new (9), /orders/new (4)

**Controls**
- TextBox Index = `Index`  [FormHeader]
- TextBox CN = `CN`  [FormHeader]
- CommandButton Refresh_and_Close "Close" · events: Click  [FormHeader]
- TextBox New_CN = `=[Index] & [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery_Code]`  [FormHeader]
- TextBox TOTAL_NUMBER_OF_FY "Total # of FY's:" = `TOTAL_NUMBER_OF_FY` · default `[Forms]![NMIS_SPECIES_PRODUCTS Form]![TOTAL_NUMBER_OF_FY]` → GrowHub species_product.totalFiscalYears (yes)
- TextBox DRILL_FUNNEL_SETTING "FunnelSetting" = `DRILL_FUNNEL_SETTING` · default `[Forms]![NMIS_SPECIES_PRODUCTS Form]![DRILL_FUNNEL_SETTING]` → GrowHub species_product.funnelSettings (yes)
- TextBox DRILL_MIN_REV_UNITS "Min Rev Units" = `DRILL_MIN_REV_UNITS` · default `[Forms]![NMIS_SPECIES_PRODUCTS Form]![DRILL_MIN_REV_UNITS]` → GrowHub species_product.minUnitsPerRevolutions (yes)
- TextBox DRILL_MAX_REV_UNITS "Max Rev Units" = `DRILL_MAX_REV_UNITS` · default `[Forms]![NMIS_SPECIES_PRODUCTS Form]![DRILL_MAX_REV_UNITS]` → GrowHub species_product.maxUnitsPerRevolutions (yes)
- ComboBox PLNTMSTR_SYMBOL "Species:" = `PLNTMSTR_SYMBOL` · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY ORDER BY NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUE` · default `[Forms]![NMIS_SPECIES_PRODUCTS Form]![PLNTMSTR_SYMBOL]` → GrowHub species_product.speciesUuid (yes)
- ComboBox BEGIN_SEASON_CODE "Begin" = `BEGIN_SEASON_CODE` · rows: `SELECT NMIS_SEASONS.SEASON_CODE, NMIS_SEASONS.SEASON_DESC FROM NMIS_SEASONS;` · default `[Forms]![NMIS_SPECIES_PRODUCTS Form]![BEGIN_SEASON_CODE]`
- ComboBox END_SEASON_CODE "End" = `END_SEASON_CODE` · rows: `SELECT NMIS_SEASONS.SEASON_CODE, NMIS_SEASONS.SEASON_DESC FROM NMIS_SEASONS;` · default `[Forms]![NMIS_SPECIES_PRODUCTS Form]![END_SEASON_CODE]`
- ComboBox UNIT_Description "Final Container:" = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_CODE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="g"));` · default `[Forms]![NMIS_SPECIES_PRODUCTS Form]![UNIT_CODE]` → GrowHub species_product.endUnitOfMeasurement (yes)
- TextBox SPECIES_PRODUCT_DESC "Description:" = `SPECIES_PRODUCT_DESC` · default `"@" & [Forms]![NMIS_SPECIES_PRODUCTS Form]![SPECIES_PRODUCT_DESC]` → GrowHub grow_request.speciesProductUuid (blank)
- ComboBox PRODUCT_CN "Product:" = `PRODUCT_CN` · rows: `SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_CLASS, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE FROM NMIS_PRODUCTS ORDER BY NMIS_PRODUCTS.CATEGORY_CODE, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")", NMIS_PRODUCTS.` · events: Enter
- TabControl TabCtl45
- Subform NMIS_SPECIES_PRODUCT_CYCLES subform1 subform `Form.NMIS_SPECIES_PRODUCT_CYCLES_Duplicate subform1` (master CN → child SPECIES_PRODUCT_CN)
- Subform NMIS_FACTORS subform subform `Form.NMIS_FACTORS_Duplicate subform` (master CN → child SPECIES_PRODUCT_CN)
- ComboBox Species_Symbol = `PLNTMSTR_SYMBOL` · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY ORDER BY NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL;` · default `[Forms]![NMIS_SPECIES_PRODUCTS Form]![PLNTMSTR_SYMBOL]` → GrowHub species_product.speciesUuid (yes)
- ComboBox Unit_Code = `UNIT_CODE` · rows: `SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="g"));` · default `[Forms]![NMIS_SPECIES_PRODUCTS Form]![UNIT_CODE]` → GrowHub species_product.endUnitOfMeasurement (yes)
- TextBox SPEC_MIN "Ht Min" = `SPEC_MIN` · default `[Forms]![NMIS_SPECIES_PRODUCTS Form]![SPEC_MIN]` → GrowHub lift_request.minimumHeight (blank)
- TextBox SPEC_MAX "Ht Max" = `SPEC_MAX` · default `[Forms]![NMIS_SPECIES_PRODUCTS Form]![SPEC_MAX]` → GrowHub lift_request.maximumHeight (blank)
- TextBox CALIPER_MIN "Cal Min" = `CALIPER_MIN` · default `[Forms]![NMIS_SPECIES_PRODUCTS Form]![CALIPER_MIN]` → GrowHub lift_request.caliper (blank)
- ComboBox SPECS_UNIT_CODE "Unit Code" = `SPECS_UNIT_CODE` · rows: `SELECT [NMIS_UNITS].[UNIT_CODE], [NMIS_UNITS].[UNIT_DESC], [NMIS_UNITS].[UNIT_TYPE] FROM NMIS_UNITS WHERE ((([NMIS_UNITS].[UNIT_TYPE])="LENGT"));` · default `[Forms]![NMIS_SPECIES_PRODUCTS Form]![SPECS_UNIT_CODE]`
- TextBox SPEC_MIN_ALT "Ht Min" = `SPEC_MIN_ALT` · default `[Forms]![NMIS_SPECIES_PRODUCTS Form]![SPEC_MIN_ALT]`
- TextBox SPEC_MAX_ALT "Ht Max" = `SPEC_MAX_ALT` · default `[Forms]![NMIS_SPECIES_PRODUCTS Form]![SPEC_MAX_ALT]`
- TextBox CALIPER_MIN_ALT "Cal Min" = `CALIPER_MIN_ALT` · default `[Forms]![NMIS_SPECIES_PRODUCTS Form]![CALIPER_MIN_ALT]`
- TextBox Dup "Dup:" = `=IIf([SPECIES_PRODUCT_DESC] Like "*@*",True,False)`
- TextBox AGE_STRING "Age String:" = `AGE_STRING` · default `[Forms]![NMIS_SPECIES_PRODUCTS Form]![Age_String]` → GrowHub grow_cycle.growUnitUuid (maybe)
- ComboBox CULTURAL_GROUP "Sowing Group:" = `SOWING_GROUP` · rows: `SELECT NMIS_SOWING_ORDER.SOWING_ORDER_CODE, NMIS_SOWING_ORDER.DESCRIPTION FROM NMIS_SOWING_ORDER WHERE (((Right$(nz([group],"S"),1)) Like "S")) ORDER BY NMIS_SOWING_ORDER.DESCRIPTION;` · default `[Forms]![NMIS_SPECIES_PRODUCTS Form]![CULTURAL_GROUP]`
- ComboBox TRANSPLANT_GROUP "Transplant Group:" = `TRANSPLANT_GROUP` · rows: `SELECT NMIS_SOWING_ORDER.SOWING_ORDER_CODE, NMIS_SOWING_ORDER.DESCRIPTION, Right$(nz([group],"T"),1) AS Type FROM NMIS_SOWING_ORDER WHERE (((Right$(nz([group],"T"),1)) Like "T")) ORDER BY NMIS_SOWING_ORDER.DESCRIPTION;` · default `[Forms]![NMIS_SPECIES_PRODUCTS Form]![TRANSPLANT_GROUP]`

## Form: NMIS_SPECIES_RETEST subform
- **Caption:** NMIS_SPECIES_RETEST subform1
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SPECIES › NMIS_SPECIES_RETEST subform
- **Record source:** SELECT NMIS_SPECIES_RETEST.NURSERY_ASSOCIATE, NMIS_SPECIES_RETEST.PLNTMSTR_SYMBOL, NMIS_SPECIES_RETEST.FIRST_RETEST_YEARS, NMIS_SPECIES_RETEST.INTERVAL_RETEST_YEARS, NMIS_SPECIES_RETEST.MIN_RETEST_AMT FROM NMIS_SPECIES_RETEST;
- **Backend tables:** NMIS_SPECIES_RETEST
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox NURSERY_ASSOCIATE = `NURSERY_ASSOCIATE`
- TextBox FIRST_RETEST_YEARS = `FIRST_RETEST_YEARS`
- TextBox INTERVAL_RETEST_YEARS = `INTERVAL_RETEST_YEARS`
- TextBox MIN_RETEST_AMT = `MIN_RETEST_AMT`

## Form: NMIS_TEST_TYPES
- **Caption:** NMIS TEST TYPES
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_TEST_TYPES
- **Record source:** NMIS_TEST_TYPES
- **Backend tables:** NMIS_TEST_TYPES
- **Opened from:** Form_Lookup_Tables_Menu Subform, Form_xLookup_Tables_Menu
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox TYPE_OF_TEST = `TYPE_OF_TEST`
- TextBox TYPE_OF_TEST_DESC = `TYPE_OF_TEST_DESC`
- CheckBox GERM_PCT_REQD = `GERM_PCT_REQD`
- CheckBox HIDE label = `HIDE`

## Form: NMIS_TICKETS_charge_per_ticket1
- **Caption:** Charge Per Ticket
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_TICKETS_charge_per_ticket1
- **Record source:** SELECT NMIS_TICKETS.EXT_DOC_REF, NMIS_TICKETS.FY FROM NMIS_TICKETS GROUP BY NMIS_TICKETS.EXT_DOC_REF, NMIS_TICKETS.FY HAVING (((NMIS_TICKETS.EXT_DOC_REF) Is Not Null));
- **Backend tables:** NMIS_ASSOCIATES, NMIS_FISCAL_YEARS, NMIS_TICKETS
- **Subforms:** Form.NMIS_TICKETS_Charge_Per_Ticket1 subform, Form.TSO_Container_Summary
- **Opens:** Report:Ship_Ticket_Summary_by_TSO, Report:Ship_Ticket_Summary_by_Ticket_No_TSO2
- **Opened from:** Form_Client_Bill_Menu, Forms_Open Module
- **Form events with code:** Open
- **Migration:** 1 of 1 bound fields mapped. Main GrowHub screens: /shipping/create (1)

**Controls**
- TextBox EXT_DOC_REF "EXT_DOC_REF" = `EXT_DOC_REF` → GrowHub source_shipment.carrierTrackingInfo (yes)
- Subform NMIS_TICKETS_Charge_Per_Ticket subform subform `Form.NMIS_TICKETS_Charge_Per_Ticket1 subform` (master EXT_DOC_REF → child EXT_DOC_REF)
- ComboBox Find_TSO "Find TSO:" · rows: `SELECT NMIS_TICKETS.EXT_DOC_REF, NMIS_TICKETS.EXT_DOC_REF AS TSO, Count(NMIS_TICKETS.CN) AS Tickets, NMIS_TICKETS.FY, Sum(NMIS_TICKETS.CHARGE_PER_TICKET) AS [$ Per TSO], [DELIVERED_BY_ASSOCIATE] & IIf(Not IsNull([DELIVERED_BY_ASSOCIATE])," - " & [nmis_associates].[ASSOCIATE_NAME]) AS [Delivered By] FROM (NMIS_ASSOCIATES RIGHT JOIN NMIS_TICKETS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_TICKETS.DELIVERED_` · events: AfterUpdate, Enter
- ComboBox View_FY "Like View FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC;` · default `=[Forms]![Switchboard]![FY_For_Reports]`
- TextBox TSO_Charge "TSO Charge:"
- TextBox Mileage_Override "Mileage Override:" · events: AfterUpdate
- Subform TSO_Container_Summary subform `Form.TSO_Container_Summary` (master EXT_DOC_REF → child EXT_DOC_REF)
- CommandButton Prod_Ship_Ticket_list_by_Tkt_No_TSO "Click for Ship Tickets with TSO's Checklist..." · events: Click
- CommandButton Prod_Ship_Ticket_list_by_TSO "Click for TSO Summary for Selected TSO" · events: Click

## Form: NMIS_TICKETS_Charge_Per_Ticket1 subform
- **Caption:** NMIS_TICKETS_Charge_Per_Ticket subform
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_TICKETS_charge_per_ticket1 › NMIS_TICKETS_Charge_Per_Ticket1 subform
- **Record source:** SELECT NMIS_TICKETS.CN, NMIS_TICKETS.CHARGE_PER_TICKET, NMIS_TICKETS.GBL_PCT, NMIS_TICKETS.DELIVERED_TO_ASSOCIATE, NMIS_TICKETS.DELIVERED_BY_ASSOCIATE, NMIS_TICKETS.TKT_NO, NMIS_TICKETS.EXT_DOC_REF, NMIS_TICKETS.FY, [**Product_Ship_Ticket_Total_Containers_Table].Containers, [**Product_Ship_Ticket_Total_Containers_Table].SHIP_MILES, [**Product_Ship_Ticket_Total_Containers_Table].Rack_Eq, NMIS_TICKETS.NOTE FROM [**Product_Ship_Ticket_Total_Containers_Table] RIGHT JOIN NMIS_TICKETS ON [**Product_Ship_Ticket_Total_Containers_Table].TICKET_CN = NMIS_TICKETS.CN WHERE (((NMIS_TICKETS.TICKET_TYPE)="p"));
- **Backend tables:** NMIS_ASSOCIATES, NMIS_TICKETS
- **Opens:** Form:NMIS_ASSOCIATES_Ship_Miles1
- **Migration:** 4 of 10 bound fields mapped. Main GrowHub screens: /shipping/create (2)

**Controls**
- TextBox CHARGE_PER_TICKET = `CHARGE_PER_TICKET` · events: DblClick → GrowHub source_shipment.shippingFees (yes)
- TextBox GBL_PCT = `GBL_PCT` · events: DblClick
- ComboBox DELIVERED_TO_ASSOCIATE = `DELIVERED_TO_ASSOCIATE` · rows: `SELECT [ASSOCIATE] & " " AS Code, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_ASSOCIATES.SHIP_MILES FROM NMIS_ASSOCIATES;` · events: DblClick
- ComboBox DELIVERED_BY_ASSOCIATE = `DELIVERED_BY_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;`
- TextBox TKT_NO = `TKT_NO`
- TextBox EXT_DOC_REF = `EXT_DOC_REF` → GrowHub source_shipment.carrierTrackingInfo (yes)
- TextBox Containers = `Containers`
- TextBox Container_PCT = `=Round([Containers]/[Sum_Containers]*100,2)` · events: DblClick
- TextBox SHIP_MILES = `SHIP_MILES` · events: DblClick
- TextBox Ship_Miles_PCT = `=Round(IIf(Not IsNull([Forms]![NMIS_TICKETS_charge_per_ticket1]![Mileage_Override]),100,[SHIP_MILES])/IIf(Not IsNull([Forms]![NMIS_TICKETS_charge_per_ticket1]![Mileage_Override]),[Sum_Tickets],[Sum_Miles]/100),2)` · events: DblClick
- TextBox Rack_Eq = `Rack_Eq`
- TextBox Rack_PCT = `=Round([Rack_Eq]/[Sum_Rack_Eq]*100,2)` · events: DblClick
- TextBox Est_GBL_PCT = `=Round((([Ship_Miles_PCT]/100)*[Rack_PCT]*[Sum_Tickets]),2)` · events: DblClick
- TextBox NOTE = `NOTE`
- TextBox Sum_GBL_PCT = `=Sum([GBL_PCT])`  [FormFooter]
- TextBox Sum_CHARGE_PER_TICKET = `=Sum([CHARGE_PER_TICKET])`  [FormFooter]
- TextBox Sum_Containers = `=Sum([Containers])`  [FormFooter]
- TextBox Sum_Miles = `=Sum([SHIP_MILES])`  [FormFooter]
- TextBox Sum_Rack_Eq = `=Sum([Rack_Eq])`  [FormFooter]
- TextBox Sum_Tickets = `=Count([tkt_no])`  [FormFooter]

## Form: NMIS_TICKETS_charge_per_ticket2
- **Caption:** Charge Per Ticket
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_TICKETS_charge_per_ticket2
- **Record source:** SELECT NMIS_TICKETS.EXT_DOC_REF, NMIS_TICKETS.FY FROM NMIS_TICKETS WHERE (((NMIS_TICKETS.TICKET_TYPE)="P")) GROUP BY NMIS_TICKETS.EXT_DOC_REF, NMIS_TICKETS.FY HAVING (((NMIS_TICKETS.EXT_DOC_REF) Is Not Null));
- **Backend tables:** NMIS_ASSOCIATES, NMIS_FISCAL_YEARS, NMIS_TICKETS
- **Subforms:** Form.NMIS_TICKETS_Charge_Per_Ticket2 subform, Form.TSO_Container_Summary
- **Opens:** Report:Ship_Ticket_Summary_by_TSO_tkt
- **Opened from:** Form_NMIS_SHIPPING_TICKET subform
- **Form events with code:** Open
- **Migration:** 1 of 1 bound fields mapped. Main GrowHub screens: /shipping/create (1)

**Controls**
- TextBox EXT_DOC_REF "EXT_DOC_REF" = `EXT_DOC_REF` → GrowHub source_shipment.carrierTrackingInfo (yes)
- Subform NMIS_TICKETS_Charge_Per_Ticket subform subform `Form.NMIS_TICKETS_Charge_Per_Ticket2 subform` (master EXT_DOC_REF → child EXT_DOC_REF)
- ComboBox Find_TSO "Find TSO:" · rows: `SELECT NMIS_TICKETS.EXT_DOC_REF, NMIS_TICKETS.EXT_DOC_REF AS TSO, Count(NMIS_TICKETS.CN) AS Tickets, NMIS_TICKETS.FY, Sum(NMIS_TICKETS.CHARGE_PER_TICKET) AS [$ Per TSO], [DELIVERED_BY_ASSOCIATE] & IIf(Not IsNull([DELIVERED_BY_ASSOCIATE])," - " & [ASSOCIATE_NAME]) AS [Delivered By] FROM NMIS_ASSOCIATES RIGHT JOIN NMIS_TICKETS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_TICKETS.DELIVERED_BY_ASSOCIATE GROUP ` · events: AfterUpdate, Enter
- ComboBox View_FY "Like View FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC;` · default `=[Forms]![Switchboard]![FY_For_Reports]`
- TextBox TSO_Charge "TSO Charge:"
- TextBox Mileage_Override "Mileage Override:" · events: AfterUpdate
- Subform TSO_Container_Summary subform `Form.TSO_Container_Summary` (master EXT_DOC_REF → child EXT_DOC_REF)
- CommandButton Prod_Ship_Ticket_list_by_TSO "Click for TSO Summary for Selected TSO" · events: Click

## Form: NMIS_TICKETS_Charge_Per_Ticket2 subform
- **Caption:** NMIS_TICKETS_Charge_Per_Ticket subform
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_TICKETS_charge_per_ticket2 › NMIS_TICKETS_Charge_Per_Ticket2 subform
- **Record source:** SELECT NMIS_TICKETS.CN, NMIS_TICKETS.CHARGE_PER_TICKET, NMIS_TICKETS.GBL_PCT, NMIS_TICKETS.DELIVERED_TO_ASSOCIATE, NMIS_TICKETS.DELIVERED_BY_ASSOCIATE, NMIS_TICKETS.TKT_NO, NMIS_TICKETS.EXT_DOC_REF, NMIS_TICKETS.FY, [**Product_Ship_Ticket_Total_Containers_Table].Containers, [**Product_Ship_Ticket_Total_Containers_Table].SHIP_MILES, [**Product_Ship_Ticket_Total_Containers_Table].Rack_Eq, NMIS_TICKETS.NOTE FROM [**Product_Ship_Ticket_Total_Containers_Table] RIGHT JOIN NMIS_TICKETS ON [**Product_Ship_Ticket_Total_Containers_Table].TICKET_CN = NMIS_TICKETS.CN;
- **Backend tables:** NMIS_ASSOCIATES, NMIS_TICKETS
- **Opens:** Form:NMIS_ASSOCIATES_Ship_Miles
- **Migration:** 4 of 10 bound fields mapped. Main GrowHub screens: /shipping/create (2)

**Controls**
- TextBox CHARGE_PER_TICKET = `CHARGE_PER_TICKET` · events: DblClick → GrowHub source_shipment.shippingFees (yes)
- TextBox GBL_PCT = `GBL_PCT` · events: DblClick
- ComboBox DELIVERED_TO_ASSOCIATE = `DELIVERED_TO_ASSOCIATE` · rows: `SELECT [ASSOCIATE] & " " AS Code, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_ASSOCIATES.SHIP_MILES FROM NMIS_ASSOCIATES;` · events: DblClick
- ComboBox DELIVERED_BY_ASSOCIATE = `DELIVERED_BY_ASSOCIATE` · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;`
- TextBox TKT_NO = `TKT_NO`
- TextBox EXT_DOC_REF = `EXT_DOC_REF` → GrowHub source_shipment.carrierTrackingInfo (yes)
- TextBox Containers = `Containers`
- TextBox Container_PCT = `=Round([Containers]/[Sum_Containers]*100,1)` · events: DblClick
- TextBox SHIP_MILES = `SHIP_MILES` · events: DblClick
- TextBox Ship_Miles_PCT = `=Round(IIf(Not IsNull([Forms]![NMIS_TICKETS_charge_per_ticket2]![Mileage_Override]),100,[SHIP_MILES])/IIf(Not IsNull([Forms]![NMIS_TICKETS_charge_per_ticket2]![Mileage_Override]),[Sum_Tickets],[Sum_Miles]/100),1)` · events: DblClick
- TextBox Rack_Eq = `Rack_Eq`
- TextBox Rack_PCT = `=Round([Rack_Eq]/[Sum_Rack_Eq]*100,1)` · events: DblClick
- TextBox Est_GBL_PCT = `=Round((([Ship_Miles_PCT]/100)*[Rack_PCT]*[Sum_Tickets]),1)` · events: DblClick
- TextBox NOTE = `NOTE`
- TextBox Sum_GBL_PCT = `=Sum([GBL_PCT])`  [FormFooter]
- TextBox Sum_CHARGE_PER_TICKET = `=Sum([CHARGE_PER_TICKET])`  [FormFooter]
- TextBox Sum_Containers = `=Sum([Containers])`  [FormFooter]
- TextBox Sum_Miles = `=Sum([SHIP_MILES])`  [FormFooter]
- TextBox Sum_Rack_Eq = `=Sum([Rack_Eq])`  [FormFooter]
- TextBox Sum_Tickets = `=Count([tkt_no])`  [FormFooter]

## Form: NMIS_TREATMENT_PRODUCTS
- **Caption:** NMIS TREATMENT PRODUCTS
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_TREATMENT_PRODUCTS
- **Record source:** NMIS_TREATMENT_PRODUCTS
- **Backend tables:** NMIS_TREATMENT_PRODUCTS
- **Opened from:** Form_Lookup_Tables_Menu Subform, Form_xLookup_Tables_Menu
- **Migration:** 0 of 4 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox TREATMENT_PRODUCT_ID = `TREATMENT_PRODUCT_ID`
- TextBox TREATMENT_PRODUCT_DESC = `TREATMENT_PRODUCT_DESC`
- TextBox ORIG_NMIS_CODE = `ORIG_NMIS_CODE`
- TextBox NOTE = `NOTE`

## Form: NMIS_UNIT_DRILL_ROWS subform
- **Caption:** NMIS_UNIT_DRILL_ROWS subform
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Plants_For_Inventory_Sizing › NMIS_UNIT_DRILL_ROWS subform
- **Record source:** SELECT [NMIS_UNIT_DRILL_ROWS].[UNIT_CODE], [NMIS_UNIT_DRILL_ROWS].[DRILL_ROWS] FROM [NMIS_UNIT_DRILL_ROWS]
- **Backend tables:** NMIS_UNIT_DRILL_ROWS
- **Migration:** 0 of 2 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox UNIT_CODE = `UNIT_CODE`
- TextBox DRILL_ROWS = `DRILL_ROWS`

## Form: NMIS_UNITS
- **Caption:** NMIS Units
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_UNITS
- **Record source:** SELECT NMIS_UNITS.* FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE) Like [Forms]![NMIS_UNITS]![Like_Unit_Type] & "*") AND ((NMIS_UNITS.UNIT_CODE) Like [Forms]![NMIS_UNITS]![Like_Unit_Code] & "*")) ORDER BY NMIS_UNITS.UNIT_CODE;
- **Order by:** [_NMIS_UNITS].[UNIT_TYPE], [_NMIS_UNITS].[UNIT_CODE], [_NMIS_UNITS].[UNIT_DESC]
- **Backend tables:** NMIS_UNITS
- **Opened from:** Form_Lookup_Tables_Menu Subform, Form_xLookup_Tables_Menu
- **Migration:** 0 of 14 bound fields mapped. Main GrowHub screens: none

**Controls**
- ComboBox Like_Unit_Type "Like Unit Type:" · rows: `SELECT NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS GROUP BY NMIS_UNITS.UNIT_TYPE ORDER BY NMIS_UNITS.UNIT_TYPE;` · default `"*"` · events: AfterUpdate, DblClick  [FormHeader]
- TextBox Like_Unit_Code "Like Unit Code:" · default `"*"` · events: AfterUpdate, DblClick  [FormHeader]
- TextBox UNIT_CODE = `UNIT_CODE` · events: DblClick, Enter
- TextBox UNIT_TYPE = `UNIT_TYPE`
- TextBox UNIT_MULTIPLIER = `UNIT_MULTIPLIER`
- TextBox UNIT_DESC = `UNIT_DESC`
- TextBox CELLS_PER_CONTAINER = `CELLS_PER_CONTAINER`
- TextBox INV_DENSITIES_PER_CONTAINER = `INV_DENSITIES_PER_CONTAINER`
- TextBox INV_SAMPLES_PER_CONTAINER = `INV_SAMPLES_PER_CONTAINER`
- TextBox INV_SAMPLE_INTEGER = `INV_SAMPLE_INTEGER`
- TextBox INV_SAMPLE_CONTAINER = `INV_SAMPLE_CONTAINER`
- TextBox INV_SAMPLE_MULTIPLIER = `INV_SAMPLE_MULTIPLIER`
- TextBox INV_SAMPLE_PCT = `INV_SAMPLE_PCT`
- TextBox UNIT_DIMENSIONS = `CELL_DIMENSIONS`
- TextBox AREA_PER_CONTAINER = `AREA_PER_CONTAINER`
- TextBox INV_SAMPLE_FORMULA = `INV_SAMPLE_FORMULA`

## Form: Non_WCF_Storage_Billing_Report
- **Menu path:** Switchboard › Non_WCF_Storage_Billing_Report
- **Subforms:** Form.NMIS_ACCESS_USER_NURSERY subform1
- **Opens:** Report:NMIS_Non-WCF_Storage_Billing_Report, Report:NMIS_Non-WCF_Storage_Billing_Report_P, Report:NMIS_Non-WCF_Storage_Billing_Report_S, Report:NMIS_Non-WCF_Storage_Billing_Report_S_Freezer, Report:NMIS_Non-WCF_Storage_Billing_Report_S_Freezer_summary, Report:NMIS_Non-WCF_Storage_Billing_Report_S_not_freezer, Report:NMIS_Non-WCF_Storage_Billing_Summary_Report, Report:NMIS_Non-WCF_Storage_Billing_w_lots_Report, Report:NMIS_Non_WCF_Storage_Billing_Summary_SPD, Report:SEED_BILLING_NON_WCF_BILLING_TABLE_Edit2, Report:Seed_Extraction_Billing, Report:Seed_Sales_Billing
- **Opened from:** Form_Reports_Menu_Misc Subform

**Controls**
- CommandButton Non_Product_WCF_Storage_Billing "Click to Preview Product Billing" · events: Click
- TextBox Bill_Date "Invoice Date:" · default `Date()` · events: Change
- TextBox Overhead_Pct "Overhead %:" · default `25`
- TextBox Like_Client "Like Client:" · default `"*"`
- CommandButton Non_WCF_Storage_Billing "Click to Preview Source and Product Invoice" · events: Click
- TextBox Unit_Price_Freezer "Freezer Unit Price:" · default `=[NMIS_ACCESS_USER_NURSERY subform1].[Form]![freezer]` · events: AfterUpdate, DblClick
- CommandButton Non_Source_WCF_Storage_Billing "Click to Preview All Source Billing" · events: Click
- CommandButton Non_Source_WCF_Storage_Billing_Freezer "Click to Preview Source Freezer Billing" · events: Click
- CommandButton Non_Source_WCF_Storage_Billing_Non_Freezer "Click to Preview Source Non-Freezer Billing" · events: Click
- CommandButton Non_Source_WCF_Storage_Billing_Freezer_Summary "Click to Preview Source Freezer Summary Billing" · events: Click
- TextBox Unit_Price_Cooler "Cooler Unit Price:" · default `=[NMIS_ACCESS_USER_NURSERY subform1].[Form]![cooler]` · events: AfterUpdate, DblClick
- TextBox Signature_Line "Signature Line:"
- TextBox Title_Line "Title Line:"
- CommandButton Non_WCF_Storage_Billing_w_lots "Click to Preview Source and Product Invoice with Lots" · events: Click
- Subform NMIS_ACCESS_USER_NURSERY subform1 subform `Form.NMIS_ACCESS_USER_NURSERY subform1` (master  → child )
- TextBox Storage_bill_Date "Storage Invoice Date:" · default `=Left$([NMIS_ACCESS_USER_NURSERY subform1].[Form]![storge_date],6) & Right$([Forms]![Switchboard]![FY_For_Reports],2)` · events: AfterUpdate, DblClick
- TextBox min_lot_wt "Minimum Lot Wt (LB):" · default `=[NMIS_ACCESS_USER_NURSERY subform1].[Form]![Min_Lot_Wt]` · events: AfterUpdate, DblClick
- CheckBox Non_Traditional "Non-Traditional Only" · default `0` · events: Click
- CheckBox traditional "Traditional Only" · default `0` · events: Click
- TextBox Min_Bill_Amt "Minimum Invoice Amt:" · default `=[NMIS_ACCESS_USER_NURSERY subform1].[Form]![Client_min_bill_amt]` · events: AfterUpdate, DblClick
- CommandButton Non_WCF_Storage_Billing_Summary "Click to Preview Source and Product Invoice Summary" · events: Click
- CommandButton Non_WCF_Storage_Billing_Summary_SPD "Click to Preview Source and Product Invoice Summary SPD" · events: Click
- CheckBox data_processed "data_processed" · default `False`
- CommandButton Client_Bill_Table_Edit "Command33" · events: Click

## Form: Order_Pack_Form
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Order_Pack_Form
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_FISCAL_YEARS, NMIS_ORDERS, NMIS_SPECIES
- **Opens:** Report:ORDER_FORM mt_040207, Report:ORDER_FORM mt_050357, Report:ORDER_FORM mt_Long, Report:ORDER_FORM_PROPAGULE mt, Report:Order_Form_Checklist, Report:Processing_Quality_Recording_Form_050357, Report:order_form mt, Report:order_form_from_Order_Print mt
- **Opened from:** Form_Reports_Menu_Processing Subform
- **Form events with code:** Open

**Controls**
- TextBox Order_Mod_Date "Order Date >= :" · default `"10/01/00"` · events: Change, DblClick
- TextBox Lift_Date "Lift Date:" · default `Date()` · events: Change
- CommandButton Order_Form " Order/Pack Form" · events: Click
- ComboBox BorC "Cost Center:" · rows: `*;Bareroot and Container;B;Bareroot;C;Container` · default `"*"` · events: AfterUpdate, Change
- ComboBox Like_Client "Like Client (Blank for All):" · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_AGREEMENT_LOTS.CATEGORY_CODE FROM ((NMIS_ASSOCIATES INNER JOIN NMIS_ORDERS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_ORDERS.CLIENT_ASSOCIATE) INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) INNER JOIN Species_Products_with_SizeSpecString ON NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN = Species_Prod` · events: Change, Enter
- CommandButton Order_Form_By_Lift_Date "Order/Pack Form by Lift Date" · events: Click
- ComboBox Like_Lot_ID "Lot ID (Blank for All):" · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID FROM NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN WHERE (((Left$([CATEGORY_CODE],1)) Like IIf([Forms]![Order_Pack_Form]![Product_Group]="Plant",[Forms]![Order_Pack_Form]![BorC],"N*")) AND ((NMIS_ORDERS.FISCAL_YEAR) Like [Forms]![Order_Pack_Form]![Order_FY] & "*") AND ((NMIS_AGREEMENT_LOTS.C` · default `"*"` · events: Change
- ComboBox Order_FY " Order FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC;` · default `=[Forms]![Switchboard]![FY_For_Reports]` · events: AfterUpdate, Change
- CommandButton Order_Checklist_by_Lift_Date "      Checklist       by Lift Date" · events: Click
- CheckBox Data_Processed "Data Processed" · default `False`
- CommandButton Order_Checklist " Checklist" · events: Click
- ComboBox Like_Species "Species (Blank for All):" · rows: `SELECT Species_Products_with_SizeSpecString.PLNTMSTR_SYMBOL, NMIS_SPECIES.VERNACULAR FROM (Species_Products_with_SizeSpecString INNER JOIN (NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON Species_Products_with_SizeSpecString.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) INNER JOIN NMIS_SPECIES ON Species_Products_with_SizeSpecString.PLNTMSTR_S` · events: Change, Enter
- ComboBox Like_Stock_Type "Stock Type (Blank for All):" · rows: `SELECT Species_Products_with_SizeSpecString.PRODUCT_CLASS FROM Species_Products_with_SizeSpecString INNER JOIN (NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON Species_Products_with_SizeSpecString.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN WHERE (((NMIS_ORDERS.FISCAL_YEAR) Like [Forms]![Order_Pack_Form]![Order_FY] & "*") AND ((NMIS_AGREEMENT` · events: Change, Enter
- CommandButton Order_Pack_form_Propagule "Preview Report" · events: Click
- TextBox Product_Group · default `"plant"`
- CommandButton Processing_Quality_Inspection_Record " Quality Inspection Record" · events: Click
- CommandButton Processing_Quality_Inspection_Record_by_lift_date " Quality Inspection Record By Lift Date" · events: Click
- ComboBox Form_Style "Order Form Style:" · rows: `040207;Lucky Peak Nursery;050357;Placerville Nursery;061019;J H Stone Nursery;061019L;J H Stone Nursery Long;090707;J W Toumey Nursery` · default `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]`
- CheckBox Data_Processed_ld "Data Processed LD" · default `False`
- CheckBox Contract "Contract:" · default `False`
- CheckBox Has_Desired_Date "Checklist Has Desired Date:" · default `False`

## Form: Order_Status_Input
- **Caption:** Report Input
- **Menu path:** Switchboard › Client_Bill_Menu › ORDER_STATUS › Order_Status_Input
- **Backend tables:** NMIS_ASSOCIATES, NMIS_CONTACTS, NMIS_ORDERS
- **Opened from:** Report_ORDER_STATUS, Report_ORDER_STATUS_DETAILED, Report_ORDER_STATUS_Packed, Report_ORDER_STATUS_Packed_Shortage, Report_ORDER_STATUS_Packed_no, Report_ORDER_STATUS_propague

**Controls**
- CommandButton Preview_Report "Click to Preview Report" · events: Click
- ComboBox Like_Client "Like Client:" · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES INNER JOIN NMIS_ORDERS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_ORDERS.CLIENT_ASSOCIATE WHERE (((NMIS_ORDERS.FISCAL_YEAR)=[Forms]![Switchboard]![FY_For_Reports])) GROUP BY NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME ORDER BY NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME;` · events: Change
- ComboBox BorC "Cost Center:" · rows: `*;Bareroot and Container;B;Bareroot;C;Container` · default `"*"`
- CheckBox Show_Notes "Show Order Notes" · default `False`
- ComboBox Contact_CN " Like Contact" · rows: `SELECT NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] AS Name FROM NMIS_ORDERS INNER JOIN NMIS_CONTACTS ON NMIS_ORDERS.CONTACT_CN = NMIS_CONTACTS.CN WHERE (((NMIS_CONTACTS.HISTORICAL)=False) AND ((NMIS_ORDERS.CLIENT_ASSOCIATE) Like [Forms]![order_status_input]![Like_Client] & "*") AND ((NMIS_ORDERS.FISCAL_YEAR)=[Forms]![Switchboard]![FY_For_Reports])) GROUP BY NM` · events: Enter

## Form: Oyjord_Calibration
- **Menu path:** Switchboard › Oyjord_Calibration
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_PRODUCTS, NMIS_SOURCE_LOTS, NMIS_SOWING_ORDER, NMIS_SPECIES_PRODUCTS
- **Subforms:** Form.Oyjord_Calibration subform
- **Opens:** Form:NMIS_SOWING_ORDER, Report:oyjord_calibration_checklist, Report:oyjord_calibration_checklist_Blank
- **Form events with code:** Load

**Controls**
- OptionGroup View_by · default `=IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061019",1,2)` · events: AfterUpdate  [FormHeader]
- OptionButton Option45 "Source Lot/Agreement Lot"  [FormHeader]
- OptionButton Option47 "Agreement Lot/Source Lot"  [FormHeader]
- ComboBox SPECIES_PRODUCT "Species Product:" = `=[cn]` · rows: `SELECT [NMIS_AGREEMENT_LOTS].[CN], [PLNTMSTR_SYMBOL] & " " & [SPECIES_PRODUCT_DESC] AS SP FROM NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN];`
- ComboBox PRODUCT "Product:" = `=[cn]` · rows: `SELECT [NMIS_AGREEMENT_LOTS].[CN], [NMIS_PRODUCTS].[PRODUCT_DESC] FROM (NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN]) INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN];`
- ComboBox CN · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, IIf([Forms]![Oyjord_Calibration]![View_by]=1,[NMIS_SOURCE_LOTS].[ID] & "/" & [NMIS_AGREEMENT_LOTS].[ID],[NMIS_AGREEMENT_LOTS].[ID] & "/" & [NMIS_SOURCE_LOTS].[ID]) AS ID_ID, Source_Lot_ID_and_Source_string.SOURCE, NMIS_AGREEMENT_LOTS.EST_CONTAINERS_REQUIRED, NMIS_SPECIES_PRODUCTS.SOWING_GROUP, NMIS_AGREEMENT_LOTS.CALIBRATION_FUNNEL_SETTING_ID, NMIS_AGREEMENT_LOTS.CAL` · events: Enter
- Subform Ojyord_Calibration subform subform `Form.Oyjord_Calibration subform` (master CN → child CN)
- ComboBox Combo67 = `=[cn]` · rows: `SELECT [NMIS_AGREEMENT_LOTS].[CN], [Source_Lot_ID_and_Source_string].[ID_SOURCE2] FROM Source_Lot_ID_and_Source_string INNER JOIN NMIS_AGREEMENT_LOTS ON [Source_Lot_ID_and_Source_string].[CN]=[NMIS_AGREEMENT_LOTS].[SOURCE_LOT_CN];`
- ComboBox Sowing_Group "Sow Group:" · rows: `SELECT Nz([SOWING_ORDER_CODE]," None") AS SOC, NMIS_SOWING_ORDER.DESCRIPTION FROM NMIS_SOWING_ORDER WHERE (((NMIS_SOWING_ORDER.GROUP)="bs")) ORDER BY Nz([SOWING_ORDER_CODE]," None");` · default `"*"` · events: AfterUpdate, DblClick, Exit
- TextBox Begin_fy "FY:" · default `=[Forms]![Switchboard]![FY_For_Reports]` · events: Change
- TextBox Agreement_Lot_Label = `=IIf([View_by]=1,"Source Lot/Agreement Lot:","Agreement Lot/Source Lot:")`
- CommandButton Calibration_Checklist "Caibration Checklist" · events: Click
- CommandButton Calibration_Checklist_Blank "Caibration Checklist Blank" · events: Click

## Form: Oyjord_Calibration subform
- **Caption:** Ojyord_Calibration subform
- **Menu path:** Switchboard › Oyjord_Calibration › Oyjord_Calibration subform
- **Record source:** SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.EST_CONTAINERS_REQUIRED, NMIS_AGREEMENT_LOTS.CALIBRATION_REV_SOURCE_UNITS, NMIS_AGREEMENT_LOTS.CALIBRATION_TRAVEL_PER_REV, NMIS_AGREEMENT_LOTS.CALIBRATION_REVS_USED, NMIS_AGREEMENT_LOTS.CALIBRATION_SOURCE_UNITS, NMIS_AGREEMENT_LOTS.CALIBRATION_SUBLOTS, NMIS_AGREEMENT_LOTS.NUMBER_CALIBRATION_CONTAINERS, NMIS_AGREEMENT_LOTS.CALIBRATION_FUNNEL_SETTING_ID, NMIS_AGREEMENT_LOTS.SOURCE_REQUIRED, NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS.DRILL_FUNNEL_SETTING, NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS.DRILL_MIN_REV_UNITS, NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS.DRILL_MAX_REV_UNITS FROM (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) LEFT JOIN NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS ON NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL = NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS.PLNTMSTR_SYMBOL WHERE (((NMIS_AGREEMENT_LOTS.CATEGORY_CODE) Like "b*" Or (NMIS_AGREEMENT_LOTS.CATEGORY_CODE) Like "NSP"));
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS, NMIS_SPECIES_PRODUCTS
- **Subforms:** Form.NMIS_OYJORD_SETTINGS subform
- **Opens:** Form:xOyjord_Calibration_Error
- **Form events with code:** Current
- **Migration:** 11 of 14 bound fields mapped. Main GrowHub screens: /orders/new (4), /admin/products/new (3)

**Controls**
- TextBox ID = `ID` → GrowHub grow_request.growLotId (blank)
- TextBox EST_CONTAINERS_REQUIRED = `EST_CONTAINERS_REQUIRED` · events: DblClick, Enter, Exit → GrowHub order_cycle_planning.containerSpecificationsNumberofcontainersneeded (blank)
- TextBox CALIBRATION_REV_SOURCE_UNITS = `CALIBRATION_REV_SOURCE_UNITS` · events: DblClick, Enter, Exit → GrowHub order_cycle_production.barerootSpecificationsAvgimbibedseedweightperrevolution (blank)
- TextBox CALIBRATION_TRAVEL_PER_REV = `CALIBRATION_TRAVEL_PER_REV` · events: DblClick, Enter, Exit → GrowHub order_cycle_production.barerootSpecificationsEstimatedfeetperrevolution (blank)
- TextBox CALIBRATION_REVS_USED = `CALIBRATION_REVS_USED` · events: DblClick, Enter → GrowHub order_cycle_production.barerootSpecificationsRevolutions (blank)
- TextBox CALIBRATION_SOURCE_UNITS = `CALIBRATION_SOURCE_UNITS` · events: DblClick, Enter → GrowHub order_cycle_production.barerootSpecificationsTotalimbibedseedweight (blank)
- TextBox CALIBRATION_SUBLOTS = `CALIBRATION_SUBLOTS`
- TextBox NUMBER_CALIBRATION_CONTAINERS = `NUMBER_CALIBRATION_CONTAINERS` · events: DblClick, Enter → GrowHub order_cycle_planning.containerSpecificationsCellspercontainer (blank)
- TextBox CALIBRATION_FUNNEL_SETTING_ID = `CALIBRATION_FUNNEL_SETTING_ID` · events: DblClick, Enter, Exit
- TextBox CN = `CN`
- TextBox SOURCE_REQUIRED "Source Required Dry Weight):" = `SOURCE_REQUIRED` → GrowHub order_cycle_planning.estimatedLbsOfSeed (blank)
- TextBox Units_Per_Rev "Units/Rev:"
- TextBox Sublot_Units "Units:" · events: Enter
- TextBox Min_Units_For_Sublot "Minimum:" · default `1000`
- TextBox Increment_For_Sublot "Increment:" · default `500`
- TextBox Max_Sublots "Max Sublots:" · default `3`
- TextBox DRILL_MAX_REV_UNITS = `DRILL_MAX_REV_UNITS` · events: DblClick, Enter → GrowHub species_product.maxUnitsPerRevolutions (yes)
- TextBox DRILL_MIN_REV_UNITS = `DRILL_MIN_REV_UNITS` · events: DblClick, Enter → GrowHub species_product.minUnitsPerRevolutions (yes)
- TextBox DRILL_FUNNEL_SETTING "Default" = `DRILL_FUNNEL_SETTING` · events: DblClick, Enter → GrowHub species_product.funnelSettings (yes)
- Subform NMIS_OYJORD_SETTINGS subform "Oyjord Settings" subform `Form.NMIS_OYJORD_SETTINGS subform` (master  → child )
- TextBox Oyjord_ID · default `1` · events: AfterUpdate

## Form: PLANT_INVENTORY_REPORTS
- **Caption:** Sowing Request Reports
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PLANT_INVENTORY_REPORTS
- **Backend tables:** NMIS_ASSOCIATES, NMIS_FISCAL_YEARS
- **Opens:** Report:OutYears_Report_Summary_Forest_Species, Report:OutYears_Report_Summary_Grand_by_Region, Report:OutYears_Report_Summary_by_Region, Report:OutYears_Report_Summary_by_Region2, Report:OutYears_Report_Summary_grand_by_Product, Report:OutYears_Report_Summary_grand_by_Product2, Report:Plant_Inventory_Report_Detailed_Species_Product, Report:Plant_Inventory_Report_Detailed__Product, Report:Plant_Inventory_Report_Detailed_by_Forest, Report:Plant_Inventory_Report_by_End_Year_by_Product, Report:Plant_Inventory_Report_by_Forest_by_Product, Report:Plant_Inventory_Report_by_Forest_by_Species_Product
- **Opened from:** Form_Reports_Menu_Misc Subform

**Controls**
- CommandButton OutYears_Report_Detailed_by_Forest "Forest and District with Lot Detail" · events: Click
- ComboBox Begin_FY "Begin FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `"*"`
- ComboBox End_FY ">= End FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![Switchboard]![FY_For_Reports]+1`
- CommandButton OutYears_Report_Summary_Grand_Species_Sub "Summary by Species Product with Lot Detail" · events: Click
- ComboBox Plntmstr_Symbol "Species Code:" · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY;` · default `"*"`
- ComboBox Like_Client "Like Client:" · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;` · default `"*"`
- CommandButton OutYears_Report_Summary_by_Forest_Dist_Species_Product "Forest and District by Species Product" · events: Click
- CommandButton OutYears_Report_Summary_by_Forest_Dist_by_Species "Forest and District Summary by Product" · events: Click
- CommandButton OutYears_Report_Summary_Grand_Client_Sub "Summary by Product with Lot Detail" · events: Click
- CommandButton OutYears_Report_Summary_Grand "Summary by  Product" · events: Click
- TextBox Comment "Comments:"

## Form: Plant_Inventory_Worksheets Form
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Plant_Inventory_Worksheets Form
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_FISCAL_YEARS, NMIS_PRODUCTS, NMIS_SPECIES, NMIS_SPECIES_PRODUCTS
- **Opens:** Report:Plant_Inventory_Worksheet, Report:Plant_Inventory_Worksheet_w_matrix, Report:Plant_Inventory_matrix
- **Opened from:** Form_**********dbdNMIS_PRODUCT_INVENTORIES, Form_NMIS_PRODUCT_INVENTORIES, Form_NMIS_PRODUCT_INVENTORIES2, Form_NMIS_PRODUCT_INVENTORIES3, Form_Reports_Menu_Production Subform
- **Form events with code:** Open

**Controls**
- ComboBox Begin_FY "Begin FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `"*"`
- ComboBox End_FY "End FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `"*"`
- ComboBox Product "Product:" · rows: `SELECT Agreement_Lot_Current_Age_Class.Age_Class, Count([nmis_agreement_lots].[cn]) & IIf(Count([nmis_agreement_lots].[cn])>1," Lots"," Lot") AS Lots, Agreement_Lot_Current_Age_Class.BorCforCycle FROM (NMIS_PRODUCTS INNER JOIN Product_String ON NMIS_PRODUCTS.CN = Product_String.CN) INNER JOIN (((Agreement_Lot_Total_Containers_Grow RIGHT JOIN (NMIS_SPECIES INNER JOIN (NMIS_SPECIES_PRODUCTS_BEGIN_CO` · default `"*"` · events: Enter
- CommandButton Create_Plant_Inventory_Worksheets "Click to Create Plant Inventory Worksheets" · events: Click
- CommandButton Clear_ids "Click to Clear" · events: Click
- TextBox Location "Location:" · default `"*"` · events: Enter
- CommandButton Create_Plant_Inventory_Worksheets_With_Size_Matrix "Click to Create Plant Inventory Worksheets with Size Matrix" · events: Click
- ComboBox BR_OR_C "Bareroot/Cont:" · rows: `B;Bareroot;C;Container;*;All` · default `"B"`
- CommandButton Create_Plant_Inventory_Size_Matrix_Worksheets "Click to Create Plant Inventory Size Matrix Only Worksheet" · events: Click
- ComboBox Plntmstr_Symbol "Species Code:" · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY;` · default `"*"`
- ComboBox Lot_ID_1 "Like Lot ID 1:" · rows: `SELECT NMIS_AGREEMENT_LOTS.ID FROM NMIS_AGREEMENT_LOTS;` · default `Null` · events: Enter
- ComboBox Lot_ID_2 "Like Lot ID 2:" · rows: `SELECT NMIS_AGREEMENT_LOTS.ID FROM NMIS_AGREEMENT_LOTS;` · default `Null`
- ComboBox Lot_ID_3 "Like Lot ID 3:" · rows: `SELECT NMIS_AGREEMENT_LOTS.ID FROM NMIS_AGREEMENT_LOTS;` · default `Null`
- ComboBox Lot_ID_4 "Like Lot ID 4:" · rows: `SELECT NMIS_AGREEMENT_LOTS.ID FROM NMIS_AGREEMENT_LOTS;` · default `Null`
- ComboBox Lot_ID_5 "Like Lot ID 5:" · rows: `SELECT NMIS_AGREEMENT_LOTS.ID FROM NMIS_AGREEMENT_LOTS;` · default `Null`

## Form: Plant_Processing_Table_Priorties
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties
- **Subforms:** Form.Plant_Processing_Table_Priorties_Data_Subform
- **Opens:** Report:Lifting_Priorties_Specs, Report:NMIS_PROCESS_QI_LABELS_from_table_priorities, Report:Plant_Processing_Table_Priorities, Report:Plant_Processing_Table_Priorities_pc, Report:Plant_Processing_Table_Priorities_pms, Report:Processing_Table_Assignments_Detailed, Report:TOLIFT_Lift_Priorities_Reset_Priorities_to_99
- **Opened from:** Form_Reports_Menu_Processing Subform
- **Form events with code:** Open

**Controls**
- TextBox Like_Processing_FY "Like Processing FY:" · default `=[Forms]![Switchboard]![FY_For_Reports]`  [FormHeader]
- TextBox Default_Date "Processing Date:" · default `Date()+1` · events: AfterUpdate  [FormHeader]
- TextBox Like_Table "Like Table:" · default `"*"` · events: AfterUpdate, DblClick  [FormHeader]
- TabControl TabCtl51
- Subform Lifting_Priorties_Subform subform `Form.Plant_Processing_Table_Priorties_Data_Subform` (master  → child ) · events: Enter
- TextBox Processing_Date "Process Date" · default `=[Default_Date]` · tab Reports · events: Enter
- CommandButton Preview_Table_Assignment_Report "Table Assignment Report" · tab Reports · events: Click
- CommandButton Command59 "Table Assignment - Precooler" · tab Reports · events: Click
- TextBox General_Comments "Comments:" · tab Reports
- CheckBox Data_Processed "Data Processed" · default `False` · tab Reports
- CommandButton Processing_Table_Assignments_detailed "Table Assignment - Detailed" · tab Reports · events: Click
- CheckBox Data_Processed_detailed "Data Processed Detailed" · default `False` · tab Reports
- ComboBox Table_QT "Table:" · rows: `*;All;1;Table 1;2;Table 2;3;Table 3;ss;Side Sort` · default `"*"` · tab Reports
- CommandButton Command80 "Table Assignment - PMS" · events: Click
- CommandButton Quality_monitor_labels "Click for Labels" · events: Click

## Form: Plant_Processing_Table_Priorties_Data_Subform
- **Caption:** Lifting_Priorties
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorties_Data_Subform
- **Record source:** SELECT NMIS_Processing_Table_Priorities.PROCESSING_FY, NMIS_Processing_Table_Priorities.PROCESS, IIf(IsNull([Processing_PRIORITY]),99,[Processing_PRIORITY]) AS Plant_Processing_Table_Priority_Sort, NMIS_Processing_Table_Priorities.PROCESSING_DATE, NMIS_Processing_Table_Priorities.TABLE, NMIS_Processing_Table_Priorities.PROCESSING_PRIORITY, NMIS_AGREEMENT_LOTS.ID, NMIS_Processing_Table_Priorities.NOTE, NMIS_ORDERS.AGREEMENT_LOT_CN, NMIS_Processing_Table_Priorities.ORDER_CN, NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ORDERS.ORDER_AMT, Left$([nmis_orders].[CN],Len([nmis_orders].[CN])-7) AS [Order ID], NMIS_Processing_Table_Priorities.COLUMN, NMIS_Processing_Table_Priorities.AMT_OVERRIDE FROM NMIS_Processing_Table_Priorities INNER JOIN (NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_Processing_Table_Priorities.ORDER_CN = NMIS_ORDERS.CN WHERE (((NMIS_Processing_Table_Priorities.PROCESSING_FY) Like [Forms]![Plant_Processing_Table_Priorties]![Like_Harvest_FY] Or (NMIS_Processing_Table_Priorities.PROCESSING_FY) Like "*" Or (NMIS_Processing_Table_Priorities.PROCESSING_FY) Is Null) AND ((NMIS_Processing_Table_Priorities.PROCESSING_DATE)=[Forms]![Plant_Processing_Table_Priorties]![Default_Date]) AND ((NMIS_Processing_Table_Priorities.TABLE) Like [Forms]![Plant_Processing_Table_Priorties]![Like_Table] & "*")) ORDER BY NMIS_Processing_Table_Priorities.PROCESSING_FY DESC , NMIS_Processing_Table_Priorities.PROCESSING_DATE, NMIS_Processing_Table_Priorities.TABLE, NMIS_Processing_Table_Priorities.PROCESSING_PRIORITY, NMIS_AGREEMENT_LOTS.ID;
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_ORDERS, NMIS_Processing_Table_Priorities
- **Opens:** Report:Lifting_Priorities, Report:Processing_Client_Heads_Up, Report:TOLIFT_BY_PRIORITY
- **Migration:** 1 of 12 bound fields mapped. Main GrowHub screens: /orders/new (1)

**Controls**
- TextBox Process_FY = `PROCESSING_FY` · default `=[Forms]![Plant_Processing_Table_Priorties]![Like_Processing_FY]`
- TextBox NOTE = `NOTE`
- TextBox Process_Table_PRIORITY = `PROCESSING_PRIORITY` · events: Enter, Exit
- CheckBox Process = `PROCESS` · default `False`
- TextBox Process_DATE = `PROCESSING_DATE` · default `=[Forms]![Plant_Processing_Table_Priorties]![Default_Date]`
- ComboBox Lot_ID = `ORDER_CN` · rows: `SELECT NMIS_ORDERS.CN, NMIS_AGREEMENT_LOTS.ID, Left$([nmis_orders].[CN],Len([nmis_orders].[CN])-7) AS [Order ID] FROM NMIS_SPECIES_PRODUCT_END_PROD_GROUP RIGHT JOIN (NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_SPECIES_PRODUCT_END_PROD_GROUP.SPECIES_PRODUCT_CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN WHERE (((NMIS_SPECIES_PRODUCT_END_`
- TextBox Table = `TABLE` · events: AfterUpdate, Enter, Exit
- TextBox Amt = `ORDER_AMT`
- TextBox Client = `CLIENT_ASSOCIATE` → GrowHub grow_request.clientUuid (blank)
- ComboBox Order_ID = `ORDER_CN` · rows: `SELECT NMIS_ORDERS.CN, Left$([nmis_orders].[CN],Len([nmis_orders].[CN])-7) AS [Order ID], NMIS_AGREEMENT_LOTS.ID FROM NMIS_ORDERS INNER JOIN (NMIS_SPECIES_PRODUCT_END_PROD_GROUP RIGHT JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCT_END_PROD_GROUP.SPECIES_PRODUCT_CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN WHERE (((NMIS_ORDERS.FISCAL_YEAR)=`
- ComboBox Column = `COLUMN` · rows: `1;2;3;4` · events: AfterUpdate, Enter, Exit
- TextBox AMT_OVERRIDE = `AMT_OVERRIDE`
- CommandButton Update "Update Priorities" · events: Click  [FormFooter]
- TextBox Default_Column "Column:" · default `1`  [FormFooter]
- TextBox Default_Table "Table:" · default `1`  [FormFooter]
- TextBox Next_Priority "Priority:" · default `1`  [FormFooter]
- TextBox Text76 "Table 1 Total:" = `=Sum(IIf([process]=False,IIf([Table]="1",nz([AMT_OVERRIDE],[ORDER_AMT]),0)))`  [FormFooter]
- TextBox Text78 "Table 2 Total:" = `=Sum(IIf([process]=False,IIf([Table]="2",nz([AMT_OVERRIDE],[ORDER_AMT]),0)))`  [FormFooter]
- TextBox Text80 "Table 3 Total:" = `=Sum(IIf([process]=False,IIf([Table]="3",nz([AMT_OVERRIDE],[ORDER_AMT]),0)))`  [FormFooter]
- TextBox Text82 "Side Sort Total:" = `=Sum(IIf([process]=False,IIf([Table]="ss",nz([AMT_OVERRIDE],[ORDER_AMT]),0)))`  [FormFooter]

## Form: Plant_Quarterly_Report
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Plant_Quarterly_Report
- **Opens:** Report:Plant_Quarterly_Rept, Report:Plant_Quarterly_Rept_SPD
- **Opened from:** Form_Reports_Menu_Misc Subform

**Controls**
- TextBox Begin_Date "Begin Date:" = `=IIf([quarter]="1A" Or [quarter]="1" Or [quarter]="Y","10/01/" & [fy_Select]-1,IIf([quarter]=2,"01/01/" & [fy_Select],IIf([quarter]=3,"04/01/" & [fy_Select],"07/01/" & [fy_Select])))`
- TextBox End_Date "End Date:" = `=IIf([quarter]="1A","09/30/" & [fy_Select]-1,IIf([quarter]="1","12/31/" & [fy_Select]-1,IIf([quarter]="2","03/31/" & [fy_Select],IIf([quarter]="3","06/30/" & [fy_Select],"09/30/" & [fy_Select]))))`
- ComboBox Category_Code "Category Code:" · rows: `WCF;WCF;SP;Special Projects` · default `"WCF"`
- TextBox FY_Select "Fiscal Year:" · default `=[Forms]![Switchboard]![FY_For_Reports]`
- CommandButton Preview_Quarterly_Report "Click to Preview/Print Report" · events: Click
- TextBox End_Date_for_Previous_FY "Ending Date for Previous Fiscal Year:" = `="09/30/" & [fy_Select]-1`
- ComboBox Quarter "Report:" · rows: `1A;"First Quarter Age Class Adjust";1;"First Quarter";2;"Second Quarter";3;"Third Quarter";4;"Fourth Quarter";"Y";Yearly` · default `"1A"`
- TextBox FY = `=[FY_Select]-1` · default `=[Forms]![Switchboard]![FY_For_Reports]`
- CheckBox Product_Class_Condensed "Class Condensed" · default `False`
- CommandButton Preview_Quarterly_Report_SPD "Spreadsheet" · events: Click

## Form: PROCESS_PAYMENT_ESTIMATE_INVOICE
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PROCESS_PAYMENT_ESTIMATE_INVOICE
- **Backend tables:** NMIS_CONTRACTS
- **Opens:** Form:LIFT_CONTRACT_ESTIMATE_INVOICE, Form:NMIS_PROCESS_QUALITY_SAMPLES, Form:PROCESS_PAYMENT, Form:PROCESS_PAYMENT_CONDENSED, Form:PROCESS_PAYMENT_INCREMENTAL, Form:PROCESS_PAYMENT_Summary, Form:PROCESS_PAYMENT_w_Incremental, Form:Processing_Contract_No_Quality_Samples, Report:LIFT_CONTRACT_ESTIMATE_INVOICE, Report:NMIS_PROCESS_QUALITY_SAMPLES, Report:PROCESS_PAYMENT, Report:PROCESS_PAYMENT_CONDENSED, Report:PROCESS_PAYMENT_INCREMENTAL, Report:PROCESS_PAYMENT_Summary, Report:PROCESS_PAYMENT_w_Incremental, Report:Processing_Contract_No_Quality_Samples, Report:Processing_Contract_Processed_not_in_pmt_temp
- **Opened from:** Form_Contract_Payment_Estimate_Invoice, Form_Contract_Work_Order, Form_Reports_Menu_Misc Subform, Form_Reports_Menu_Processing Subform

**Controls**
- TextBox Begin_Date "Begin Date:" · events: Change
- TextBox End_Date "End Date:" · events: Change
- CommandButton Preview_Process_Pay_Calculations_Report "Click to Preview Calculations" · events: Click
- CheckBox Data Processed "Data Processed" · default `False`
- TextBox FY "FY:" · default `=[Forms]![Switchboard]![FY_For_Reports]` · events: Exit
- ComboBox Contract_No "Contract No:" · rows: `SELECT NMIS_CONTRACTS.CONTRACT_NO, NMIS_CONTRACTS.PROJECT FROM NMIS_CONTRACTS WHERE (((NMIS_CONTRACTS.PROJECT) Like "*lift*Process*" Or (NMIS_CONTRACTS.PROJECT) Like "*PACK*") AND ((NMIS_CONTRACTS.FISCAL_YEAR)=[Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![FY]));`
- CommandButton Preview_Process_Pay_Calculations_w_Incremental Report "Click to Preview  Calculations with Incremental Items" · events: Click
- CommandButton Preview_Process_Pay_Incremental_Report "Click to Preview  Incremental Items" · events: Click
- CommandButton Preview_Process_Pay_Calculations_Summary Report "Click to Preview  Calculations Summary" · events: Click
- CommandButton Preview_Process_Pay_Calculations_wo_Detail Report "Click to Preview  Calculations" · events: Click
- CommandButton Preview_Process_Pay_Lift_Calculations_Summary Report "Click to Preview  Lifting Items Summary" · events: Click
- CommandButton Missing_Quality_Monitoring "Click to Check for Orders Missing Quality Monitoring" · events: Click
- CheckBox Pack_Data_OK "Pack Data OK" · default `False`
- CommandButton Edit_Quality_Monitoring "Edit Quality Monitoring..." · events: Click

## Form: Processing_Orders_To_Client_Form
- **Caption:** Report Input
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Processing_Orders_To_Client_Form
- **Backend tables:** NMIS_AGREEMENTS, NMIS_ASSOCIATES, NMIS_CONTACTS, NMIS_FISCAL_YEARS, NMIS_SEASONS
- **Opens:** Form:xPlease_Be_Patient_First_Report_Message
- **Opened from:** Form_Reports_Menu_Processing Subform
- **Form events with code:** Open

**Controls**
- CommandButton Preview_Report "Click to Preview Client Report" · events: Click
- ComboBox Begin_FY "Begin FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `"*"`
- ComboBox End_FY "End FY:" · rows: `SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;` · default `=[Forms]![Switchboard]![FY_For_Reports]` · events: AfterUpdate
- TextBox Parent_Associate "Parent Associate:" · default `"*"`
- ComboBox Plntmstr_Symbol "Species Code:" · rows: `SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY;` · default `"*"`
- CommandButton Processing_Orders_to_Client_checklist "Client Checklist" · events: Click
- CheckBox Data_Processed "Data Processed" · default `No`
- ComboBox BorC "Cost Center:" · rows: `*;Bareroot and Container;BR;Bareroot;C;Container` · default `"*"`
- CommandButton Processing_Orders_to_Client_Lot_checklist "Lot Checklist" · events: Click
- ComboBox Product_Group "Group:" · rows: `PLANT;"Plant";PROPAGULE;"Propagule"` · default `"PLANT"` · events: AfterUpdate
- CheckBox Excel_Message_Viewed "Excel Message" · default `No`
- ComboBox Contact_CN " Like Contact" · rows: `SELECT NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] AS Name FROM NMIS_CONTACTS INNER JOIN NMIS_AGREEMENTS ON NMIS_CONTACTS.CN = NMIS_AGREEMENTS.CONTACT_CN WHERE (((NMIS_CONTACTS.HISTORICAL)=False) AND ((NMIS_AGREEMENTS.CLIENT_ASSOCIATE) Like [Forms]![Processing_Orders_To_Client_Form]![Like_Client] & "*")) GROUP BY NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull(` · events: DblClick
- ComboBox Like_Client "Like Client:" · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.ASSOCIATE) Not Like "99*")) ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;` · default `"*"` · events: AfterUpdate
- CommandButton Preview_Report_w_altspec "Click to Preview Client Report with Alt Net" · events: Click
- ComboBox Like_End_Season "Like End Sea:" · rows: `SELECT NMIS_SEASONS.SEASON_CODE, NMIS_SEASONS.SEASON_DESC FROM NMIS_SEASONS;` · default `"*"` · events: AfterUpdate, DblClick

## Form: Processing_QI_Daily_Checklist
- **Menu path:** Switchboard › NMIS_PROCESS_QUALITY_SAMPLES › Processing_QI_Daily_Checklist
- **Opens:** Report:Processing_QI_Samples_Lot_Samples_Review, Report:Processing_QI_Summary_By_Lot_and_Date_Range, Report:Processing_QI_Summary_By_Table_and_Date_Range
- **Opened from:** Form_NMIS_PROCESS_QUALITY_SAMPLES, Form_Reports_Menu_Processing Subform

**Controls**
- TextBox Begin_Date "Begin Date:" · default `Date()`
- TextBox End_Date "End Date (blank if same):"
- CommandButton Preview_Processing_QI_Lot_Checklist "Click to Preview/Print Report by Lot" · events: Click
- CommandButton Preview_Processing_QI_Table_Checklist "Click to Preview/Print Report byTable" · events: Click
- CommandButton Preview_Processing_QI_Lot_Samples_Checklist "Click to Preview/Print Samples by Lot" · events: Click
- TextBox Like_Lot_ID "Like Lot ID:" · default `"*"` · events: AfterUpdate

## Form: Processing_Review_by_Activity_Date
- **Caption:** Report Input
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Processing_Review_by_Activity_Date
- **Opens:** Report:PACK_PROOF, Report:PACK_PROOF_HOURLY, Report:PACK_PROOF_MISC
- **Opened from:** Form_Reports_Menu_Processing Subform

**Controls**
- TextBox Begin_Activity_Date "Begin Date (mm/dd/yy):"
- CommandButton CmdProofPack "Preview Packing Report" · events: Click
- CommandButton Pack_Proof_Hourly "Preview Hourly Report" · events: Click
- TextBox End_Activity_Date "End Date (Blank if Same):"
- CommandButton Command24 "Preview Misc Report" · events: Click

## Form: Product_Inventory_Daily_Checklist
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Product_Inventory_Daily_Checklist
- **Opens:** Report:NMIS_PRODUCT_INVENTORY_CHECKLIST_by_stocktype, Report:NMIS_PRODUCT_INVENTORY_DAILY_CHECKLIST
- **Opened from:** Form_Reports_Menu_Production Subform
- **Form events with code:** Close, Open

**Controls**
- TextBox Begin_Date "Begin Date:" · default `Date()`
- TextBox End_Date "End Date:" · default `Date()`
- CommandButton Preview_Product_Inventory_Daily_Checklist "Click to Preview Daily Checklist..." · events: Click
- ComboBox BorC "Cost Center:" · rows: `*;All;B;Bareroot;C;Container` · default `"*"`
- CommandButton Preview_Product_Inventory_Checklist "Click to Preview Stocktype Checklist..." · events: Click

## Form: Product_Storage_Summary
- **Caption:** Product Storage Summary
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Product_Storage_Summary
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_ASSOCIATES, NMIS_ORDERS
- **Opens:** Report:Product_Storage_Detailed_Summary, Report:Product_Storage_Detailed_Summary_with_notes, Report:Product_Storage_Lot_Index, Report:Product_Storage_Summary, Report:Product_Storage_Summary2, Report:Product_Storage_Summary3
- **Opened from:** Form_Reports_Menu_Processing Subform, Form_Reports_Menu_Shipping Subform, Form_Reports_Menu_Source Subform

**Controls**
- ComboBox Client Select "Select Like Client:" · rows: `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ORDERS INNER JOIN NMIS_ASSOCIATES ON NMIS_ORDERS.CLIENT_ASSOCIATE = NMIS_ASSOCIATES.ASSOCIATE GROUP BY NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME ORDER BY NMIS_ASSOCIATES.ASSOCIATE;` · default `"*"`
- CommandButton Preview Storage Summary By Client Report "Click for Summary Report " · events: Click
- CommandButton Preview Storage Summary By Client Report with Totals "Click for Summary Report with Totals" · events: Click
- ComboBox Product_Type "Product Type:" · rows: `Propagule;Propagule;Plant;Plant;*;All Types` · default `"Plant"`
- CommandButton Preview Storage Detailed Summary By Client Report "Click for Detailed Summary Report" · events: Click
- ComboBox Lot ID Select "Select Like Lot ID:" · rows: `SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.CN FROM NMIS_AGREEMENT_LOTS GROUP BY NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.CN;` · default `"*"`
- CommandButton Preview Storage Summary By Species Report "Click for Summary Report" · events: Click
- TextBox Like_Sublot "Select Like Sublot:" · default `"*"`
- CommandButton Preview Storage Detailed Summary By Client Report_w_notes " Click for  Detailed  Summary  with  notes" · events: Click
- CommandButton Preview Storage Lot Index "Click for Lot ID Index" · events: Click

## Form: Products_Price_Reports
- **Caption:** Products Charges Reports
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_PRODUCT_CHARGES2 › Products_Price_Reports
- **Backend tables:** NMIS_PRODUCTS, NMIS_PRODUCT_TYPES
- **Opens:** Report:NMIS_PRODUCTS_All_Price_CHECKLIST, Report:NMIS_PRODUCTS_All_Price_CHECKLIST_SPD, Report:NMIS_PRODUCTS_NO_Charges_CHECKLIST, Report:NMIS_PRODUCTS_Non_Product_Grade_Price_CHECKLIST, Report:NMIS_PRODUCTS_With_Product_Grade_Price_CHECKLIST
- **Opened from:** Form_NMIS_PRODUCT_CHARGES2, Form_Reports_Menu_Maintenance Subform

**Controls**
- CommandButton Products_Non_Pack_Or_Destroy_Prices "Non-Pack or Destroy Prices" · events: Click
- CommandButton All_Prices "All Prices" · events: Click
- ComboBox Filter_For_Product · rows: `SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & IIf([HISTORICAL]," (Historical)") AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.PRODUCT_CLASS, [NMIS_PRODUCT_TYPES].[PRODUCT_TYPE_DESC] & " " AS [Begin Product], [NMIS_PRODUCT_TYPES_1].[PRODUCT_TYPE_DESC] & " " AS [End Product], [CATEGORY_CODE] & " " AS Category FROM NMIS_PRODUCT_TYPES AS NMIS_PRODUCT_TYPES_1 INNER JOIN (NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS` · default `"*"` · events: Change, Enter
- ComboBox Filter_for_Product_Type · rows: `B;Bareroot Plant;C;Container Plant;N;Native Propagules;*;All Product Types` · default `"*"` · events: Change
- CommandButton Products_Pack_or_Destroy_Prices "Pack or Destroy Prices " · events: Click
- CheckBox Hide_Historical "Hide Historical" · default `True`
- TextBox Like_Product_Class · default `"*"`
- CommandButton Wildcard_Tip "Wildcard Tip" · events: Click
- CheckBox Product_Grade_Standard_Only "Product Grade Standard Only" · default `False`
- CheckBox PACK_OR_CPROC_ONLY "PACK or CPROC Only" · default `False`
- CheckBox Hide_JobCodes "Hide JobCodes" · default `False`
- CheckBox Hide_0_Charges "Hide $0.00's:" · default `True`
- CommandButton No_Product_Charges "NO Prices Checklist" · events: Click
- CommandButton All_Prices_SPD "Spreadsheet" · events: Click

## Form: Propagule_Billing_Report
- **Caption:** Propagule Billing
- **Menu path:** Switchboard › Propagule_Billing_Report
- **Record source:** SELECT NMIS_ACCESS_USER_NURSERY.Nursery_Associate_Code, NMIS_ACCESS_USER_NURSERY.Default4N FROM NMIS_ACCESS_USER_NURSERY WHERE (((NMIS_ACCESS_USER_NURSERY.Nursery_Associate_Code)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]));
- **Backend tables:** NMIS_ACCESS_USER_NURSERY
- **Subforms:** Form.NMIS_ACCESS_USER_NURSERY subform1
- **Opens:** Form:NMIS_Non-WCF_Storage_Billing_Report, Form:NMIS_Non-WCF_Storage_Billing_Report_P, Form:NMIS_Non-WCF_Storage_Billing_Report_S_Freezer, Form:NMIS_PRODUCT_CHARGES2, Form:Open_NMIS_PROCESSING_ORDERS_Review, Form:Propagule_Billing, Form:Propagule_Billing_Table_Edit, Form:Propagule_Billing_summary, Form:Propagule_Billing_summary_SPD, Form:Propagule_Order_Size_Review, Form:Seed_Extraction_Billing, Form:Seed_Sales_Billing, Report:NMIS_Non-WCF_Storage_Billing_Report, Report:NMIS_Non-WCF_Storage_Billing_Report_P, Report:NMIS_Non-WCF_Storage_Billing_Report_S_Freezer, Report:NMIS_PRODUCT_CHARGES2, Report:Open_NMIS_PROCESSING_ORDERS_Review, Report:Propagule_Billing, Report:Propagule_Billing_Table_Edit, Report:Propagule_Billing_summary, Report:Propagule_Billing_summary_SPD, Report:Propagule_Order_Size_Review, Report:Seed_Extraction_Billing, Report:Seed_Sales_Billing

**Controls**
- TextBox Bill_Date "Bill Date:" · default `="06/01/" & Right([Forms]![Switchboard]![FY_For_Reports],2)` · events: Change
- TextBox Overhead_Pct "Overhead %:" · default `25`
- TextBox Like_Client "Like Client:" · default `"*"`
- CommandButton Non_WCF_Storage_Billing "Click to Preview Source and Product Invoice" · events: Click
- CommandButton Non_Product_WCF_Storage_Billing "Click to Preview Product Billing" · events: Click
- CommandButton Propagule_Billing "Click to Preview Invoice" · events: Click
- CommandButton Non_Source_WCF_Storage_Billing_Freezer "Click to Preview Source Freezer Invoice" · events: Click
- TextBox Startup_Charge "Startup Charge:"
- TextBox Bedfeet_Per_Acre "Bed Feet/Acre:" · default `=[NMIS_ACCESS_USER_NURSERY subform1].[Form]![Default4N]` · events: DblClick
- TextBox Signature_Line "Signature Line:"
- TextBox Title_Line "Title Line:"
- CommandButton Open NMIS Product_Charges Form "Enter/Edit Product Charges..." · events: Click
- CommandButton Open_NMIS_Order_Review_Form "Enter/Edit Orders..." · events: Click
- Subform NMIS_ACCESS_USER_NURSERY subform1 subform `Form.NMIS_ACCESS_USER_NURSERY subform1` (master  → child )
- CommandButton Propagule_Billing_summary "Click to Preview Invoice Summary" · events: Click
- TextBox Min_Lot_Chg "Minimum Lot Charge:"
- CommandButton PropaguleOrderSizeReview "Order Size Review" · events: Click
- CommandButton Propagule_Billing_summary_SPD "Click to Preview Invoice Summary SPD" · events: Click
- CheckBox Data_Processed "data_processed" · default `False`
- CommandButton Client_Bill_Table_Edit "Command33" · events: Click

## Form: PROPAGULE_HARVEST_PRIORITIES_MAX_FY_SUBFORM
- **Caption:** NMIS_PROPAGULE_HARVEST_PRIORITIES_MAX_FY FROM NMIS_PROPAGULE_HARVEST_PRIORITIES;
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Propagule_Harvest_Priorties › PROPAGULE_HARVEST_PRIORITIES_MAX_FY_SUBFORM
- **Record source:** SELECT Max(NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_FY) AS MaxOfHARVEST_FY FROM NMIS_PROPAGULE_HARVEST_PRIORITIES;
- **Backend tables:** NMIS_PROPAGULE_HARVEST_PRIORITIES
- **Migration:** 0 of 1 bound fields mapped. Main GrowHub screens: none

**Controls**
- TextBox Max_FY = `MaxOfHARVEST_FY`

## Form: Propagule_Harvest_Priorties
- **Caption:** Lifting_Priorties
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Propagule_Harvest_Priorties
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_PROPAGULE_HARVEST_PRIORITIES, NMIS_SOURCE_LOTS
- **Subforms:** Form.Propagule_Harvest_Priorties_Data_Subform, Form.PROPAGULE_HARVEST_PRIORITIES_MAX_FY_SUBFORM, Form.NMIS_ACCESS_USER_NURSERY subform1
- **Opens:** Report:Lifting_Priorties_Specs, Report:Processing_Client_Heads_Up, Report:Propagule_Destroy_Priorities, Report:Propagule_Harvest_Priorities, Report:Propagule_Harvest_Priorities_Checklist, Report:Propagule_Harvest_Priorities_Harvested, Report:Propagule_Harvest_Priorities_Harvested_by_Date, Report:Propagule_Harvest_Priorities_by_Client_loc_Checklist, Report:Propagule_Harvest_Priorities_by_loc_Checklist, Report:Propagule_Harvest_Priorities_no_Harvest, Report:TOLIFT_Lift_Priorities_Reset_Priorities_to_99
- **Opened from:** Form_Reports_Menu_Processing Subform
- **Form events with code:** Open

**Controls**
- TextBox Like_Harvest_FY "Like Harvest FY:" · default `=[Forms]![Switchboard]![FY_For_Reports]` · events: AfterUpdate, Enter  [FormHeader]
- ComboBox like_species "Like Species:" · rows: `SELECT NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACULAR, Count(NMIS_SOURCE_LOTS.CN) AS CountOfCN FROM NMIS_PROPAGULE_HARVEST_PRIORITIES INNER JOIN (NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query INNER JOIN (NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENT_LOTS.SOURC` · default `"*"` · events: AfterUpdate, DblClick  [FormHeader]
- TabControl TabCtl51
- Subform Lifting_Priorties_Subform subform `Form.Propagule_Harvest_Priorties_Data_Subform` (master  → child )
- TextBox Harvest_Date "Harvest Date" · tab Reports
- CommandButton Preview_Lifting_Priority_Report "Harvest  Priority Report" · tab Reports · events: Click
- CommandButton Command50 "Lots Harvested Report" · tab Reports · events: Click
- CommandButton Command59 "Harvest Priority Checklist by Lot" · tab Reports · events: Click
- TextBox General_Comments "Comments:" · tab Reports
- CheckBox Data_Processed "Data Processed" · default `False` · tab Reports
- Subform NMIS_PROPAGULE_HARVEST_MAX_FY subform `Form.PROPAGULE_HARVEST_PRIORITIES_MAX_FY_SUBFORM` (master  → child ) · tab Reports
- CommandButton Harvest_Priority_Checklist_by_Loc "Harvest Priority Checklist by Loc" · tab Reports · events: Click
- CommandButton Command73 "Lots Harvested Report by Date" · tab Reports · events: Click
- CommandButton Not_To_Be_Harvested "Lots not to be Harvested Report" · tab Reports · events: Click
- CommandButton Preview_Destroy_Priority_Report "Destroy  Priority Report" · tab Reports · events: Click
- CommandButton Harvest_Priority_Checklist_by_client_Loc "Harvest Checklist by Client/Loc" · tab Reports · events: Click
- Subform NMIS_ACCESS_USER_NURSERY subform1 subform `Form.NMIS_ACCESS_USER_NURSERY subform1` (master  → child )

## Form: Propagule_Harvest_Priorties_Data_Subform
- **Caption:** Lifting_Priorties
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Propagule_Harvest_Priorties › Propagule_Harvest_Priorties_Data_Subform
- **Record source:** SELECT NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_FY, NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST, IIf(IsNull([harvest_date]),-1,1) AS Harvested, IIf(IsNull([HARVEST_PRIORITY]),99,[HARVEST_PRIORITY]) AS Harvest_Priority_Sort, NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_PRIORITY, NMIS_AGREEMENT_LOTS.ID, NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_DATE, NMIS_PROPAGULE_HARVEST_PRIORITIES.NOTE, NMIS_PROPAGULE_HARVEST_PRIORITIES.AGREEMENT_LOT_CN, NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_METHOD FROM NMIS_SOURCE_LOTS INNER JOIN (NMIS_AGREEMENT_LOTS INNER JOIN NMIS_PROPAGULE_HARVEST_PRIORITIES ON NMIS_AGREEMENT_LOTS.CN = NMIS_PROPAGULE_HARVEST_PRIORITIES.AGREEMENT_LOT_CN) ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN WHERE (((NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_FY) Like [Forms]![Propagule_Harvest_Priorties]![Like_Harvest_FY]) AND ((NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) Like [Forms]![Propagule_Harvest_Priorties]![like_species] & "*")) ORDER BY NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_FY DESC , NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST, IIf(IsNull([harvest_date]),-1,1), IIf(IsNull([HARVEST_PRIORITY]),99,[HARVEST_PRIORITY]), NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_PRIORITY, NMIS_AGREEMENT_LOTS.ID;
- **Order by:** [Propagule_Harvest_Priorties_Data_Subform].[ID], [Propagule_Harvest_Priorties_Data_Subform].[HARVEST_DATE]
- **Backend tables:** NMIS_AGREEMENT_LOTS, NMIS_PRODUCTS, NMIS_PROPAGULE_HARVEST_PRIORITIES, NMIS_SOURCE_LOTS, NMIS_SPECIES_PRODUCTS
- **Opens:** Report:Lifting_Priorities, Report:Processing_Client_Heads_Up, Report:TOLIFT_BY_PRIORITY
- **Migration:** 2 of 8 bound fields mapped. Main GrowHub screens: /admin/products/new (1)

**Controls**
- TextBox HARVEST_FY = `HARVEST_FY`
- TextBox NOTE = `NOTE` → GrowHub species_product.notes (maybe)
- TextBox HARVEST_PRIORITY = `HARVEST_PRIORITY` · events: AfterUpdate, Change, Exit
- CheckBox Partial_Lift = `HARVEST`
- TextBox HARVEST_DATE = `HARVEST_DATE` · events: AfterUpdate
- ComboBox Species_Code = `AGREEMENT_LOT_CN` · rows: `SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACULAR FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query INNER JOIN (NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN) ON NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMST`
- ComboBox HARVEST_METHOD = `HARVEST_METHOD` · rows: `DC;"Direct Combine";PC;"Pickup Combine";SW;"Swather";SC;"Swath & Catch";HD;"Hand";ST;"Stripper";BA;Bale;MO;"Mow";SP;"Spray";TI;"Till";OT;"Other"`
- ComboBox ID = `ID` · rows: `SELECT NMIS_AGREEMENT_LOTS.ID, [*agreement_lot_min_field_location_table].MinOfLOCATION, NMIS_PRODUCTS.CATEGORY_CODE FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_AGREEMENT_LOTS INNER JOIN [*agreement_lot_min_field_location_table] ON NMIS_AGREEMENT_LOTS.CN = [*agreement_lot_min_field_location_table].AGREEMENT_LOT_CN) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_` → GrowHub grow_request.growLotId (blank)
- CommandButton Update "Update Priorities" · events: Click  [FormFooter]
- CommandButton Add_Current_FY_Lots "Add Current FY Lots" · events: Click  [FormFooter]

## Form: REPORTS Form
- **Menu path:** Switchboard › REPORTS Form
- **Subforms:** Form.Reports_Menu_Source Subform, Form.Reports_Menu_Production Subform, Form.Reports_Menu_Processing Subform, Form.Reports_Menu_Shipping Subform, Form.Reports_Menu_Maintenance Subform, Form.Reports_Menu_Misc Subform
- **Opens:** Form:SOW_REQUEST_REPORTS
- **Form events with code:** Close

**Controls**
- TabControl TabCtl2
- Subform Reports_Menu_Source Subform subform `Form.Reports_Menu_Source Subform` (master  → child ) · tab Source Tab
- Subform Reports_Menu_Production Subform subform `Form.Reports_Menu_Production Subform` (master  → child ) · tab Production Tab
- Subform Reports_Menu_Processing Subform subform `Form.Reports_Menu_Processing Subform` (master  → child ) · tab Processing Tab
- Subform Reports_Menu_Labels Subform subform `Form.Reports_Menu_Shipping Subform` (master  → child ) · tab Shipping Tab
- Subform Reports_Menu_Maintenance Subform subform `Form.Reports_Menu_Maintenance Subform` (master  → child ) · tab Maintenance Tab
- Subform Reports_Menu_Misc Subform subform `Form.Reports_Menu_Misc Subform` (master  → child ) · tab Misc Tab
- TextBox FY_For_Reports · default `=[Forms]![Switchboard]![FY_For_Reports]` · events: Change, Exit

## Form: Reports_Menu_Maintenance Subform
- **Caption:** Reports_Menu_Maintenance Subform
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform
- **Record source:** NMIS_FISCAL_YEARS
- **Backend tables:** NMIS_FISCAL_YEARS
- **Opens:** Form:ASSOCIATE_LIST, Form:E-MAIL_LIST_FOR_SURPLUS, Form:Field_Location_Max_Index_Checklist, Form:Labels MAIL_LABELS_BY_ASSOC, Form:Labels MAIL_LABELS_BY_GROUP, Form:Labels MAIL_LABELS_BY_GROUP_w, Form:NMIS_ACTIVITY_CODES_CHECKLIST, Form:NMIS_ASSOCIATES99_AND_PHONE_CHECKLIST, Form:NMIS_ASSOCIATES_AND_PHONE_CHECKLIST, Form:NMIS_ASSOCIATES_AND_PHONE_SPD, Form:NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST, Form:NMIS_ASSOC_LIST_SURPLUS, Form:NMIS_CONTACT_AND_PHONE_CHECKLIST, Form:NMIS_Containers_type_Grow_Checklist, Form:NMIS_Containers_type_Store_Checklist, Form:NMIS_OYJORD_Settings_Checklist, Form:NMIS_OYJORD_Settings_Field_Checklist, Form:NMIS_PRODUCTS_CHECKLIST_current, Form:NMIS_PRODUCT_INVENTORY_INGROWTH_PCTs_Checklist, Form:NMIS_SPECIES_CHECKLIST, Form:NMIS_SPECIES_CHECKLIST2, Form:NMIS_SPECIES_CHECKLIST_Not_Hidden, Form:NMIS_SPECIES_Prices, Form:NMIS_Units_Checklist, Form:Products_Price_Reports, Form:Species_Products_Reports, Form:nmis_species_vs_nrcs_plantlist, Form:nmis_species_vs_nrcs_plantlist_by_group, Form:xPlease_Be_Patient_Message, Report:ASSOCIATE_LIST, Report:E-MAIL_LIST_FOR_SURPLUS, Report:Field_Location_Max_Index_Checklist, Report:Labels MAIL_LABELS_BY_ASSOC, Report:Labels MAIL_LABELS_BY_GROUP, Report:Labels MAIL_LABELS_BY_GROUP_w, Report:NMIS_ACTIVITY_CODES_CHECKLIST, Report:NMIS_ASSOCIATES99_AND_PHONE_CHECKLIST, Report:NMIS_ASSOCIATES_AND_PHONE_CHECKLIST, Report:NMIS_ASSOCIATES_AND_PHONE_SPD, Report:NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST, Report:NMIS_ASSOC_LIST_SURPLUS, Report:NMIS_CONTACT_AND_PHONE_CHECKLIST, Report:NMIS_Containers_type_Grow_Checklist, Report:NMIS_Containers_type_Store_Checklist, Report:NMIS_OYJORD_Settings_Checklist, Report:NMIS_OYJORD_Settings_Field_Checklist, Report:NMIS_PRODUCTS_CHECKLIST_current, Report:NMIS_PRODUCT_INVENTORY_INGROWTH_PCTs_Checklist, Report:NMIS_SPECIES_CHECKLIST, Report:NMIS_SPECIES_CHECKLIST2, Report:NMIS_SPECIES_CHECKLIST_Not_Hidden, Report:NMIS_SPECIES_Prices, Report:NMIS_Units_Checklist, Report:Products_Price_Reports, Report:Species_Products_Reports, Report:nmis_species_vs_nrcs_plantlist, Report:nmis_species_vs_nrcs_plantlist_by_group

**Controls**
- TabControl TabCtl2
- CommandButton Species_Products_Checklist "Species Products Reports..." · tab Lookup Tab · events: Click
- CommandButton Species_Checklist "All Species Checklist" · tab Lookup Tab · events: Click
- CommandButton NMIS_Products "Products- Current" · tab Lookup Tab · events: Click
- CommandButton Activity_Code_Checklist "Activity Code Checklist..." · tab Lookup Tab · events: Click
- CommandButton Associate_Contact_Phone_Checklist "Gov. Assoc. with Contacts..." · tab Lookup Tab · events: Click
- CommandButton Associate99_Contact_Phone_Checklist "99 Assoc. Contacts, Phone #'s" · tab Lookup Tab · events: Click
- CommandButton Units_Checklist "Units Checklist" · tab Lookup Tab · events: Click
- CommandButton Grow_Containers_Checklist "Grow Containers Checklist" · tab Lookup Tab · events: Click
- CommandButton Contacts_for_Current_fys_orders "Contacts for Current FY's Orders" · tab Lookup Tab · events: Click
- CommandButton Field_Location_Max_Index_Checklist "Field Loc Max Index Checklist..." · tab Lookup Tab · events: Click
- CommandButton Species_Checklist_Not_Hidden "Show Species Checklist" · tab Lookup Tab · events: Click
- CommandButton Ingrowth_Pcts_Checklist "Inv Ingowth Percents Checklist" · tab Lookup Tab · events: Click
- CommandButton Oyjord_Calibration_Checklist "Oyjord Calibration Checklist" · tab Lookup Tab · events: Click
- CommandButton Store_Containers_Checklist "Storage Containers Checklist" · tab Lookup Tab · events: Click
- CommandButton Products_Price_Reports "Product Charges Reports..." · tab Lookup Tab · events: Click
- CommandButton Contact_Associate_Phone_Checklist "Gov. Contacts and Associates..." · tab Lookup Tab · events: Click
- CommandButton Oyjord_Calibration_Field_Checklist "Oyjord Calibration Field Checklist" · tab Lookup Tab · events: Click
- CommandButton Seed_Price_Checklist "Seed Price Checklist" · tab Lookup Tab · events: Click
- CommandButton Associate_Contact_Phone_SPDt "Gov. Assoc. with Contacts SPD..." · tab Lookup Tab · events: Click
- CommandButton Species_Checklist2 "All Species Checklist2" · tab Lookup Tab · events: Click
- CommandButton LAB_LIKE_ASSOC "Labels by Client Associate" · tab Labels Tab · events: Click
- CommandButton LAB_GRP_NAME "Labels by Group Name" · tab Labels Tab · events: Click
- CommandButton LAB_GRP_NAME_W "Labels by Group Name with #" · tab Labels Tab · events: Click
- CommandButton NMIS_SPECIES_vs_NRCS "NMIS Species vs. NRCS List " · tab Misc · events: Click
- CommandButton CmdSplusPhnLst "Surplus Clients' Phone List" · tab Misc · events: Click
- CommandButton NMIS_SPECIES_vs_NRCS_by_group "NMIS Species vs. NRCS by Group" · tab Misc · events: Click
- CommandButton CmdAssocList "Surplus/Donation List by Group" · tab Misc · events: Click
- CommandButton CmdEmailSrplus "e-mail List for Surplus Clients" · tab Misc · events: Click

## Form: Reports_Menu_Misc Subform
- **Caption:** Reports_Menu_Misc Subform
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform
- **Record source:** NMIS_FISCAL_YEARS
- **Backend tables:** NMIS_FISCAL_YEARS
- **Opens:** Form:Annual_Report_Plant_Inventory_Detailed_Summary report, Form:Annual_Report_Plant_Inventory_Summary report, Form:Annual_Report_Plant_Inventory_Summary_by_class_species report, Form:Balances_By_Age_Class_and_End_Date2_no_net, Form:Contract_Payment_Estimate_Invoice, Form:Contract_Work_Order, Form:NMIS_ORDERS Review_CItems, Form:NMIS_ORDERS Without_CItems, Form:NMIS_PRODUCT_Projected_Charges_by_Category_Unit, Form:NMIS_PRODUCT_Projected_Charges_by_Category_Unit2, Form:NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot, Form:NMIS_PRODUCT_Projected_Charges_by_Unit, Form:NMIS_PRODUCT_Projected_Charges_by_Unit_Category, Form:NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot, Form:NMIS_PRODUCT_Projected_Container_Income_from_Bareroot_by_lot, Form:NMIS_PRODUCT_Projected_Income, Form:NMIS_PRODUCT_Projected_Income2, Form:NMIS_PRODUCT_Projected_Income_by_lot, Form:NMIS_PRODUCT_Projected_Income_by_lot2, Form:Non_WCF_Storage_Billing_Report, Form:PLANT_INVENTORY_REPORTS, Form:PROCESS_PAYMENT_ESTIMATE_INVOICE, Form:PROOF_ALL_From_Billing_Form, Form:Plant_Quarterly_Report, Form:Review_Orders_DBSRT_Contract_Items, Form:Review_Pack_Activities_Not_Equal_Order, Form:Review_Pack_Activities_vs_ActivityCI_NE_TransactionCI, Form:SOW_REQUEST_REPORTS, Form:TREEBOOK, Report:ACCOMPLISHMENT_REPORT, Report:ACCOMPLISHMENT_REPORT_region, Report:Annual_Report_Plant_Inventory_Detailed_Summary report, Report:Annual_Report_Plant_Inventory_Summary report, Report:Annual_Report_Plant_Inventory_Summary_by_class_species report, Report:Balances_By_Age_Class_and_End_Date2_no_net, Report:Contract_Payment_Estimate_Invoice, Report:Contract_Work_Order, Report:NMIS_ORDERS Review_CItems, Report:NMIS_ORDERS Without_CItems, Report:NMIS_PRODUCT_Projected_Charges_by_Category_Unit, Report:NMIS_PRODUCT_Projected_Charges_by_Category_Unit2, Report:NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot, Report:NMIS_PRODUCT_Projected_Charges_by_Unit, Report:NMIS_PRODUCT_Projected_Charges_by_Unit_Category, Report:NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot, Report:NMIS_PRODUCT_Projected_Container_Income_from_Bareroot_by_lot, Report:NMIS_PRODUCT_Projected_Income, Report:NMIS_PRODUCT_Projected_Income2, Report:NMIS_PRODUCT_Projected_Income_by_lot, Report:NMIS_PRODUCT_Projected_Income_by_lot2, Report:Non_WCF_Storage_Billing_Report, Report:PLANT_INVENTORY_REPORTS, Report:PROCESS_PAYMENT, Report:PROCESS_PAYMENT_ESTIMATE_INVOICE, Report:PROCESS_PAYMENT_INCREMENTAL, Report:PROOF_ALL_From_Billing_Form, Report:Plant_Quarterly_Report, Report:Review_Orders_DBSRT_Contract_Items, Report:Review_Pack_Activities_Not_Equal_Order, Report:Review_Pack_Activities_vs_ActivityCI_NE_TransactionCI, Report:SOW_REQUEST_REPORTS, Report:TREEBOOK

**Controls**
- TabControl TabCtl2
- CommandButton Annual_Report_Product_Inventory_Summary "Product Inventory Summary..." · tab Annual_Report · events: Click
- CommandButton Annual_Report_Product_Inventory_Detailed "Product Inventory Detailed..." · tab Annual_Report · events: Click
- CommandButton Accomplishment_Report "Accomplishment Report" · tab Annual_Report · events: Click
- CommandButton Sowing_Request_Reports "Sowing Request Reports..." · tab Annual_Report · events: Click
- CommandButton Annual_Report_Product_Inventory_Summary_by_class_species "Product Inventory Summary2..." · tab Annual_Report · events: Click
- CommandButton Balance_By_End_Date_no_net "Plant Gross Est. by End Date..." · tab Annual_Report · events: Click
- CommandButton Accomplishment_Report_Region "Accomplishment Report - Region" · tab Annual_Report · events: Click
- CommandButton CmdTreeBook "Tree Book Inventory Report" · tab Misc 2 Tab · events: Click
- CommandButton Plant_Quarterly_Report ""Tree"  Book Inventory Report..." · tab Misc 2 Tab · events: Click
- CommandButton Plant_Inventory_Reports "Plant  Inventory Reports..." · tab Misc 2 Tab · events: Click
- CommandButton Contract_Payment_Estimate_Invoice "Contract Pay Est FS-6300-30..." · tab Misc 3 Tab · events: Click
- CommandButton Non_WCF_Billing_Report "Non-WCF Storage Billing..." · tab Misc 3 Tab · events: Click
- CommandButton Contract_Work_Order "Contract Work Order FS-6300-12..." · tab Misc 3 Tab · events: Click
- CommandButton NMIS_Product_Projected_Income "Plant Projected Income Sum1..." · tab Misc 3 Tab · events: Click
- CommandButton NMIS_Product_Projected_Income_Sum2 "Plant Projected Income sum2..." · tab Misc 3 Tab · events: Click
- CommandButton NMIS_Product_Projected_Income_by_Lot1 "Plant Projected Income by Lot1..." · tab Misc 3 Tab · events: Click
- CommandButton NMIS_Product_Projected_Income_by_Lot2 "Plant Projected Income by Lot2..." · tab Misc 3 Tab · events: Click
- CommandButton NMIS_Product_Projected_Income_Cont_from_BR "Cont Projected Income from BR..." · tab Misc 3 Tab · events: Click
- CommandButton NMIS_PRODUCT_Projected_Charges_by_Unit_Category "Plant Projected Charges2..." · tab Misc 3 Tab · events: Click
- CommandButton NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot "Plant Projected Charges1..." · tab Misc 3 Tab · events: Click
- CommandButton NMIS_PRODUCT_Projected_Charges_by_Unit "Plant Projected Charges3..." · tab Misc 3 Tab · events: Click
- CommandButton NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot "Plant Projected Charges4..." · tab Misc 3 Tab · events: Click
- CommandButton NMIS_PRODUCT_Projected_Charges_by_Category_Unit "Plant Projected Charges5..." · tab Misc 3 Tab · events: Click
- CommandButton NMIS_PRODUCT_Projected_Charges_by_Category_Unit2 "Plant Projected Charges6..." · tab Misc 3 Tab · events: Click
- CommandButton Contract_Payment "Process Pay Est Calculations..." · tab Misc 3 Tab · events: Click
- CommandButton Review_Orders_without_Contract_Items2 "Review Orders -  No Contact Item" · tab Misc 3 Tab · events: Click
- CommandButton Review_Double_sort_CI2 "Review Orders - Double Sort CI" · tab Misc 3 Tab · events: Click
- CommandButton Review_Order_Contract_Item2 "Review Orders - Review Ctr Item" · tab Misc 3 Tab · events: Click
- CommandButton CmdProofAll "Review All Processing Data..." · tab Misc 3 Tab · events: Click
- CommandButton Review_Order_Act_vs_Activity_AC "Review Activity Codes O vs A" · tab Misc 3 Tab · events: Click
- CommandButton Sowing_Request_Reports2 "Sowing Request Reports..." · tab Misc 3 Tab · events: Click
- CommandButton Review_Order_Act_vs_Transaction "Review Activity Codes A vs T" · tab Misc 3 Tab · events: Click

## Form: Reports_Menu_Processing Subform
- **Caption:** Reports_Menu_Processing Subform
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform
- **Record source:** NMIS_FISCAL_YEARS
- **Backend tables:** NMIS_FISCAL_YEARS
- **Opens:** Form:99_Associate_Orders_by_Associate, Form:99_Associate_Orders_by_ID, Form:Agreement_Lot_Destroy_Checklist, Form:Agreement_Lot_Higrade_Checklist, Form:Agreement_lot_by_End_Season, Form:Agreement_lot_multiple_req_amt_from_last_inv, Form:CLIENT_BILLING_PREVIEW_BILLING, Form:CLIENT_BILL_INVOICE, Form:CLIENT_BILL_INVOICE_COMBINED, Form:CLIENT_BILL_INVOICE_COMBINED2, Form:CLIENT_BILL_INVOICE_w_lot_detail, Form:CLIENT_BILL_INVOICE_w_lot_detail_no_spcsvc, Form:CLIENT_BILL_INVOICE_wo_lot_detail, Form:Client_Bill_Menu, Form:Contract_Payment_Estimate_Invoice, Form:Drying_Tray_Input_Form, Form:Field_Map Form, Form:LIFT_CONTRACT_ACCUMULATED, Form:LIFT_CONTRACT_ESTIMATE_INVOICE, Form:LIFT_CONTRACT_WEEKLY, Form:LIFT_FIELD_CONTAINER_DENSITY, Form:LOTS_LIFTED_DAILY, Form:LOTS_LIFTED_DAILY_CONTRACT, Form:LOTS_LIFTED_DAILY_CONTRACT_Daily_Summary, Form:LOTS_LIFTED_DAILY_CONTRACT_Summary, Form:LOTS_PACKED_DAILY_BY_AGE_CLASS_Summary, Form:LOTS_PACKED_DAILY_CONTRACT_Daily_Summary, Form:LOTS_WO_EXTRACTION_AMOUNTS, Form:LOTS_WO_LIFT_AMOUNTS, Form:LOTS_WO_PACK_AMOUNTS, Form:Lift_Location_Worksheet, Form:Lifting_Locations_Form, Form:Lifting_Priorties, Form:NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST, Form:NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST_By_Contact, Form:NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_Prop_CHECKLIST, Form:NMIS_ASSOC_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST_By_Contact_SPD, Form:NMIS_ORDERS Review_CItems, Form:NMIS_ORDERS Without_CItems, Form:NMIS_ORDERS_Generic_Scheduled_Transplant, Form:NMIS_ORDERS_PROCESSING_TABLE_SIGN, Form:NMIS_ORDERS_Reports, Form:NMIS_ORDER_COMFIRMATION_FORM, Form:NMIS_PROCESS_LABELS_MAIN, Form:NMIS_SPLUS_LIST, Form:NMIS_SPLUS_LIST_FS, Form:Native_Seed_Harvest_Summary, Form:ORDER_CONFIRM_MT, Form:ORDER_FORM_BY_LIFT_DATE, Form:ORDER_STATUS, Form:ORDER_STATUS_DETAILED, Form:ORDER_STATUS_Packed, Form:ORDER_STATUS_Packed_No, Form:ORDER_STATUS_Packed_Shortage, Form:Order_Pack_Form, Form:Order_Status_Input_SPD, Form:Orders_Shipped_to_other_than_Packed_For, Form:PROCESS_PAYMENT_ESTIMATE_INVOICE, Form:PRODUCT_STORAGE_RECORD, Form:PRODUCT_TICKET, Form:PROOF_ALL, Form:Pack_act_tot_vs_trans_total_checklist, Form:Packed_for_Outplant_Checklist_by_Class, Form:Packed_for_Outplant_Checklist_by_Class_Client, Form:Packed_for_Outplant_Summary_by_Class, Form:Packed_for_Outplant_Summary_by_Class_Client, Form:Packed_for_Outplant_Summary_by_Species, Form:Packed_for_Outplant_Summary_by_region, Form:Packed_for_Surplus_Sales_Checklist_by_Class, Form:Packed_for_Surplus_Sales_Checklist_by_Class_Bid_List, Form:Plant_Processing_Table_Priorties, Form:Precooler_Destroy Form, Form:Precooler_Destroy_Short Form, Form:Processing_Orders_To_Client_Form, Form:Processing_QI_Daily_Checklist, Form:Processing_Review_by_Activity_Date, Form:Product_Storage_Containers_Used, Form:Product_Storage_Containers_Used_Stocktype, Form:Product_Storage_Containers_Used_by_client, Form:Product_Storage_Summary, Form:Propagule_Harvest_Priorties, Form:Review_Orders_DBSRT_Contract_Items, Form:Review_Pack_Activities_Not_Equal_Order, Form:SURPLUS_ORDER_STATUS, Form:Stock_Lifting_Worksheet, Form:TOLIFT_Condensed, Form:TOLIFT_Summary, Form:TOLIFT_Summary_spd, Form:TOLIFT_WOC, Form:XPLT_AT_JHSN, Form:XPLT_AT_JHSN_by_Client_Sp_age_class, Form:XPLT_AT_JHSN_by_Store_Loc, Form:transaction_Totals_by_location, Report:99_Associate_Orders_by_Associate, Report:99_Associate_Orders_by_ID, Report:Agreement_Lot_Destroy_Checklist, Report:Agreement_Lot_Higrade_Checklist, Report:Agreement_lot_by_End_Season, Report:Agreement_lot_multiple_req_amt_from_last_inv, Report:CLIENT_BILL_INVOICE, Report:CLIENT_BILL_INVOICE_COMBINED, Report:CLIENT_BILL_INVOICE_COMBINED2, Report:CLIENT_BILL_INVOICE_w_lot_detail, Report:CLIENT_BILL_INVOICE_w_lot_detail_no_spcsvc, Report:CLIENT_BILL_INVOICE_wo_lot_detail, Report:Client_Bill_Menu, Report:Contract_Payment_Estimate_Invoice, Report:Drying_Tray_Input_Form, Report:Field_Map Form, Report:LIFT_CONTRACT_ACCUMULATED, Report:LIFT_CONTRACT_ESTIMATE_INVOICE, Report:LIFT_CONTRACT_WEEKLY, Report:LIFT_FIELD_CONTAINER_DENSITY, Report:LOTS_LIFTED_DAILY, Report:LOTS_LIFTED_DAILY_CONTRACT, Report:LOTS_LIFTED_DAILY_CONTRACT_Daily_Summary, Report:LOTS_LIFTED_DAILY_CONTRACT_Summary, Report:LOTS_PACKED_DAILY_BY_AGE_CLASS_Summary, Report:LOTS_PACKED_DAILY_CONTRACT_Daily_Summary, Report:LOTS_WO_EXTRACTION_AMOUNTS, Report:LOTS_WO_LIFT_AMOUNTS, Report:LOTS_WO_PACK_AMOUNTS, Report:Lift_Location_Worksheet, Report:Lifting_Locations_Form, Report:Lifting_Priorties, Report:NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST, Report:NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST_By_Contact, Report:NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_Prop_CHECKLIST, Report:NMIS_ASSOC_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST_By_Contact_SPD, Report:NMIS_ORDERS Review_CItems, Report:NMIS_ORDERS Without_CItems, Report:NMIS_ORDERS_Generic_Scheduled_Transplant, Report:NMIS_ORDERS_PROCESSING_TABLE_SIGN, Report:NMIS_ORDERS_Reports, Report:NMIS_ORDER_COMFIRMATION_FORM, Report:NMIS_PROCESS_LABELS_MAIN, Report:NMIS_SPLUS_LIST, Report:NMIS_SPLUS_LIST_FS, Report:Native_Seed_Harvest_Summary, Report:ORDER_CONFIRM_MT, Report:ORDER_FORM_BY_LIFT_DATE, Report:ORDER_STATUS, Report:ORDER_STATUS_DETAILED, Report:ORDER_STATUS_Packed, Report:ORDER_STATUS_Packed_No, Report:ORDER_STATUS_Packed_Shortage, Report:Order_Status_Input_SPD, Report:Orders_Shipped_to_other_than_Packed_For, Report:PROCESS_PAYMENT, Report:PROCESS_PAYMENT_ESTIMATE_INVOICE, Report:PROCESS_PAYMENT_INCREMENTAL, Report:PRODUCT_STORAGE_RECORD, Report:PRODUCT_TICKET, Report:PROOF_ALL, Report:Pack_act_tot_vs_trans_total_checklist, Report:Packed_for_Outplant_Checklist_by_Class, Report:Packed_for_Outplant_Checklist_by_Class_Client, Report:Packed_for_Outplant_Summary_by_Class, Report:Packed_for_Outplant_Summary_by_Class_Client, Report:Packed_for_Outplant_Summary_by_Species, Report:Packed_for_Outplant_Summary_by_region, Report:Packed_for_Surplus_Sales_Checklist_by_Class, Report:Packed_for_Surplus_Sales_Checklist_by_Class_Bid_List, Report:Plant_Processing_Table_Priorties, Report:Precooler_Destroy Form, Report:Precooler_Destroy_Short Form, Report:Processing_Orders_To_Client_Form, Report:Processing_QI_Daily_Checklist, Report:Processing_Review_by_Activity_Date, Report:Product_Storage_Containers_Used, Report:Product_Storage_Containers_Used_Stocktype, Report:Product_Storage_Containers_Used_by_client, Report:Product_Storage_Summary, Report:Propagule_Harvest_Priorties, Report:Review_Orders_DBSRT_Contract_Items, Report:Review_Pack_Activities_Not_Equal_Order, Report:SURPLUS_ORDER_STATUS, Report:Stock_Lifting_Worksheet, Report:TOLIFT_Condensed, Report:TOLIFT_Summary, Report:TOLIFT_Summary_spd, Report:TOLIFT_WOC, Report:XPLT_AT_JHSN, Report:XPLT_AT_JHSN_by_Client_Sp_age_class, Report:XPLT_AT_JHSN_by_Store_Loc, Report:transaction_Totals_by_location

**Controls**
- TabControl TabCtl2
- CommandButton CmdSplusList "Surplus Sale Bid List" · tab Lifting · events: Click
- CommandButton ORD_CONFIRM_REP "Order Confirmation Reports..." · tab Lifting · events: Click
- CommandButton CmdOrdStat "Order Status Report..." · tab Lifting · events: Click
- CommandButton CmdSplsStat "Surplus Sale Orders Status" · tab Lifting · events: Click
- CommandButton 99_Associate_Orders_by_id "Other Sales by Agreement Lot..." · tab Lifting
- CommandButton Open_99_Associate_Orders_by_Associate_Name "Other Sales by Client Name..." · tab Lifting · events: Click
- CommandButton CmdOrdFrmBulk "Order/Pack/Quality Forms..." · tab Lifting · events: Click
- CommandButton CmdSplusLstFS "Surplus List - Govt" · tab Lifting · events: Click
- CommandButton Preview_Order_Form_Propagules "Order Form - Propagules..." · tab Lifting · events: Click
- CommandButton Multiple_ageement_checklist "Multiple Ageement Checklist" · tab Lifting · events: Click
- CommandButton Order_Checklist_Reports "Orders Checklist Reports..." · tab Lifting · events: Click
- CommandButton Fall_Processing_Checklist "End Season Process Checklist..." · tab Lifting · events: Click
- CommandButton Contacts_for_Current_fys_orders "Contacts for Current Orders..." · tab Lifting · events: Click
- CommandButton Order_Status_Packed "Order Status Report- Packed..." · tab Lifting · events: Click
- CommandButton Order_Status_Packed_Shortage "Order Status Report- Shortage..." · tab Lifting · events: Click
- CommandButton Process_Order_spd_to_Clients "Order Spreadsheet to Clients..." · tab Lifting · events: Click
- CommandButton Generic_Orders "Generic Orders..." · tab Lifting · events: Click
- CommandButton Generic_Orders_Scheduled_Transplant "Generic Orders Sched Xplnt..." · tab Lifting · events: Click
- CommandButton Contacts_for_Current_fys_Propagule_orders2 "Contacts for FY's Prop. Orders" · tab Lifting · events: Click
- CommandButton Order_Status_Packed_No "Order Status Report- No Pack..." · tab Lifting · events: Click
- CommandButton Contacts_for_Current_fys_orders_By_Contact "Contacts for Current Orders 2..." · tab Lifting · events: Click
- CommandButton CmdOrdStatSPD "Order Status Spreadsheet..." · tab Lifting · events: Click
- CommandButton CmdOrdStat_detailed "Order Status Report Detailed..." · tab Lifting · events: Click
- CommandButton Review_Orders_without_Contract_Items "Review Orders -  No Contact Item" · tab Lifting · events: Click
- CommandButton Review_Double_sort_CI "Review Orders - Double Sort CI" · tab Lifting · events: Click
- CommandButton Review_Order_Contract_Item "Review Orders - Review Ctr Item" · tab Lifting · events: Click
- CommandButton Contacts_for_Current_fys_orders_By_Contact_SPD "Contacts for Current Orders 2 SPD..." · tab Lifting · events: Click
- CommandButton TOLIFT_REP "Lots to be Lifted by Location..." · tab Packing Tab · events: Click
- CommandButton CmdLftDailyContr "Lift Contract Daily Diary Lot List..." · tab Packing Tab · events: Click
- CommandButton CmdLiftDaily "Lots Lifted Daily..." · tab Packing Tab · events: Click
- CommandButton CmdPrfPk "Proof Packing Data..." · tab Packing Tab · events: Click
- CommandButton Open_QM_Checklist_form "Daily Quality Monitor Checklist..." · tab Packing Tab · events: Click
- CommandButton Open_Bag_Box_Label_Form "Processing Bag/Box Labels..." · tab Packing Tab · events: Click
- CommandButton CmdLotswoPack "Orders w/o Pack Amount..." · tab Packing Tab · events: Click
- CommandButton CmdFldCntnrDensity "Field Container Density" · tab Packing Tab · events: Click
- CommandButton CmdLotswoLift "BR Orders WO Lift Activities..." · tab Packing Tab · events: Click
- CommandButton CmdXPLT "Packed for Transplant..." · tab Packing Tab · events: Click
- CommandButton Open_Drying_Tray_Tag_Form "Drying Tray Form..." · tab Packing Tab · events: Click
- CommandButton Propagule Harvest Summary "Propagule Harvest Summary..." · tab Packing Tab · events: Click
- CommandButton To_Be_Lifted_By_Age_Class "Harvest and Process Estimates..." · tab Packing Tab · events: Click
- CommandButton Edit_ Lift_Priorities "Lifting Priorities..." · tab Packing Tab · events: Click
- CommandButton Packed_for_Outplant_by_Class "Packed for Outplant by Class..." · tab Packing Tab · events: Click
- CommandButton Packed_for_Outplant_by_Class_Summary " Packed for Outplant by Class2..." · tab Packing Tab · events: Click
- CommandButton Packed_for_Outplant_by_Species "Packed for Outplant by Species..." · tab Packing Tab · events: Click
- CommandButton Propagule_Harvest_Priorities "Propagule Harvest  Priorities..." · tab Packing Tab · events: Click
- CommandButton Processing_Table_Sign "Processing Table Sign..." · tab Packing Tab · events: Click
- CommandButton Packed_for_Outplant_by_CLIENT "Packed for Outplant by CLIENT..." · tab Packing Tab · events: Click
- CommandButton Packed_for_Outplant_by_Class_Client_Summary " Packed for Outplant by Class3..." · tab Packing Tab · events: Click
- CommandButton Packed_for_Outplant_by_Region "Packed for Outplant by Region..." · tab Packing Tab · events: Click
- CommandButton CmdLftDailyContr_Sum "Lift Contract Item Summary..." · tab Packing Tab · events: Click
- CommandButton Contacts_for_Current_fys_Propagule_orders "Contacts for FY's Prop. Orders" · tab Packing Tab · events: Click
- CommandButton Stock_Lifting_Worksheet "Stock Lifting Worksheet Blank" · tab Packing Tab · events: Click
- CommandButton Lift_Location_Worksheet "Lift Location Worksheet Blank" · tab Packing Tab · events: Click
- CommandButton CmdXPLT_by_Store_Loc "Packed for Transplant by Loc" · tab Packing Tab · events: Click
- CommandButton Packed_for_Surplus_Sales_Donat "Packed forSurplus Sales/Donat" · tab Packing Tab · events: Click
- CommandButton CmdXPLT_by_Client "Packed for Transplant by Client..." · tab Packing Tab · events: Click
- CommandButton Map_For_Scheduled_Lifting "Locations for Scheduled Lift..." · tab Packing Tab · events: Click
- CommandButton CmdLotswoExtract "Container Orders WO Extract..." · tab Packing Tab · events: Click
- CommandButton CmdLftDailyContr_Daily_Sum "Lift Contract Daily Summary..." · tab Packing Tab · events: Click
- CommandButton CmdPackDailyContr_Daily_Sum "Pack Contract Daily Summary..." · tab Packing Tab · events: Click
- CommandButton CmdPackDailyStockType_Daily_Sum "Pack by Stocktype Daily Sum..." · tab Packing Tab · events: Click
- CommandButton Edit_ Process_Table_Priorities "Processing Table Asignments..." · tab Packing Tab · events: Click
- CommandButton Packed_for_Surplus_Bid_List "Packed forSurplus Bid List - Gov" · tab Packing Tab · events: Click
- CommandButton To_Be_Lifted_By_Age_Class_SPD "Harvest and Process Est SPD..." · tab Packing Tab · events: Click
- CommandButton CmdStrRec "Storage Record Form" · tab Storage Tab · events: Click
- CommandButton Product_Storage_Summary "Product Storage Summary..." · tab Storage Tab · events: Click
- CommandButton Contacts_for_Current_fys_orders2 "Contacts for Current FY's Orders" · tab Storage Tab · events: Click
- CommandButton inventory_by_location_type_and_lot "Totals by Location Type by Lot..." · tab Storage Tab · events: Click
- CommandButton BillPvwProc "Invoice Data Preview..." · tab Page37 · events: Click
- CommandButton CliBillInv "Client Bill Invoice..." · tab Page37 · events: Click
- CommandButton CliBillwoShip "Client Bill Inv w/o Shipping..." · tab Page37 · events: Click
- CommandButton CliBillShip "Client Bill Inv - Shipping Only..." · tab Page37 · events: Click
- CommandButton CliBillwoXPLT "Client Bill Inv-Transplant Only..." · tab Page37 · events: Click
- CommandButton Client Billing Summary Detail "Client Billing Summary, Detail" · tab Page37 · events: Click
- CommandButton Client Billing Summary "Client Billing Summary" · tab Page37 · events: Click
- CheckBox Client_Bill_Data_Processed "Client Bill Data Processed" · default `False` · tab Page37
- CommandButton Shipped_to_Other_Than_Ordered_by "Ship To Data Review" · tab Page37 · events: Click
- CommandButton CliBilInv_Lot_Detail "Client Invoice..." · tab Page37 · events: Click
- CommandButton CliBillwoSpcServices "Client Bill Inv w/o Spc Services..." · tab Page37 · events: Click
- CommandButton Plants_Destroyed_Checklist "Stock Destroyed Checklist..." · tab Page37 · events: Click
- CommandButton Plants_Higrade_Checklist "Stock Hi-Grade Checklist..." · tab Page37 · events: Click
- CommandButton CmdProofAll "Review All Processing Data..." · tab Labels Tab · events: Click
- CommandButton Contract_Payment "Process Pay Est Calculations..." · tab Labels Tab · events: Click
- CommandButton Precooler_Destroy_Form "Precooler Destroy Ticket" · tab Labels Tab · events: Click
- CommandButton Contract_Payment_Estimate_Invoice "FS-6300-30..." · tab Labels Tab · events: Click
- CommandButton Precooler_Destroy_Short_Form "Precooler Destroy Ticket Small" · tab Labels Tab · events: Click
- CommandButton Contract_Payment_Hourly_Review "Review Pack Data by Date..." · tab Labels Tab · events: Click
- CommandButton Product_Storage_Containers_Used "Storage Containers Used..." · tab Labels Tab · events: Click
- CommandButton Review_Pack_Act_vs_Trans_totals "Review Activity vs Trans Totals" · tab Labels Tab · events: Click
- CommandButton Product_Storage_Containers_Used_by_client "Storage Containers Used-Client..." · tab Labels Tab · events: Click
- CommandButton CmdLotswoLift2 "BR Lots Without Lift Activities..." · tab Labels Tab · events: Click
- CommandButton Product_Storage_Containers_Used_by_Stocktype "Storage Containers Used-Class..." · tab Labels Tab · events: Click
- CommandButton Review_Orders_without_Contract_Items2 "Review Orders -  No Contact Item" · tab Labels Tab · events: Click
- CommandButton Review_Double_sort_CI2 "Review Orders - Double Sort CI" · tab Labels Tab · events: Click
- CommandButton Review_Order_Contract_Item2 "Review Orders - Review Ctr Item" · tab Labels Tab · events: Click
- CommandButton Review_Order_Act_vs_Activity_AC "Review Activity Codes O vs A" · tab Labels Tab · events: Click
