# Report: NMIS_PROCESS_PACK_LABELS_ST1_050357

**Caption:** Preview Packing Label  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_ORDERS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`, `NMIS_SPECIES_PRODUCTS`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | HtMin_Label | Size Specs: |  |  |  | 0.00, 3.34, 0.71, 0.20 |
| Label | SourceCode_Label | Species-Seed Zone.Elevation |  |  |  | 0.00, 2.01, 2.11, 0.19 |
| TextBox | Text38 | Trees/Unit | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Trees/Cont] |  |  | 0.00, 2.90, 0.88, 0.33 |
| TextBox | Text40 | Belt#: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Table] |  |  | 0.94, 2.90, 0.58, 0.35 |
| ComboBox | SourceCode |  | AGREEMENT_LOT_CN | SELECT NMIS_AGREEMENT_LOTS.CN, IIf(Not IsNull([SPECIES_NO]),[SPECIES_NO],[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]) & "-" & IIf(Not IsNull([SEED_ZONE]),[SEED_ZONE] & "." & [ORIGIN_ELEVATION],[BREEDING_SUBUNIT]) AS SP_ZONE_ELE FROM NMIS_SPECIES INNER JOIN (NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN) ON (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) AND (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL); |  | 0.00, 2.20, 2.57, 0.42 |
| TextBox | Height_Range |  | ORDER_SIZE_SPEC_STRING |  |  | 0.71, 3.32, 1.83, 0.23 |
| TextBox | Text60 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 0.00, 0.01, 5.62, 0.24 |
| TextBox | Text92 | Pack Date: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Pack_Date] |  |  | 1.57, 2.90, 0.93, 0.35 |
| ComboBox | Specie_Stocktype |  | AGREEMENT_LOT_CN | SELECT Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class.CN, IIf(Not IsNull([SPECIES_NO]),[SPECIES_NO],[NMIS_SPECIES].[PLNTMSTR_SYMBOL]) & IIf([Age_Class_String]<>" ","/" & [Age_Class_String],"") AS SP_Stocktype FROM NMIS_SPECIES INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class INNER JOIN NMIS_AGREEMENT_LOTS ON Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class.CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) AND (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL); |  | 0.00, 1.15, 5.64, 0.83 |
| TextBox | CLIENT_ASSOCIATE |  | FOREST |  |  | 4.43, 2.27, 1.15, 1.02 |
| Label | Label97 | Client: |  |  |  | 2.92, 3.08, 1.04, 0.19 |
| ComboBox | Combo98 |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS Expr1 FROM NMIS_ASSOCIATES; |  | 2.90, 3.33, 2.68, 0.22 |
| Label | Label99 | FOREST |  |  |  | 4.42, 2.27, 1.16, 0.20 |
| TextBox | Order_ID |  | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![NMIS_PROCESS_LABELS_subform1].[Form]![PACK_ID] |  |  | 2.62, 2.20, 1.76, 0.68 |
| Rectangle | Box134 |  |  |  |  | 4.43, 2.27, 1.15, 1.02 |
| ComboBox | NurseryID |  | AGREEMENT_LOT_CN | SELECT NMIS_ORDERS.AGREEMENT_LOT_CN, NMIS_AGREEMENT_LOTS.ID FROM NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN GROUP BY NMIS_ORDERS.AGREEMENT_LOT_CN, NMIS_AGREEMENT_LOTS.ID HAVING (((NMIS_ORDERS.AGREEMENT_LOT_CN)=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![CN])); |  | 0.00, 0.29, 5.64, 0.84 |
| Label | Label137 | Lot ID: |  |  |  | 0.00, 0.29, 5.62, 0.19 |
| Label | Label138 | Species/Stocktype: |  |  |  | 0.00, 1.12, 5.63, 0.19 |
| Label | Label141 | Order Id: |  |  |  | 2.62, 2.00, 1.75, 0.19 |
| TextBox | FORTP |  | FORTP |  |  | 0.00, 3.55, 5.59, 0.24 |
| Label | Label142 | Size Specs: |  |  |  | 5.78, 3.33, 0.71, 0.20 |
| Label | Label143 | Species-Seed Zone.Elevation |  |  |  | 5.78, 2.00, 2.11, 0.19 |
| TextBox | Text144 | Trees/Unit | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Trees/Cont] |  |  | 5.78, 2.89, 0.88, 0.33 |
| TextBox | Text146 | Belt#: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Table] |  |  | 6.72, 2.89, 0.58, 0.35 |
| ComboBox | Combo148 |  | AGREEMENT_LOT_CN | SELECT NMIS_AGREEMENT_LOTS.CN, IIf(Not IsNull([SPECIES_NO]),[SPECIES_NO],[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]) & "-" & IIf(Not IsNull([SEED_ZONE]),[SEED_ZONE] & "." & [ORIGIN_ELEVATION],[BREEDING_SUBUNIT]) AS SP_ZONE_ELE FROM NMIS_SPECIES INNER JOIN (NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN) ON (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) AND (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL); |  | 5.78, 2.19, 2.57, 0.42 |
| TextBox | Text149 |  | ORDER_SIZE_SPEC_STRING |  |  | 6.48, 3.31, 1.83, 0.23 |
| TextBox | Text150 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 5.78, 0.00, 5.62, 0.24 |
| TextBox | Text151 | Pack Date: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Pack_Date] |  |  | 7.34, 2.89, 0.93, 0.35 |
| ComboBox | Combo153 |  | AGREEMENT_LOT_CN | SELECT Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class.CN, IIf(Not IsNull([SPECIES_NO]),[SPECIES_NO],[NMIS_SPECIES].[PLNTMSTR_SYMBOL]) & IIf([Age_Class_String]<>" ","/" & [Age_Class_String],"") AS SP_Stocktype FROM NMIS_SPECIES INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class INNER JOIN NMIS_AGREEMENT_LOTS ON Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class.CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) AND (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL); |  | 5.78, 1.14, 5.64, 0.83 |
| TextBox | Text154 |  | FOREST |  |  | 10.21, 2.26, 1.15, 1.02 |
| Label | Label155 | Client: |  |  |  | 8.69, 3.08, 1.04, 0.19 |
| ComboBox | Combo156 |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS Expr1 FROM NMIS_ASSOCIATES; |  | 8.68, 3.32, 2.68, 0.22 |
| Label | Label157 | FOREST |  |  |  | 10.20, 2.26, 1.16, 0.20 |
| TextBox | Text158 |  | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![NMIS_PROCESS_LABELS_subform1].[Form]![PACK_ID] |  |  | 8.40, 2.19, 1.76, 0.68 |
| Rectangle | Box159 |  |  |  |  | 10.21, 2.26, 1.15, 1.02 |
| ComboBox | Combo160 |  | AGREEMENT_LOT_CN | SELECT NMIS_ORDERS.AGREEMENT_LOT_CN, NMIS_AGREEMENT_LOTS.ID FROM NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN GROUP BY NMIS_ORDERS.AGREEMENT_LOT_CN, NMIS_AGREEMENT_LOTS.ID HAVING (((NMIS_ORDERS.AGREEMENT_LOT_CN)=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![CN])); |  | 5.78, 0.28, 5.64, 0.84 |
| Label | Label161 | Lot ID: |  |  |  | 5.78, 0.28, 5.62, 0.19 |
| Label | Label162 | Species/Stocktype: |  |  |  | 5.78, 1.12, 5.63, 0.19 |
| Label | Label163 | Order Id: |  |  |  | 8.40, 1.99, 1.75, 0.19 |
| TextBox | Text164 |  | FORTP |  |  | 5.78, 3.54, 5.59, 0.24 |
