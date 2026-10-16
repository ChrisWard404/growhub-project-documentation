# Report: Plant_Inventory_Worksheet_bu

**Caption:** Plant Inventory Worksheet  
**Record source:**

```sql
Plant_Inventory_Worksheet Query
```

**Grouping/sorting:** `MinOfLOCATION`, `MaxOfDIST_FROM_BED_BEG`  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_PRODUCTS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Report.Plant_Inventory_Worksheet_Field_Location_Index Subform`, `Report.Plant_Inventory_Worksheet_Client_Associate Subreport`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label25 |        COUNT          GOES                COUNT         GOES                 COUNT         GOES               COUNT         GOES    1 ____\|____     ____\|____     26 ____\|____    ____\|____      51 ____\|____    ____\|____     76 ____\|____   ____\|____   2 ____\|____     ____\|____     27 ____\|____    ____\|____      52 ____\|____    ____\|____     77 ____\|____   ____\|____   3 ____\|____     ____\|____     28 ____\|____    ____\|____      53 ____\|____    ____\|____     78 ____\|____   ____\|____   4 ____\|____     ____\|____     29 ____\|____    ____\|____      54 ____\|____    ____\|____     79 ____\|____   ____\|____   5 ____\|____     ____\|____     30 ____\|____    ____\|____      55 ____\|____    ____\|____     80 ____\|____   ____\|____   6 ____\|____     ____\|____     31 ____\|____    ____\|____      56 ____\|____    ____\|____     81 ____\|____   ____\|____   7 ____\|____     ____\|____     32 ____\|____    ____\|____      57 ____\|____    ____\|____     82 ____\|____   ____\|____   8 ____\|____     ____\|____     33 ____\|____    ____\|____      58 ____\|____    ____\|____     83 ____\|____   ____\|____   9 ____\|____     ____\|____     34 ____\|____    ____\|____      59 ____\|____    ____\|____     84 ____\|____   ____\|____ 10 ____\|____     ____\|____     35 ____\|____    ____\|____      60 ____\|____    ____\|____     85 ____\|____   ____\|____ 11 ____\|____     ____\|____     36 ____\|____    ____\|____      61 ____\|____    ____\|____     86 ____\|____   ____\|____ 12 ____\|____     ____\|____     37 ____\|____    ____\|____      62 ____\|____    ____\|____     87 ____\|____   ____\|____ 13 ____\|____     ____\|____     38 ____\|____    ____\|____      63 ____\|____    ____\|____     88 ____\|____   ____\|____ 14 ____\|____     ____\|____     39 ____\|____    ____\|____      64 ____\|____    ____\|____     89 ____\|____   ____\|____ 15 ____\|____     ____\|____     40 ____\|____    ____\|____      65 ____\|____    ____\|____     90 ____\|____   ____\|____ |  |  |  | 0.24, 4.30, 7.52, 2.90 |
| Label | Label37 | 16 ____\|____     ____\|____     41 ____\|____    ____\|____      66 ____\|____    ____\|____     91 ____\|____   ____\|____ 17 ____\|____     ____\|____     42 ____\|____    ____\|____      67 ____\|____    ____\|____     92 ____\|____   ____\|____ 18 ____\|____     ____\|____     43 ____\|____    ____\|____      68 ____\|____    ____\|____     93 ____\|____   ____\|____ 19 ____\|____     ____\|____     44 ____\|____    ____\|____      69 ____\|____    ____\|____     94 ____\|____   ____\|____ 20 ____\|____     ____\|____     45 ____\|____    ____\|____      70 ____\|____    ____\|____     95 ____\|____   ____\|____ 21 ____\|____     ____\|____     46 ____\|____    ____\|____      71 ____\|____    ____\|____     96 ____\|____   ____\|____ 22 ____\|____     ____\|____     47 ____\|____    ____\|____      72 ____\|____    ____\|____     97 ____\|____   ____\|____ 23 ____\|____     ____\|____     48 ____\|____    ____\|____      73 ____\|____    ____\|____     98 ____\|____   ____\|____ 24 ____\|____     ____\|____     49 ____\|____    ____\|____      74 ____\|____    ____\|____     99 ____\|____   ____\|____ 25 ____\|____     ____\|____     50 ____\|____    ____\|____      75 ____\|____    ____\|____   100 ____\|____   ____\|____ |  |  |  | 0.24, 7.17, 7.52, 1.71 |
| Label | ID_Label | Agreement Lot ID: |  |  |  | 0.00, 1.00, 0.76, 0.35 |
| Label | TOTAL_REQUEST_Label | Total Request(M): |  |  |  | 0.00, 2.68, 1.16, 0.19 |
| Label | CLIENT_ASSOCIATE_Label | Client Associate(s): |  |  |  | 3.25, 1.00, 1.35, 0.19 |
| Label | Label22 | Source Code: |  |  |  | 0.00, 1.69, 0.89, 0.19 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.56, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.34, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.34, 0.00, 3.24, 0.16 |
| Label | Label24 | Inventory Worksheet |  |  |  | 3.12, 0.57, 1.68, 0.23 |
| TextBox | ID |  | Client_and_ID |  |  | 0.84, 1.03, 2.24, 0.32 |
| TextBox | TOTAL_REQUEST |  | FirstOfTOTAL_REQUEST |  |  | 1.18, 2.67, 0.62, 0.23 |
| ComboBox | Combo21 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[SOURCE_CODE] FROM NMIS_SOURCE_LOTS;  |  | 0.00, 1.88, 3.11, 0.23 |
| Subform | Plant_Inventory_Worksheet_Field_Location_Index Subform |  | Report.Plant_Inventory_Worksheet_Field_Location_Index Subform (master: CN → child: AGREEMENT_LOT_CN) |  |  | 6.29, 1.02, 1.65, 2.48 |
| Label | Label47 | Ft In Bed |  |  |  | 7.61, 0.72, 0.30, 0.28 |
| Label | Label48 | Location |  |  |  | 6.26, 0.85, 0.49, 0.16 |
| Label | Label50 | Begin Riser |  |  |  | 6.84, 0.72, 0.38, 0.28 |
| Label | Label56 | End Riser |  |  |  | 7.25, 0.72, 0.32, 0.28 |
| ComboBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN | SELECT [NMIS_AGREEMENT_LOTS].[CN], [PLNTMSTR_SYMBOL] & " - " & [SPECIES_PRODUCT_DESC] & " - " & [SIZE_SPEC_STRING] AS [Group] FROM [Size_Spec_String Query] RIGHT JOIN ((NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN]) INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN]) ON [Size_Spec_String Query].[CN]=[NMIS_SPECIES_PRODUCTS].[CN];  |  | 0.00, 2.38, 3.17, 0.23 |
| Label | Label52 | Group: |  |  |  | 0.00, 2.18, 0.46, 0.19 |
| Rectangle | Box53 |  |  |  |  | 0.20, 4.27, 7.55, 4.65 |
| Subform | Plant_Inventory_Worksheet_Client_Associate Subreport |  | Report.Plant_Inventory_Worksheet_Client_Associate Subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 3.23, 1.21, 3.02, 1.75 |
| ComboBox | Combo58 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SPECIES].[VERNACULAR] FROM NMIS_SPECIES INNER JOIN NMIS_SOURCE_LOTS ON ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]) AND ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]);  |  | 0.00, 1.40, 3.11, 0.23 |
| TextBox | Text59 | Year: | =[Forms]![Switchboard]![NMIS_FISCAL_YEAR_Current].Form!FISCAL_YEAR_TEXT |  |  | 0.42, 3.21, 0.58, 0.23 |
| Label | Label61 | Sown For(M): |  |  |  | 0.00, 2.93, 0.95, 0.19 |
| TextBox | Text62 |  | FirstOfActual_Sow_Calculated |  |  | 1.18, 2.92, 0.62, 0.23 |
| Label | Label30 | ******************************************************* Inventory Notes ***************************************************** |  |  |  | 0.00, 3.66, 7.92, 0.19 |
| Line | Line19 |  |  |  |  | 0.00, 3.59, 7.97, 0.00 |
| Label | Label72 | Gross (m): _____ |  |  |  | 4.21, 3.01, 1.58, 0.23 |
| Label | Label73 | Net (m): _____ |  |  |  | 4.38, 3.28, 1.42, 0.23 |
| Label | Label33 | Distance Between Plots:  ____ |  |  |  | 1.73, 4.05, 2.05, 0.19 |
| Label | Label34 | Starting Point: ____ |  |  |  | 0.18, 4.05, 1.35, 0.19 |
| Label | Label67 | Additional Plots: ____ |  |  |  | 4.20, 3.83, 1.50, 0.19 |
| Label | Label69 | Distance Between Plots:  ____ |  |  |  | 5.74, 4.05, 2.05, 0.19 |
| Label | Label70 | Starting Point: ____ |  |  |  | 4.20, 4.05, 1.35, 0.19 |
| ComboBox | SOURCE_LOT_CN |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, "(" & [ID] & ")" AS ID2 FROM NMIS_SOURCE_LOTS; |  | 1.08, 1.71, 0.00, 0.17 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text15 |  | =Now() |  |  | 0.04, 1.27, 3.50, 0.18 |
| TextBox | Text16 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.76, 1.27, 3.17, 0.18 |
| Line | Line29 |  |  |  |  | 0.00, 1.19, 7.97, 0.00 |
| Label | Label26 | Inventory Crew ____ Comments: |  |  |  | 0.13, 0.03, 2.19, 0.19 |
| Label | Label63 | Inventoried By: ___________________________________________ |  |  |  | 2.27, 0.97, 4.43, 0.19 |
| Label | Label64 | Inventory Date: _____________ |  |  |  | 0.12, 0.97, 2.10, 0.19 |
| Label | Label68 | Husky #: _____ |  |  |  | 6.75, 0.97, 1.12, 0.19 |
