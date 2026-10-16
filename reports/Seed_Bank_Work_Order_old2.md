# Report: Seed_Bank_Work_Order_old2

**Caption:** Seed_Bank_Work_Order  
**Record source:**

```sql
Seed_Bank_Work_Order_Report query
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_FACTOR_CODES`, `NMIS_SPECIES_PRODUCTS`, `NMIS_UNITS`  
**Subforms/subreports:** `Report.Seed_Bank_Work_Order subreport`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.75, 0.16, 2.81, 0.19 |
| Label | Label110 | Seed Bank Withdrawal Request |  |  |  | 3.20, 0.57, 1.90, 0.17 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.53, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.53, 0.00, 3.24, 0.16 |
| TextBox | SOWING_GROUP |  | SOWING_GROUP |  |  | 7.17, 0.04, 0.72, 0.60 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | NMIS_AGREEMENT_LOTS_ID_Label | Agreement Lot ID |  |  |  | 6.67, 0.02, 1.29, 0.17 |
| Label | BEGIN_FY_Label | Grow Period: |  |  |  | 0.70, 0.33, 0.92, 0.17 |
| Label | NMIS_SOURCE_LOTS_ID_Label | Source Lot ID |  |  |  | 0.40, 1.28, 1.27, 0.17 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 3.54, 1.28, 0.51, 0.20 |
| Label | SOURCE_REQUIRED_Label | Source Required |  |  |  | 5.83, 1.12, 1.11, 0.34 |
| Line | Line19 |  |  |  |  | 0.38, 1.48, 7.58, 0.00 |
| TextBox | NMIS_AGREEMENT_LOTS_ID |  | ID |  |  | 3.96, 0.22, 4.01, 0.42 |
| Label | Label23 | Stored At Associate |  |  |  | 6.96, 1.12, 0.98, 0.35 |
| TextBox | SPECIES_PRODUCT_CN |  | SPECIES_PRODUCT_CN |  |  | 4.12, 0.12, 0.00, 0.00 |
| Line | Line114 |  |  |  |  | 0.38, 0.01, 7.54, 0.00 |
| TextBox | Text118 |  | =[BEGIN_FY] & " - " & [END_FY] |  |  | 1.69, 0.32, 1.42, 0.20 |
| ComboBox | SPECIES_PRODUCT_DESC | Species Product: | SPECIES_PRODUCT_CN | SELECT Species_Products_with_SizeSpecString.CN, Species_Products_with_SizeSpecString.Species_Products_String FROM Species_Products_with_SizeSpecString;  |  | 1.69, 0.94, 3.23, 0.20 |
| ComboBox | Text120 | Product: | SPECIES_PRODUCT_CN | SELECT NMIS_SPECIES_PRODUCTS.CN, Product_String.Product_String FROM Product_String INNER JOIN NMIS_SPECIES_PRODUCTS ON Product_String.CN=NMIS_SPECIES_PRODUCTS.PRODUCT_CN;  |  | 1.69, 0.70, 3.23, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | Seed_Bank_Work_Order subreport |  | Report.Seed_Bank_Work_Order subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 0.44, 2.23, 7.40, 1.54 |
| TextBox | NMIS_SOURCE_LOTS_ID |  | NMIS_SOURCE_LOTS_ID |  |  | 0.39, 0.04, 1.34, 0.28 |
| TextBox | SOURCE_CODE |  | SOURCE |  |  | 1.82, 0.04, 3.97, 0.28 |
| TextBox | SOURCE_REQUIRED |  | SOURCE_REQUIRED |  |  | 5.88, 0.04, 0.96, 0.28 |
| TextBox | EST_CONTAINERS_REQUIRED |  | =Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED |  |  | 3.89, 2.00, 0.48, 0.20 |
| Label | EST_CONTAINERS_REQUIRED_Label | Est. Containers Required: |  |  |  | 2.22, 2.02, 1.62, 0.20 |
| Label | TOTAL_REQUEST_Label | Total Request: |  |  |  | 0.50, 2.02, 1.04, 0.17 |
| TextBox | TOTAL_REQUEST |  | TOTAL_REQUEST |  |  | 1.59, 2.00, 0.54, 0.20 |
| Label | Label107 | @ |  |  |  | 6.71, 2.00, 0.17, 0.17 |
| TextBox | Seed_Per_Cell |  | Seed_Per_Cell |  |  | 6.90, 2.00, 0.44, 0.20 |
| Label | Label117 | seed/cell |  |  |  | 7.36, 2.02, 0.47, 0.17 |
| TextBox | STORED_AT_ASSOCIATE |  | STORED_AT_ASSOCIATE |  |  | 6.96, 0.04, 1.01, 0.28 |
| ComboBox | UNIT_CODE |  | =Forms!NMIS_AGREEMENT_LOTS![NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1].Form!BEGIN_CONTAINER | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC FROM NMIS_UNITS; |  | 4.42, 2.00, 2.21, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line24 |  |  |  |  | 0.43, 0.04, 7.52, 0.00 |
| Label | Label25 | Nursery ID Comments |  |  |  | 0.44, 0.14, 1.58, 0.21 |
| TextBox | Request | Request | TOTAL_REQUEST |  |  | 0.86, 3.05, 0.61, 0.20 |
| TextBox | GROSS_SOURCE_PER_UNIT | Gross Source/Unit | GROSS_SOURCE_PER_UNIT |  |  | 1.62, 3.05, 0.83, 0.20 |
| TextBox | SOURCE_GERM_PCT | Germ % | SOURCE_GERM_PCT |  |  | 2.62, 3.05, 0.29, 0.20 |
| TextBox | SOURCE_PURITY_PCT | Purity % | SOURCE_PURITY_PCT |  |  | 3.12, 3.05, 0.28, 0.20 |
| TextBox | HARVEST_FACTOR_1 |  | HARVEST_FACTOR_1 |  |  | 3.58, 3.05, 0.38, 0.20 |
| TextBox | HARVEST_FACTOR_2 |  | HARVEST_FACTOR_2 |  |  | 4.17, 3.05, 0.38, 0.20 |
| TextBox | HARVEST_FACTOR_3 |  | HARVEST_FACTOR_3 |  |  | 4.75, 3.05, 0.38, 0.20 |
| TextBox | HARVEST_FACTOR_4 |  | HARVEST_FACTOR_4 |  |  | 5.27, 3.05, 0.38, 0.20 |
| TextBox | Text55 | Source Required | SOURCE_REQUIRED |  |  | 7.24, 3.05, 0.57, 0.20 |
| ComboBox | HARVEST_1_FACTOR_CODE |  | HARVEST_1_FACTOR_CODE | SELECT NMIS_FACTOR_CODES.FACTOR_CODE FROM NMIS_FACTOR_CODES;  |  | 3.58, 2.67, 0.38, 0.00 |
| ComboBox | HARVEST_2_FACTOR_CODE |  | HARVEST_2_FACTOR_CODE | SELECT NMIS_FACTOR_CODES.FACTOR_CODE FROM NMIS_FACTOR_CODES;  |  | 4.17, 2.67, 0.38, 0.00 |
| ComboBox | HARVEST_3_FACTOR_CODE |  | HARVEST_3_FACTOR_CODE | SELECT NMIS_FACTOR_CODES.FACTOR_CODE FROM NMIS_FACTOR_CODES;  |  | 4.75, 2.67, 0.38, 0.00 |
| ComboBox | HARVEST_4_FACTOR_CODE |  | HARVEST_4_FACTOR_CODE | SELECT NMIS_FACTOR_CODES.FACTOR_CODE FROM NMIS_FACTOR_CODES;  |  | 5.27, 2.67, 0.38, 0.00 |
| Label | Label61 | / |  |  |  | 2.49, 3.05, 0.13, 0.19 |
| Label | Label62 | / |  |  |  | 2.95, 3.05, 0.13, 0.19 |
| Label | Label63 | / |  |  |  | 3.45, 3.05, 0.13, 0.19 |
| Label | Label64 | / |  |  |  | 4.00, 3.05, 0.13, 0.19 |
| Label | Label65 | / |  |  |  | 4.58, 3.05, 0.13, 0.19 |
| Label | Label66 | / |  |  |  | 5.12, 3.05, 0.13, 0.19 |
| Label | Label67 | = |  |  |  | 6.34, 3.05, 0.12, 0.19 |
| Label | Label68 | % |  |  |  | 3.67, 2.84, 0.16, 0.19 |
| Label | Label69 | / |  |  |  | 1.49, 3.05, 0.13, 0.19 |
| Label | Label70 | % |  |  |  | 4.28, 2.84, 0.16, 0.19 |
| Label | Label71 | % |  |  |  | 4.87, 2.84, 0.16, 0.19 |
| Label | Label72 | % |  |  |  | 5.41, 2.84, 0.16, 0.19 |
| TextBox | HARVEST_ASF_ADJUSTMENT | Harvest ASF % | HARVEST_ASF_ADJUSTMENT |  |  | 5.78, 3.05, 0.53, 0.20 |
| Label | Label74 | / |  |  |  | 5.68, 3.05, 0.08, 0.19 |
| Rectangle | Box75 |  |  |  |  | 0.44, 2.41, 7.46, 0.97 |
| Label | Label76 | Calulations |  |  |  | 0.47, 2.45, 0.94, 0.23 |
| CheckBox | SOURCE_STRATIFIED | Source Stratified: | SOURCE_STRATIFIED |  |  | 3.44, 2.49, 0.00, 0.00 |
| Label | Label104 | M |  |  |  | 1.07, 2.86, 0.16, 0.19 |
| TextBox | Text111 |  | =Now() |  |  | 0.45, 3.57, 2.32, 0.00 |
| Line | Line113 |  |  |  |  | 0.43, 3.48, 7.52, 0.00 |
| CheckBox | CHECK_STRAT | Borderline Strat: | CHECK_STRAT |  |  | 5.11, 2.49, 0.00, 0.00 |
| TextBox | NOTE |  | NOTE |  |  | 0.46, 0.38, 7.33, 1.92 |
| TextBox | Text123 |  | ID |  |  | 3.92, 3.50, 4.01, 0.42 |
| TextBox | Source_Calc | Source Calc | =([TOTAL_REQUEST]*1000)/[GROSS_SOURCE_PER_UNIT]/([SOURCE_GERM_PCT]*0.01)/([SOURCE_PURITY_PCT]*0.01)/([HARVEST_FACTOR_1]*0.01)/([HARVEST_FACTOR_2]*0.01)/([HARVEST_FACTOR_3]*0.01)/([HARVEST_FACTOR_4]*0.01)/([HARVEST_ASF_ADJUSTMENT]*0.01) |  |  | 6.50, 3.05, 0.57, 0.20 |
