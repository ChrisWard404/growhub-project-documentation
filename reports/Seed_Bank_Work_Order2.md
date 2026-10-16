# Report: Seed_Bank_Work_Order2

**Caption:** Seed_Bank_Work_Order  
**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_ASSOCIATES`, `NMIS_FACTOR_CODES`, `NMIS_FISCAL_YEARS`, `NMIS_UNITS`  
**Subforms/subreports:** `Report.Seed_Bank_Work_Order subreport`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label16 | Seed Bank Work Order |  |  |  | 0.04, 0.04, 3.88, 0.42 |
| TextBox | Text17 |  | =Now() |  |  | 0.07, 0.50, 1.94, 0.18 |
| TextBox | Text40 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.13, 0.46, 3.42, 0.29 |
| TextBox | SOWING_GROUP |  | SOWING_GROUP |  |  | 6.81, 0.05, 0.72, 0.60 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | NMIS_AGREEMENT_LOTS_ID_Label | Nursery ID: |  |  |  | 5.48, 0.21, 0.89, 0.17 |
| Label | BEGIN_FY_Label | Grow Period: |  |  |  | 0.33, 0.23, 0.92, 0.17 |
| Label | NMIS_SOURCE_LOTS_ID_Label | Source Lot ID |  |  |  | 0.07, 1.28, 1.12, 0.17 |
| Label | SOURCE_CODE_Label | Source Code |  |  |  | 2.34, 1.28, 1.50, 0.17 |
| Label | SOURCE_REQUIRED_Label | Source Required |  |  |  | 4.72, 1.28, 1.30, 0.17 |
| Line | Line19 |  |  |  |  | 0.00, 1.48, 7.58, 0.00 |
| TextBox | NMIS_AGREEMENT_LOTS_ID |  | ID |  |  | 6.40, 0.08, 1.14, 0.42 |
| ComboBox | BEGIN_FY |  | BEGIN_FY | SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;  |  | 1.32, 0.23, 0.54, 0.21 |
| ComboBox | END_FY |  | END_FY | SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;  |  | 1.96, 0.23, 0.72, 0.21 |
| Label | Label23 | Stored At Associate |  |  |  | 6.14, 1.28, 1.41, 0.19 |
| TextBox | SPECIES_PRODUCT_CN |  | SPECIES_PRODUCT_CN |  |  | 3.75, 0.12, 0.00, 0.00 |
| TextBox | SPECIES_PRODUCT_DESC | Species Product: | SPECIES_PRODUCT_DESC |  |  | 1.32, 0.50, 1.81, 0.20 |
| TextBox | SPEC_MIN | Specs: | SPEC_MIN |  |  | 1.32, 0.78, 0.29, 0.20 |
| TextBox | SPEC_MAX |  | SPEC_MAX |  |  | 1.73, 0.78, 0.21, 0.20 |
| TextBox | CALIPER_MIN |  | CALIPER_MIN |  |  | 2.16, 0.78, 0.29, 0.20 |
| ComboBox | SPECS_UNIT_CODE |  | SPECS_UNIT_CODE | SELECT [NMIS_UNITS].[UNIT_CODE], [NMIS_UNITS].[UNIT_DESC], [NMIS_UNITS].[UNIT_TYPE] FROM NMIS_UNITS;  |  | 1.94, 0.78, 0.12, 0.21 |
| Label | Label38 | - |  |  |  | 1.62, 0.78, 0.09, 0.19 |
| Label | Label39 | / |  |  |  | 2.07, 0.80, 0.09, 0.19 |
| Label | Label43 | - |  |  |  | 1.86, 0.22, 0.09, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NMIS_SOURCE_LOTS_ID |  | NMIS_SOURCE_LOTS_ID |  |  | 0.23, 0.04, 0.83, 0.28 |
| TextBox | SOURCE_CODE |  | SOURCE_CODE |  |  | 1.36, 0.04, 3.38, 0.28 |
| TextBox | SOURCE_REQUIRED |  | SOURCE_REQUIRED |  |  | 4.88, 0.04, 0.79, 0.28 |
| TextBox | EST_CONTAINERS_REQUIRED |  | EST_CONTAINERS_REQUIRED |  |  | 5.67, 2.47, 0.35, 0.21 |
| Label | EST_CONTAINERS_REQUIRED_Label | Containers Required: |  |  |  | 4.12, 2.49, 1.50, 0.17 |
| Label | TOTAL_REQUEST_Label | Total Request: |  |  |  | 0.71, 2.49, 1.12, 0.17 |
| TextBox | TOTAL_REQUEST |  | TOTAL_REQUEST |  |  | 1.92, 2.47, 0.54, 0.21 |
| ComboBox | STORED_AT_ASSOCIATE |  | STORED_AT_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 6.09, 0.04, 1.50, 0.28 |
| Line | Line24 |  |  |  |  | 0.00, 4.03, 7.52, 0.00 |
| Label | Label25 | Nursery ID Comments |  |  |  | 0.08, 4.13, 1.58, 0.21 |
| Subform | Seed_Bank_Work_Order subreport |  | Report.Seed_Bank_Work_Order subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 0.13, 2.70, 7.41, 1.12 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT [NMIS_UNITS].[UNIT_CODE], [NMIS_UNITS].[UNIT_DESC], [NMIS_UNITS].[UNIT_TYPE] FROM NMIS_UNITS;  |  | 6.03, 2.47, 0.35, 0.21 |
| TextBox | Request | Request | TOTAL_REQUEST |  |  | 0.50, 1.29, 0.61, 0.20 |
| TextBox | GROSS_SOURCE_PER_UNIT | Gross Source/Unit | GROSS_SOURCE_PER_UNIT |  |  | 1.26, 1.29, 0.83, 0.20 |
| TextBox | SOURCE_GERM_PCT | Germ % | SOURCE_GERM_PCT |  |  | 2.26, 1.29, 0.29, 0.20 |
| TextBox | SOURCE_PURITY_PCT | Purity % | SOURCE_PURITY_PCT |  |  | 2.76, 1.29, 0.28, 0.20 |
| TextBox | HARVEST_FACTOR_1 |  | HARVEST_FACTOR_1 |  |  | 3.22, 1.29, 0.38, 0.20 |
| TextBox | HARVEST_FACTOR_2 |  | HARVEST_FACTOR_2 |  |  | 3.81, 1.29, 0.38, 0.20 |
| TextBox | HARVEST_FACTOR_3 |  | HARVEST_FACTOR_3 |  |  | 4.39, 1.29, 0.38, 0.20 |
| TextBox | HARVEST_FACTOR_4 |  | HARVEST_FACTOR_4 |  |  | 4.93, 1.29, 0.38, 0.20 |
| TextBox | Text55 | Source Required | SOURCE_REQUIRED |  |  | 6.67, 1.29, 0.57, 0.20 |
| ComboBox | HARVEST_1_FACTOR_CODE |  | HARVEST_1_FACTOR_CODE | SELECT [NMIS_FACTOR_CODES].[FACTOR_CODE] FROM NMIS_FACTOR_CODES;  |  | 3.22, 0.92, 0.38, 0.00 |
| ComboBox | HARVEST_2_FACTOR_CODE |  | HARVEST_2_FACTOR_CODE | SELECT [NMIS_FACTOR_CODES].[FACTOR_CODE] FROM NMIS_FACTOR_CODES;  |  | 3.81, 0.92, 0.38, 0.00 |
| ComboBox | HARVEST_3_FACTOR_CODE |  | HARVEST_3_FACTOR_CODE | SELECT [NMIS_FACTOR_CODES].[FACTOR_CODE] FROM NMIS_FACTOR_CODES;  |  | 4.39, 0.92, 0.38, 0.00 |
| ComboBox | HARVEST_4_FACTOR_CODE |  | HARVEST_4_FACTOR_CODE | SELECT [NMIS_FACTOR_CODES].[FACTOR_CODE] FROM NMIS_FACTOR_CODES;  |  | 4.93, 0.92, 0.38, 0.00 |
| Label | Label61 | / |  |  |  | 2.13, 1.29, 0.13, 0.19 |
| Label | Label62 | / |  |  |  | 2.59, 1.29, 0.13, 0.19 |
| Label | Label63 | / |  |  |  | 3.09, 1.29, 0.13, 0.19 |
| Label | Label64 | / |  |  |  | 3.64, 1.29, 0.13, 0.19 |
| Label | Label65 | / |  |  |  | 4.22, 1.29, 0.13, 0.19 |
| Label | Label66 | / |  |  |  | 4.77, 1.29, 0.13, 0.19 |
| Label | Label67 | = |  |  |  | 6.40, 1.29, 0.12, 0.19 |
| Label | Label68 | % |  |  |  | 3.31, 1.08, 0.16, 0.19 |
| Label | Label69 | / |  |  |  | 1.13, 1.29, 0.13, 0.19 |
| Label | Label70 | % |  |  |  | 3.92, 1.08, 0.16, 0.19 |
| Label | Label71 | % |  |  |  | 4.51, 1.08, 0.16, 0.19 |
| Label | Label72 | % |  |  |  | 5.05, 1.08, 0.16, 0.19 |
| TextBox | HARVEST_ASF_ADJUSTMENT | Harvest ASF % | HARVEST_ASF_ADJUSTMENT |  |  | 5.53, 1.29, 0.53, 0.20 |
| Label | Label74 | / |  |  |  | 5.37, 1.29, 0.08, 0.19 |
| Rectangle | Box75 |  |  |  |  | 0.08, 0.65, 7.46, 1.62 |
| Label | Label76 | Calulations |  |  |  | 0.12, 0.69, 0.94, 0.23 |
| TextBox | Text77 | Source Required | SOURCE_REQUIRED |  |  | 0.51, 1.98, 0.57, 0.20 |
| TextBox | Text79 | Gross Source/Unit | GROSS_SOURCE_PER_UNIT |  |  | 1.22, 1.97, 0.83, 0.20 |
| TextBox | Text81 | Germ % | SOURCE_GERM_PCT |  |  | 2.22, 1.97, 0.29, 0.20 |
| TextBox | Text83 | Purity % | SOURCE_PURITY_PCT |  |  | 2.72, 1.97, 0.28, 0.20 |
| Label | Label85 | / |  |  |  | 2.09, 1.97, 0.13, 0.19 |
| Label | Label86 | / |  |  |  | 2.55, 1.97, 0.13, 0.19 |
| Label | Label87 | X |  |  |  | 1.09, 1.99, 0.13, 0.19 |
| TextBox | Text88 |  | CONTAINER_FACTOR_1 |  |  | 3.16, 1.97, 0.38, 0.20 |
| TextBox | Text89 |  | CONTAINER_FACTOR_2 |  |  | 3.75, 1.97, 0.38, 0.20 |
| ComboBox | Combo90 |  | CONTAINER_1_FACTOR_CODE | SELECT [NMIS_FACTOR_CODES].[FACTOR_CODE] FROM NMIS_FACTOR_CODES;  |  | 3.16, 1.59, 0.38, 0.00 |
| ComboBox | Combo91 |  | CONTAINER_2_FACTOR_CODE | SELECT [NMIS_FACTOR_CODES].[FACTOR_CODE] FROM NMIS_FACTOR_CODES;  |  | 3.75, 1.59, 0.38, 0.00 |
| Label | Label92 | X |  |  |  | 3.03, 1.97, 0.13, 0.19 |
| Label | Label93 | / |  |  |  | 3.58, 1.97, 0.13, 0.19 |
| Label | Label94 | % |  |  |  | 3.25, 1.76, 0.16, 0.19 |
| Label | Label95 | % |  |  |  | 3.87, 1.76, 0.16, 0.19 |
| TextBox | Text96 |  | CONTAINER_FACTOR_3 |  |  | 4.34, 1.97, 0.38, 0.20 |
| ComboBox | Combo97 |  | CONTAINER_3_FACTOR_CODE | SELECT [NMIS_FACTOR_CODES].[FACTOR_CODE] FROM NMIS_FACTOR_CODES;  |  | 4.34, 1.59, 0.38, 0.00 |
| Label | Label98 | / |  |  |  | 4.17, 1.97, 0.13, 0.19 |
| Label | Label99 | % |  |  |  | 4.46, 1.76, 0.16, 0.19 |
| TextBox | Text100 | Est Containers Required: | EST_CONTAINERS_REQUIRED |  |  | 6.54, 1.97, 0.82, 0.00 |
| Label | Label102 | = |  |  |  | 6.25, 1.95, 0.12, 0.19 |
| CheckBox | SOURCE_STRATIFIED | Source Stratified | SOURCE_STRATIFIED |  |  | 3.08, 0.73, 0.00, 0.00 |
| Label | Label104 | M |  |  |  | 0.71, 1.10, 0.16, 0.19 |
| TextBox | DESIRED_DENSITY | Desired Density: | DESIRED_DENSITY |  |  | 5.58, 1.96, 0.32, 0.20 |
| TextBox | CONTAINER_ASF_ADJUSTMENT | Container ASF % | CONTAINER_ASF_ADJUSTMENT |  |  | 4.91, 1.97, 0.33, 0.20 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text18 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.31, 0.17, 3.22, 0.18 |
| Line | Line20 |  |  |  |  | 0.04, 0.17, 7.54, 0.00 |
