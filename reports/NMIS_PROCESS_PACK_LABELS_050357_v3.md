# Report: NMIS_PROCESS_PACK_LABELS_050357_v3

**Caption:** Preview Packing Label  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_ORDERS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`, `NMIS_SPECIES_PRODUCTS`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | HtMin_Label | Size Specs: |  |  |  | 0.00, 3.20, 0.71, 0.20 |
| Label | SourceCode_Label | Species-Seed Zone.Elevation |  |  |  | 0.00, 1.88, 2.11, 0.19 |
| TextBox | Text38 | Trees/Unit | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] |  |  | 0.00, 2.58, 1.25, 0.58 |
| TextBox | Text40 | Belt#: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![Table] |  |  | 2.99, 2.08, 0.47, 0.27 |
| ComboBox | SourceCode |  | AGREEMENT_LOT_CN | SELECT NMIS_AGREEMENT_LOTS.CN, IIf(Not IsNull([SPECIES_NO]),[SPECIES_NO],[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]) & "-" & IIf(Not IsNull([SEED_ZONE]),[SEED_ZONE] & "." & [ORIGIN_ELEVATION],[BREEDING_SUBUNIT]) AS SP_ZONE_ELE FROM NMIS_SPECIES INNER JOIN (NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN) ON (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) AND (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL); |  | 0.00, 1.98, 2.95, 0.50 |
| TextBox | Height_Range |  | ORDER_SIZE_SPEC_STRING |  |  | 0.71, 3.18, 1.51, 0.23 |
| TextBox | Text60 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 0.00, 0.01, 5.62, 0.24 |
| TextBox | Text92 | Pack Date: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] |  |  | 3.46, 2.08, 0.93, 0.27 |
| ComboBox | Specie_Stocktype |  | AGREEMENT_LOT_CN | SELECT Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class.CN, IIf(Not IsNull([SPECIES_NO]),[SPECIES_NO],[NMIS_SPECIES].[PLNTMSTR_SYMBOL]) & IIf([Age_Class_String]<>" ","/" & [Age_Class_String],"") AS SP_Stocktype FROM NMIS_SPECIES INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class INNER JOIN NMIS_AGREEMENT_LOTS ON Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class.CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) AND (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL); |  | 0.00, 1.09, 5.64, 0.78 |
| TextBox | CLIENT_ASSOCIATE |  | FOREST |  |  | 4.47, 1.93, 1.15, 1.02 |
| ComboBox | Combo98 |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS Expr1 FROM NMIS_ASSOCIATES; |  | 2.21, 3.19, 3.42, 0.22 |
| Label | Label99 | FOREST |  |  |  | 4.46, 1.93, 1.16, 0.20 |
| TextBox | Order_ID |  | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![PACK_ID] |  |  | 0.04, 0.27, 5.58, 0.92 |
| Rectangle | Box134 |  |  |  |  | 4.47, 1.93, 1.15, 1.02 |
| ComboBox | NurseryID |  | AGREEMENT_LOT_CN | SELECT NMIS_ORDERS.AGREEMENT_LOT_CN, NMIS_AGREEMENT_LOTS.id FROM NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN GROUP BY NMIS_ORDERS.AGREEMENT_LOT_CN, NMIS_AGREEMENT_LOTS.id HAVING (((NMIS_ORDERS.AGREEMENT_LOT_CN)=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select])); |  | 1.29, 2.46, 3.12, 0.67 |
| Label | Label137 | Lot ID: |  |  |  | 1.29, 2.38, 3.12, 0.19 |
| Label | Label138 | Species/Stocktype: |  |  |  | 0.00, 1.05, 5.63, 0.16 |
| Label | Label141 | Order Id: |  |  |  | 0.08, 0.29, 5.50, 0.19 |
| TextBox | FORTP |  | FORTP |  |  | 0.00, 3.62, 5.59, 0.21 |
| TextBox | Comments | Comment: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![Comments] & " " & [Contract_Lot_ID] |  |  | 0.76, 3.43, 4.88, 0.19 |
