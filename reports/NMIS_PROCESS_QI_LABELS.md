# Report: NMIS_PROCESS_QI_LABELS

**Caption:** Preview Quality Monitoring Label  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_ORDERS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`, `NMIS_SPECIES_PRODUCTS`  
**Opened from (VBA):** `Form_NMIS_PROCESS_LABELS`, `Form_NMIS_PROCESS_LABELS_MAIN`, `Form_NMIS_PROCESS_LABELS_ST1`, `Form_NMIS_PROCESS_LABELS_ST2`, `Form_NMIS_PROCESS_LABELS_ST3`, `Form_NMIS_PROCESS_LABELS_ST4`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label75 | Lot ID: |  |  |  | 2.91, 1.62, 2.81, 0.23 |
| TextBox | Text77 |  | ID |  |  | 2.92, 1.82, 2.79, 0.57 |
| TextBox | Text78 |  | ="Top: ht: " & [SPEC_MIN] & " - " & [Spec_max] & "   Cal: " & [caliper_min] |  |  | 0.00, 3.27, 4.58, 0.23 |
| Label | Label82 | QUALITY INSPECTION LABEL |  |  |  | 0.08, 0.00, 5.62, 0.21 |
| TextBox | Text84 |  | ='I' & [ID] |  |  | 0.00, 1.35, 5.67, 0.25 |
| TextBox | Text85 |  | ='P' & [Pack_ID] |  |  | 0.00, 0.82, 2.92, 0.25 |
| TextBox | Text86 |  | ="Date: " & [Forms]![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] |  |  | 0.92, 0.43, 1.71, 0.21 |
| TextBox | Text88 |  | ="Table: " & [Forms]![NMIS_PROCESS_LABELS_MAIN]![Table] |  |  | 0.00, 0.43, 0.88, 0.21 |
| TextBox | Text93 |  | ='T' & [spec_Min] & "+" & [spec_Max] & '+' & [Caliper_Min] |  |  | 0.00, 3.50, 5.62, 0.29 |
| TextBox | Text95 |  | ="Prune: " & IIf([ACTIVITY_CODE] Like "PXPLT*",([Root_Prune_Target]-1) & '-' & ([Root_Prune_Target]+1),([Root_Prune_Target]-1.5) & '-' & ([Root_Prune_Target]+1.5)) & " Target: " & [ROOT_Prune_TARGET] & " Inches" |  |  | 0.00, 2.22, 2.92, 0.23 |
| TextBox | Text97 |  | ="Take: " & Round([Order_Amt]*10,0) & " From " & [ORDER_AMT] & " M" |  |  | 0.00, 2.72, 2.54, 0.22 |
| TextBox | Text99 |  | ='*R' & IIf([ACTIVITY_CODE] Like "PXPLT*",([Root_Prune_Target]-1) & '+' & ([Root_Prune_Target]+1),([Root_Prune_Target]-1.5) & '+' & ([Root_Prune_Target]+1.5)) & "*" |  |  | 0.00, 2.43, 5.62, 0.29 |
| TextBox | Text103 |  | ='Z' & Round([Order_Amt]*10,0) |  |  | 0.00, 2.92, 5.58, 0.28 |
| TextBox | Text106 |  | ="Order ID: " & [PACK_ID] |  |  | 0.00, 0.64, 2.67, 0.21 |
| TextBox | PACK_CONTRACT_ITEM |  | ="Pack Contract Item: " & [Contract_Item] |  |  | 0.00, 1.69, 2.16, 0.21 |
| ComboBox | Text108 |  | CLIENT_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [ASSOCIATE] & " " & [ASSOCIATE_NAME] AS Expr1 FROM NMIS_ASSOCIATES;  |  | 0.08, 0.21, 5.62, 0.23 |
| TextBox | Text111 |  | ='C' & [Contract_Item] |  |  | 0.00, 1.88, 2.92, 0.25 |
| TextBox | NO_QM_SAMPLE |  | NO_QM_SAMPLE |  |  | 3.29, 2.65, 2.33, 0.33 |
| TextBox | Text115 |  | ="Lot ID: " & [ID] |  |  | 0.00, 1.17, 2.16, 0.21 |
| Label | Label116 | ORDER ID: |  |  |  | 2.92, 0.61, 2.79, 0.23 |
| TextBox | Text117 |  | PACK_ID |  |  | 2.92, 0.80, 2.79, 0.55 |
| Label | Label64 | Client: |  |  |  | 5.80, 1.87, 0.58, 0.19 |
| Label | Label65 | Nursery ID: |  |  |  | 5.80, 0.59, 0.79, 0.19 |
| Label | Label66 | Height: |  |  |  | 5.80, 3.03, 0.52, 0.20 |
| Label | Label67 | Caliper: |  |  |  | 7.80, 3.03, 0.57, 0.20 |
| Label | Label68 | RootTarget: |  |  |  | 9.18, 3.03, 0.80, 0.20 |
| Label | Label69 | Source: |  |  |  | 5.80, 1.38, 0.50, 0.19 |
| TextBox | Text70 |  | CALIPER_MIN |  |  | 8.47, 3.01, 0.58, 0.23 |
| TextBox | Text71 |  | ROOT_PRUNE_TARGET |  |  | 10.09, 3.01, 0.67, 0.23 |
| TextBox | Text72 | Date Packed: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] |  |  | 9.26, 2.36, 1.22, 0.24 |
| TextBox | Text74 | Trees/Cont: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] |  |  | 6.72, 2.61, 1.36, 0.33 |
| TextBox | Text76 | Table: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![Table] |  |  | 8.72, 2.61, 1.14, 0.35 |
| TextBox | Text119 | Comment: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![Comments] |  |  | 6.56, 3.29, 4.86, 0.24 |
| Label | Label81 | Date Lifted: |  |  |  | 5.80, 2.39, 0.83, 0.17 |
| TextBox | Text82 |  | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted] |  |  | 6.67, 2.36, 1.21, 0.24 |
| ComboBox | Combo83 |  | AGREEMENT_LOT_CN | SELECT [NMIS_AGREEMENT_LOTS].[CN], "(" & [NMIS_SOURCE_LOTS].[id] & ") " & [Source_Code] AS Source FROM NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SOURCE_LOTS].[CN]=[NMIS_AGREEMENT_LOTS].[SOURCE_LOT_CN];  |  | 6.34, 1.32, 5.11, 0.27 |
| ComboBox | Combo84 |  | CLIENT_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 6.42, 1.93, 4.99, 0.41 |
| TextBox | Text120 |  | =[SPEC_MIN] & IIf(IsNull([SPEC_MAX]),"+"," - " & [SPEC_MAX]) |  |  | 6.51, 3.01, 1.04, 0.23 |
| ComboBox | Combo86 |  | AGREEMENT_LOT_CN | SELECT [NMIS_AGREEMENT_LOTS].[CN] AS Agreement_Lot_CN, [VERNACULAR] & ":  " & [Product_String] & " " & [SPECIES_PRODUCTS_STRING] AS Common_Name_N_Species_Product FROM (Species_Products_with_SizeSpecString INNER JOIN (NMIS_SPECIES INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN]) ON ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL]) AND ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL])) ON [Species_Products_with_SizeSpecString].[CN]=[NMIS_SPECIES_PRODUCTS].[CN]) INNER JOIN Product_String ON [NMIS_SPECIES_PRODUCTS].[PRODUCT_CN]=[Product_String].[CN];  |  | 5.80, 1.02, 5.61, 0.16 |
| TextBox | Text87 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 5.80, 0.00, 5.66, 0.24 |
| TextBox | Text121 |  | CLIENT_ASSOCIATE |  |  | 6.42, 1.64, 1.93, 0.28 |
| ComboBox | Combo89 |  | AGREEMENT_LOT_CN | SELECT NMIS_ORDERS.AGREEMENT_LOT_CN, [ID] & "/" & [Forms]![NMIS_PROCESS_LABELS_MAIN]![Pack_ID] AS ID_Order FROM NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN GROUP BY NMIS_ORDERS.AGREEMENT_LOT_CN, [ID] & "/" & [Forms]![NMIS_PROCESS_LABELS_MAIN]![Pack_ID] HAVING (((NMIS_ORDERS.AGREEMENT_LOT_CN)=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select])); |  | 6.63, 0.33, 4.81, 0.62 |
| TextBox | Text90 |  | FORTP |  |  | 5.84, 3.54, 5.58, 0.24 |
