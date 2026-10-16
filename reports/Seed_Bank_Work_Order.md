# Report: Seed_Bank_Work_Order

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_SPECIES_PRODUCTS`, `NMIS_UNITS`  
**Subforms/subreports:** `Report.NMIS_ID_LOCATIONS subreport1`, `Report.Seed_Bank_Work_Order subreport`  
**Opened from (VBA):** `Form_NMIS_AGREEMENT_LOTS`, `Form_NMIS_AGREEMENT_LOTS2`, `Form_NMIS_AGREEMENT_LOTS_Review_Only`, `Form_NMIS_AGREEMENT_LOTS_old2`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.75, 0.16, 2.81, 0.19 |
| Label | Label110 | Seed Bank Withdrawal Request |  |  |  | 3.20, 0.57, 1.90, 0.17 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.53, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.53, 0.00, 3.24, 0.16 |
| TextBox | SOWING_GROUP |  | SOWING_GROUP |  |  | 7.17, 0.04, 0.72, 0.60 |
| TextBox | CHECK_SOURCE_ID |  | =IIf([NMIS_SOURCE_LOTS_ID]<>[Seed_Bank_Work_Order subreport].[Report]![SOURCE_ID],"**Check Source Lot**",Null) |  |  | 0.38, 0.85, 3.92, 0.27 |
| TextBox | NMIS_SOURCE_LOTS_ID |  | NMIS_SOURCE_LOTS_ID |  |  | 0.38, 0.67, 0.00, 0.00 |
| TextBox | Text142 |  | =IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061019",IIf([ID]=[ID_ORIGINAL],[ID],[ID] & "/" & [ID_ORIGINAL]),[ID]) |  |  | 0.00, 0.00, 4.00, 0.42 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | NMIS_AGREEMENT_LOTS_ID_Label | Agreement Lot ID |  |  |  | 6.67, 0.02, 1.29, 0.17 |
| Label | BEGIN_FY_Label | Grow Period: |  |  |  | 0.70, 0.33, 0.92, 0.17 |
| Label | NMIS_SOURCE_LOTS_ID_Label | Source Lot ID |  |  |  | 0.40, 1.28, 1.27, 0.17 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 3.54, 1.28, 0.51, 0.20 |
| Label | SOURCE_REQUIRED_Label | Source Required |  |  |  | 6.20, 1.12, 0.75, 0.34 |
| Line | Line19 |  |  |  |  | 0.38, 1.48, 7.58, 0.00 |
| TextBox | NMIS_AGREEMENT_LOTS_ID |  | =IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061019",IIf([ID]=[ID_ORIGINAL],[ID],[ID] & "/" & [ID_ORIGINAL]),[ID]) |  |  | 3.42, 0.22, 4.55, 0.42 |
| Label | Label23 | Stored At Associate |  |  |  | 6.96, 1.12, 0.98, 0.35 |
| TextBox | SPECIES_PRODUCT_CN |  | SPECIES_PRODUCT_CN |  |  | 4.12, 0.12, 0.00, 0.00 |
| Line | Line114 |  |  |  |  | 0.38, 0.01, 7.54, 0.00 |
| TextBox | Text118 |  | =[BEGIN_FY] & [BEGIN_SEASON_CODE] & " - " & [END_FY] & [END_SEASON_CODE] |  |  | 1.69, 0.32, 1.42, 0.20 |
| ComboBox | SPECIES_PRODUCT_DESC | Species Product: | SPECIES_PRODUCT_CN | SELECT Species_Products_with_SizeSpecString.CN, Species_Products_with_SizeSpecString.Species_Products_String FROM Species_Products_with_SizeSpecString;  |  | 1.69, 0.94, 3.23, 0.20 |
| ComboBox | Text120 | Product: | SPECIES_PRODUCT_CN | SELECT NMIS_SPECIES_PRODUCTS.CN, Product_String.Product_String FROM Product_String INNER JOIN NMIS_SPECIES_PRODUCTS ON Product_String.CN=NMIS_SPECIES_PRODUCTS.PRODUCT_CN;  |  | 1.69, 0.70, 3.23, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_ID_LOCATIONS subreport1 |  | Report.NMIS_ID_LOCATIONS subreport1 (master: SOURCE_LOT_CN → child: SOURCE_LOT_CN) |  |  | 1.54, 0.38, 2.42, 1.59 |
| Subform | Seed_Bank_Work_Order subreport |  | Report.Seed_Bank_Work_Order subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 0.46, 2.23, 7.50, 1.56 |
| TextBox | SOURCE_CODE |  | ID_SOURCE2B |  |  | 0.30, 0.04, 5.62, 0.28 |
| TextBox | SOURCE_REQUIRED |  | SOURCE_REQUIRED |  |  | 5.92, 0.04, 0.96, 0.28 |
| TextBox | EST_CONTAINERS_REQUIRED |  | =Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED |  |  | 3.89, 2.00, 0.48, 0.20 |
| Label | EST_CONTAINERS_REQUIRED_Label | Est. Containers Required: |  |  |  | 2.22, 2.02, 1.62, 0.20 |
| Label | TOTAL_REQUEST_Label | Total Request: |  |  |  | 0.50, 2.02, 1.04, 0.17 |
| TextBox | TOTAL_REQUEST |  | TOTAL_REQUEST |  |  | 1.59, 2.00, 0.54, 0.20 |
| Label | Label107 | @ |  |  |  | 6.71, 2.00, 0.17, 0.17 |
| TextBox | Seed_Per_Cell |  | Seed_Per_Cell |  |  | 6.90, 2.00, 0.44, 0.20 |
| Label | Label117 | seed/cell |  |  |  | 7.36, 2.02, 0.55, 0.17 |
| TextBox | STORED_AT_ASSOCIATE |  | STORED_AT_ASSOCIATE |  |  | 6.96, 0.04, 1.01, 0.28 |
| ComboBox | UNIT_CODE |  | =Forms!NMIS_AGREEMENT_LOTS![NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1].Form!BEGIN_CONTAINER | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC FROM NMIS_UNITS; |  | 4.42, 2.00, 2.21, 0.21 |
| TextBox | Sum Of ACTIVITY_UNITS | Balance | Sum Of ACTIVITY_UNITS |  |  | 0.31, 0.59, 0.83, 0.25 |
| TextBox | Foreign_Sow |  | Foreign_Sow |  |  | 4.00, 0.42, 3.88, 1.46 |
| TextBox | Last Test Date | Last Test Date: | Last Test Date |  |  | 0.34, 1.09, 0.88, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NOTE |  | NOTE |  |  | 0.46, 0.36, 7.33, 1.00 |
| Line | Line24 |  |  |  |  | 0.46, 0.03, 7.52, 0.00 |
| Label | Label25 | Nursery ID Comments |  |  |  | 0.47, 0.13, 1.58, 0.21 |
| TextBox | Text111 |  | =Now() |  |  | 0.45, 2.64, 2.32, 0.00 |
| Line | Line113 |  |  |  |  | 0.43, 2.56, 7.52, 0.00 |
| TextBox | Text123 |  | =IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061019",IIf([ID]=[ID_ORIGINAL],[ID],[ID] & "/" & [ID_ORIGINAL]),[ID]) |  |  | 3.92, 2.57, 4.00, 0.42 |
| Rectangle | Box75 |  |  |  |  | 0.29, 1.49, 7.70, 0.97 |
| TextBox | Request | Request | TOTAL_REQUEST |  |  | 0.41, 2.23, 0.61, 0.20 |
| TextBox | GROSS_SOURCE_PER_UNIT | Gross Source/Unit | GROSS_SOURCE_PER_UNIT |  |  | 4.80, 2.23, 0.83, 0.20 |
| TextBox | SOURCE_GERM_PCT | Germ % | SOURCE_GERM_PCT |  |  | 5.76, 2.23, 0.29, 0.20 |
| TextBox | SOURCE_PURITY_PCT | Purity % | SOURCE_PURITY_PCT |  |  | 6.23, 2.23, 0.28, 0.20 |
| TextBox | HARVEST_FACTOR_1 |  | HARVEST_FACTOR_1 |  |  | 1.59, 2.23, 0.47, 0.20 |
| TextBox | HARVEST_FACTOR_2 |  | HARVEST_FACTOR_2 |  |  | 2.19, 2.23, 0.47, 0.20 |
| TextBox | HARVEST_FACTOR_3 |  | HARVEST_FACTOR_3 |  |  | 2.78, 2.23, 0.47, 0.20 |
| TextBox | HARVEST_FACTOR_4 |  | THINNING_PROBABILITY_PCT |  |  | 3.38, 2.23, 0.47, 0.20 |
| TextBox | Text55 | Source Required | SOURCE_REQUIRED |  |  | 7.39, 2.23, 0.57, 0.20 |
| Label | Label61 | x |  |  |  | 5.64, 2.23, 0.12, 0.20 |
| Label | Label62 | x |  |  |  | 6.07, 2.23, 0.12, 0.20 |
| Label | Label63 | X 1000/ ( |  |  |  | 1.01, 2.23, 0.58, 0.20 |
| Label | Label64 | x |  |  |  | 2.06, 2.23, 0.12, 0.20 |
| Label | Label65 | x |  |  |  | 2.66, 2.23, 0.12, 0.20 |
| Label | Label66 | x |  |  |  | 3.25, 2.23, 0.12, 0.20 |
| Label | Label67 | ) = |  |  |  | 6.53, 2.23, 0.22, 0.20 |
| Label | Label68 | % |  |  |  | 1.75, 1.90, 0.16, 0.19 |
| Label | Label70 | % |  |  |  | 2.35, 1.90, 0.16, 0.19 |
| Label | Label71 | % |  |  |  | 2.93, 1.90, 0.16, 0.19 |
| Label | Label72 | % |  |  |  | 3.54, 1.90, 0.17, 0.19 |
| TextBox | HARVEST_ASF_ADJUSTMENT | Harvest ASF % | HARVEST_ASF_ADJUSTMENT |  |  | 3.99, 2.23, 0.53, 0.20 |
| Label | Label74 | x |  |  |  | 3.86, 2.23, 0.12, 0.20 |
| Label | Label76 | Calulations |  |  |  | 0.32, 1.50, 0.95, 0.23 |
| CheckBox | SOURCE_STRATIFIED | Source Stratified: | SOURCE_STRATIFIED |  |  | 3.43, 1.57, 0.00, 0.00 |
| Label | Label104 | M |  |  |  | 0.62, 1.92, 0.16, 0.19 |
| CheckBox | CHECK_STRAT | Borderline Strat: | CHECK_STRAT |  |  | 5.10, 1.57, 0.00, 0.00 |
| TextBox | Source_Calc | Source Calc | SOURCE_CALC |  |  | 6.78, 2.23, 0.57, 0.20 |
| Label | Label126 | ( |  |  |  | 0.32, 2.23, 0.09, 0.20 |
| Label | Label127 | )) * ( |  |  |  | 4.50, 2.24, 0.32, 0.19 |
| TextBox | HARVEST_1_FACTOR_CODE |  | =IIf(IsNull([HF1_CODE]),"HF1",[HF1_CODE]) |  |  | 1.59, 1.74, 0.44, 0.00 |
| TextBox | HARVEST_2_FACTOR_CODE |  | =IIf(IsNull([HF2_CODE]),"HF2",[HF2_CODE]) |  |  | 2.17, 1.74, 0.44, 0.00 |
| TextBox | HARVEST_3_FACTOR_CODE |  | =IIf(IsNull([HF3_CODE]),"HF3",[HF3_CODE]) |  |  | 2.75, 1.74, 0.44, 0.00 |
| TextBox | HARVEST_4_FACTOR_CODE |  | =IIf(IsNull([HF4_CODE]),"HF4",[HF4_CODE]) |  |  | 3.34, 1.74, 0.45, 0.00 |
| TextBox | HF1I |  | =IIf([HF1_FORMULA_OP]="/","10000/",Null) |  |  | 1.60, 2.06, 0.47, 0.20 |
| TextBox | HF2I |  | =IIf([HF2_FORMULA_OP]="/","10000/",Null) |  |  | 2.19, 2.06, 0.47, 0.20 |
| TextBox | HF3I |  | =IIf([HF3_FORMULA_OP]="/","10000/",Null) |  |  | 2.77, 2.06, 0.47, 0.20 |
| TextBox | HF4I |  | =IIf([HF4_FORMULA_OP]="/","10000/",Null) |  |  | 3.38, 2.06, 0.47, 0.20 |
