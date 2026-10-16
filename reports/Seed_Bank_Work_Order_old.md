# Report: Seed_Bank_Work_Order_old

**Caption:** Seed_Bank_Work_Order  
**Record source:**

```sql
SELECT [NMIS_AGREEMENT_LOTS].[BEGIN_FY], [NMIS_AGREEMENT_LOTS].[END_FY], [NMIS_AGREEMENT_LOTS].[TOTAL_REQUEST], [NMIS_SOURCE_LOTS].[ID] AS NMIS_SOURCE_LOTS_ID, [NMIS_SOURCE_LOTS].[SOURCE_CODE], [NMIS_AGREEMENT_LOTS].[SOURCE_REQUIRED], [NMIS_AGREEMENT_LOTS].[EST_CONTAINERS_REQUIRED], [NMIS_SOURCE_LOTS].[STORED_AT_ASSOCIATE], [NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN], [NMIS_AGREEMENT_LOTS].[CN], [NMIS_SPECIES_PRODUCTS].[SPEC_MIN], [NMIS_SPECIES_PRODUCTS].[SPEC_MAX], [NMIS_SPECIES_PRODUCTS].[CALIPER_MIN], [NMIS_SPECIES_PRODUCTS].[SPECIES_PRODUCT_DESC], [NMIS_SPECIES_PRODUCTS].[SPECS_UNIT_CODE], [NMIS_SPECIES_PRODUCTS].[SOWING_GROUP], [NMIS_AGREEMENT_LOTS].[ID], [NMIS_SPECIES_PRODUCTS].[UNIT_CODE] FROM NMIS_SPECIES_PRODUCTS INNER JOIN ((NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SOURCE_LOTS].[CN]=[NMIS_AGREEMENT_LOTS].[SOURCE_LOT_CN]) INNER JOIN NMIS_AGREEMENTS ON [NMIS_AGREEMENT_LOTS].[CN]=[NMIS_AGREEMENTS].[AGREEMENT_LOT_CN]) ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENTS].[SPECIES_PRODUCT_CN] WHERE ((([NMIS_AGREEMENT_LOTS].[ID])=[Forms]![NMIS_AGREEMENT_LOTS]![ID]));
```

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_FISCAL_YEARS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES_PRODUCTS`, `NMIS_UNITS`  
**Subforms/subreports:** `Report.Seed_Bank_Work_Order subreport`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label16 | Seed Bank Work Order |  |  |  | 0.04, 0.04, 3.88, 0.42 |
| TextBox | Text17 |  | =Now() |  |  | 0.07, 0.50, 1.94, 0.18 |
| TextBox | Text40 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.13, 0.46, 3.42, 0.29 |
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
| TextBox | EST_CONTAINERS_REQUIRED |  | EST_CONTAINERS_REQUIRED |  |  | 5.67, 1.60, 0.35, 0.21 |
| Label | EST_CONTAINERS_REQUIRED_Label | Containers Required: |  |  |  | 4.12, 1.62, 1.50, 0.17 |
| Label | TOTAL_REQUEST_Label | Total Request: |  |  |  | 0.71, 1.62, 1.12, 0.17 |
| TextBox | TOTAL_REQUEST |  | TOTAL_REQUEST |  |  | 1.92, 1.60, 0.54, 0.21 |
| ComboBox | STORED_AT_ASSOCIATE |  | STORED_AT_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 6.09, 0.04, 1.50, 0.28 |
| Line | Line24 |  |  |  |  | 0.00, 3.17, 7.52, 0.00 |
| Label | Label25 | Nursery ID Comments |  |  |  | 0.08, 3.27, 1.58, 0.21 |
| Subform | Seed_Bank_Work_Order subreport |  | Report.Seed_Bank_Work_Order subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 0.13, 1.83, 7.41, 1.12 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT [NMIS_UNITS].[UNIT_CODE], [NMIS_UNITS].[UNIT_DESC], [NMIS_UNITS].[UNIT_TYPE] FROM NMIS_UNITS;  |  | 6.03, 1.60, 0.35, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text18 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.31, 0.17, 3.22, 0.18 |
| Line | Line20 |  |  |  |  | 0.04, 0.17, 7.54, 0.00 |
