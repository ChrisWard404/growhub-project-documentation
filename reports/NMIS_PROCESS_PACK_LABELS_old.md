# Report: NMIS_PROCESS_PACK_LABELS_old

**Caption:** Preview Packing Label  
**Record source:**

```sql
SELECT [NMIS_AGREEMENT_LOTS].[CN], [NMIS_AGREEMENT_LOTS].[ID], [NMIS_ORDERS].[SPEC_MIN], [NMIS_ORDERS].[SPEC_MAX], [NMIS_ORDERS].[CALIPER_MIN], [NMIS_ORDERS].[ROOT_PRUNE_TARGET], [Forms]![NMIS_PROCESS_LABELS]![NMIS_PROCESS_LABELS_subform2].Form!DATE_LIFT AS Lift_Date, [NMIS_ORDERS].[CLIENT_ASSOCIATE], [NMIS_ORDERS].[CN] FROM NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_ORDERS].[AGREEMENT_LOT_CN]=[NMIS_AGREEMENT_LOTS].[CN] GROUP BY [NMIS_AGREEMENT_LOTS].[CN], [NMIS_AGREEMENT_LOTS].[ID], [NMIS_ORDERS].[SPEC_MIN], [NMIS_ORDERS].[SPEC_MAX], [NMIS_ORDERS].[CALIPER_MIN], [NMIS_ORDERS].[ROOT_PRUNE_TARGET], [Forms]![NMIS_PROCESS_LABELS]![NMIS_PROCESS_LABELS_subform2].Form!DATE_LIFT, [NMIS_ORDERS].[CLIENT_ASSOCIATE], [NMIS_ORDERS].[CN] HAVING (((NMIS_AGREEMENT_LOTS.CN)=[Forms]![NMIS_PROCESS_LABELS]![Agreement_Lot_CN_Select]) AND ((NMIS_ORDERS.CN)=[Forms]![NMIS_PROCESS_LABELS]![NMIS_PROCESS_LABELS_subform1].[Form]![Order_CN]));
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_ORDERS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`, `NMIS_SPECIES_PRODUCTS`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ClientName_Label | Client: |  |  |  | 0.46, 1.98, 0.58, 0.19 |
| Label | NurseryID_Label | Nursery ID: |  |  |  | 0.46, 0.60, 0.79, 0.19 |
| Label | HtMin_Label | Height: |  |  |  | 0.46, 3.17, 0.52, 0.20 |
| Label | CaliperMin_Label | Caliper: |  |  |  | 2.46, 3.17, 0.57, 0.20 |
| Label | RootTarget_Label | RootTarget: |  |  |  | 3.83, 3.17, 0.80, 0.20 |
| Label | SourceCode_Label | Source: |  |  |  | 0.46, 1.43, 0.50, 0.19 |
| TextBox | NurseryID |  | ID |  |  | 1.29, 0.34, 3.50, 0.68 |
| TextBox | CaliperMin |  | CALIPER_MIN |  |  | 3.12, 3.15, 0.58, 0.23 |
| TextBox | RootTarget |  | ROOT_PRUNE_TARGET |  |  | 4.75, 3.15, 0.67, 0.23 |
| TextBox | Date Packed | Date Packed: | =Now() |  |  | 3.92, 2.47, 1.22, 0.24 |
| TextBox | Text38 | Trees/Cont: | =[Forms]![NMIS_PROCESS_LABELS]![Trees/Cont] |  |  | 1.38, 2.73, 1.36, 0.33 |
| TextBox | Text40 | Table: | =[Forms]![NMIS_PROCESS_LABELS]!Table |  |  | 3.38, 2.73, 1.14, 0.35 |
| TextBox | Comments | Comment: | =[Forms]![NMIS_PROCESS_LABELS]!Comments |  |  | 1.22, 3.45, 4.45, 0.25 |
| TextBox | Text50 |  | ="Order ID: " & [Forms]![NMIS_PROCESS_LABELS]!NMIS_PROCESS_LABELS_subform1.Form!PACK_ID |  |  | 0.00, 0.54, 0.22, 2.58 |
| Label | Label53 | Date Lifted: |  |  |  | 0.46, 2.50, 0.83, 0.17 |
| TextBox | Text54 |  | =[Forms]![NMIS_PROCESS_LABELS]!NMIS_PROCESS_LABELS_subform2.Form!DATE_LIFT |  |  | 1.33, 2.47, 1.21, 0.24 |
| ComboBox | SourceCode |  | NMIS_AGREEMENT_LOTS.CN | SELECT [NMIS_AGREEMENT_LOTS].[CN], "(" & [NMIS_SOURCE_LOTS].[ID] & ") " & [SOURCE_CODE] AS SC FROM NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SOURCE_LOTS].[CN]=[NMIS_AGREEMENT_LOTS].[SOURCE_LOT_CN];  |  | 1.00, 1.38, 4.70, 0.28 |
| ComboBox | ClientName |  | CLIENT_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 1.08, 2.03, 4.58, 0.35 |
| TextBox | Height_Range |  | =[SPEC_MIN] & IIf(IsNull([SPEC_MAX]),"+"," - " & [SPEC_MAX]) |  |  | 1.17, 3.15, 1.04, 0.23 |
| ComboBox | species_common_Name |  | NMIS_AGREEMENT_LOTS.CN | SELECT [NMIS_AGREEMENT_LOTS].[CN], [VERNACULAR] & ":  " & [Product_String] & " " & [SPECIES_PRODUCTS_STRING] AS Common_Name_N_Species_Product FROM (Species_Products_with_SizeSpecString INNER JOIN (NMIS_SPECIES INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN]) ON ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL]) AND ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL])) ON [Species_Products_with_SizeSpecString].[CN]=[NMIS_SPECIES_PRODUCTS].[CN]) INNER JOIN Product_String ON [NMIS_SPECIES_PRODUCTS].[PRODUCT_CN]=[Product_String].[CN];  |  | 0.46, 1.03, 5.20, 0.00 |
| TextBox | Text60 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 0.04, 0.01, 5.66, 0.25 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 1.08, 1.75, 1.93, 0.28 |
