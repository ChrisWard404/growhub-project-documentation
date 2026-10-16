# Report: NMIS_SOURCE_Inventory_lpn_wtotals_Report

**Caption:** NMIS_SOURCE_Inventory  
**Record source:**

```sql
SELECT [NMIS_SOURCE_LOTS].[ID], [NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL], [NMIS_SOURCE_LOTS].[SOURCE_CODE], [NMIS_SOURCE_LastTestData3 Query].[TEST_DATE], [NMIS_SOURCE_LastTestData3 Query].[GROSS_SOURCE_PER_UNIT], [NMIS_SOURCE_LastTestData3 Query].[PURITY_PCT], [NMIS_SOURCE_LastTestData3 Query].[GERM_PCT], [Seed_Inventory Balance Query].[Sum Of ACTIVITY_UNITS], [NMIS_SOURCE_LOTS].[CATEGORY_CODE], [NMIS_SOURCE_LOTS].[STORED_FOR_ASSOCIATE], [NMIS_SOURCE_LastTestData3 Query].[TYPE_OF_TEST], [NMIS_SOURCE_LastTestData3 Query].[MOISTURE_PCT], Left$([STORED_FOR_ASSOCIATE],4) & "00" AS ASSOCIATE, Right$([STORED_FOR_ASSOCIATE],2) AS DN, [NMIS_SOURCE_LOTS].[GEOGRAPHIC_LOCATION] FROM [NMIS_SOURCE_LastTestData3 Query] RIGHT JOIN ([Seed_Inventory Balance Query] RIGHT JOIN NMIS_SOURCE_LOTS ON [Seed_Inventory Balance Query].[SOURCE_LOT_CN]=[NMIS_SOURCE_LOTS].[CN]) ON [NMIS_SOURCE_LastTestData3 Query].[SOURCE_LOT_CN]=[NMIS_SOURCE_LOTS].[CN] WHERE ((([NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]) Like [Forms]![Seed_Inventory_Report]![Plntmstr_Symbol]) And (([Seed_Inventory Balance Query].[Sum Of ACTIVITY_UNITS])>0.00001) And (([NMIS_SOURCE_LOTS].[CATEGORY_CODE]) Like [Forms]![Seed_Inventory_Report]![Category_Code]) And (([NMIS_SOURCE_LOTS].[STORED_FOR_ASSOCIATE]) Like [Forms]![Seed_Inventory_Report]![Like_Client]));
```

**Grouping/sorting:** `ASSOCIATE`, `PLNTMSTR_SYMBOL`, `SOURCE_CODE`, `ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`, `NMIS_TEST_TYPES`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 3.51, 0.16, 2.81, 0.19 |
| Label | Label33 | CLIENT SOURCE INVENTORY REPORT |  |  |  | 3.72, 0.57, 2.38, 0.17 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.29, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 3.29, 0.00, 3.24, 0.16 |
| Label | ID_Label | ID |  |  |  | 0.00, 1.23, 0.59, 0.17 |
| Label | SOURCE_CODE_Label | Source Code |  |  |  | 0.82, 1.23, 2.14, 0.17 |
| Label | TEST_DATE_Label | Test Date |  |  |  | 4.06, 1.23, 0.68, 0.17 |
| Label | GROSS_SOURCE_PER_UNIT_Label | Gross Source/U |  |  |  | 4.75, 1.08, 0.66, 0.33 |
| Label | PURITY_PCT_Label | Purity % |  |  |  | 5.43, 1.08, 0.42, 0.33 |
| Label | GERM_PCT_Label | Germ % |  |  |  | 6.18, 1.08, 0.39, 0.33 |
| Label | Sum Of ACTIVITY_UNITS_Label | Balance |  |  |  | 6.65, 1.23, 0.50, 0.17 |
| Label | CATEGORY_CODE_Label | Fund |  |  |  | 7.24, 1.23, 0.48, 0.17 |
| Line | Line47 |  |  |  |  | 0.00, 1.03, 10.26, 0.00 |
| Label | Label24 | Mst% |  |  |  | 5.88, 1.08, 0.28, 0.33 |
| Label | Label26 | Test Type |  |  |  | 3.59, 1.08, 0.39, 0.33 |
| Line | Line21 |  |  |  |  | 0.00, 1.45, 10.25, 0.00 |
| ComboBox | Text43 | Client: | ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 4.57, 0.75, 1.72, 0.19 |
| Label | Label28 | DN |  |  |  | 3.29, 1.23, 0.22, 0.17 |
| Label | Label38 | Geographic Location |  |  |  | 8.21, 1.21, 1.50, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 0.00, 0.00, 0.80, 0.00 |
| TextBox | SOURCE_CODE |  | SOURCE_CODE |  |  | 0.84, 0.00, 2.44, 0.00 |
| TextBox | TEST_DATE |  | TEST_DATE |  |  | 4.02, 0.00, 0.68, 0.00 |
| TextBox | GROSS_SOURCE_PER_UNIT |  | GROSS_SOURCE_PER_UNIT |  |  | 4.73, 0.00, 0.65, 0.00 |
| TextBox | PURITY_PCT |  | PURITY_PCT |  |  | 5.43, 0.00, 0.33, 0.00 |
| TextBox | GERM_PCT |  | GERM_PCT |  |  | 6.16, 0.00, 0.33, 0.00 |
| TextBox | Sum Of ACTIVITY_UNITS |  | Sum Of ACTIVITY_UNITS |  |  | 6.49, 0.00, 0.69, 0.00 |
| TextBox | CATEGORY_CODE |  | CATEGORY_CODE |  |  | 7.28, 0.00, 0.41, 0.00 |
| TextBox | MOISTURE_PCT |  | MOISTURE_PCT |  |  | 5.83, 0.00, 0.30, 0.00 |
| ComboBox | TYPE_OF_TEST |  | TYPE_OF_TEST | SELECT [NMIS_TEST_TYPES].[TYPE_OF_TEST], [NMIS_TEST_TYPES].[TYPE_OF_TEST_DESC] FROM NMIS_TEST_TYPES;  |  | 3.62, 0.00, 0.40, 0.00 |
| TextBox | DN |  | DN |  |  | 3.31, 0.01, 0.24, 0.16 |
| TextBox | GEOGRAPHIC_LOCATION |  | GEOGRAPHIC_LOCATION |  |  | 7.79, 0.00, 2.46, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label29 | Total For: |  |  |  | 0.00, 0.03, 0.65, 0.19 |
| TextBox | Text31 |  | =Sum([Sum Of ACTIVITY_UNITS]) |  |  | 6.38, 0.04, 0.81, 0.18 |
| ComboBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL | SELECT [NMIS_SPECIES].[PLNTMSTR_SYMBOL], [NMIS_SPECIES].[VERNACULAR] FROM NMIS_SPECIES;  |  | 0.68, 0.04, 2.12, 0.18 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label35 | Total For: |  |  |  | 0.00, 0.05, 0.65, 0.19 |
| TextBox | Text36 |  | =Sum([Sum Of ACTIVITY_UNITS]) |  |  | 6.38, 0.06, 0.81, 0.18 |
| ComboBox | Combo37 |  | ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 0.68, 0.06, 2.12, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.04, 0.17, 3.50, 0.18 |
| Line | Line22 |  |  |  |  | 0.00, 0.14, 7.54, 0.00 |
