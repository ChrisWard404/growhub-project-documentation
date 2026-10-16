# Report: Seed_Bank_Work_Order_by_ID_Range

**Backend tables referenced:** `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Report.Seed_Bank_Work_Order_by_ID_range subreport`, `Report.NMIS_ID_LOCATIONS subreport1`  
**Opened from (VBA):** `Form_Source_Material_Work_Order_By_Lot_ID_Range`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | NMIS_AGREEMENT_LOTS_ID_Label | Agreement Lot ID |  |  |  | 6.71, 0.96, 1.25, 0.17 |
| Label | BEGIN_FY_Label | Grow Period: |  |  |  | 0.70, 1.16, 0.92, 0.17 |
| Label | NMIS_SOURCE_LOTS_ID_Label | Source Lot ID |  |  |  | 0.40, 2.11, 1.27, 0.17 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 2.71, 2.11, 0.51, 0.19 |
| Label | SOURCE_REQUIRED_Label | Source Required |  |  |  | 6.26, 1.95, 0.66, 0.34 |
| Line | Line19 |  |  |  |  | 0.38, 2.31, 7.58, 0.00 |
| TextBox | NMIS_AGREEMENT_LOTS_ID |  | =IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061019",IIf([ID]=[ID_ORIGINAL],[ID],[ID] & "/" & [ID_ORIGINAL]),[ID]) |  |  | 3.12, 1.14, 4.83, 0.42 |
| Label | Label23 | Stored At Associate |  |  |  | 6.96, 1.95, 0.98, 0.35 |
| TextBox | SPECIES_PRODUCT_CN |  | SPECIES_PRODUCT_CN |  |  | 4.12, 0.95, 0.00, 0.00 |
| Line | Line114 |  |  |  |  | 0.38, 0.94, 7.54, 0.00 |
| TextBox | Text118 |  | =[BEGIN_FY] & [BEGIN_SEASON_CODE] & " - " & [END_FY] & [END_SEASON_CODE] |  |  | 1.69, 1.14, 1.42, 0.20 |
| ComboBox | SPECIES_PRODUCT_DESC | Species Product: | SPECIES_PRODUCT_CN | SELECT [Species_Products_with_SizeSpecString].[CN], [Species_Products_with_SizeSpecString].[Species_Products_String] FROM Species_Products_with_SizeSpecString;  |  | 1.69, 1.80, 3.23, 0.20 |
| ComboBox | Text120 | Product: | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [Product_String].[Product_String] FROM Product_String INNER JOIN NMIS_SPECIES_PRODUCTS ON [Product_String].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN];  |  | 1.69, 1.56, 3.23, 0.20 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.72, 0.16, 2.81, 0.19 |
| TextBox | Text91 | Seed Bank Withdrawal Request | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.50, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.50, 0.00, 3.24, 0.16 |
| TextBox | SOWING_GROUP |  | SOWING_GROUP |  |  | 7.21, 0.04, 0.72, 0.60 |
| TextBox | CHECK_SOURCE_ID |  | =IIf([SOURCE_LOT_ID]<>[Seed_Bank_Work_Order subreport].[Report]![SOURCE_ID],"**Check Source Lot**",Null) |  |  | 0.40, 0.67, 2.65, 0.27 |
| TextBox | Text129 |  | =IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061019",IIf([ID]=[ID_ORIGINAL],[ID],[ID] & "/" & [ID_ORIGINAL]),[ID]) |  |  | 0.00, 0.00, 2.50, 0.42 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NMIS_SOURCE_LOTS_ID |  | ID_SOURCE2 |  |  | 0.39, 0.04, 5.57, 0.28 |
| TextBox | SOURCE_REQUIRED |  | SOURCE_REQUIRED |  |  | 5.97, 0.04, 0.96, 0.28 |
| TextBox | EST_CONTAINERS_REQUIRED |  | EST_CONTAINERS_REQUIRED |  |  | 4.02, 2.21, 0.48, 0.20 |
| Label | EST_CONTAINERS_REQUIRED_Label | Est. Containers Required: |  |  |  | 2.44, 2.23, 1.56, 0.17 |
| Label | TOTAL_REQUEST_Label | Total Request: |  |  |  | 0.41, 2.23, 1.04, 0.17 |
| TextBox | TOTAL_REQUEST |  | TOTAL_REQUEST |  |  | 1.49, 2.21, 0.54, 0.20 |
| Subform | Seed_Bank_Work_Order subreport |  | Report.Seed_Bank_Work_Order_by_ID_range subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 0.43, 2.44, 7.52, 1.56 |
| Label | Label107 | @ |  |  |  | 6.72, 2.21, 0.17, 0.17 |
| TextBox | Seed_Per_Cell |  | Seed_Per_Cell |  |  | 6.90, 2.21, 0.44, 0.20 |
| Label | Label109 | seeds/cell |  |  |  | 7.21, 2.48, 0.63, 0.17 |
| TextBox | UNIT_CODE |  | UNIT_DESC |  |  | 4.57, 2.21, 2.06, 0.21 |
| Label | Label117 | seed/cell |  |  |  | 7.36, 2.23, 0.47, 0.17 |
| TextBox | STORED_AT_ASSOCIATE |  | STORED_AT_ASSOCIATE |  |  | 6.96, 0.04, 1.01, 0.28 |
| Subform | NMIS_ID_LOCATIONS subreport1 |  | Report.NMIS_ID_LOCATIONS subreport1 (master: SOURCE_LOT_CN → child: SOURCE_LOT_CN) |  |  | 1.35, 0.38, 2.42, 0.88 |
| TextBox | Sum Of ACTIVITY_UNITS | Balance | Sum Of ACTIVITY_UNITS |  |  | 0.42, 0.60, 0.83, 0.25 |
| TextBox | Foreign_Sow |  | Foreign_Sow |  |  | 4.04, 0.50, 3.88, 1.46 |
| TextBox | Last Test Date | Test Date: | Test_Date |  |  | 1.17, 0.88, 0.88, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line24 |  |  |  |  | 0.43, 0.04, 7.52, 0.00 |
| Label | Label25 | Nursery ID Comments |  |  |  | 0.44, 0.14, 1.58, 0.21 |
| TextBox | Text111 |  | =Now() |  |  | 0.45, 3.57, 2.32, 0.00 |
| Line | Line113 |  |  |  |  | 0.43, 3.48, 7.52, 0.00 |
| TextBox | NOTE |  | NOTE |  |  | 0.46, 0.42, 7.38, 1.79 |
| TextBox | Text123 |  | =IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061019",IIf([ID]=[ID_ORIGINAL],[ID],[ID] & "/" & [ID_ORIGINAL]),[ID]) |  |  | 3.08, 3.50, 4.83, 0.42 |
| Rectangle | Box75 |  |  |  |  | 0.26, 2.36, 7.70, 0.97 |
| TextBox | Request | Request | TOTAL_REQUEST |  |  | 0.38, 3.10, 0.61, 0.20 |
| TextBox | GROSS_SOURCE_PER_UNIT | Gross Source/Unit | GROSS_SOURCE_PER_UNIT |  |  | 4.77, 3.11, 0.83, 0.20 |
| TextBox | SOURCE_GERM_PCT | Germ % | SOURCE_GERM_PCT |  |  | 5.73, 3.11, 0.29, 0.20 |
| TextBox | SOURCE_PURITY_PCT | Purity % | SOURCE_PURITY_PCT |  |  | 6.20, 3.11, 0.28, 0.20 |
| TextBox | HARVEST_FACTOR_1 |  | HARVEST_FACTOR_1 |  |  | 1.56, 3.10, 0.47, 0.20 |
| TextBox | HARVEST_FACTOR_2 |  | HARVEST_FACTOR_2 |  |  | 2.16, 3.10, 0.47, 0.20 |
| TextBox | HARVEST_FACTOR_3 |  | HARVEST_FACTOR_3 |  |  | 2.75, 3.10, 0.47, 0.20 |
| TextBox | HARVEST_FACTOR_4 |  | HARVEST_FACTOR_4 |  |  | 3.34, 3.10, 0.47, 0.20 |
| TextBox | Text55 | Source Required | SOURCE_REQUIRED |  |  | 7.34, 3.11, 0.57, 0.20 |
| Label | Label61 | x |  |  |  | 5.61, 3.10, 0.12, 0.20 |
| Label | Label62 | x |  |  |  | 6.04, 3.10, 0.12, 0.20 |
| Label | Label63 | X 1000/ ( |  |  |  | 0.98, 3.10, 0.58, 0.20 |
| Label | Label64 | x |  |  |  | 2.03, 3.10, 0.12, 0.20 |
| Label | Label65 | x |  |  |  | 2.62, 3.10, 0.12, 0.20 |
| Label | Label66 | x |  |  |  | 3.22, 3.10, 0.12, 0.20 |
| Label | Label67 | ) = |  |  |  | 6.50, 3.10, 0.22, 0.20 |
| Label | Label68 | % |  |  |  | 1.72, 2.77, 0.16, 0.19 |
| Label | Label70 | % |  |  |  | 2.31, 2.77, 0.16, 0.19 |
| Label | Label71 | % |  |  |  | 2.90, 2.77, 0.16, 0.19 |
| Label | Label72 | % |  |  |  | 3.51, 2.77, 0.17, 0.19 |
| TextBox | HARVEST_ASF_ADJUSTMENT | Harvest ASF % | HARVEST_ASF_ADJUSTMENT |  |  | 3.95, 3.11, 0.53, 0.20 |
| Label | Label74 | x |  |  |  | 3.83, 3.10, 0.12, 0.20 |
| Label | Label76 | Calulations |  |  |  | 0.29, 2.38, 0.95, 0.23 |
| CheckBox | SOURCE_STRATIFIED | Source Stratified: | SOURCE_STRATIFIED |  |  | 3.40, 2.45, 0.00, 0.00 |
| Label | Label104 | M |  |  |  | 0.59, 2.79, 0.16, 0.19 |
| CheckBox | CHECK_STRAT | Borderline Strat: | CHECK_STRAT |  |  | 5.07, 2.45, 0.00, 0.00 |
| TextBox | Source_Calc | Source Calc | SOURCE_CALC |  |  | 6.75, 3.11, 0.57, 0.20 |
| Label | Label126 | ( |  |  |  | 0.29, 3.10, 0.09, 0.20 |
| Label | Label127 | )) * ( |  |  |  | 4.47, 3.11, 0.32, 0.19 |
| TextBox | HARVEST_1_FACTOR_CODE |  | =IIf(IsNull([HF1_CODE]),"HF1",[HF1_CODE]) |  |  | 1.56, 2.60, 0.44, 0.19 |
| TextBox | HARVEST_2_FACTOR_CODE |  | =IIf(IsNull([HF2_CODE]),"HF2",[HF2_CODE]) |  |  | 2.14, 2.60, 0.44, 0.19 |
| TextBox | HARVEST_3_FACTOR_CODE |  | =IIf(IsNull([HF3_CODE]),"HF3",[HF3_CODE]) |  |  | 2.72, 2.60, 0.44, 0.19 |
| TextBox | HARVEST_4_FACTOR_CODE |  | =IIf(IsNull([HF4_CODE]),"HF4",[HF4_CODE]) |  |  | 3.31, 2.60, 0.45, 0.19 |
| TextBox | HF1I |  | =IIf([HF1_FORMULA_OP]="/","10000/",Null) |  |  | 1.57, 2.94, 0.47, 0.20 |
| TextBox | HF2I |  | =IIf([HF2_FORMULA_OP]="/","10000/",Null) |  |  | 2.16, 2.94, 0.47, 0.20 |
| TextBox | HF3I |  | =IIf([HF3_FORMULA_OP]="/","10000/",Null) |  |  | 2.74, 2.94, 0.47, 0.20 |
| TextBox | HF4I |  | =IIf([HF4_FORMULA_OP]="/","10000/",Null) |  |  | 3.34, 2.94, 0.47, 0.20 |
