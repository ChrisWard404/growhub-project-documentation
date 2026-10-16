# Form: NMIS_AGREEMENTS

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`, `NMIS_CONTACTS`, `NMIS_CONTACT_LINKS`, `NMIS_FISCAL_YEARS`, `NMIS_PRODUCTS`, `NMIS_PRODUCT_TYPES`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`, `NMIS_SPECIES_GROUP`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Form.NMIS_CLIENT_MGMT_CODES subform1`, `Form.NMIS_SOURCE_LOTS_ID subform`, `Form.NMIS_AGREEMENTS_Other subform`, `Form.Seed_Balance Query subform`, `Form.NMIS_SOURCE_LastTestData Query subform`  
**Opens:** `Form:Agreement_for_Source_Lot`, `Form:NMIS_AGREEMENT_LOTS`, `Form:NMIS_AGREEMENT_LOTS_NEW`, `Form:NMIS_ASSOCIATES`, `Form:NMIS_Associates`, `Form:NMIS_CONTACTS`, `Form:NMIS_SOURCE_LOTS_Bend`, `Form:NMIS_SOURCE_LOTS_INPUT`, `Form:NMIS_SPECIES_PRODUCTS Form`, `Form:Refresh_Close`  
**Opened from (VBA):** `Form_Client_Bill_Menu`, `Form_NMIS_AGREEMENTS subform1`, `Forms_Open Module`  
**Form events with code:** BeforeUpdate, Current, Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Green_Background_Box |  |  |  |  | 0.02, 0.02, 9.19, 1.24 |
| TextBox | Index |  | Index |  |  | 7.79, 0.45, 0.00, 0.00 |
| TextBox | LastAgreementCN |  |  |  |  | 7.79, 0.32, 0.00, 0.00 |
| TextBox | CN |  | CN |  |  | 5.33, 0.34, 0.00, 0.00 |
| TextBox | INSERTED_INSTANCE |  | INSERTED_INSTANCE |  |  | 7.62, 0.67, 0.00, 0.25 |
| CommandButton | Refresh and Close |  Close |  |  | Click | 8.54, 0.04, 0.48, 0.26 |
| Line | Line19 |  |  |  |  | 0.04, 1.28, 8.88, 0.00 |
| TextBox | New_CN |  | =[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code |  |  | 5.42, 0.47, 1.08, 0.21 |
| ComboBox | Agreement_Lookup |  |  | SELECT NMIS_AGREEMENTS.CN, [CLIENT_ASSOCIATE] & " " & nz([PLNTMSTR_SYMBOL],"NO SPEC PROD") & " " & [Class] & "  " & NZ([ID],"*          *") & "   " & [ID_Sourceb] & " (REQ: " & [AMOUNT_REQUESTED] & "  FY's:" & [NMIS_AGREEMENTS].[BEGIN_FY] & "-" & [NMIS_AGREEMENTS].[END_FY] & ")" AS LOOKUP, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.CN, IIf(IsNull([NMIS_AGREEMENT_LOTS].[CN]),"N","y") AS no_agreement_Lot FROM ((Source_Lot_ID_and_Source_string RIGHT JOIN NMIS_AGREEMENTS ON Source_Lot_ID_and_Source_string.CN = NMIS_AGREEMENTS.SOURCE_LOT_CN) LEFT JOIN [Species_Product_and _Products] ON NMIS_AGREEMENTS.SPECIES_PRODUCT_CN = [Species_Product_and _Products].CN) LEFT JOIN NMIS_AGREEMENT_LOTS ON NMIS_AGREEMENTS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN WHERE (((NMIS_AGREEMENT_LOTS.ID) Like nz([Forms]![NMIS_AGREEMENTS]![Like_Agreement_Lots],"*") Or (NMIS_AGREEMENT_LOTS.ID) Is Null) AND ((IIf(IsNull([NMIS_AGREEMENT_LOTS].[CN]),"N","y")) Like IIf([Forms]![NMIS_AGREEMENTS]![No_Agreement_lot],"N","*")) AND ((NMIS_AGREEMENTS.BEGIN_FY) Like [Forms]![NMIS_AGREEMENTS]![Filter_for_FY] & "*") AND ((Left$(nz([Category],"*"),1)) Like [Forms]![NMIS_AGREEMENTS]![Filter_for_Product_Type] & "*") AND ((NMIS_AGREEMENTS.CLIENT_ASSOCIATE) Like [Forms]![NMIS_AGREEMENTS]![Filter_For_Client] & "*") AND ((nz([PLNTMSTR_SYMBOL],"No Spec Prod")) Like [Forms]![NMIS_AGREEMENTS]![Filter_For_Species] & "*") AND (([Species_Product_and _Products].PRODUCT_CN) Like [Forms]![NMIS_AGREEMENTS]![Filter_For_Product] & "*" Or ([Species_Product_and _Products].PRODUCT_CN) Is Null) AND ((nz([nmis_agreements].[END_FY],"9999")) Like nz([Forms]![NMIS_AGREEMENTS]![Filter_For_End_FY],"*")) AND (([Species_Product_and _Products].SPECIES_PRODUCT_DESC) Like nz([Forms]![NMIS_AGREEMENTS]![Like_Species_Prod_Desc],"*") Or ([Species_Product_and _Products].SPECIES_PRODUCT_DESC) Is Null)) ORDER BY NMIS_AGREEMENTS.BEGIN_FY DESC , Left$(nz([Category],"*"),1), NMIS_AGREEMENTS.CLIENT_ASSOCIATE, nz([PLNTMSTR_SYMBOL],"No Spec Prod"), [Species_Product_and _Products].Class, Source_Lot_ID_and_Source_string.ID_SOURCE2; | AfterUpdate, Enter | 0.59, 0.96, 8.40, 0.24 |
| Label | Agreement_Lookup_Label | Find: |  |  |  | 0.07, 0.95, 0.48, 0.25 |
| CommandButton | Open Products Form | Species Prod |  |  | Click | 6.80, 0.04, 0.53, 0.37 |
| CommandButton | Open Source Lot Form | Source Lots |  |  | Click | 7.36, 0.04, 0.53, 0.37 |
| CommandButton | Open_Bend_Lots_Form |  Bend Lots |  |  | Click | 6.25, 0.04, 0.53, 0.37 |
| Label | Label8 | NMIS Agreements |  |  |  | 3.72, 0.06, 1.93, 0.30 |
| ComboBox | Filter_for_Product_Type |  |  | B;Bareroot Plant;C;Container Plant;N;Native Propagules;*;All Product Types | Enter | 2.19, 0.67, 1.75, 0.25 |
| Label | Filter_for_Product_Type_Label | Like: |  |  |  | 1.77, 0.71, 0.39, 0.21 |
| ComboBox | Filter_For_Fy |  |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC; | DblClick | 1.00, 0.43, 0.52, 0.21 |
| ComboBox | Filter_for_Species |  |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY WHERE (((NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.HIDE)=False)); |  | 0.75, 0.67, 0.96, 0.25 |
| Label | Filter_For_Product_Label | Like Prod: |  |  |  | 3.99, 0.71, 0.74, 0.21 |
| Label | Filter_For_Fy_Label | Like Beg Fy: |  |  |  | 0.07, 0.43, 0.89, 0.21 |
| Label | Filter_for_Species_Label | Species: |  |  |  | 0.08, 0.71, 0.62, 0.21 |
| ComboBox | Filter_For_Product |  |  | SELECT NMIS_PRODUCTS.CN, NMIS_PRODUCTS.PRODUCT_DESC AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.PRODUCT_CLASS, [NMIS_PRODUCT_TYPES].[PRODUCT_TYPE_DESC] & " " AS [Begin Product], [NMIS_PRODUCT_TYPES_1].[PRODUCT_TYPE_DESC] & " " AS [End Product], [CATEGORY_CODE] & " " AS Category FROM NMIS_PRODUCT_TYPES AS NMIS_PRODUCT_TYPES_1 INNER JOIN (NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE = NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE) ON NMIS_PRODUCT_TYPES_1.PRODUCT_TYPE = NMIS_PRODUCTS.END_PRODUCT_TYPE WHERE (((Left$([CATEGORY_CODE],1)) Like [Forms]![NMIS_AGREEMENTS]![Filter_for_Product_Type])) ORDER BY [CATEGORY_CODE] & " ", [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")", NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE; | Enter, Exit | 4.78, 0.67, 3.75, 0.25 |
| ComboBox | Filter_For_Client |  |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  | DblClick | 3.64, 0.43, 0.95, 0.21 |
| Label | Filter_For_Client_Label | Like Client: |  |  |  | 2.78, 0.43, 0.81, 0.21 |
| ComboBox | Filter_For_End_FY | End FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC; |  | 2.20, 0.44, 0.52, 0.20 |
| Label | Like_Agreement_Lots Label | Like AL ID |  |  |  | 6.62, 0.44, 0.74, 0.21 |
| TextBox | Like_Agreement_Lots |  |  |  | AfterUpdate, DblClick | 7.40, 0.43, 0.79, 0.21 |
| CommandButton | Wildcard_Tip | Wildcard Tip |  |  | Click | 8.24, 0.42, 0.92, 0.22 |
| CheckBox | No_Agreement_lot | No Agreement Lot |  |  |  | 1.42, 0.21, 0.00, 0.00 |
| Label | Like_Species_Prod_Desc Label |  Like SP Desc |  |  |  | 4.64, 0.43, 0.97, 0.21 |
| TextBox | Like_Species_Prod_Desc |  |  |  | DblClick | 5.66, 0.43, 0.91, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | BEGIN_FY | Begin FY | BEGIN_FY | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  | Exit | 6.11, 0.23, 0.66, 0.22 |
| TabControl | TabCtl9 |  |  |  |  | 0.00, 1.65, 9.23, 3.51 |
| Page | Product Information |  |  |  |  | 0.09, 1.94, 9.04, 3.12 |
| Subform | NMIS_CLIENT_MGMT_CODES subform1 |  | Form.NMIS_CLIENT_MGMT_CODES subform1 (master: CN → child: AGREEMENT_CN) |  |  | 0.32, 1.98, 3.22, 1.92 |
| Rectangle | Box24 |  |  |  |  | 0.21, 1.94, 3.46, 2.02 |
| Rectangle | Box25 |  |  |  |  | 3.89, 1.94, 4.79, 2.02 |
| Subform | NMIS_SOURCE_LOTS_ID subform |  | Form.NMIS_SOURCE_LOTS_ID subform (master: SOURCE_LOT_CN → child: CN) |  |  | 6.59, 4.03, 2.54, 0.38 |
| TextBox | INSERTED_BY |  | INSERTED_BY |  |  | 6.93, 4.61, 1.02, 0.00 |
| TextBox | INSERTED_DATE |  | INSERTED_DATE |  |  | 6.93, 4.82, 1.02, 0.00 |
| TextBox | Text58 |  | MODIFIED_BY |  |  | 8.03, 4.61, 1.09, 0.00 |
| TextBox | Text59 |  | MODIFIED_DATE |  |  | 8.03, 4.82, 1.09, 0.00 |
| Label | Label68 | Inserted |  |  |  | 6.94, 4.42, 1.02, 0.19 |
| Label | Label69 | Last Modified |  |  |  | 8.04, 4.42, 1.07, 0.19 |
| CommandButton | Agreements_for_Source | View Same FY Agreements for this Source |  |  | Click | 5.36, 4.20, 1.39, 0.70 |
| Subform | NMIS_AGREEMENTS_Other subform |  | Form.NMIS_AGREEMENTS_Other subform (master: SOURCE_LOT_CN;BEGIN_FY → child: SOURCE_LOT_CN;BEGIN_FY) |  |  | 0.21, 4.07, 5.04, 0.93 |
| Rectangle | Box74 |  |  |  |  | 0.17, 4.04, 6.69, 1.02 |
| Subform | Seed_Balance Query subform |  | Form.Seed_Balance Query subform (master: SOURCE_LOT_CN → child: CN) |  |  | 6.33, 2.35, 2.06, 0.28 |
| Subform | NMIS_SOURCE_LastTestData Query subform |  | Form.NMIS_SOURCE_LastTestData Query subform (master: SOURCE_LOT_CN → child: SOURCE_LOT_CN) |  |  | 4.25, 2.35, 1.89, 1.56 |
| Label | Label98 | Source Info |  |  |  | 5.45, 2.00, 1.94, 0.30 |
| Page | Source Lot Lookup |  |  |  |  | 0.05, 1.94, 9.08, 3.12 |
| ComboBox | Client_Lookup |  |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  | AfterUpdate, DblClick | 1.48, 2.64, 0.86, 0.22 |
| ComboBox | Species_Group |  |  | SELECT NMIS_SPECIES_GROUP.SPECIES_GROUP FROM NMIS_SPECIES_GROUP;  | AfterUpdate, DblClick | 1.48, 2.89, 1.30, 0.21 |
| Label | Label30 | Species: |  |  |  | 0.76, 3.14, 0.60, 0.21 |
| ComboBox | Species_Lookup |  |  | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.SPECIES_NO, NMIS_SPECIES.VERNACULAR, NMIS_SPECIES.GENUS, NMIS_SPECIES.SPECIES, NMIS_SPECIES.SPECIES_GROUP FROM NMIS_SPECIES WHERE (((NMIS_SPECIES.SPECIES_GROUP) Like [Forms]![NMIS_AGREEMENTS]![Species_Group] & "*")); | AfterUpdate, DblClick | 1.48, 3.14, 0.89, 0.21 |
| Label | Label32 | Species Group: |  |  |  | 0.30, 2.89, 1.06, 0.21 |
| Label | Label33 | Seed Zone: |  |  |  | 0.55, 3.40, 0.81, 0.21 |
| TextBox | Seed_Zone_Lookup |  |  |  | AfterUpdate, DblClick | 1.48, 3.39, 0.65, 0.21 |
| Rectangle | Box57 |  |  |  |  | 0.05, 2.05, 2.79, 2.93 |
| Label | Label28 | Lookup Parameters |  |  |  | 0.68, 2.10, 1.62, 0.24 |
| Label | Label58 | Like Client: |  |  |  | 0.55, 2.64, 0.81, 0.21 |
| TextBox | Elev_Lookup |  |  |  | AfterUpdate, DblClick | 1.48, 3.64, 0.65, 0.21 |
| TextBox | Breeding_Zone_Lookup |  |  |  | AfterUpdate, DblClick | 1.49, 3.89, 0.65, 0.21 |
| Label | Label79 | Elev: |  |  |  | 0.94, 3.64, 0.43, 0.21 |
| TextBox | Breeding_Subunit_Lookup |  |  |  | AfterUpdate, DblClick | 1.49, 4.14, 0.65, 0.21 |
| Label | Label81 | Tree No.: |  |  |  | 0.71, 4.40, 0.67, 0.21 |
| TextBox | Tree_No_Lookup |  |  |  | AfterUpdate, DblClick | 1.49, 4.39, 0.65, 0.21 |
| Label | Label83 | Breeding Zone: |  |  |  | 0.30, 3.90, 1.07, 0.21 |
| CommandButton | Clear_Lookups | Clear All |  |  | Click | 0.95, 4.66, 1.24, 0.29 |
| Label | Label89 | Breeding Subunit: |  |  |  | 0.11, 4.15, 1.26, 0.21 |
| ListBox | Source_Code | Source Information           Scroll Right for Tree No(s) >>> | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, Source_Lot_ID_and_Source_string.SOURCE, NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE AS [Stored For], Round([Sum Of ACTIVITY_UNITS],3) AS Balance, [**NMIS_SOURCE_LastTestData_Table].GERM_PCT AS Ger, Nz([BREEDING_SUBUNIT],"  ") AS BrSubU, Nz([TREE_NUMBER],"  ") AS [Tree No(s)] FROM [**NMIS_SOURCE_LastTestData_Table] RIGHT JOIN ((([NMIS_SPECIES_GROUP Query] RIGHT JOIN NMIS_SOURCE_LOTS ON [NMIS_SPECIES_GROUP Query].PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN) LEFT JOIN [**Seed_Balance_Table] ON NMIS_SOURCE_LOTS.CN = [**Seed_Balance_Table].CN) ON [**NMIS_SOURCE_LastTestData_Table].SOURCE_LOT_CN = NMIS_SOURCE_LOTS.CN WHERE (((NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) Like [Forms]![NMIS_AGREEMENTS]![Client_Lookup] & "*") AND ((Round([Sum Of ACTIVITY_UNITS],3))>0.0001) AND ((Nz([BREEDING_SUBUNIT],"  ")) Like [Forms]![NMIS_AGREEMENTS]![Breeding_Subunit_Lookup] & "*") AND ((Nz([TREE_NUMBER],"  ")) Like "*" & [Forms]![NMIS_AGREEMENTS]![Tree_No_Lookup] & "*") AND ((NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) Like [Forms]![NMIS_AGREEMENTS]![Species_Lookup] & "*") AND (([NMIS_SPECIES_GROUP Query].SPECIES_GROUP) Like [Forms]![NMIS_AGREEMENTS]![Species_Group] & "*") AND ((Nz([SEED_ZONE],"  ")) Like [Forms]![NMIS_AGREEMENTS]![Seed_Zone_Lookup] & "*") AND ((Nz([ORIGIN_ELEVATION],"  ")) Like [Forms]![NMIS_AGREEMENTS]![Elev_Lookup] & "*") AND ((Nz([BREEDING_ZONE],"  ")) Like [Forms]![NMIS_AGREEMENTS]![Breeding_Zone_Lookup] & "*")) ORDER BY Source_Lot_ID_and_Source_string.SOURCE; |  | 2.89, 2.26, 6.20, 2.73 |
| Label | Label91 | Blank for ALL |  |  |  | 0.96, 2.36, 0.96, 0.21 |
| ComboBox | Associate | Code                   Client Name                            | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Historical)") AS name, NMIS_ASSOCIATES.HISTORICAL FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.HISTORICAL) Like IIf(Not ([NMIS_ASSOCIATES].[HISTORICAL])=IsNull([Forms]![NMIS_AGREEMENTS]![ASSOCIATE]),"*",False))); | AfterUpdate | 0.05, 0.23, 1.01, 0.23 |
| ComboBox | Source_lot_cn | Source | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, Source_Lot_ID_and_Source_string.SOURCE, NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE FROM ([NMIS_SPECIES_GROUP Query] RIGHT JOIN NMIS_SOURCE_LOTS ON [NMIS_SPECIES_GROUP Query].PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN ORDER BY Source_Lot_ID_and_Source_string.SOURCE; |  | 1.57, 0.69, 3.06, 0.21 |
| ComboBox | source_id |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE, NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE AS [Stored For], [Seed_Balance Query].[Sum Of ACTIVITY_UNITS] AS Balance FROM [Seed_Balance Query] RIGHT JOIN (([NMIS_SPECIES_GROUP Query] RIGHT JOIN NMIS_SOURCE_LOTS ON [NMIS_SPECIES_GROUP Query].PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN) ON [Seed_Balance Query].SOURCE_LOT_CN = NMIS_SOURCE_LOTS.CN ORDER BY NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE; | Change, DblClick, Enter, Exit, NotInList | 0.07, 0.70, 1.46, 0.21 |
| Line | Line72 |  |  |  |  | 0.12, 1.38, 8.71, 0.00 |
| Label | PRODUCT_TYPE_Label | Product Type |  |  |  | 7.00, 0.94, 1.21, 0.20 |
| ComboBox | PLNTMSTR_SYMBOL | Species | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.VERNACULAR FROM NMIS_SPECIES;  |  | 1.85, 1.15, 2.41, 0.20 |
| ComboBox | Species Product |  | SPECIES_PRODUCT_CN | SELECT NMIS_SPECIES_PRODUCTS.CN, NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC FROM (NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE=NMIS_PRODUCTS.END_PRODUCT_TYPE) INNER JOIN NMIS_SPECIES_PRODUCTS ON NMIS_PRODUCTS.CN=NMIS_SPECIES_PRODUCTS.PRODUCT_CN GROUP BY NMIS_SPECIES_PRODUCTS.CN, NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC;  |  | 7.00, 1.15, 1.23, 0.20 |
| ComboBox | END_FY | End FY | END_FY | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  |  | 6.86, 0.23, 0.67, 0.22 |
| TextBox | AMOUNT_REQUESTED | Amt Req | AMOUNT_REQUESTED |  | DblClick, Enter, Exit, LostFocus | 8.40, 0.69, 0.66, 0.22 |
| ComboBox | AGREEMENT_LOT_CN | Agreement Lot ID | AGREEMENT_LOT_CN | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_PRODUCTS.PRODUCT_DESC, Agreement_Lot_Size_Spec_String_for_Request.SIZE_SPEC_STRING, "(" & [ID_ORIGINAL] & ")" AS [ID Orig] FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_AGREEMENT_LOTS INNER JOIN Agreement_Lot_Size_Spec_String_for_Request ON NMIS_AGREEMENT_LOTS.CN = Agreement_Lot_Size_Spec_String_for_Request.CN) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN ORDER BY NMIS_AGREEMENT_LOTS.ID; | DblClick, Enter | 0.07, 1.14, 1.62, 0.21 |
| ComboBox | SPECIES_PRODUCT_CN | Select/Change Species Product | SPECIES_PRODUCT_CN | SELECT NMIS_SPECIES_PRODUCTS.CN, [NMIS_SPECIES_PRODUCTS].[SPECIES_PRODUCT_DESC] & " " & [NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL] & " " & [SIZE_SPEC_STRING] & " (" & [BEGIN_PRODUCT_TYPE] & "-" & [END_PRODUCT_TYPE] & ") (" & [BEGIN_SEASON_CODE] & "-" & [END_SEASON_CODE] & ")" & IIf(([NMIS_SPECIES_PRODUCTS].[historical] Or [NMIS_PRODUCTS].[historical])," *HISTORICAL*") AS [Species Product Description], NMIS_PRODUCTS.PRODUCT_DESC, NMIS_SPECIES_PRODUCTS.TOTAL_NUMBER_OF_FY, NMIS_PRODUCTS.HISTORICAL, Left$([NMIS_PRODUCTS].[CATEGORY_CODE],1) AS Product_Type FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN Species_Products_with_SizeSpecString ON NMIS_SPECIES_PRODUCTS.CN = Species_Products_with_SizeSpecString.CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((NMIS_PRODUCTS.HISTORICAL) Like IIf(IsNull([Forms]![NMIS_AGREEMENTS]![SPECIES_PRODUCT_CN]),0,"*")) AND ((Left$([NMIS_PRODUCTS].[CATEGORY_CODE],1)) Like IIf(IsNull([Forms]![NMIS_AGREEMENTS]![SPECIES_PRODUCT_CN]),[Forms]![NMIS_AGREEMENTS]![Filter_for_Product_Type],"*")) AND ((NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL)=[Forms]![NMIS_AGREEMENTS]![PLNTMSTR_SYMBOL]) AND ((NMIS_SPECIES_PRODUCTS.HISTORICAL) Like IIf(IsNull([Forms]![NMIS_AGREEMENTS]![SPECIES_PRODUCT_CN]),0,"*")) AND ((NMIS_PRODUCTS.CN) Like IIf(IsNull([Forms]![NMIS_AGREEMENTS]![SPECIES_PRODUCT_CN]),[Forms]![NMIS_AGREEMENTS]![Filter_For_Product],"*")) AND ((NMIS_SPECIES_PRODUCTS.SPECIES_PRODUCT_DESC) Like IIf(IsNull([Forms]![NMIS_AGREEMENTS]![SPECIES_PRODUCT_CN]),nz([Forms]![NMIS_AGREEMENTS]![Like_Species_Prod_Desc],"*"),"*"))) ORDER BY NMIS_PRODUCTS.CATEGORY_CODE, NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL & " " & NMIS_SPECIES_PRODUCTS.SPECIES_PRODUCT_DESC & " " & [SIZE_SPEC_STRING] & " " & [BEGIN_SEASON_CODE] & " " & [END_SEASON_CODE]; | Change, Enter, Exit | 4.67, 0.69, 3.69, 0.22 |
| TextBox | Total_FY |  | TOTAL_NUMBER_OF_FY |  |  | 1.79, 1.12, 0.50, 0.00 |
| CommandButton | Open Agreement Lots Form | Click to View or Create a New Agreement Lot |  |  | Click | 7.56, 0.04, 1.38, 0.35 |
| ComboBox | CLIENT_NAME |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Historical)") AS name FROM NMIS_ASSOCIATES ORDER BY [ASSOCIATE_NAME] & IIf([historical]," (Historical)"); | AfterUpdate, DblClick, Enter, Exit | 1.08, 0.24, 2.66, 0.22 |
| ComboBox | CATEGORY_CODE | Category | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES;  |  | 4.49, 1.15, 2.34, 0.20 |
| Label | Label39 | Source Lot ID |  |  |  | 0.05, 0.49, 1.46, 0.21 |
| ComboBox | Contact_CN | Contact | CONTACT_CN | SELECT NMIS_CONTACTS.CN, IIf(Not IsNull([LAST_NAME]),[LAST_NAME] & IIf(Not IsNull([FIRST_NAME]),", " & [FIRST_NAME],""),"") & IIf([historical]," (Hist)") AS Name, Contact_Phone_Number_Primary.PHONE_NUMBER FROM (Contact_Phone_Number_Primary RIGHT JOIN NMIS_CONTACTS ON Contact_Phone_Number_Primary.CONTACT_CN = NMIS_CONTACTS.CN) LEFT JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((Left$(Nz([LINK_ASSOCIATE],"      "),6)) Like Left$([Forms]![NMIS_AGREEMENTS]![CLIENT_ASSOCIATE],6)) AND ((NMIS_CONTACTS.HISTORICAL) Like IIf(Not ([NMIS_CONTACTS].[HISTORICAL])=IsNull([Forms]![NMIS_AGREEMENTS]![Contact_CN]),"*",False))) OR (((NMIS_CONTACTS.FIRST_NAME)="no") AND ((NMIS_CONTACTS.LAST_NAME)="contact")) GROUP BY NMIS_CONTACTS.CN, IIf(Not IsNull([LAST_NAME]),[LAST_NAME] & IIf(Not IsNull([FIRST_NAME]),", " & [FIRST_NAME],""),"") & IIf([historical]," (Hist)"), Contact_Phone_Number_Primary.PHONE_NUMBER ORDER BY IIf(Not IsNull([LAST_NAME]),[LAST_NAME] & IIf(Not IsNull([FIRST_NAME]),", " & [FIRST_NAME],""),"") & IIf([historical]," (Hist)"); | DblClick, Enter, GotFocus | 3.77, 0.23, 2.29, 0.23 |
| TextBox | ORIG_AMOUNT_REQUESTED | Orig Req | ORIG_AMOUNT_REQUESTED |  | DblClick, Enter, Exit | 8.38, 1.14, 0.66, 0.21 |
| TextBox | NOTE | Note: | NOTE |  |  | 0.58, 1.42, 8.29, 0.21 |
| TextBox | ASSOCIATE_backup |  |  |  |  | 0.38, 0.04, 0.00, 0.00 |
| TextBox | Contact_CN_Backup |  |  |  |  | 3.98, 0.04, 0.00, 0.00 |

## Code-behind (VBA)

```vb
Option Explicit

Private Sub refresh_Click()
On Error GoTo Err_refresh_Click

    DoCmd.DoMenuItem acFormBar, acRecordsMenu, 5, , acMenuVer70

Exit_refresh_Click:
    Exit Sub

Err_refresh_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_refresh_Click
    
End Sub

Private Sub Agreement_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![Agreement_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
    
End Sub

Private Sub Agreement_Lookup_Enter()

    Agreement_Lookup.Requery
    
End Sub

Private Sub AGREEMENT_LOT_CN_DblClick(Cancel As Integer)
On Error GoTo Err_AGREEMENT_LOT_CN_DblClick

    [AGREEMENT_LOT_CN].Locked = False
    MsgBox "AGREEMENT LOT is now unlocked for editing"
    
Exit_AGREEMENT_LOT_CN_DblClick:
    Exit Sub

Err_AGREEMENT_LOT_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_AGREEMENT_LOT_CN_DblClick
    
End Sub

Private Sub AGREEMENT_LOT_CN_Enter()

    If Not IsNull(AGREEMENT_LOT_CN) Then
        AGREEMENT_LOT_CN.Locked = True
    Else
        AGREEMENT_LOT_CN.Locked = False
    End If
    
End Sub

Private Sub Agreement_Lot_CN_Exit(Cancel As Integer)
    
    [AGREEMENT_LOT_CN].Locked = True
    
End Sub

Private Sub AMOUNT_REQUESTED_DblClick(Cancel As Integer)

    AMOUNT_REQUESTED.Locked = False
    
End Sub

Private Sub AMOUNT_REQUESTED_Enter()

    If AMOUNT_REQUESTED > 0 Then
        AMOUNT_REQUESTED.Locked = True
    Else
        AMOUNT_REQUESTED.Locked = False
    End If
    
End Sub

Private Sub AMOUNT_REQUESTED_Exit(Cancel As Integer)

    If Not IsNull(AMOUNT_REQUESTED) Then
        If IsNull(ORIG_AMOUNT_REQUESTED) Then
            ORIG_AMOUNT_REQUESTED = AMOUNT_REQUESTED
        End If
    Else
        AMOUNT_REQUESTED.Locked = True
    End If
    
End Sub

Private Sub AMOUNT_REQUESTED_LostFocus()

    If Not IsNull(AMOUNT_REQUESTED) Then
        If IsNull(ORIG_AMOUNT_REQUESTED) Then
            ORIG_AMOUNT_REQUESTED = AMOUNT_REQUESTED
        End If
    End If
    
End Sub

Private Sub Associate_AfterUpdate()
    
    Dim Response As String
    
    If Not IsNull(ASSOCIATE_backup) And Associate <> ASSOCIATE_backup Then
        Response = MsgBox("Are you Sure you Want to Change the Client Code?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [Associate] = ASSOCIATE_backup
        End If
    End If
    
End Sub

Private Sub ASSOCIATE_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String
    stDocName = "NMIS_Associates"

    If IsNull(Associate) Then
        DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        'DoCmd.OpenForm "NMIS_ASSOCIATES", , , "[ASSOCIATE] = '" & Forms![NMIS_AGREEMENTS]![Associate] & "'"
        'DoCmd.GoToControl "ASSOCIATE"
        'Forms![NMIS_ASSOCIATES]![ASSOCIATE_Lookup].Visible = False
        'Forms![NMIS_ASSOCIATES]![Associate_lookup_Label].Visible = False
        'Forms![NMIS_ASSOCIATES]![ASSOCIATE_Lookup_by_Name].Visible = False
        'Forms![NMIS_ASSOCIATES]!Unfilter.Visible = True
    Else
        DoCmd.OpenForm "NMIS_ASSOCIATES", , , "[ASSOCIATE] = '" & Forms![NMIS_AGREEMENTS]![Associate] & "'"
        DoCmd.GoToControl "ASSOCIATE"
        Forms![NMIS_Associates]![ASSOCIATE_Lookup].Visible = False
        Forms![NMIS_Associates]![Associate_lookup_Label].Visible = False
        Forms![NMIS_Associates]![ASSOCIATE_Lookup_by_Name].Visible = False
        Forms![NMIS_Associates]!Unfilter.Visible = True
        Forms![NMIS_Associates]!LikeAssociate.Visible = False
    End If
         
         
End Sub

Private Sub ASSOCIATE_Enter()

    If Not IsNull(Associate) Then
        'Associate.Locked = True
        ASSOCIATE_backup = Associate
        'Associate.Requery
    'Else
        'ASSOCIATE_backup = Null
        'Associate.Locked = False
    End If
    
End Sub

Private Sub ASSOCIATE_Exit(Cancel As Integer)
    
    LastAgreementCN = CN
    
    If Not IsNull(Associate) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
    
End Sub

Private Sub BEGIN_FY_Exit(Cancel As Integer)

    If Not IsNull(END_FY) Then
        '[END_FY] = [BEGIN_FY] + [Total_FY]
    End If
    
End Sub

Private Sub Breeding_Subunit_Lookup_AfterUpdate()

    [SOURCE_CODE].Requery

End Sub

Private Sub Breeding_Subunit_Lookup_DblClick(Cancel As Integer)

    Breeding_Subunit_Lookup = Null
    [SOURCE_CODE].Requery
    
End Sub

Private Sub Breeding_Zone_Lookup_AfterUpdate()

    [SOURCE_CODE].Requery

End Sub

Private Sub Breeding_Zone_Lookup_DblClick(Cancel As Integer)

    Breeding_Zone_Lookup = Null
    [SOURCE_CODE].Requery
    
End Sub

Private Sub Clear_Lookups_Click()
On Error GoTo Err_Clear_Lookups_Click

    Client_Lookup = Null
    SPECIES_GROUP = Null
    Species_Lookup = Null
    Seed_Zone_Lookup = Null
    Breeding_Zone_Lookup = Null
    Breeding_Subunit_Lookup = Null
    Elev_Lookup = Null
    Tree_No_Lookup = Null
    [SOURCE_CODE].Requery

Exit_Clear_Lookups_Click:
    Exit Sub

Err_Clear_Lookups_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Clear_Lookups_Click
    
End Sub

Private Sub Client_Lookup_AfterUpdate()

    [SOURCE_CODE].Requery

End Sub

Private Sub Client_Lookup_DblClick(Cancel As Integer)

    Client_Lookup = Null
    [SOURCE_CODE].Requery
    
End Sub

Private Sub CLIENT_NAME_AfterUpdate()
    
   Dim Response As String
   
    If Not IsNull(ASSOCIATE_backup) And Associate <> ASSOCIATE_backup Then
        Response = MsgBox("Are you Sure you Want to Change the Client Name?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [CLIENT_NAME] = ASSOCIATE_backup
        End If
    End If
End Sub

Private Sub CLIENT_NAME_DblClick(Cancel As Integer)


    Dim stDocName As String
    Dim stLinkCriteria As String
    stDocName = "NMIS_Associates"

    If IsNull(Associate) Then
        DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        'DoCmd.OpenForm "NMIS_ASSOCIATES", , , "[ASSOCIATE] = '" & Forms![NMIS_AGREEMENTS]![Associate] & "'"
        'DoCmd.GoToControl "ASSOCIATE"
        'Forms![NMIS_ASSOCIATES]![ASSOCIATE_Lookup].Visible = False
        'Forms![NMIS_ASSOCIATES]![Associate_lookup_Label].Visible = False
        'Forms![NMIS_ASSOCIATES]![ASSOCIATE_Lookup_by_Name].Visible = False
        'Forms![NMIS_ASSOCIATES]!Unfilter.Visible = True
    Else
        DoCmd.OpenForm "NMIS_ASSOCIATES", , , "[ASSOCIATE] = '" & Forms![NMIS_AGREEMENTS]![Associate] & "'"
        DoCmd.GoToControl "ASSOCIATE"
        Forms![NMIS_Associates]![ASSOCIATE_Lookup].Visible = False
        Forms![NMIS_Associates]![Associate_lookup_Label].Visible = False
        Forms![NMIS_Associates]![ASSOCIATE_Lookup_by_Name].Visible = False
        Forms![NMIS_Associates]!Unfilter.Visible = True
    End If
'*
    'If IsNull(CLIENT_NAME) Then
        'CLIENT_NAME.Locked = False
        'DoCmd.OpenForm "NMIS_ASSOCIATES", , , "[ASSOCIATE] = '" & Forms![NMIS_AGREEMENTS]![CLIENT_NAME] & "'"
        'DoCmd.GoToControl "ASSOCIATE"
        'Forms![NMIS_Associates]![ASSOCIATE_Lookup].Visible = False
        'Forms![NMIS_Associates]![Associate_lookup_Label].Visible = False
        'Forms![NMIS_Associates]![ASSOCIATE_Lookup_by_Name].Visible = False
        'Forms![NMIS_Associates]!Unfilter.Visible = True
    'Else
        CLIENT_NAME.Locked = False
    'End If
End Sub

Private Sub CLIENT_NAME_Enter()
    
    'If Not IsNull(CLIENT_NAME) Then
        'CLIENT_NAME.Locked = True
        ASSOCIATE_backup = CLIENT_NAME
        'CLIENT_NAME.Requery
    'Else
        'CLIENT_NAME.Locked = False
    'End If
    
End Sub

Private Sub CLIENT_NAME_Exit(Cancel As Integer)
    
    LastAgreementCN = CN
    
    If Not IsNull(CLIENT_NAME) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
    
End Sub

Private Sub CONTACT_CN_AfterUpdate()
    Dim Response As String
    
    If Not IsNull(Contact_CN_Backup) Then
        Response = MsgBox("Are you Sure you Want to Change the Contact?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [CONTACT_CN] = Contact_CN_Backup
        End If
    End If
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)
    
    'DoCmd.OpenForm "NMIS_CONTACTS", , , , acFormAdd
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    
    If IsNull(CONTACT_CN) Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , "([CN]=" & "'" & [CONTACT_CN] & "')", acFormEdit
          DoCmd.GoToControl "Last_Name"
          Forms![NMIS_CONTACTS]![CONTACT_Lookup].Visible = False
          Forms![NMIS_CONTACTS]!Find_Label.Visible = False
          Forms![NMIS_CONTACTS]!Home_Associate_Filter.Visible = False
          Forms![NMIS_CONTACTS]!Home_Associate_Filter_Label.Visible = False
          Forms![NMIS_CONTACTS]!Hide_99s.Visible = False
          Forms![NMIS_CONTACTS]!Hide_Historical.Visible = False
          Forms![NMIS_CONTACTS]!Unfilter.Visible = True
    End If
    
End Sub

Private Sub Contact_CN_Enter()

    Contact_CN_Backup = CONTACT_CN
    Associate.Requery
    CONTACT_CN.Requery
    
End Sub

Private Sub Contact_CN_GotFocus()

    CONTACT_CN.Requery
    
End Sub

Private Sub Elev_Lookup_AfterUpdate()

    [SOURCE_CODE].Requery

End Sub

Private Sub Elev_Lookup_DblClick(Cancel As Integer)

    Elev_Lookup = Null
    [SOURCE_CODE].Requery
    
End Sub

Private Sub Filter_For_Client_DblClick(Cancel As Integer)

    Filter_For_Client = "*"
    
End Sub

Private Sub Filter_For_Fy_DblClick(Cancel As Integer)

    Filter_For_Fy = "*"
    
End Sub

Private Sub Filter_For_Product_Enter()

    Filter_for_Product_Type.Requery
    Filter_For_Product.Requery
    
End Sub

Private Sub Filter_For_Product_Exit(Cancel As Integer)

    If IsNull(Filter_For_Product) Then
        Filter_For_Product = "*"
    End If
    SPECIES_PRODUCT_CN.Requery
    
End Sub

Private Sub Filter_for_Product_Type_Enter()

    Filter_For_Product = "*"
    Filter_For_Product.Requery
    
End Sub

Private Sub Form_BeforeUpdate(Cancel As Integer)
    
    MODIFIED_BY = CurrentUserName()
    MODIFIED_DATE = Date
    
End Sub

Private Sub Form_Current()

    If [source_id] > "" Then
        [SPECIES_PRODUCT_CN].Requery
    End If
 
End Sub

Private Sub Form_Open(Cancel As Integer)

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "061019" Then
        Open_Bend_Lots_Form.Visible = True
    Else
        Open_Bend_Lots_Form.Visible = False
    End If
    'Forms![NMIS_AGREEMENTS]![Like_Like_Label].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_For_Fy].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_For_End_Fy_Label].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_For_End_Fy].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_For_Fy_Label].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_for_Species].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_for_Species_Label].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_For_Client].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_For_Client_Label].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_for_Product_Type].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_for_Product_Type_Label].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_For_Product].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_For_Product_Label].Visible = True
    Forms![NMIS_AGREEMENTS]![Agreement_Lookup].Visible = True
    Forms![NMIS_AGREEMENTS]![Agreement_Lookup_Label].Visible = True
    Forms![NMIS_AGREEMENTS]![Open Agreement Lots Form].Visible = True
    DoCmd.GoToRecord , , acLast
    
End Sub

Private Sub Like_Agreement_Lots_AfterUpdate()

    Filter_For_Fy = "*"
    'Agreement_Lookup.Requery
    DoCmd.Requery
    
End Sub

Private Sub Like_Agreement_Lots_DblClick(Cancel As Integer)
    
    Like_Agreement_Lots = "*"
    DoCmd.Requery
    
End Sub

Private Sub Like_Species_Prod_Desc_DblClick(Cancel As Integer)

    Like_Species_Prod_Desc = "*"
    
End Sub

Private Sub Open_Agreement_Lots_Form_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String
    Dim rs As Object
    
    LastAgreementCN = CN

    If IsNull(AMOUNT_REQUESTED) Then
        MsgBox "Must Enter Amount Requested", vbCritical
        DoCmd.GoToControl "amount_Requested"
    Else
    If (Not IsNull([AGREEMENT_LOT_CN]) Or [AGREEMENT_LOT_CN] = "") Then
        DoCmd.Requery
        Set rs = Me.Recordset.Clone
        rs.FindFirst "[CN] = '" & Me![LastAgreementCN] & "'"
        Me.Bookmark = rs.Bookmark

        'DoCmd.FindRecord
        '"[CN] = [LastAgreementCN]"
        DoCmd.OpenForm "NMIS_AGREEMENT_LOTS", acNormal, , _
            "[CN] = Forms![NMIS_AGREEMENTS]![AGREEMENT_LOT_CN]", , acNormal
        Forms![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Find_Lot].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Sort_By_Entry_Order].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Source_Lots].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Wildcard_Tips].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots Label].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![Open_NMIS_Agreements Form].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Green_Background_Box].Visible = False
    Else
        If (Not IsNull(source_id) And Not IsNull(Species_Product)) Then
            DoCmd.OpenForm "NMIS_AGREEMENT_LOTS_NEW", acNormal, "", "", acAdd
        Else
            MsgBox "Source Lot AND Species Product must be entered"
        End If
    End If
    End If
End Sub

Private Sub Open_Products_Form_Click()
On Error GoTo Err_Open_Products_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SPECIES_PRODUCTS Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Products_Form_Click:
    Exit Sub

Err_Open_Products_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Products_Form_Click
    
End Sub

Private Sub Open_Source_Lot_Form_Click()
On Error GoTo Err_Open_Source_Lot_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOTS_INPUT"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Source_Lot_Form_Click:
    Exit Sub

Err_Open_Source_Lot_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Source_Lot_Form_Click
    
End Sub

Private Sub ORIG_AMOUNT_REQUESTED_DblClick(Cancel As Integer)

        ORIG_AMOUNT_REQUESTED.Locked = False

End Sub

Private Sub ORIG_AMOUNT_REQUESTED_Enter()

    If Not IsNull(ORIG_AMOUNT_REQUESTED) Then
        ORIG_AMOUNT_REQUESTED.Locked = True
    Else
        ORIG_AMOUNT_REQUESTED.Locked = False
    End If
    
End Sub

Private Sub ORIG_AMOUNT_REQUESTED_Exit(Cancel As Integer)

        ORIG_AMOUNT_REQUESTED.Locked = True
        
End Sub

Private Sub Refresh_and_Close_Click()
On Error GoTo Err_Refresh_and_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Refresh_and_Close_Click:
    Exit Sub

Err_Refresh_and_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_and_Close_Click
    
End Sub

Private Sub Seed_Zone_Lookup_AfterUpdate()

    [SOURCE_CODE].Requery

End Sub

Private Sub Seed_Zone_Lookup_DblClick(Cancel As Integer)
    
    Seed_Zone_Lookup = Null
    [SOURCE_CODE].Requery
    
End Sub

Private Sub source_id_Change()

    
End Sub

Private Sub source_id_DblClick(Cancel As Integer)

    If Not IsNull(source_id) Then
        source_id.Locked = False
    Else
        DoCmd.OpenForm "NMIS_SOURCE_LOTS_INPUT", acNormal ', , , acFormAdd
        DoCmd.GoToControl "ID"
        Forms![NMIS_SOURCE_LOTS_INPUT]![Source_Lot_Lookup_Label].Visible = False
        Forms![NMIS_SOURCE_LOTS_INPUT]![Source_Lot_Lookup].Visible = False
    End If

End Sub

Private Sub source_id_Enter()

    If IsNull(source_id) Then
        source_id.Locked = False
    Else
        source_id.Locked = True
    End If
    
End Sub

Private Sub source_id_Exit(Cancel As Integer)
    
    If [source_id] > "" Then
        [SPECIES_PRODUCT_CN].Requery
    End If

End Sub

Private Sub source_id_NotInList(NewData As String, Response As Integer)
On Error GoTo Err_source_id_NotInList

'Lot not currently in Source Database, Give option to enter as new lot."
  
    [source_id].Undo
    Response = MsgBox("Lot Not Currently in Database. Do you want to Enter this Source Lot?", vbYesNo)
    
    If Response = vbYes Then
        'MsgBox "Click on the Source Lot ID Label above the Source Lot ID Entry Field After adding new lots"
        DoCmd.OpenForm "NMIS_SOURCE_LOTS_INPUT", acNormal ', , , acFormAdd
        DoCmd.GoToControl "ID"
        'Forms![NMIS_SOURCE_LOTS_INPUT]![Source_Lot_Lookup_Label].Visible = False
        'Forms![NMIS_SOURCE_LOTS_INPUT]![Source_Lot_Lookup].Visible = False
        
    End If
    
Exit_source_id_NotInList:
    Exit Sub

Err_source_id_NotInList:
    Resume Exit_source_id_NotInList
    
End Sub
Private Sub Requery_Click()
On Error GoTo Err_Requery_Click

    [source_id].Requery
    MsgBox "Source Lots Updated. You may now use any lots you added."
    
Exit_Requery_Click:
    Exit Sub

Err_Requery_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Requery_Click
    
End Sub

Private Sub Species_Group_AfterUpdate()

    [SOURCE_CODE].Requery
    Species_Lookup.Requery

End Sub

Private Sub Species_Group_DblClick(Cancel As Integer)

    SPECIES_GROUP = Null
    [SOURCE_CODE].Requery
    
End Sub

Private Sub Species_Lookup_AfterUpdate()

    [SOURCE_CODE].Requery

End Sub

Private Sub Species_Lookup_DblClick(Cancel As Integer)
    
    Species_Lookup = Null
    [SOURCE_CODE].Requery
    
End Sub

Private Sub SPECIES_PRODUCT_CN_Change()

    [END_FY] = [BEGIN_FY] + [Total_FY]
    
End Sub
Private Sub Open_Bend_Lots_Form_Click()
On Error GoTo Err_Open_Bend_Lots_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOTS_Bend"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Bend_Lots_Form_Click:
    Exit Sub

Err_Open_Bend_Lots_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Bend_Lots_Form_Click
    
End Sub

Private Sub SPECIES_PRODUCT_CN_Enter()

    SPECIES_PRODUCT_CN.Requery
    
End Sub

Private Sub SPECIES_PRODUCT_CN_Exit(Cancel As Integer)

    [END_FY] = [BEGIN_FY] + [Total_FY]
  
End Sub
Private Sub Agreements_for_Source_Click()
On Error GoTo Err_Agreements_for_Source_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Agreement_for_Source_Lot"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Agreements_for_Source_Click:
    Exit Sub

Err_Agreements_for_Source_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Agreements_for_Source_Click
    
End Sub

Private Sub Duplicate_Agreement_Click()
On Error GoTo Err_Duplicate_Agreement_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 2, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 5, , acMenuVer70 'Paste Append
    AGREEMENT_LOT_CN = Null
    CN = Null
    SPECIES_PRODUCT_CN = Null
    DoCmd.GoToControl "associate"
    DoCmd.GoToControl "client_name"

Exit_Duplicate_Agreement_Click:
    Exit Sub

Err_Duplicate_Agreement_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Duplicate_Agreement_Click
    
End Sub

Private Sub Tree_No_Lookup_AfterUpdate()

    [SOURCE_CODE].Requery

End Sub

Private Sub Zone_Lookup_AfterUpdate()

    [SOURCE_CODE].Requery

End Sub

Private Sub Tree_No_Lookup_DblClick(Cancel As Integer)

    Tree_No_Lookup = Null
    [SOURCE_CODE].Requery
    
End Sub

Private Sub Wildcard_Tip_Click()
On Error GoTo Err_Wildcard_Tip_Click

    Dim stDocName As String

    MsgBox "Wildcards" & Chr(13) & Chr(10) & Chr(10) & _
        "* Matches any number of characters. It can be used as the first or last character in the character string. wh* finds what, white, and why" & Chr(13) & Chr(10) & Chr(10) & _
        "? Matches any single alphabetic character. B?ll finds ball, bell, and bill" & Chr(13) & Chr(10) & Chr(10) & _
        "[ ] Matches any single character within the brackets. B[ae]ll finds ball and bell but not bill" & Chr(13) & Chr(10) & Chr(10) & _
        "! Matches any character not in the brackets. b[!ae]ll finds bill and bull but not ball or bell" & Chr(13) & Chr(10) & Chr(10) & _
        "- Matches any one of a range of characters. You must specify the range in ascending order (A to Z, not Z to A). b[a-c]d finds bad, bbd, and bcd" & Chr(13) & Chr(10) & Chr(10) & _
        "# Matches any single numeric character. 1#3 finds 103, 113, 123", vbInformation

Exit_Wildcard_Tip_Click:
    Exit Sub

Err_Wildcard_Tip_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Wildcard_Tip_Click
    
End Sub
```
