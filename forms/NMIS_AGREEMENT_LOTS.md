# Form: NMIS_AGREEMENT_LOTS

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`, `NMIS_FACTORS`, `NMIS_FISCAL_YEARS`, `NMIS_PRODUCTS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Form.NMIS_SOURCE_LastTestData Query subform`, `Form.Seed_Balance Query subform`, `Form.NMIS_AGREEMENTS subform1`, `Form.NMIS_FACTORS_FOR_AGREEMENT_LOTS subform`, `Form.NMIS_AGREE_LOTS_UNITS subform`, `Form.NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1`  
**Opens:** `Form:H_ASF`, `Report:Agreement_Lot_Source_Calcs`, `Report:Close_Form`, `Report:NMIS_SOURCE_LOTS_REPORT_from_Ag_Lot`, `Report:Seed_Bank_Work_Order`  
**Opened from (VBA):** `Form_NMIS_AGREEMENTS`, `Form_NMIS_AGREEMENTS_bu`, `Form_NMIS_AGREEMENTS_w_lot_lookup`, `Form_NMIS_AGREEMENT_LOTS_NEW`, `Form_NMIS_AGREEMENT_LOTS_NEW_bu`, `Form_NMIS_ID_ACTIVITIES_MORE_INFO_SUBFORM`, `Form_NMIS_ID_ACTIVITY_FORM`, `Form_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM`, `Form_NMIS_PRODUCT_INVENTORIES`, `Form_Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform`, `Forms_Open Module`, `Property_Module_Form_Opening Module`  
**Form events with code:** Close, Current, Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Green_Background_Box |  |  |  |  | 0.03, 0.03, 9.20, 0.85 |
| Label | Title1 | NMIS Agreement Lots |  |  |  | 5.27, 0.58, 2.42, 0.27 |
| CommandButton | Refresh and Close Form | Close |  |  | Click | 8.73, 0.07, 0.47, 0.28 |
| ComboBox | Find_Lot | Find Lot: |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_PRODUCTS.PRODUCT_CLASS AS Agr_Class, Species_Products_with_SizeSpecString.SIZE_SPEC_STRING, Source_Lot_ID_and_Source_string.ID_SOURCE2 AS Source, NMIS_AGREEMENTS.CLIENT_ASSOCIATE, NMIS_AGREEMENTS.AMOUNT_REQUESTED AS [Req (M)], [NMIS_AGREEMENT_LOTS].[BEGIN_FY] & "-" & [NMIS_AGREEMENT_LOTS].[END_FY] AS [FY's], NMIS_AGREEMENT_LOTS.AKA, NMIS_AGREEMENT_LOTS_1.ID AS [Prev ID], NMIS_AGREEMENT_LOTS.Index AS [Entry Order], NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL, NMIS_PRODUCTS.CN, Left$(Nz([nmis_agreement_lots].[Category_Code],"B"),1) AS Product_Type, NMIS_SOURCE_LOTS.ID FROM NMIS_PRODUCTS RIGHT JOIN (NMIS_AGREEMENT_LOTS AS NMIS_AGREEMENT_LOTS_1 RIGHT JOIN (NMIS_SOURCE_LOTS RIGHT JOIN (Species_Products_with_SizeSpecString RIGHT JOIN ((NMIS_SPECIES_PRODUCTS RIGHT JOIN (Source_Lot_ID_and_Source_string RIGHT JOIN NMIS_AGREEMENT_LOTS ON Source_Lot_ID_and_Source_string.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) LEFT JOIN NMIS_AGREEMENTS ON NMIS_AGREEMENT_LOTS.CN = NMIS_AGREEMENTS.AGREEMENT_LOT_CN) ON Species_Products_with_SizeSpecString.CN = NMIS_SPECIES_PRODUCTS.CN) ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN) ON NMIS_AGREEMENT_LOTS_1.CN = NMIS_AGREEMENT_LOTS.PREVIOUS_AGREEMENT_LOT_CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((NMIS_AGREEMENT_LOTS.ID) Like Nz([Forms]![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots],"*")) AND ((NMIS_AGREEMENTS.CLIENT_ASSOCIATE) Like [Forms]![NMIS_AGREEMENT_LOTS]![Filter_For_Client] & "*" Or (NMIS_AGREEMENTS.CLIENT_ASSOCIATE) Is Null) AND ((NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) Like [Forms]![NMIS_AGREEMENT_LOTS]![Filter_for_Species] & "*" Or (NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) Is Null) AND ((NMIS_PRODUCTS.CN) Like [Forms]![NMIS_AGREEMENT_LOTS]![Filter_For_Product] & "*" Or (NMIS_PRODUCTS.CN) Is Null) AND ((Left$(Nz([nmis_agreement_lots].[Category_Code],"B"),1)) Like [Forms]![NMIS_AGREEMENT_LOTS]![Filter_for_Product_Type]) AND ((NMIS_SOURCE_LOTS.ID) Like Nz([Forms]![NMIS_AGREEMENT_LOTS]![Like_Source_Lots],"*") Or (NMIS_SOURCE_LOTS.ID) Is Null) AND ((NMIS_AGREEMENT_LOTS.BEGIN_FY) Like [Forms]![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY] & "*") AND ((NMIS_AGREEMENT_LOTS.END_FY) Like [Forms]![NMIS_AGREEMENT_LOTS]![Screen_For_End_FY] & "*")) ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , IIf([Forms]![NMIS_AGREEMENT_LOTS]![Sort_By_Entry_Order]=True,IIf([NMIS_AGREEMENT_LOTS].[index]<10,"0","") & IIf([NMIS_AGREEMENT_LOTS].[index]<100,"0","") & IIf([NMIS_AGREEMENT_LOTS].[index]<1000,"0","") & IIf([NMIS_AGREEMENT_LOTS].[index]<10000,"0","") & IIf([NMIS_AGREEMENT_LOTS].[index]<100000,"0","") & IIf([NMIS_AGREEMENT_LOTS].[index]<1000000,"0","") & IIf([NMIS_AGREEMENT_LOTS].[index]<10000000,"0","") & IIf([NMIS_AGREEMENT_LOTS].[index]<100000000,"0","") & [NMIS_AGREEMENT_LOTS].[index],[NMIS_AGREEMENT_LOTS].[id]); | AfterUpdate, Enter | 0.92, 0.57, 1.74, 0.23 |
| ComboBox | Screen_For_Begin_FY | Like Begin FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC; | AfterUpdate, DblClick, Enter | 1.17, 0.32, 0.52, 0.20 |
| CheckBox | Sort_By_Entry_Order | By Entry Order |  |  | AfterUpdate | 2.75, 0.66, 0.00, 0.00 |
| ComboBox | Filter_for_Product_Type |  |  | B;Bareroot Plant;C;Container Plant;N;Native Propagules;*;All Product Types | DblClick | 0.50, 0.07, 1.75, 0.21 |
| Label | Filter_for_Product_Type_Label | Like: |  |  |  | 0.08, 0.07, 0.39, 0.21 |
| Label | Filter_For_Product_Label | Like Prod: |  |  |  | 2.30, 0.07, 0.74, 0.21 |
| ComboBox | Filter_For_Product |  |  | SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_CLASS, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((Left$(nz([NMIS_AGREEMENT_LOTS].[CATEGORY_CODE],"b"),1)) Like [Forms]![NMIS_AGREEMENT_LOTS]![Filter_for_Product_Type]) AND ((NMIS_AGREEMENT_LOTS.BEGIN_FY) Like [Forms]![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY] & "*")) GROUP BY NMIS_PRODUCTS.CN, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")", NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_CLASS, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")", NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE ORDER BY NMIS_PRODUCTS.CATEGORY_CODE, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")", NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE; | DblClick, Enter | 3.09, 0.07, 3.29, 0.21 |
| TextBox | CN |  | CN |  |  | 6.52, 0.31, 1.22, 0.00 |
| TextBox | Index |  | Index |  |  | 7.45, 0.39, 0.00, 0.00 |
| ComboBox | Filter_for_Species |  |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM ((NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENTS.SPECIES_PRODUCT_CN) INNER JOIN NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY ON NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL = NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL) INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_AGREEMENTS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN WHERE (((NMIS_AGREEMENTS.CLIENT_ASSOCIATE) Like [Forms]![NMIS_AGREEMENT_LOTS]![Filter_For_Client] & "*") AND ((NMIS_AGREEMENTS.BEGIN_FY) Like [Forms]![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY] & "*") AND ((Left$(nz([nmis_agreement_lots].[Category_Code],"B"),1)) Like [Forms]![NMIS_AGREEMENT_LOTS]![Filter_for_Product_Type] & "*") AND ((NMIS_SPECIES_PRODUCTS.PRODUCT_CN) Like [Forms]![NMIS_AGREEMENT_LOTS]![Filter_For_Product] & "*")) GROUP BY NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.HIDE HAVING (((NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.HIDE)=False)); | DblClick, Enter | 5.19, 0.32, 0.96, 0.21 |
| Label | Filter_for_Species_Label | Species: |  |  |  | 4.52, 0.32, 0.62, 0.21 |
| ComboBox | Filter_For_Client |  |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM (NMIS_ASSOCIATES INNER JOIN NMIS_AGREEMENTS ON (NMIS_ASSOCIATES.ASSOCIATE = NMIS_AGREEMENTS.CLIENT_ASSOCIATE) AND (NMIS_ASSOCIATES.ASSOCIATE = NMIS_AGREEMENTS.CLIENT_ASSOCIATE)) INNER JOIN (NMIS_AGREEMENT_LOTS INNER JOIN NMIS_SPECIES_PRODUCTS ON NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN = NMIS_SPECIES_PRODUCTS.CN) ON NMIS_AGREEMENTS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN WHERE (((NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) Like [Forms]![NMIS_AGREEMENT_LOTS]![Filter_for_Species] & "*") AND ((NMIS_SPECIES_PRODUCTS.PRODUCT_CN) Like [Forms]![NMIS_AGREEMENT_LOTS]![Filter_For_Product] & "*") AND ((NMIS_AGREEMENT_LOTS.BEGIN_FY) Like [Forms]![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY] & "*")) GROUP BY NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, Left$(nz([nmis_agreement_lots].[Category_Code],"B"),1) HAVING (((Left$(nz([nmis_agreement_lots].[Category_Code],"B"),1)) Like [Forms]![NMIS_AGREEMENT_LOTS]![Filter_for_Product_Type] & "*")); | DblClick, Enter | 3.51, 0.32, 0.95, 0.21 |
| Label | Filter_For_Client_Label | Client: |  |  |  | 2.97, 0.32, 0.49, 0.21 |
| Label | Title2 | NMIS Agreement Lots |  |  |  | 3.35, 0.12, 2.42, 0.31 |
| CommandButton | Clear_Filters | Clear Filters |  |  | Click | 4.06, 0.58, 0.84, 0.26 |
| ComboBox | Screen_For_End_FY | End FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC; | AfterUpdate, DblClick, Enter | 2.38, 0.32, 0.52, 0.20 |
| Label | Like_Agreement_Lots Label | Agrmt Lots Like |  |  |  | 6.49, 0.32, 1.16, 0.21 |
| TextBox | Like_Agreement_Lots |  |  |  | AfterUpdate, DblClick | 7.69, 0.32, 0.77, 0.21 |
| TextBox | Like_Source_Lots | Source Lots Like |  |  | DblClick | 7.69, 0.07, 0.77, 0.21 |
| CommandButton | Wildcard_Tips | Wildcard Tips |  |  | Click | 7.80, 0.58, 0.84, 0.26 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID | Nursery ID | ID |  | DblClick, Exit | 0.08, 0.24, 1.26, 0.22 |
| ComboBox | CATEGORY_CODE | Category | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES WHERE (((NMIS_CATEGORIES.CATEGORY_CODE)="BR" Or (NMIS_CATEGORIES.CATEGORY_CODE)="C" Or (NMIS_CATEGORIES.CATEGORY_CODE)="BRCO" Or (NMIS_CATEGORIES.CATEGORY_CODE)="CCO" Or (NMIS_CATEGORIES.CATEGORY_CODE)="NSP" Or (NMIS_CATEGORIES.CATEGORY_CODE)="CCTR")) ORDER BY NMIS_CATEGORIES.CATEGORY_CODE; |  | 6.71, 0.24, 2.36, 0.21 |
| ComboBox | NURSERY_ASSOCIATE | Nursery  | NURSERY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_ASSOCIATES.NURSERY FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.NURSERY)=-1)) ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME; | DblClick, Enter | 6.56, 0.72, 0.70, 0.21 |
| ComboBox | BEGIN_FY | Begin FY | BEGIN_FY | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  |  | 0.08, 0.71, 0.65, 0.21 |
| ComboBox | END_FY | End FY | END_FY | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  |  | 0.79, 0.71, 0.65, 0.21 |
| TextBox | TOTAL_REQUEST | Total Request | TOTAL_REQUEST |  | Change, DblClick, Exit | 1.40, 0.24, 0.96, 0.21 |
| ComboBox | PREVIOUS_NURSERY_ASSOCIATE | Previous Nursery Associate | PREVIOUS_NURSERY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_ASSOCIATES.NURSERY FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.NURSERY)=Yes)) ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;  |  | 1.79, 1.18, 1.92, 0.21 |
| TextBox | CLIENT_SURPLUS_AVAILABLE | Client Surplus | CLIENT_SURPLUS_AVAILABLE |  |  | 6.75, 1.17, 1.00, 0.21 |
| TextBox | NURSERY_SURPLUS_AVALIABLE | Nursery Surplus | NURSERY_SURPLUS_AVAILABLE |  |  | 7.80, 1.17, 1.24, 0.21 |
| TextBox | NOTE | Note | NOTE |  |  | 0.08, 1.62, 8.98, 0.37 |
| ComboBox | SOURCE_LOT_CN | Source Lot ID | SOURCE_LOT_CN | SELECT Source_Lot_ID_and_Source_string.CN, NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACULAR, NMIS_SOURCE_LOTS.CATEGORY_CODE FROM (NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN) INNER JOIN NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query ON NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL = NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL ORDER BY NMIS_SOURCE_LOTS.ID; | Change, Exit | 1.49, 0.72, 1.48, 0.20 |
| TabControl | TabCtl197 |  |  |  |  | 0.00, 2.04, 9.22, 4.14 |
| Page | Calculations |  |  |  |  | 0.09, 2.33, 9.03, 3.75 |
| Label | Label720 | Harvest Factor: |  |  |  | 2.86, 3.85, 1.32, 0.20 |
| TextBox | SOURCE_GERM_PCT | Source Germ %: | SOURCE_GERM_PCT |  |  | 1.76, 2.66, 0.39, 0.20 |
| TextBox | SOURCE_PURITY_PCT | Source Purity %: | SOURCE_PURITY_PCT |  |  | 1.76, 2.89, 0.40, 0.21 |
| TextBox | GROSS_SOURCE_PER_UNIT | Gross/Unit: | GROSS_SOURCE_PER_UNIT |  |  | 1.76, 3.14, 0.86, 0.20 |
| TextBox | HARVEST_FACTOR_1 | Harvest Factor 1: | HARVEST_FACTOR_1 |  | AfterUpdate | 4.24, 2.69, 0.33, 0.20 |
| TextBox | HARVEST_FACTOR_2 | Harvest Factor 2: | HARVEST_FACTOR_2 |  | AfterUpdate | 4.24, 2.91, 0.33, 0.20 |
| TextBox | HARVEST_FACTOR_3 | Harvest Factor 3: | HARVEST_FACTOR_3 |  | AfterUpdate | 4.24, 3.14, 0.33, 0.20 |
| TextBox | HARVEST_FACTOR_4 | Harvest Factor 4: | HARVEST_FACTOR_4 |  |  | 4.24, 3.37, 0.33, 0.20 |
| TextBox | CONTAINER_FACTOR_1 | Container Factor 1: | CONTAINER_FACTOR_1 |  | Exit | 4.24, 4.49, 0.33, 0.20 |
| TextBox | CONTAINER_FACTOR_2 | Container Factor 2: | CONTAINER_FACTOR_2 |  | Exit | 4.24, 4.72, 0.33, 0.20 |
| TextBox | CONTAINER_FACTOR_3 | Container Factor 3: | CONTAINER_FACTOR_3 |  | Exit | 4.24, 4.94, 0.33, 0.20 |
| TextBox | HARVEST_ASF_ADJUSTMENT | Harvest ASF Adj: | HARVEST_ASF_ADJUSTMENT |  | DblClick | 4.24, 3.59, 0.33, 0.21 |
| TextBox | CONTAINER_ASF_ADJUSTMENT | Container ASF Adj: | CONTAINER_ASF_ADJUSTMENT |  | Exit | 4.24, 5.16, 0.33, 0.21 |
| TextBox | Desired_Density | Target Gross/Cell: | DESIRED_DENSITY |  | DblClick, Exit | 7.16, 4.00, 0.31, 0.20 |
| TextBox | EST_CONTAINERS_REQUIRED | Est. | EST_CONTAINERS_REQUIRED |  |  | 6.79, 4.30, 0.72, 0.20 |
| TextBox | seed_per_cell_to_use |  |  |  |  | 7.98, 4.99, 0.50, 0.21 |
| TextBox | SOURCE_REQUIRED | Source To Use: | SOURCE_REQUIRED |  | AfterUpdate, Change, DblClick, Exit | 8.10, 2.93, 0.75, 0.20 |
| CommandButton | Use_Default_Factors | Click to Use Default Factors |  |  | Click | 2.84, 2.40, 1.53, 0.20 |
| TextBox | Text392 |  | =[NMIS_FACTORS subform].Form!LIKE_ASSOCIATE |  |  | 4.79, 2.40, 0.50, 0.20 |
| CheckBox | Source_Stratified | Source Stratified | SOURCE_STRATIFIED |  |  | 1.76, 2.46, 0.00, 0.21 |
| TextBox | THINNING_PROBABILITY_PCT | Seed Per Cell Adj: | THINNING_PROBABILITY_PCT |  |  | 4.24, 4.11, 0.34, 0.21 |
| TextBox | Containers_Will_Grow | Cont. Will Grow: | =Round(IIf((Left$([CATEGORY_CODE],1)="B" Or Left$([CATEGORY_CODE],1)="N") And ([Type_of_Container] In ("sb","SPB","TB")),[Calculated_Gross],[EST_CONTAINERS_REQUIRED]*[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1].[Form]![CELLS_PER_CONTAINER]/1000),3) |  | DblClick | 8.10, 3.41, 0.75, 0.20 |
| Subform | NMIS_SOURCE_LastTestData Query subform |  | Form.NMIS_SOURCE_LastTestData Query subform (master: SOURCE_LOT_CN → child: SOURCE_LOT_CN) |  |  | 0.75, 3.49, 1.89, 1.44 |
| CommandButton | Calculate | Click to Calculate Source Required and Est. Containers |  |  | Click | 5.92, 2.68, 0.72, 1.01 |
| CommandButton | Use Last Test Data | Click to Use Last Test Data |  |  | Click | 0.32, 3.61, 0.38, 0.82 |
| TextBox | Shortage | Shortage: | =IIf([SOURCE_REQUIRED]>0,IIf(Round([TOTAL_REQUEST]-[Source_Will_Grow],3)>0,Round([TOTAL_REQUEST]-[Source_Will_Grow],3),0),"NA") |  | DblClick | 8.10, 3.65, 0.75, 0.20 |
| Subform | Seed_Balance Query subform |  | Form.Seed_Balance Query subform (master: SOURCE_LOT_CN → child: CN) |  |  | 0.43, 5.16, 2.06, 0.28 |
| TextBox | Type_of_Container |  | =[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1].Form!BEGIN_CONTAINER |  |  | 6.20, 4.29, 0.53, 0.20 |
| TextBox | Est_Seed_Per_Cell |  | =IIf([EST_CONTAINERS_REQUIRED]>0,IIf([GROSS_SOURCE_PER_UNIT]>0,([GROSS_SOURCE_PER_UNIT]*[SOURCE_REQUIRED])/([EST_CONTAINERS_REQUIRED]*[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1].[Form]![CELLS_PER_CONTAINER]),"NA"),"NA") |  |  | 7.76, 4.28, 0.45, 0.21 |
| TextBox | Cells_Per_Container |  | =[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1].Form!CELLS_PER_CONTAINER |  |  | 7.76, 3.99, 0.44, 0.21 |
| TextBox | Source_Required_by_spc | Source Req | =IIf([Pure_Live_Seed]>0,Round(([NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1].[Form]![CELLS_PER_CONTAINER]*[seed_per_cell_to_use])*[EST_CONTAINERS_REQUIRED]/[GROSS_SOURCE_PER_UNIT],3),"NA") |  | DblClick | 7.07, 4.88, 0.62, 0.20 |
| CommandButton | Harvest_ASF_Form | H. ASF... |  |  | Click | 4.83, 3.60, 0.61, 0.21 |
| TextBox | Calculated_Gross | Gross Needed: | =Round(([TOTAL_REQUEST]/(([HF1]/100)*([HF2]/100)*([HF3]/100)*([HF4]/100)*([HARVEST_ASF_ADJUSTMENT]/100))),3) |  |  | 8.10, 2.45, 0.75, 0.20 |
| TextBox | Will_Grow_Max |  | =([SOURCE_REQUIRED]*[GROSS_SOURCE_PER_UNIT]*([SOURCE_GERM_PCT]/100)*([SOURCE_PURITY_PCT]/100)*([HF1]/100)*([HF2]/100)*([HF3]/100)*([HF4]/100)*([HARVEST_ASF_ADJUSTMENT]/100))/1000 |  |  | 5.85, 2.44, 0.75, 0.20 |
| TextBox | Source_Will_Grow | Source Will Grow: | =IIf([Type_of_Container]="SB",IIf([SOURCE_REQUIRED]>0,IIf([Pure_Live_SEED]>0,Round(([SOURCE_REQUIRED]*[GROSS_SOURCE_PER_UNIT]*([SOURCE_GERM_PCT]/100)*([SOURCE_PURITY_PCT]/100)*([HF1]/100)*([HF2]/100)*([HF3]/100)*([HF4]/100)*([HARVEST_ASF_ADJUSTMENT]/100))/1000,3),0),"NA"),IIf([SOURCE_REQUIRED]>0,IIf([Pure_Live_SEED]>0,Round((([SOURCE_REQUIRED]*[GROSS_SOURCE_PER_UNIT]*([SOURCE_GERM_PCT]/100)*([SOURCE_PURITY_PCT]/100))*([HF1]/100)*([HF2]/100)*([HF3]/100)*([HF4]/100)*([HARVEST_ASF_ADJUSTMENT]/100)*([THINNING_PROBABILITY_PCT]/100))/1000,3),0),"NA")) |  | DblClick | 8.10, 3.17, 0.75, 0.20 |
| TextBox | Calc_Source | Calc. Source: | =IIf([Pure_Live_Seed]>0,Round(([TOTAL_REQUEST]*1000)/[Pure_Live_Seed]/(([HF]/100)*[THINNING_PROBABILITY_PCT]/100),3),"NA") |  |  | 8.10, 2.69, 0.75, 0.20 |
| TextBox | Pure_Live_Seed |  | =[GROSS_SOURCE_PER_UNIT]*([SOURCE_GERM_PCT]/100)*([SOURCE_PURITY_PCT]/100) |  |  | 2.04, 2.43, 0.62, 0.21 |
| TextBox | Harvest_Factor |  | =([HF1]/100)*([HF2]/100)*([HF3]/100)*([HF4]/100)*([HARVEST_ASF_ADJUSTMENT]/100)*100 |  |  | 4.24, 3.84, 0.33, 0.21 |
| TextBox | CF | Container Factor: | =([CF1A]/100)*([CF2A]/100)*([CF3A]/100)*([CONTAINER_ASF_ADJUSTMENT]/100)*100 |  |  | 4.24, 5.41, 0.33, 0.21 |
| TextBox | Combo383 |  | [HARVEST_1_FACTOR_CODE] |  |  | 4.83, 2.69, 0.44, 0.20 |
| TextBox | Combo386 |  | HARVEST_2_FACTOR_CODE |  |  | 4.83, 2.92, 0.44, 0.20 |
| TextBox | Combo387 |  | HARVEST_3_FACTOR_CODE |  |  | 4.83, 3.15, 0.44, 0.20 |
| TextBox | Combo388 |  | HARVEST_4_FACTOR_CODE |  |  | 4.83, 3.38, 0.44, 0.20 |
| CheckBox | HF1_Inverse |  | HF1_Inverse |  |  | 5.62, 2.74, 0.12, 0.08 |
| CheckBox | HF2_Inverse |  | HF2_Inverse |  |  | 5.62, 2.97, 0.12, 0.08 |
| CheckBox | HF3_Inverse |  | HF3_Inverse |  |  | 5.62, 3.20, 0.12, 0.08 |
| CheckBox | HF4_Inverse |  | HF4_Inverse |  |  | 5.62, 3.43, 0.12, 0.08 |
| TextBox | HF1 |  | =IIf([HF1_Formula_OP]="*",[HARVEST_FACTOR_1],(10000/[HARVEST_FACTOR_1])) |  |  | 3.45, 2.68, 0.54, 0.20 |
| TextBox | HF2 |  | =IIf([HF2_Formula_OP]="*",[HARVEST_FACTOR_2],(10000/[HARVEST_FACTOR_2])) |  |  | 3.45, 2.93, 0.54, 0.20 |
| TextBox | HF3 |  | =IIf([HF3_Formula_OP]="*",[HARVEST_FACTOR_3],(10000/[HARVEST_FACTOR_3])) |  |  | 3.45, 3.14, 0.54, 0.20 |
| TextBox | HF4 |  | =IIf([HF4_Formula_OP]="*",[HARVEST_FACTOR_4],(10000/[HARVEST_FACTOR_4])) |  |  | 3.45, 3.39, 0.54, 0.20 |
| TextBox | HF |  | =([HF1]/100)*([HF2]/100)*([HF3]/100)*([HF4]/100)*([HARVEST_ASF_ADJUSTMENT]/100)*100 |  |  | 3.49, 3.82, 0.50, 0.21 |
| TextBox | Containers_Required_by_spc | Cont. Req | =IIf(Not IsNull([SOURCE_REQUIRED]),Round(([SOURCE_REQUIRED]*[GROSS_SOURCE_PER_UNIT])/([NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1].[Form]![CELLS_PER_CONTAINER]*[seed_per_cell_to_use]),0),Round([TOTAL_REQUEST]*1000/[seed_per_cell_to_use]/[CELLS_PER_CONTAINER],0)) |  | DblClick | 7.07, 5.15, 0.62, 0.20 |
| CommandButton | Tip_Seed_Per_Cell_Adjustment | Tip |  |  | Click | 8.48, 4.59, 0.33, 0.00 |
| TextBox | HF1_Formula_OP |  | HF1_Formula_OP |  |  | 5.31, 2.70, 0.20, 0.20 |
| TextBox | HF2_Formula_OP |  | HF2_Formula_OP |  |  | 5.31, 2.93, 0.20, 0.20 |
| TextBox | HF3_Formula_OP |  | HF3_Formula_OP |  |  | 5.31, 3.16, 0.20, 0.20 |
| TextBox | HF4_Formula_OP |  | HF4_Formula_OP |  |  | 5.31, 3.39, 0.20, 0.20 |
| TextBox | Combo389 |  | CONTAINER_1_FACTOR_CODE |  |  | 4.83, 4.48, 0.44, 0.20 |
| TextBox | Combo390 |  | CONTAINER_2_FACTOR_CODE |  |  | 4.83, 4.71, 0.44, 0.20 |
| TextBox | Combo391 |  | CONTAINER_3_FACTOR_CODE |  |  | 4.83, 4.94, 0.44, 0.20 |
| CommandButton | Container_Factor_Tip | Tip |  |  | Click | 4.88, 5.38, 0.33, 0.22 |
| TextBox | CF1_Formula_OP |  | CF1_Formula_OP |  |  | 5.31, 4.49, 0.20, 0.20 |
| TextBox | CF2_Formula_OP |  | CF2_Formula_OP |  |  | 5.31, 4.72, 0.20, 0.20 |
| TextBox | CF3_Formula_OP |  | CF3_Formula_OP |  |  | 5.31, 4.95, 0.20, 0.20 |
| TextBox | CF1A |  | =IIf([CF1_Formula_OP]="*",[CONTAINER_FACTOR_1],(10000/[CONTAINER_FACTOR_1])) |  |  | 3.48, 4.49, 0.54, 0.20 |
| TextBox | CF2A |  | =IIf([CF2_Formula_OP]="*",[CONTAINER_FACTOR_2],(10000/[CONTAINER_FACTOR_2])) |  |  | 3.48, 4.71, 0.54, 0.20 |
| TextBox | CF3A |  | =IIf([CF3_Formula_OP]="*",[CONTAINER_FACTOR_3],(10000/[CONTAINER_FACTOR_3])) |  |  | 3.48, 4.94, 0.54, 0.20 |
| TextBox | CFA |  | =([CF1A]/100)*([CF2A]/100)*([CF3A]/100)*([CONTAINER_ASF_ADJUSTMENT]/100)*100 |  |  | 3.48, 5.35, 0.50, 0.21 |
| CommandButton | Harvest_Factor_Tip | Tip |  |  | Click | 4.84, 3.84, 0.33, 0.22 |
| CommandButton | View_Source_Calcs | View Source Calculation |  |  | Click | 5.77, 5.58, 1.50, 0.30 |
| TextBox | CONTAINER_PROBABILITY_PCT | Seed Per Cell Adj: | CONTAINER_PROBABILITY_PCT |  |  | 4.24, 5.66, 0.34, 0.21 |
| CommandButton | Preview Source Work Order | PreviewSource Work Order |  |  | Click | 7.40, 5.58, 1.69, 0.30 |
| CommandButton | Germ_Detail | Germ Detail |  |  | Click | 0.33, 4.48, 0.39, 0.35 |
| TextBox | Propagule_BF_per_Acre |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Default4N] |  |  | 6.88, 2.46, 0.75, 0.20 |
| CommandButton | SPC_Use_Source | Use |  |  | Click | 6.73, 4.88, 0.29, 0.20 |
| CommandButton | SPC_Use_Containers | Use |  |  | Click | 6.73, 5.15, 0.29, 0.20 |
| Rectangle | Box268 |  |  |  |  | 2.83, 2.64, 2.74, 1.74 |
| Rectangle | Box269 |  |  |  |  | 2.83, 4.42, 2.73, 1.49 |
| Rectangle | Box270 |  |  |  |  | 2.77, 2.36, 2.88, 3.60 |
| Rectangle | Box271 |  |  |  |  | 5.75, 2.36, 3.34, 3.15 |
| Rectangle | Box331 |  |  |  |  | 0.26, 2.38, 2.43, 1.02 |
| Rectangle | Box342 |  |  |  |  | 0.27, 3.45, 2.43, 1.56 |
| Rectangle | Box351 |  |  |  |  | 0.28, 5.08, 2.43, 0.45 |
| Rectangle | Box374 |  |  |  |  | 5.81, 2.42, 3.19, 1.46 |
| Rectangle | Box376 |  |  |  |  | 5.82, 3.93, 3.19, 1.49 |
| Label | Label396 | Like: |  |  |  | 4.45, 2.41, 0.30, 0.17 |
| Label | Label626 | Seed/Cell |  |  |  | 8.27, 4.29, 0.53, 0.20 |
| Label | Label631 | @ |  |  |  | 7.55, 4.31, 0.18, 0.19 |
| Label | Label634 | Cell/Cont  |  |  |  | 8.26, 4.00, 0.53, 0.19 |
| Label | Label644 | Seeds/Cell |  |  |  | 8.55, 4.94, 0.41, 0.32 |
| Label | Label646 | @ |  |  |  | 7.76, 5.00, 0.18, 0.19 |
| Label | Label741 | Seed/Cell Adjustment Calculator |  |  |  | 6.21, 4.60, 2.20, 0.21 |
| Label | Label743 | @ |  |  |  | 7.55, 4.01, 0.18, 0.19 |
| Label | Label748 | % |  |  |  | 4.65, 2.72, 0.16, 0.19 |
| Label | Label749 | % |  |  |  | 4.65, 2.95, 0.16, 0.19 |
| Label | Label750 | % |  |  |  | 4.65, 3.17, 0.16, 0.19 |
| Label | Label751 | % |  |  |  | 4.65, 3.40, 0.16, 0.19 |
| Label | Label752 | % |  |  |  | 4.65, 3.61, 0.16, 0.19 |
| Label | Label753 | % |  |  |  | 4.65, 3.86, 0.16, 0.19 |
| Label | Label754 | % |  |  |  | 4.65, 4.51, 0.16, 0.19 |
| Label | Label755 | % |  |  |  | 4.65, 4.74, 0.16, 0.19 |
| Label | Label756 | % |  |  |  | 4.65, 4.96, 0.16, 0.19 |
| Label | Label757 | % |  |  |  | 4.65, 5.19, 0.16, 0.19 |
| Label | Label758 | % |  |  |  | 4.65, 5.43, 0.16, 0.19 |
| Line | Line794 |  |  |  |  | 5.84, 4.54, 3.08, 0.00 |
| Label | Label795 | % |  |  |  | 4.65, 4.14, 0.16, 0.19 |
| Label | Label801 | % |  |  |  | 4.65, 5.68, 0.16, 0.19 |
| Page | Agreements |  |  |  |  | 0.08, 2.33, 9.04, 3.75 |
| Subform | NMIS_AGREEMENTS subform1 |  | Form.NMIS_AGREEMENTS subform1 (master: CN → child: AGREEMENT_LOT_CN) |  |  | 0.08, 2.57, 8.89, 3.23 |
| Label | NMIS_AGREEMENTS subform1 Label | AGREEMENTS |  |  |  | 4.06, 2.33, 1.08, 0.20 |
| Page |   IMT |  |  |  |  | 0.08, 2.33, 9.04, 3.75 |
| Rectangle | Box278 |  |  |  |  | 6.05, 2.34, 2.67, 0.88 |
| TextBox | Inserted By | Inserted By: | INSERTED_BY |  |  | 1.88, 2.41, 1.18, 0.21 |
| TextBox | Inserted Date | Inserted Date: | INSERTED_DATE |  |  | 1.88, 2.66, 0.84, 0.21 |
| TextBox | Inserted Instance | Inserted Instance: | INSERTED_INSTANCE |  |  | 1.88, 2.91, 0.25, 0.21 |
| TextBox | Modified By | Modified By: | MODIFIED_BY |  |  | 4.65, 2.41, 1.18, 0.21 |
| TextBox | Modified Date | Modified Date: | MODIFIED_DATE |  |  | 4.65, 2.66, 0.95, 0.21 |
| TextBox | Modified Instance | Modified Instance: | MODIFIED_INSTANCE |  |  | 4.65, 2.91, 0.25, 0.21 |
| TextBox | Transferred By | Transferred By: | TRANSFERRED_BY |  |  | 7.66, 2.41, 0.00, 0.21 |
| TextBox | Transferred Date | Transferred Date: | TRANSFERRED_DATE |  |  | 7.66, 2.66, 0.60, 0.21 |
| TextBox | Transferred Instance | Transferred Instance: | TRANSFERRED_INSTANCE |  |  | 7.66, 2.91, 0.25, 0.21 |
| Rectangle | Box276 |  |  |  |  | 0.49, 2.33, 2.67, 0.88 |
| Rectangle | Box277 |  |  |  |  | 3.28, 2.33, 2.67, 0.88 |
| Subform | NMIS_FACTORS subform | Sowing Factors | Form.NMIS_FACTORS_FOR_AGREEMENT_LOTS subform (master: SPECIES_PRODUCT_CN → child: SPECIES_PRODUCT_CN) |  |  | 0.08, 4.55, 8.79, 1.49 |
| Subform | NMIS_AGREE_UNITS subform | UNITS | Form.NMIS_AGREE_LOTS_UNITS subform (master: SPECIES_PRODUCT_CN → child: CN) |  |  | 1.17, 3.52, 6.97, 0.71 |
| Page | MISC |  Misc |  |  |  | 0.09, 2.33, 9.03, 3.75 |
| Subform | NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1 |  | Form.NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1 (master: SPECIES_PRODUCT_CN → child: SPECIES_PRODUCT_CN) |  |  | 0.40, 2.59, 2.75, 0.58 |
| ComboBox | SPECIES_PRODUCT_CN | Species Product | SPECIES_PRODUCT_CN | SELECT NMIS_SPECIES_PRODUCTS.CN, [Species_Products_String] & IIf(([NMIS_SPECIES_PRODUCTS].[historical] Or [NMIS_PRODUCTS].[historical])," *HISTORICAL*") AS [Species Product], Product_String.Product_String AS Product, NMIS_PRODUCTS.CATEGORY_CODE FROM NMIS_PRODUCTS INNER JOIN (Species_Products_with_SizeSpecString INNER JOIN (Product_String INNER JOIN NMIS_SPECIES_PRODUCTS ON Product_String.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN) ON Species_Products_with_SizeSpecString.CN = NMIS_SPECIES_PRODUCTS.CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((Species_Products_with_SizeSpecString.PLNTMSTR_SYMBOL)=[Forms]![NMIS_AGREEMENT_LOTS]![PLNTMSTR_SYMBOL])) ORDER BY Product_String.Product_String, Species_Products_with_SizeSpecString.Species_Products_String, NMIS_SPECIES_PRODUCTS.Index; | Change, DblClick, Exit | 2.40, 0.24, 4.29, 0.20 |
| ComboBox | Source Code | Source | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE FROM NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN=Source_Lot_ID_and_Source_string.CN ORDER BY NMIS_SOURCE_LOTS.ID;  |  | 3.04, 0.72, 3.49, 0.20 |
| TextBox | ID_ORIGINAL | ID Orig | ID_ORIGINAL |  | DblClick, Exit | 7.30, 0.72, 0.76, 0.22 |
| ComboBox | PREVIOUS_AGREEMENT_LOT_CN | Previous Agreement Lot | PREVIOUS_AGREEMENT_LOT_CN | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, Species_Products_with_SizeSpecString.PLNTMSTR_SYMBOL, Species_Products_with_SizeSpecString.Species_Products_String_Long FROM Species_Products_with_SizeSpecString RIGHT JOIN NMIS_AGREEMENT_LOTS ON Species_Products_with_SizeSpecString.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN WHERE (((Species_Products_with_SizeSpecString.PLNTMSTR_SYMBOL)=[Forms]![NMIS_AGREEMENT_LOTS]![PLNTMSTR_SYMBOL])) ORDER BY NMIS_AGREEMENT_LOTS.ID; | Exit | 0.08, 1.18, 1.67, 0.20 |
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 3.02, 0.25, 0.00, 0.00 |
| ComboBox | PREVIOUS_SPECIES_PRODUCT_CN | Previous Species Product | PREVIOUS_SPECIES_PRODUCT_CN | SELECT Species_Products_with_SizeSpecString.CN, Species_Products_with_SizeSpecString.Species_Products_String_Long, Species_Products_with_SizeSpecString.PLNTMSTR_SYMBOL FROM Species_Products_with_SizeSpecString WHERE (((Species_Products_with_SizeSpecString.PLNTMSTR_SYMBOL)=Forms!NMIS_AGREEMENT_LOTS!PLNTMSTR_SYMBOL)) ORDER BY Species_Products_with_SizeSpecString.Species_Products_String_Long; | Enter | 3.73, 1.17, 2.99, 0.20 |
| TextBox | Sum_of_Agreement_Request |  | =[NMIS_AGREEMENTS subform1].Form!SUM_Amt_Requested |  |  | 2.27, 0.29, 0.50, 0.00 |
| TextBox | AKA | AKA | AKA |  | DblClick, Enter | 8.11, 0.72, 0.94, 0.22 |

## Code-behind (VBA)

```vb
Private Sub AKA_DblClick(Cancel As Integer)

    AKA.Locked = False
    
End Sub

Private Sub AKA_Enter()
    
    If Not IsNull(AKA) Then
        AKA.Locked = True
    Else
        AKA.Locked = False
    End If
    
End Sub

Private Sub Calculate_Click()
'Calculate source required

On Error GoTo Err_Calculate_Click
    Dim ASF As Double
    Dim PLS As Double
    Dim NF As Double
    Dim REQ As Double
    Dim HARVEST_FACTOR As Double
    Dim Source_Req As Double
    Dim Source_Reg2 As Double
    Dim Will_Grow As Double
    Dim Shortage As Double
    Dim CF1 As Double
    Dim CF2 As Double
    Dim CF3 As Double
    Dim TARGET_DENSITY As Double
    'Dim Cells_Per_Container As Double
    Dim CONTAINER_ASF As Double
    Dim CONTAINER_FACTOR As Double

'Propagule
    If CATEGORY_CODE = "NSP" Then
    'Calculate Grow Containers
        EST_CONTAINERS_REQUIRED = TOTAL_REQUEST * Propagule_BF_per_Acre
    'Calculate Source Needs
        MsgBox "NMIS does not currently calculate source needs. To be implemented at a later time."
    Else
        
'Non-Propagule
    'Calculate source needs
    If Pure_Live_Seed > 0 Then
    REQ = (Forms!NMIS_AGREEMENT_LOTS!TOTAL_REQUEST * 1000)
    PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
          (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
          (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
    ASF = (Forms!NMIS_AGREEMENT_LOTS!HARVEST_ASF_ADJUSTMENT / 100)
    HARVEST_FACTOR = (Forms!NMIS_AGREEMENT_LOTS!HF1 / 100) * _
                     (Forms!NMIS_AGREEMENT_LOTS!HF2 / 100) * _
                     (Forms!NMIS_AGREEMENT_LOTS!HF3 / 100) * _
                     (Forms!NMIS_AGREEMENT_LOTS!HF4 / 100)
    Source_Req = Round((REQ / (PLS * HARVEST_FACTOR * ASF)), 3)

    If Source_Req <= Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] Then
            Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
        Else
            If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] >= 0 Then
                If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < 0.0001 Then
                    MsgBox "This is a Zero Balance Lot!"
                    Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
                Else
                    Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Round(Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS], 3)
                    MsgBox "Insufficient Seed. Check Calculated for Request Adjustment"
                End If
            Else
                Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
                MsgBox "Undetermined amount of source material."
            End If
    End If
    Else
        MsgBox "No test data entered to calculate source. Calculating containers only"
    End If
    
    'Calculate Grow Containers
    If [DESIRED_DENSITY] > 0 Then
            Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
            CF1 = [CF1A] / 100
            CF2 = [CF2A] / 100
            CF3 = [CF3A] / 100
            TARGET_DENSITY = [DESIRED_DENSITY]
            'Cells_Per_Container = _
                '[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![Cells_Per_Container]
            CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
            CONTAINER_FACTOR = CF1 * CF2 * CF3
            
            If [Type_of_Container] = "SB" Then
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            Else 'For Containers
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Calculated_Gross * 1000) * 1 / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_FACTOR) + 0.35
            End If
        Else
            MsgBox "No target density has been entered. Est Containers will not be calculated."
     End If
     End If
     
Exit_Calculate_Click:
    Exit Sub

Err_Calculate_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Calculate_Click
    
End Sub

Private Sub CONTAINER_ASF_ADJUSTMENT_Exit(Cancel As Integer)

   If [DESIRED_DENSITY] > 0 Then
            Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
            CF1 = [CF1A] / 100
            CF2 = [CF2A] / 100
            CF3 = [CF3A] / 100
            PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
              (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
             (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
            TARGET_DENSITY = [DESIRED_DENSITY]
            'CELLS_PER_CONTAINER = _
                '[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![CELLS_PER_CONTAINER]
            CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
            CONTAINER_FACTOR = CF1 * CF2 * CF3
    
            If [Type_of_Container] = "SB" Then
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            Else 'For Containers
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Calculated_Gross * 1000) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            End If
    Else
            MsgBox "No target density has been entered. Est Containers will not be calculated."
    End If
       
End Sub

Private Sub CONTAINER_FACTOR_1_Exit(Cancel As Integer)

   If [DESIRED_DENSITY] > 0 Then
            Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
            CF1 = [CF1A] / 100
            CF2 = [CF2A] / 100
            CF3 = [CF3A] / 100
            PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
              (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
             (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
            TARGET_DENSITY = [DESIRED_DENSITY]
            'Cells_Per_Container = _
                '[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![Cells_Per_Container]
            CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
            CONTAINER_FACTOR = CF1 * CF2 * CF3
    
            If [Type_of_Container] = "SB" Then
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            Else 'For Containers
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Calculated_Gross * 1000) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            End If
    Else
            MsgBox "No target density has been entered. Est Containers will not be calculated."
    End If
     
End Sub

Private Sub CONTAINER_FACTOR_2_Exit(Cancel As Integer)

   If [DESIRED_DENSITY] > 0 Then
            Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
            CF1 = [CF1A] / 100
            CF2 = [CF2A] / 100
            CF3 = [CF3A] / 100
            PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
              (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
             (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
            TARGET_DENSITY = [DESIRED_DENSITY]
            'Cells_Per_Container =
                '[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![Cells_Per_Container]
            CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
            CONTAINER_FACTOR = CF1 * CF2 * CF3
    
            If [Type_of_Container] = "SB" Then
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            Else 'For Containers
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Calculated_Gross * 1000) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            End If
    Else
            MsgBox "No target density has been entered. Est Containers will not be calculated."
    End If
       
End Sub

Private Sub CONTAINER_FACTOR_3_Exit(Cancel As Integer)

   If [DESIRED_DENSITY] > 0 Then
            Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
            CF1 = [CF1A] / 100
            CF2 = [CF2A] / 100
            CF3 = [CF3A] / 100
            PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
              (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
             (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
            TARGET_DENSITY = [DESIRED_DENSITY]
            'Cells_Per_Container = _
                '[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![Cells_Per_Container]
            CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
            CONTAINER_FACTOR = CF1 * CF2 * CF3
    
            If [Type_of_Container] = "SB" Then
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            Else 'For Containers
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Calculated_Gross * 1000) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            End If
    Else
            MsgBox "No target density has been entered. Est Containers will not be calculated."
    End If
       
End Sub

Private Sub Container_Factor_Tip_Click()

    MsgBox "Container Factors GREATER THAN 100% with an OP of / will REDUCE the number of containers " & _
            "and with an OP of * will INCREASE the number of containers." & _
            " Container Factors LESS THAN than 100% with an OP of / will INCREASE the number of containers " & _
            "and with an OP of * will REDUCE the number of containers." & _
            "   A Container ASF adjustment GREATER THAN 100% will INCREASE the number of containers and LESS THAN 100% " & _
            "will REDUCE the number of containers", vbInformation, _
            "Container Factor Help"
    
End Sub

Private Sub Containers_Required_by_spc_DblClick(Cancel As Integer)

    'If Pure_Live_Seed > 0 Then
        If Not IsNull(Containers_Required_by_spc) And CONTAINER_FACTOR_3 = 100 Then
            CONTAINER_FACTOR_3 = Round(SOURCE_REQUIRED / Source_Required_by_spc * 100, 0)
            EST_CONTAINERS_REQUIRED = Containers_Required_by_spc
        End If
    'End If
 
End Sub

Private Sub Containers_Will_Grow_DblClick(Cancel As Integer)

    TOTAL_REQUEST = Round(Containers_Will_Grow * HARVEST_FACTOR / 100, 3)
    
End Sub

Private Sub Desired_Density_DblClick(Cancel As Integer)

    'MsgBox "Target Density is now UNLOCKED for Editing."
    [DESIRED_DENSITY].Locked = False

End Sub

Private Sub Desired_Density_Exit(Cancel As Integer)

'Relock Desired_Density
    
    If [DESIRED_DENSITY].Locked = False Then
        [DESIRED_DENSITY].Locked = True
    End If
    
'Recalculate the container needs if the Target Density is changed
 

   If [DESIRED_DENSITY] > 0 Then
            Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
            CF1 = [CF1A] / 100
            CF2 = [CF2A] / 100
            CF3 = [CF3A] / 100
            PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
              (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
             (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
            TARGET_DENSITY = [DESIRED_DENSITY]
            'CELLS_PER_CONTAINER = _
                '[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![CELLS_PER_CONTAINER]
            CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
            CONTAINER_FACTOR = CF1 * CF2 * CF3
    
            If [Type_of_Container] = "SB" Then
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            Else 'For Containers
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Calculated_Gross * 1000) * 1 / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF) + 0.35
                'Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                '((Calculated_Gross * 1000) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  'CONTAINER_ASF)
                  'Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                  '(([Source_Will_Grow_Gross] * 1000) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  'CONTAINER_ASF)
            End If
    Else
            MsgBox "No target density has been entered. Est Containers will not be calculated."
    End If
      
End Sub

Private Sub Filter_For_Client_DblClick(Cancel As Integer)

    Filter_For_Client = "*"
    
End Sub

Private Sub Filter_For_Client_Enter()

    Filter_For_Client.Requery
    
End Sub

Private Sub Filter_For_Product_DblClick(Cancel As Integer)

    Filter_For_Product = "*"
    
End Sub

Private Sub Filter_For_Product_Enter()

    Filter_For_Product.Requery
    
End Sub

Private Sub Filter_for_Product_Type_DblClick(Cancel As Integer)

    Filter_for_Product_Type = "*"
    
End Sub

Private Sub Filter_for_Species_DblClick(Cancel As Integer)

    Filter_for_Species = "*"
    
End Sub

Private Sub Filter_for_Species_Enter()

    Filter_for_Species.Requery
    
End Sub

Private Sub Find_Lot_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![Find_Lot] & "'"
    Me.Bookmark = rs.Bookmark

End Sub

Private Sub Find_Lot_Enter()

    Find_Lot.Requery
    
End Sub

Private Sub Form_Close()

' Close the NMIS_AGREEMENT_LOTS_NEW FORM if it is open

    Dim strFormName As String
    
    strFormName = "NMIS_AGREEMENT_LOTS_NEW"
    
    If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 Then
        DoCmd.Close acForm, strFormName
        Forms![NMIS_AGREEMENTS]![AGREEMENT_LOT_CN].Requery
        DoCmd.GoToRecord , , acLast
    End If
    
End Sub

Private Sub Form_Current()
    
    Find_Lot = CN  'update the find record box match record selected
    SPECIES_PRODUCT_CN.Requery
    PREVIOUS_SPECIES_PRODUCT_CN.Requery
    PREVIOUS_AGREEMENT_LOT_CN.Requery

End Sub

Private Sub Form_Open(Cancel As Integer)

    Dim strFormName As String
    Dim strFormName2 As String
    Dim strFormName3 As String
    Dim strFormName4 As String
    Dim strFormName5 As String
    Dim strFormName6 As String
    
    strFormName = "NMIS_AGREEMENT_LOTS_NEW"
    strFormName2 = "NMIS_AGREEMENTS"
    strFormName3 = "NMIS_ID_ACTIVITY_TRANSACTIONS_FORM"
    strFormName4 = "NMIS_PRODUCT_INVENTORIES"
    strFormName5 = "NMIS_ID_ACTIVITIES_MORE_INFO_SUBFORM"
    strFormName6 = "Seed_Sow_Withdrawal_Ticket subform"
    strFormName7 = "NMIS_ID_ACTIVITY_FORM"
    
    If (SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 _
        Or SysCmd(acSysCmdGetObjectState, acForm, strFormName2) <> 0 _
            Or SysCmd(acSysCmdGetObjectState, acForm, strFormName3) <> 0 _
                Or SysCmd(acSysCmdGetObjectState, acForm, strFormName4) <> 0 _
                    Or SysCmd(acSysCmdGetObjectState, acForm, strFormName5) <> 0 _
                        Or SysCmd(acSysCmdGetObjectState, acForm, strFormName6) <> 0 _
                            Or SysCmd(acSysCmdGetObjectState, acForm, strFormName7) <> 0) Then
        Title1.Visible = False
        Title2.Visible = True
        Sort_By_Entry_Order.Visible = False
        Screen_For_Begin_FY.Visible = False
        Screen_For_End_FY.Visible = False
        Find_Lot.Visible = False
        Filter_for_Product_Type.Visible = False
        Filter_For_Product.Visible = False
        Filter_For_Client.Visible = False
        Filter_for_Species.Visible = False
        Filter_for_Product_Type_Label.Visible = False
        Filter_For_Product_Label.Visible = False
        Filter_For_Client_Label.Visible = False
        Filter_for_Species_Label.Visible = False
        Clear_Filters.Visible = False
        [Like_Agreement_Lots Label].Visible = False
        Like_Agreement_Lots.Visible = False
        Like_Source_Lots.Visible = False
        Wildcard_Tips.Visible = False
        'DoCmd.GoToControl "ID"
        DoCmd.GoToControl "Use Last Test Data"
    Else
        Title1.Visible = True
        Title2.Visible = False
        Sort_By_Entry_Order.Visible = True
        Screen_For_Begin_FY.Visible = True
        Screen_For_End_FY.Visible = True
        Find_Lot.Visible = True
        Filter_for_Product_Type.Visible = True
        Filter_For_Product.Visible = True
        Filter_For_Client.Visible = True
        Filter_for_Species.Visible = True
        Filter_for_Product_Type_Label.Visible = True
        Filter_For_Product_Label.Visible = True
        Filter_For_Client_Label.Visible = True
        Filter_for_Species_Label.Visible = True
        [Like_Agreement_Lots Label].Visible = True
        Like_Agreement_Lots.Visible = True
        Clear_Filters.Visible = True
        DoCmd.GoToControl "Find_Lot"
    End If
    
End Sub

Private Sub Germ_Detail_Click()

On Error GoTo Err_erm_Detail_Click

    Dim stDocName As String
    
    stDocName = "NMIS_SOURCE_LOTS_REPORT_from_Ag_Lot"
    If Not IsNull([NMIS_SOURCE_LastTestData Query subform].Form![GERM_PCT]) Then
        DoCmd.OpenReport stDocName, acPreview
    Else
        MsgBox "No Detailed Germination Information Available"
    End If
    
Exit_erm_Detail_Click:
    Exit Sub

Err_erm_Detail_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_erm_Detail_Click
        
End Sub

Private Sub HARVEST_ASF_ADJUSTMENT_DblClick(Cancel As Integer)
    
    DoCmd.OpenForm "H_ASF"
    
End Sub

Private Sub Harvest_ASF_Form_Click()
    
    DoCmd.OpenForm "H_ASF"
 
End Sub

Private Sub HARVEST_FACTOR_1_AfterUpdate()

    [Modified by] = Forms![Switchboard]![Current_User_Name]
    [modified date] = Date
    
End Sub

Private Sub HARVEST_FACTOR_2_AfterUpdate()

    [Modified by] = Forms![Switchboard]![Current_User_Name]
    [modified date] = Date
    
End Sub

Private Sub HARVEST_FACTOR_3_AfterUpdate()

    [Modified by] = Forms![Switchboard]![Current_User_Name]
    [modified date] = Date
    
End Sub

Private Sub Harvest_Factor_Tip_Click()

    MsgBox "Harvest Factors GREATER THAN 100% with an OP of / will INCREASE the amount of seed " & _
            "and with an OP of * will REDUCE the amount of seed." & _
            "   Harvest Factors LESS THAN than 100% with an OP of / will REDUCE the amount of seed " & _
            "and with an OP of * will INCREASE the amount of seed." & _
            "   A Harvest ASF adjustment GREATER THAN 100% will REDUCE the amount of seed and LESS THAN 100 " & _
            "will INCREASE the amount of seed", vbInformation, _
            "Harvest Factor Help"
  
End Sub

Private Sub ID_DblClick(Cancel As Integer)

    [ID].Locked = False
    MsgBox "Agreement Lot Id is now UNLOCKED for Editing."

End Sub

Private Sub ID_Exit(Cancel As Integer)
    
    If [ID].Locked = False Then
        [ID].Locked = True
        MsgBox "Agreement Lot Id is now LOCKED."
    End If
        
End Sub

Private Sub ID_ORIGINAL_DblClick(Cancel As Integer)

    [ID_ORIGINAL].Locked = False
    MsgBox "ORIGINAL Agreement Lot Id is now UNLOCKED for Editing."

End Sub

Private Sub ID_ORIGINAL_Exit(Cancel As Integer)
    
    If [ID_ORIGINAL].Locked = False Then
        [ID_ORIGINAL].Locked = True
        MsgBox "ORIGINAL Agreement Lot Id is now LOCKED."
    End If
    
End Sub

Private Sub Label98_Click()
    Label_click_error
End Sub

Private Sub Like_Agreement_Lots_AfterUpdate()

    Find_Lot.Requery
    
End Sub

Private Sub Like_Agreement_Lots_DblClick(Cancel As Integer)

    Like_Agreement_Lots = "*"
    
End Sub

Private Sub Like_Source_Lots_DblClick(Cancel As Integer)

    Like_Source_Lots = "*"

End Sub

Private Sub NURSERY_ASSOCIATE_DblClick(Cancel As Integer)

    NURSERY_ASSOCIATE.Locked = False
    
End Sub

Private Sub NURSERY_ASSOCIATE_Enter()

    NURSERY_ASSOCIATE.Locked = True
    
End Sub



Private Sub PREVIOUS_AGREEMENT_LOT_CN_Exit(Cancel As Integer)

    If Not IsNull(PREVIOUS_AGREEMENT_LOT_CN) And IsNull(PREVIOUS_NURSERY_ASSOCIATE) Then
        PREVIOUS_NURSERY_ASSOCIATE = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code]
        PREVIOUS_NURSERY_ASSOCIATE.Requery
    End If
    
End Sub

Private Sub PREVIOUS_SPECIES_PRODUCT_CN_Enter()

    PREVIOUS_SPECIES_PRODUCT_CN.Requery

End Sub

Private Sub Refresh_and_Close_Form_Click()
On Error GoTo Err_Refresh_and_Close_Form_Click

    Dim stDocName As String

    stDocName = "Close_Form"
    DoCmd.RunMacro stDocName

Exit_Refresh_and_Close_Form_Click:
    Exit Sub

Err_Refresh_and_Close_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_and_Close_Form_Click
    
End Sub

Private Sub Screen_For_Begin_FY_AfterUpdate()

    Find_Lot.Requery
    
End Sub

Private Sub Screen_For_Begin_FY_DblClick(Cancel As Integer)

    Screen_For_Begin_FY = "*"
    
End Sub

Private Sub Screen_For_Begin_FY_Enter()

    Screen_For_Begin_FY.Requery
    
End Sub

Private Sub Screen_For_End_FY_AfterUpdate()

    Find_Lot.Requery
    
End Sub

Private Sub Screen_For_End_FY_DblClick(Cancel As Integer)

    Screen_For_End_FY = "*"
    
End Sub

Private Sub Screen_For_End_FY_Enter()

    Screen_For_End_FY.Requery
  
End Sub

Private Sub Shortage_DblClick(Cancel As Integer)

    TOTAL_REQUEST = Round(Source_Will_Grow, 3) 'Round(Containers_Will_Grow * HARVEST_FACTOR / 100, 3)
    [NMIS_AGREEMENTS subform1].Form![AMOUNT_REQUESTED] = Round(Source_Will_Grow, 3)
    
End Sub

Private Sub Sort_By_Entry_Order_AfterUpdate()

    Find_Lot.Requery
  
End Sub

Private Sub SOURCE_LOT_CN_Change()

    MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    MODIFIED_DATE = Date
    
End Sub

Private Sub Source_LOT_CN_DblClick(Cancel As Integer)

    [SOURCE_LOT_CN].Locked = False
    MsgBox "Source Lot ID is now UNLOCKED for Editing."
    
End Sub

Private Sub SOURCE_LOT_CN_Exit(Cancel As Integer)
'Relock SOURCE_LOT_CN IF UNLOCKED
    
    If [SOURCE_LOT_CN].Locked = False Then
        [SOURCE_LOT_CN].Locked = True
        MsgBox "Source Lot ID is now LOCKED."
    End If

End Sub

Private Sub SOURCE_REQUIRED_AfterUpdate()

    If Not IsNull(SOURCE_REQUIRED) Then
        If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < SOURCE_REQUIRED Then
        If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < 0.0001 Then
            MsgBox "This is a Zero Balance Lot!"
            'Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
        Else
            'Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Round(Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum of Activity_Units], 3)
            MsgBox "Insufficient Seed. Check Calculated for Request Adjustment"
        End If
        End If
    End If
        
End Sub

Private Sub Source_Required_by_spc_DblClick(Cancel As Integer)

    If Pure_Live_Seed > 0 Then
        If Not IsNull(Source_Required_by_spc) Then
            If HARVEST_FACTOR_4 = 100 And CONTAINER_FACTOR_3 = 100 Then
                HARVEST_FACTOR_4 = Round(SOURCE_REQUIRED / Source_Required_by_spc * 100, 0)
                CONTAINER_FACTOR_3 = Round(SOURCE_REQUIRED / Source_Required_by_spc * 100, 0)
                SOURCE_REQUIRED = Round(Source_Required_by_spc, 3)
            End If
            
            If Not IsNull(SOURCE_REQUIRED) Then
                If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < SOURCE_REQUIRED Then
                    If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < 0.0001 Then
                        MsgBox "This is a Zero Balance Lot!"
                        Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
                    Else
                        Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Round(Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS], 3)
                        MsgBox "Insufficient Seed. Check Calculated for Request Adjustment"
                    End If
                End If
            End If
        End If
    End If
 
End Sub

Private Sub SOURCE_REQUIRED_Change()

    MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    MODIFIED_DATE = Date
    
End Sub

Private Sub SOURCE_REQUIRED_DblClick(Cancel As Integer)

    [SOURCE_REQUIRED].Locked = False
    'MsgBox "Source Required is now UNLOCKED for Editing."
    
End Sub

Private Sub SOURCE_REQUIRED_Exit(Cancel As Integer)
'Relock Source_Required
    
    If [SOURCE_REQUIRED].Locked = False Then
        [SOURCE_REQUIRED].Locked = True
    End If

'Recalculate the container needs for bareroot if the source amount is changed

   If [Type_of_Container] = "SB" Then
  
    Dim ASF As Double
    Dim Source_Req2 As Double
    Dim PLS As Double
    Dim CF1 As Double
    Dim CF2 As Double
    Dim CF3 As Double
    Dim TARGET_DENSITY As Double
    Dim Cells_Per_Container As Double
    Dim CONTAINER_ASF As Double
    Dim CONTAINER_FACTOR As Double


'Calculate Grow Containers
    If IsNull(SOURCE_REQUIRED) Then
       MsgBox "No Source Required Entered"
    Else
    If [DESIRED_DENSITY] > 0 Then
        Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
        If Not IsNull(Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT) Then
            PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
                (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
                (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
        End If
        CF1 = [CF1A] / 100
        CF2 = [CF2A] / 100
        CF3 = [CF3A] / 100
        TARGET_DENSITY = [DESIRED_DENSITY]
        Cells_Per_Container = _
            [NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![Cells_Per_Container]
        CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
        CONTAINER_FACTOR = CF1 * CF2 * CF3
    
        Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
    Else
        MsgBox "No target density has been entered. Est Containers will not be calculated."
    End If
    End If
   End If
    
End Sub

Private Sub Source_Will_Grow_DblClick(Cancel As Integer)

    TOTAL_REQUEST = Round(Source_Will_Grow, 3) 'Round(Containers_Will_Grow * HARVEST_FACTOR / 100, 3)
    [NMIS_AGREEMENTS subform1].Form![AMOUNT_REQUESTED] = Round(Source_Will_Grow, 3)
   
End Sub

Private Sub SPC_Use_Containers_Click()

    'If Pure_Live_Seed > 0 Then
        If Not IsNull(Containers_Required_by_spc) And THINNING_PROBABILITY_PCT = 100 Then
            If CONTAINER_PROBABILITY_PCT = 100 And THINNING_PROBABILITY_PCT = 100 Then
                THINNING_PROBABILITY_PCT = Round(Calc_Source / Source_Required_by_spc * 100, 0)
                'CONTAINER_PROBABILITY_PCT = Round(EST_CONTAINERS_REQUIRED / Containers_Required_by_spc * 100, 0)
                EST_CONTAINERS_REQUIRED = Containers_Required_by_spc
            End If
        End If
    'End If
 
End Sub

Private Sub SPC_Use_Source_Click()

    If Pure_Live_Seed > 0 Then
        If Not IsNull(Source_Required_by_spc) Then
            If CONTAINER_PROBABILITY_PCT = 100 And THINNING_PROBABILITY_PCT = 100 Then
                CONTAINER_PROBABILITY_PCT = Round(SOURCE_REQUIRED / Source_Required_by_spc * 100, 0)
                THINNING_PROBABILITY_PCT = Round(SOURCE_REQUIRED / Source_Required_by_spc * 100, 0)
                SOURCE_REQUIRED = Round(Source_Required_by_spc, 3)
            End If
            
            If Not IsNull(SOURCE_REQUIRED) Then
                If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < SOURCE_REQUIRED Then
                    If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < 0.0001 Then
                        MsgBox "This is a Zero Balance Lot!"
                        'Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
                    Else
                        Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Round(Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS], 3)
                        MsgBox "Insufficient Seed. Check Calculated for Request Adjustment"
                    End If
                End If
            End If
        End If
    End If

End Sub

Private Sub SPECIES_PRODUCT_CN_Change()

    MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    MODIFIED_DATE = Date
    
End Sub

Private Sub SPECIES_PRODUCT_CN_DblClick(Cancel As Integer)
    
    [SPECIES_PRODUCT_CN].Locked = False
    'MsgBox "Species Product is now UNLOCKED for Editing."
    
End Sub

Private Sub SPECIES_PRODUCT_CN_Exit(Cancel As Integer)

    [SPECIES_PRODUCT_CN].Locked = True

End Sub

Private Sub TOTAL_REQUEST_Change()

    MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    MODIFIED_DATE = Date
    
End Sub

Private Sub TOTAL_REQUEST_DblClick(Cancel As Integer)

    [TOTAL_REQUEST].Locked = False
    'MsgBox "Total Request is now UNLOCKED for Editing."
    
End Sub

Private Sub TOTAL_REQUEST_Exit(Cancel As Integer)
    
    If [TOTAL_REQUEST].Locked = False Then
        [TOTAL_REQUEST].Locked = True
        'MsgBox "Total Request is now LOCKED."
    End If
    
End Sub

Private Sub Use_Last_Test_Data_Click()
On Error GoTo Err_Use_Last_Test_Data_Click
    
    'If IsNull(Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT) Then
        Forms!NMIS_AGREEMENT_LOTS!Source_Stratified = _
            Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!STRATIFIED
        Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT = _
            Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!GERM_PCT
        Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT = _
            Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!PURITY_PCT
        Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT = _
            Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!GROSS_SOURCE_PER_UNIT
    'End If
            
    DoCmd.GoToControl "Use_Default_Factors"
    
Exit_Use_Last_Test_Data_Click:
    Exit Sub

Err_Use_Last_Test_Data_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Use_Last_Test_Data_Click
    
End Sub


Private Sub Use_Default_Factors_Click()
On Error GoTo Err_Use_Default_Factors_Click

    [NMIS_FACTORS subform].Requery
    
    Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_1 = [NMIS_FACTORS subform]![HARVEST_FACTOR_1]
    Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_2 = [NMIS_FACTORS subform]![HARVEST_FACTOR_2]
    Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_3 = [NMIS_FACTORS subform]![HARVEST_FACTOR_3]
    Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_4 = [NMIS_FACTORS subform]![HARVEST_FACTOR_4]
    Forms!NMIS_AGREEMENT_LOTS!CONTAINER_FACTOR_1 = [NMIS_FACTORS subform]![CONTAINER_FACTOR_1]
    Forms!NMIS_AGREEMENT_LOTS!CONTAINER_FACTOR_2 = [NMIS_FACTORS subform]![CONTAINER_FACTOR_2]
    Forms!NMIS_AGREEMENT_LOTS!CONTAINER_FACTOR_3 = [NMIS_FACTORS subform]![CONTAINER_FACTOR_3]
    Forms!NMIS_AGREEMENT_LOTS!DESIRED_DENSITY = [NMIS_FACTORS subform]![DESIRED_DENSITY]
    Forms!NMIS_AGREEMENT_LOTS!THINNING_PROBABILITY_PCT = 100
    Forms!NMIS_AGREEMENT_LOTS!CONTAINER_PROBABILITY_PCT = 100
    
    DoCmd.GoToControl "Calculate"
    
Exit_Use_Default_Factors_Click:
    Exit Sub

Err_Use_Default_Factors_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Use_Default_Factors_Click
    
End Sub

Private Sub Preview_Source_Work_Order_Click()
On Error GoTo Err_Preview_Source_Work_Order_Click

    DoCmd.RunCommand acCmdRefresh
    
    Dim stDocName As String

    stDocName = "Seed_Bank_Work_Order"
    
    'If SOURCE_REQUIRED > 0 Then
        [CN].Requery
        DoCmd.OpenReport stDocName, acPreview
   ' Else
        'MsgBox "No Source Required"
    'End If
    
Exit_Preview_Source_Work_Order_Click:
    Exit Sub

Err_Preview_Source_Work_Order_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Source_Work_Order_Click
    
End Sub

Private Sub Tip_Seed_Per_Cell_Adjustment_Click()

    MsgBox "Enter the desired seed(s) per cell. The results are the adjustment to make to the number of Containers or Amount of Source Material. " & _
            "Click on the Use Button for the adjustment you want to use and a SPC% (Seed Per Cell Adjustment %) will be entered.", vbInformation, _
            "Seeds Per Cell Help"
    
End Sub

Private Sub View_Source_Calcs_Click()

    DoCmd.RunCommand acCmdRefresh
    DoCmd.OpenReport "Agreement_Lot_Source_Calcs", acPreview
    
End Sub
Private Sub Clear_Filters_Click()
On Error GoTo Err_Clear_Filters_Click

    Dim stDocName As String

    Filter_for_Product_Type = "*"
    Filter_For_Product = "*"
    Screen_For_Begin_FY = "*"
    Filter_For_Client = "*"
    Filter_for_Species = "*"
    Like_Agreement_Lots = "*"
    Like_Source_Lots = "*"

Exit_Clear_Filters_Click:
    Exit Sub

Err_Clear_Filters_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Clear_Filters_Click
    
End Sub

Private Sub Wildcard_Tips_Click()

    Dim stDocName As String

    MsgBox "Wildcards" & Chr(13) & Chr(10) & Chr(10) & _
        "* Matches any number of characters. It can be used as the first or last character in the character string. -5* finds -5, -56, and -56H" & Chr(13) & Chr(10) & Chr(10) & _
        "? Matches any single alphabetic character. B?ll finds ball, bell, and bill" & Chr(13) & Chr(10) & Chr(10) & _
        "[ ] Matches any single character within the brackets. B[ae]ll finds ball and bell but not bill" & Chr(13) & Chr(10) & Chr(10) & _
        "! Matches any character not in the brackets. b[!ae]ll finds bill and bull but not ball or bell" & Chr(13) & Chr(10) & Chr(10) & _
        "- Matches any one of a range of characters. You must specify the range in ascending order (A to Z, not Z to A). b[a-c]d finds bad, bbd, and bcd" & Chr(13) & Chr(10) & Chr(10) & _
        "# Matches any single numeric character. 1#3 finds 103, 113, 123", vbInformation

End Sub
```
