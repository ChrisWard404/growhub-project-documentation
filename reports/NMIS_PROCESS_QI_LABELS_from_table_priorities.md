# Report: NMIS_PROCESS_QI_LABELS_from_table_priorities

**Caption:** Preview Quality Monitoring Label  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_SPECIES`, `NMIS_SPECIES_PRODUCTS`  
**Opened from (VBA):** `Form_Plant_Processing_Table_Priorties`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label75 | Lot ID: |  |  |  | 0.08, 1.21, 2.81, 0.23 |
| TextBox | Text77 |  | ID |  |  | 0.09, 1.41, 2.79, 0.57 |
| TextBox | Text78 |  | ="Top: ht: " & [SPEC_MIN] & IIf(IsNull([SPEC_MAX]),"+"," - " & [SPEC_MAX]) & "   Cal: " & [caliper_min] |  |  | 0.00, 2.89, 5.62, 0.30 |
| Label | Label82 | QUALITY INSPECTION LABEL |  |  |  | 0.08, 0.30, 5.62, 0.23 |
| TextBox | Text86 |  | ="Date: " & [PROCESSING_DATE] |  |  | 0.08, 0.76, 2.79, 0.43 |
| TextBox | Text88 |  | =IIf([TABLE]="ss","Side Sort","Table: " & [TABLE]) |  |  | 2.88, 0.76, 2.85, 0.43 |
| TextBox | Text95 |  | ="Prune: " & IIf([ACTIVITY_CODE] Like "PXPLT*",([Root_Prune_Target]-1) & '-' & ([Root_Prune_Target]+1),([Root_Prune_Target]-1.5) & '-' & ([Root_Prune_Target]+1.5)) & " Target: " & [ROOT_Prune_TARGET] & " Inches" |  |  | 0.00, 3.27, 3.92, 0.30 |
| TextBox | Text97 |  | ="Take: " & Round([Order_Amt]*10,0) & " From " & [ORDER_AMT] & " M" |  |  | 3.04, 2.25, 2.71, 0.30 |
| TextBox | PACK_CONTRACT_ITEM |  | ="Pack Contract Item: " & [Contract_Item] |  |  | 0.00, 2.23, 3.92, 0.30 |
| ComboBox | Text108 |  | CLIENT_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [ASSOCIATE] & " " & [ASSOCIATE_NAME] AS Expr1 FROM NMIS_ASSOCIATES;  |  | 0.09, 0.52, 5.62, 0.23 |
| TextBox | NO_QM_SAMPLE |  | NO_QM_SAMPLE |  |  | 2.75, 2.55, 2.99, 0.33 |
| Label | Label116 | ORDER ID: |  |  |  | 2.96, 1.21, 2.79, 0.23 |
| TextBox | Text117 |  | PACK_ID |  |  | 2.96, 1.40, 2.79, 0.58 |
| ComboBox | Combo86 |  | AGREEMENT_LOT_CN | SELECT [NMIS_AGREEMENT_LOTS].[CN] AS Agreement_Lot_CN, [VERNACULAR] & ":  " & [Product_String] & " " & [SPECIES_PRODUCTS_STRING] AS Common_Name_N_Species_Product FROM (Species_Products_with_SizeSpecString INNER JOIN (NMIS_SPECIES INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN]) ON ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL]) AND ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL])) ON [Species_Products_with_SizeSpecString].[CN]=[NMIS_SPECIES_PRODUCTS].[CN]) INNER JOIN Product_String ON [NMIS_SPECIES_PRODUCTS].[PRODUCT_CN]=[Product_String].[CN];  |  | 0.00, 2.04, 5.75, 0.00 |
| TextBox | Text90 |  | FORTP |  |  | 0.00, 3.58, 5.58, 0.24 |
| TextBox | Text87 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 0.01, 0.00, 5.73, 0.28 |
| TextBox | Text122 |  | ="Root Min: " & [Root_prune_min] |  |  | 4.01, 3.28, 1.69, 0.30 |
| TextBox | Text123 |  | ="Order: " & [ORDER_AMT] & " M" |  |  | 0.00, 2.58, 2.71, 0.30 |
