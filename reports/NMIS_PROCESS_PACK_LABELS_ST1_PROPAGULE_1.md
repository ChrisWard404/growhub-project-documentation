# Report: NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_1

**Caption:** Preview Packing Label  
**Grouping/sorting:** `Number_Of_Tags`  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_ORDERS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`, `NMIS_SPECIES_PRODUCTS`  
**Opened from (VBA):** `Form_NMIS_PROCESS_LABELS_ST1`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text138 |  | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Sublot] |  |  | 4.79, 1.25, 0.87, 0.62 |
| Label | ClientName_Label | Client: |  |  |  | 0.00, 1.86, 0.58, 0.19 |
| Label | NurseryID_Label | Nursery ID: |  |  |  | 0.00, 0.57, 0.79, 0.19 |
| Label | SourceCode_Label | Source: |  |  |  | 0.00, 1.41, 0.50, 0.19 |
| TextBox | Date Packed | Date Packed: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form!Pack_Date |  |  | 3.50, 2.27, 2.16, 0.62 |
| TextBox | Text38 | Lbs/Cont: | =IIf([Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form![Trees/Cont]>"",[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form![Trees/Cont],"__________") |  |  | 0.92, 3.11, 1.38, 0.43 |
| TextBox | Comments | Comment: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form!Comments |  |  | 0.76, 3.55, 4.91, 0.24 |
| Label | Label53 | Date Harvest: |  |  |  | 0.00, 2.42, 0.86, 0.20 |
| TextBox | Text54 |  | =IIf(IsNull([Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form!Lift_Date_Override),[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form!NMIS_PROCESS_LABELS_subform2.Form!DATE_LIFT,[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form!Lift_Date_Override) |  |  | 0.88, 2.39, 0.75, 0.24 |
| ComboBox | SourceCode |  | AGREEMENT_LOT_CN | SELECT [NMIS_AGREEMENT_LOTS].[CN], "(" & [NMIS_SOURCE_LOTS].[id] & ") " & [Source_Code] AS Source FROM NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SOURCE_LOTS].[CN]=[NMIS_AGREEMENT_LOTS].[SOURCE_LOT_CN];  |  | 0.54, 1.35, 5.16, 0.27 |
| ComboBox | ClientName |  | CLIENT_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 0.62, 1.92, 5.04, 0.41 |
| ComboBox | species_common_Name |  | AGREEMENT_LOT_CN | SELECT [NMIS_AGREEMENT_LOTS].[CN] AS Agreement_Lot_CN, [NMIS_SPECIES].[VERNACULAR] & ":  " & [Product_String] & " " & [SPECIES_PRODUCTS_STRING] AS Common_Name_N_Species_Product FROM (Species_Products_with_SizeSpecString INNER JOIN (NMIS_SPECIES INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN]) ON ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL]) AND ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL])) ON [Species_Products_with_SizeSpecString].[CN]=[NMIS_SPECIES_PRODUCTS].[CN]) INNER JOIN Product_String ON [NMIS_SPECIES_PRODUCTS].[PRODUCT_CN]=[Product_String].[CN];  |  | 0.00, 1.19, 5.66, 0.16 |
| TextBox | Text60 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 0.00, 0.01, 5.75, 0.28 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 0.62, 1.63, 1.93, 0.28 |
| TextBox | FORTP |  | FORTP |  |  | 0.04, 3.80, 5.62, 0.00 |
| ComboBox | Combo92 |  | AGREEMENT_LOT_CN | SELECT [NMIS_AGREEMENT_LOTS].[CN] AS Agreement_Lot_CN, [NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query].[Scientific_Name] FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN]) ON [NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query].[PLNTMSTR_SYMBOL]=[NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL];  |  | 0.00, 1.03, 5.66, 0.16 |
| Label | Label94 | ____/____ |  |  |  | 3.11, 2.83, 2.55, 0.72 |
| TextBox | Number_Of_Containers |  | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Number_Of_Containers] |  |  | 4.50, 2.84, 1.17, 0.72 |
| TextBox | Text162 |  | Tag_Number |  |  | 3.12, 2.83, 1.17, 0.72 |
| ComboBox | NurseryID |  | AGREEMENT_LOT_CN | SELECT NMIS_ORDERS.AGREEMENT_LOT_CN, [ID] & "-" & [Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Sublot] AS ID_Order FROM NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN; |  | 0.73, 0.08, 5.03, 0.96 |
