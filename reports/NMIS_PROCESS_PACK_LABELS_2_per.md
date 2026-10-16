# Report: NMIS_PROCESS_PACK_LABELS_2_per

**Caption:** Preview Packing Label  
**Record source:**

```sql
SELECT NMIS_ORDERS.AGREEMENT_LOT_CN, NMIS_ORDERS.SPEC_MIN, NMIS_ORDERS.SPEC_MAX, NMIS_ORDERS.CALIPER_MIN, NMIS_ORDERS.ROOT_PRUNE_TARGET, NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ORDERS.CN, IIf(([ACTIVITY_CODE]="PXPLT" Or [ACTIVITY_CODE]="PXPLTP"),"FOR TRANSPLANTING AT " & [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery,"") AS FORTP, IIf([SERVICES_STRING] Like "*CSTORE*","***DO NOT FREEZE***") AS NO_FREEZE FROM NMIS_ORDER_SERVICES_STRING RIGHT JOIN NMIS_ORDERS ON NMIS_ORDER_SERVICES_STRING.ORDER_CN = NMIS_ORDERS.CN GROUP BY NMIS_ORDERS.AGREEMENT_LOT_CN, NMIS_ORDERS.SPEC_MIN, NMIS_ORDERS.SPEC_MAX, NMIS_ORDERS.CALIPER_MIN, NMIS_ORDERS.ROOT_PRUNE_TARGET, NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ORDERS.CN, IIf(([ACTIVITY_CODE]="PXPLT" Or [ACTIVITY_CODE]="PXPLTP"),"FOR TRANSPLANTING AT " & [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery,""), IIf([SERVICES_STRING] Like "*CSTORE*","***DO NOT FREEZE***") HAVING (((NMIS_ORDERS.AGREEMENT_LOT_CN)=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select]) AND ((NMIS_ORDERS.CN)=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Order_CN]));
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_ORDERS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`, `NMIS_SPECIES_PRODUCTS`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ClientName_Label | Client: |  |  |  | 0.00, 1.77, 0.58, 0.19 |
| Label | NurseryID_Label | Nursery ID: |  |  |  | 0.00, 0.60, 0.79, 0.19 |
| Label | HtMin_Label | Height: |  |  |  | 0.00, 3.05, 0.52, 0.20 |
| Label | CaliperMin_Label | Caliper: |  |  |  | 2.00, 3.05, 0.57, 0.20 |
| Label | RootTarget_Label | RootTarget: |  |  |  | 3.38, 3.05, 0.80, 0.20 |
| Label | SourceCode_Label | Source: |  |  |  | 0.00, 1.28, 0.50, 0.19 |
| TextBox | CaliperMin |  | CALIPER_MIN |  |  | 2.67, 3.03, 0.58, 0.23 |
| TextBox | RootTarget |  | ROOT_PRUNE_TARGET |  |  | 4.29, 3.03, 0.67, 0.23 |
| TextBox | Date Packed | Date Packed: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] |  |  | 2.77, 2.38, 1.22, 0.24 |
| TextBox | Text38 | Trees/Cont: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] |  |  | 0.75, 2.65, 0.85, 0.33 |
| TextBox | Text40 | Table: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![Table] |  |  | 4.62, 2.24, 0.89, 0.35 |
| TextBox | Comments | Comment: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![Comments] |  |  | 0.76, 3.30, 4.88, 0.24 |
| Label | Label53 | Date Lifted: |  |  |  | 0.00, 2.39, 0.83, 0.17 |
| TextBox | Text54 |  | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted] |  |  | 0.88, 2.38, 0.00, 0.24 |
| ComboBox | SourceCode |  | AGREEMENT_LOT_CN | SELECT [NMIS_AGREEMENT_LOTS].[CN], "(" & [NMIS_SOURCE_LOTS].[id] & ") " & [Source_Code] AS Source FROM NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SOURCE_LOTS].[CN]=[NMIS_AGREEMENT_LOTS].[SOURCE_LOT_CN];  |  | 0.54, 1.22, 5.13, 0.27 |
| ComboBox | ClientName |  | CLIENT_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 0.62, 1.83, 5.01, 0.41 |
| TextBox | Height_Range |  | =[SPEC_MIN] & IIf(IsNull([SPEC_MAX]),"+"," - " & [SPEC_MAX]) |  |  | 0.71, 3.03, 1.04, 0.23 |
| ComboBox | species_common_Name |  | AGREEMENT_LOT_CN | SELECT [NMIS_AGREEMENT_LOTS].[CN] AS Agreement_Lot_CN, [VERNACULAR] & ":  " & [Product_String] & " " & [SPECIES_PRODUCTS_STRING] AS Common_Name_N_Species_Product FROM (Species_Products_with_SizeSpecString INNER JOIN (NMIS_SPECIES INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN]) ON ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL]) AND ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL])) ON [Species_Products_with_SizeSpecString].[CN]=[NMIS_SPECIES_PRODUCTS].[CN]) INNER JOIN Product_String ON [NMIS_SPECIES_PRODUCTS].[PRODUCT_CN]=[Product_String].[CN];  |  | 0.00, 1.04, 5.63, 0.16 |
| TextBox | Text60 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 0.00, 0.01, 5.72, 0.27 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 0.62, 1.54, 1.93, 0.28 |
| ComboBox | NurseryID |  | AGREEMENT_LOT_CN | SELECT NMIS_ORDERS.AGREEMENT_LOT_CN, [ID] & "/" & [Forms]![NMIS_PROCESS_LABELS_MAIN]![Pack_ID] AS ID_Order FROM NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN GROUP BY NMIS_ORDERS.AGREEMENT_LOT_CN, [ID] & "/" & [Forms]![NMIS_PROCESS_LABELS_MAIN]![Pack_ID] HAVING (((NMIS_ORDERS.AGREEMENT_LOT_CN)=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select])); |  | 0.83, 0.35, 4.89, 0.62 |
| TextBox | FORTP |  | FORTP |  |  | 0.04, 3.55, 5.59, 0.24 |
| Label | Label64 | Client: |  |  |  | 5.77, 1.77, 0.58, 0.19 |
| Label | Label65 | Nursery ID: |  |  |  | 5.77, 0.60, 0.79, 0.19 |
| Label | Label66 | Height: |  |  |  | 5.77, 3.05, 0.52, 0.20 |
| Label | Label67 | Caliper: |  |  |  | 7.77, 3.05, 0.57, 0.20 |
| Label | Label68 | RootTarget: |  |  |  | 9.15, 3.05, 0.80, 0.20 |
| Label | Label69 | Source: |  |  |  | 5.77, 1.28, 0.50, 0.19 |
| TextBox | Text70 |  | CALIPER_MIN |  |  | 8.44, 3.03, 0.58, 0.23 |
| TextBox | Text71 |  | ROOT_PRUNE_TARGET |  |  | 10.06, 3.03, 0.67, 0.23 |
| TextBox | Text72 | Date Packed: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] |  |  | 8.55, 2.38, 1.22, 0.24 |
| TextBox | Text74 | Trees/Cont: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] |  |  | 6.50, 2.65, 0.85, 0.33 |
| TextBox | Text76 | Table: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![Table] |  |  | 10.40, 2.24, 0.89, 0.35 |
| TextBox | Text78 | Comment: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![Comments] |  |  | 6.53, 3.30, 4.86, 0.24 |
| Label | Label81 | Date Lifted: |  |  |  | 5.77, 2.39, 0.83, 0.17 |
| TextBox | Text82 |  | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted] |  |  | 6.65, 2.38, 0.00, 0.24 |
| ComboBox | Combo83 |  | AGREEMENT_LOT_CN | SELECT [NMIS_AGREEMENT_LOTS].[CN], "(" & [NMIS_SOURCE_LOTS].[id] & ") " & [Source_Code] AS Source FROM NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SOURCE_LOTS].[CN]=[NMIS_AGREEMENT_LOTS].[SOURCE_LOT_CN];  |  | 6.31, 1.22, 5.11, 0.27 |
| ComboBox | Combo84 |  | CLIENT_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 6.40, 1.83, 4.99, 0.41 |
| TextBox | Text85 |  | =[SPEC_MIN] & IIf(IsNull([SPEC_MAX]),"+"," - " & [SPEC_MAX]) |  |  | 6.48, 3.03, 1.04, 0.23 |
| ComboBox | Combo86 |  | AGREEMENT_LOT_CN | SELECT [NMIS_AGREEMENT_LOTS].[CN] AS Agreement_Lot_CN, [VERNACULAR] & ":  " & [Product_String] & " " & [SPECIES_PRODUCTS_STRING] AS Common_Name_N_Species_Product FROM (Species_Products_with_SizeSpecString INNER JOIN (NMIS_SPECIES INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN]) ON ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL]) AND ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL])) ON [Species_Products_with_SizeSpecString].[CN]=[NMIS_SPECIES_PRODUCTS].[CN]) INNER JOIN Product_String ON [NMIS_SPECIES_PRODUCTS].[PRODUCT_CN]=[Product_String].[CN];  |  | 5.77, 1.04, 5.61, 0.16 |
| TextBox | Text87 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 5.77, 0.01, 5.66, 0.27 |
| TextBox | Text88 |  | CLIENT_ASSOCIATE |  |  | 6.40, 1.54, 1.93, 0.28 |
| ComboBox | Combo89 |  | AGREEMENT_LOT_CN | SELECT NMIS_ORDERS.AGREEMENT_LOT_CN, [ID] & "/" & [Forms]![NMIS_PROCESS_LABELS_MAIN]![Pack_ID] AS ID_Order FROM NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN GROUP BY NMIS_ORDERS.AGREEMENT_LOT_CN, [ID] & "/" & [Forms]![NMIS_PROCESS_LABELS_MAIN]![Pack_ID] HAVING (((NMIS_ORDERS.AGREEMENT_LOT_CN)=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select])); |  | 6.60, 0.34, 4.81, 0.62 |
| TextBox | Text90 |  | FORTP |  |  | 5.81, 3.55, 5.58, 0.24 |
| TextBox | SERVICES_STRING |  | NO_FREEZE |  |  | 1.67, 2.67, 4.00, 0.29 |
| TextBox | Text93 |  | NO_FREEZE |  |  | 7.41, 2.67, 4.00, 0.29 |
