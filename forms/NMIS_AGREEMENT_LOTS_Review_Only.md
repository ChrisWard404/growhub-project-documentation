# Form: NMIS_AGREEMENT_LOTS_Review_Only

**Caption:** NMIS AGREEMENT LOTS  
**Record source:**

```sql
SELECT NMIS_AGREEMENT_LOTS.*, [NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL] FROM NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SOURCE_LOTS].[CN]=[NMIS_AGREEMENT_LOTS].[SOURCE_LOT_CN];
```

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`, `NMIS_FACTORS`, `NMIS_FISCAL_YEARS`, `NMIS_ID_LOCATIONS`, `NMIS_PRODUCTS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES_PRODUCTS`, `NMIS_UNITS`  
**Subforms/subreports:** `Form.NMIS_SOURCE_LastTestData Query subform`, `Form.Seed_Balance Query subform`, `Form.NMIS_AGREEMENTS subform1`, `Form.NMIS_FACTORS_FOR_AGREEMENT_LOTS subform`, `Form.NMIS_AGREE_LOTS_UNITS subform`, `Form.NMIS_ID_LOCATIONS subform1`, `Form.NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1`  
**Opens:** `Report:Refresh_Close`, `Report:Seed_Bank_Work_Order`  
**Form events with code:** Close, Current  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CN |  | CN |  |  | 0.08, 0.24, 1.22, 0.00 |
| TextBox | Index |  | Index |  |  | 1.33, 0.24, 0.00, 0.00 |
| Label | Label98 | NMIS Agreement Lots |  |  | Click | 3.12, 0.08, 2.42, 0.31 |
| CommandButton | Refresh and Close Form | Close |  |  | Click | 8.36, 0.07, 0.47, 0.28 |
| Line | Line416 |  |  |  |  | 0.04, 0.50, 8.75, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID | Nursery ID | ID |  | DblClick, Exit | 0.12, 0.24, 0.78, 0.21 |
| ComboBox | CATEGORY_CODE | Category | CATEGORY_CODE | SELECT [NMIS_CATEGORIES].[CATEGORY_CODE], [NMIS_CATEGORIES].[CATEGORY_DESC] FROM NMIS_CATEGORIES WHERE ((([NMIS_CATEGORIES].[CATEGORY_CODE])="BR" Or ([NMIS_CATEGORIES].[CATEGORY_CODE])="C" Or ([NMIS_CATEGORIES].[CATEGORY_CODE])="BRCO" Or ([NMIS_CATEGORIES].[CATEGORY_CODE])="CCO")) ORDER BY [NMIS_CATEGORIES].[CATEGORY_CODE];  |  | 6.14, 0.24, 2.19, 0.21 |
| ComboBox | NURSERY_ASSOCIATE | Nursery Associate | NURSERY_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME], [NMIS_ASSOCIATES].[NURSERY] FROM NMIS_ASSOCIATES WHERE ((([NMIS_ASSOCIATES].[NURSERY])=-1));  |  | 6.14, 0.78, 1.25, 0.21 |
| ComboBox | BEGIN_FY | Begin FY | BEGIN_FY | SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;  |  | 0.12, 0.77, 0.63, 0.21 |
| ComboBox | END_FY | End FY | END_FY | SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;  |  | 0.88, 0.77, 0.63, 0.21 |
| TextBox | TOTAL_REQUEST | Total Request | TOTAL_REQUEST |  | DblClick, Exit | 1.10, 0.24, 0.96, 0.21 |
| TextBox | PREVIOUS_SPECIES_PRODUCT_CN | Previous Species Product | PREVIOUS_SPECIES_PRODUCT_CN |  |  | 3.64, 1.32, 1.74, 0.20 |
| ComboBox | PREVIOUS_NURSERY_ASSOCIATE | Previous Nursery Associate | PREVIOUS_NURSERY_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 1.77, 1.33, 1.84, 0.21 |
| TextBox | CLIENT_SURPLUS_AVAILABLE | Client Surplus Avaliable | CLIENT_SURPLUS_AVAILABLE |  |  | 5.42, 1.32, 1.62, 0.21 |
| TextBox | NURSERY_SURPLUS_AVALIABLE | Nursery Surplus Avaliable | NURSERY_SURPLUS_AVAILABLE |  |  | 7.09, 1.32, 1.75, 0.21 |
| TextBox | NOTE | Note | NOTE |  |  | 0.12, 1.84, 8.72, 0.28 |
| ComboBox | SOURCE_LOT_CN | Source Lot ID | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID], [NMIS_SOURCE_LOTS].[SOURCE_CODE] FROM NMIS_SOURCE_LOTS ORDER BY [NMIS_SOURCE_LOTS].[ID];  | Exit | 1.76, 0.78, 1.18, 0.20 |
| TabControl | TabCtl197 |  |  |  |  | 0.03, 2.12, 8.84, 3.58 |
| Page | Calculations |  |  |  |  | 0.11, 2.38, 8.69, 3.25 |
| TextBox | SOURCE_GERM_PCT | Source Germ %: | SOURCE_GERM_PCT |  |  | 1.99, 2.89, 0.39, 0.20 |
| TextBox | SOURCE_PURITY_PCT | Source Purity %: | SOURCE_PURITY_PCT |  |  | 1.99, 3.12, 0.40, 0.21 |
| TextBox | GROSS_SOURCE_PER_UNIT | Gross/Unit: | GROSS_SOURCE_PER_UNIT |  |  | 1.99, 3.37, 0.58, 0.20 |
| TextBox | HARVEST_FACTOR_1 | Harvest Factor 1: | HARVEST_FACTOR_1 |  |  | 4.33, 2.92, 0.28, 0.20 |
| TextBox | HARVEST_FACTOR_2 | Harvest Factor 2: | HARVEST_FACTOR_2 |  |  | 4.33, 3.18, 0.28, 0.20 |
| TextBox | HARVEST_FACTOR_3 | Harvest Factor 3: | HARVEST_FACTOR_3 |  |  | 4.33, 3.42, 0.28, 0.20 |
| TextBox | HARVEST_FACTOR_4 | Harvest Factor 4: | HARVEST_FACTOR_4 |  |  | 4.33, 3.67, 0.28, 0.20 |
| TextBox | CONTAINER_FACTOR_1 | Container Factor 1: | CONTAINER_FACTOR_1 |  |  | 4.33, 4.04, 0.28, 0.20 |
| TextBox | CONTAINER_FACTOR_2 | Container Factor 2: | CONTAINER_FACTOR_2 |  |  | 4.33, 4.30, 0.28, 0.20 |
| Rectangle | Box268 |  |  |  |  | 2.88, 2.88, 2.51, 1.06 |
| Rectangle | Box269 |  |  |  |  | 2.88, 3.99, 2.52, 0.82 |
| Rectangle | Box270 |  |  |  |  | 2.83, 2.61, 2.63, 2.87 |
| Rectangle | Box271 |  |  |  |  | 5.60, 3.34, 3.17, 2.12 |
| TextBox | CONTAINER_FACTOR_3 | Container Factor 3: | CONTAINER_FACTOR_3 |  |  | 4.33, 4.54, 0.28, 0.20 |
| TextBox | SOURCE_REQUIRED | Source Required: | SOURCE_REQUIRED |  | DblClick, Exit | 7.65, 3.45, 0.53, 0.20 |
| CommandButton | Use_Default_Factors | Click to Use Default Factors |  |  | Click | 2.89, 2.64, 1.43, 0.19 |
| TextBox | Text392 |  | =[NMIS_FACTORS subform].Form!LIKE_ASSOCIATE |  |  | 4.84, 2.64, 0.50, 0.20 |
| CheckBox | Source_Stratified | Source Stratified | SOURCE_STRATIFIED |  |  | 1.99, 2.69, 0.00, 0.21 |
| TextBox | THINNING_PROBABILITY_PCT | Thinning Probability %: | THINNING_PROBABILITY_PCT |  |  | 7.65, 2.70, 0.40, 0.21 |
| Rectangle | Box331 |  |  |  |  | 0.21, 2.61, 2.43, 1.02 |
| Rectangle | Box332 |  |  |  |  | 2.88, 4.85, 2.52, 0.57 |
| Rectangle | Box333 |  |  |  |  | 5.60, 2.61, 3.16, 0.65 |
| ComboBox | Combo383 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN], [NMIS_PRODUCTS].[HARVEST_1_FACTOR_CODE] FROM (NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN]) INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN];  |  | 4.67, 2.92, 0.62, 0.20 |
| TextBox | CONTAINER_PROBABILITY_PCT | Container Probability %: | CONTAINER_PROBABILITY_PCT |  |  | 7.65, 2.94, 0.40, 0.21 |
| Rectangle | Box342 |  |  |  |  | 0.22, 3.74, 2.43, 1.11 |
| ComboBox | Combo386 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN], [NMIS_PRODUCTS].[HARVEST_2_FACTOR_CODE] FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN]) ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN];  |  | 4.67, 3.18, 0.62, 0.20 |
| ComboBox | Combo387 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN], [NMIS_PRODUCTS].[HARVEST_3_FACTOR_CODE] FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN]) ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN];  |  | 4.67, 3.42, 0.62, 0.20 |
| ComboBox | Combo388 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN], [NMIS_PRODUCTS].[HARVEST_4_FACTOR_CODE] FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN]) ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN];  |  | 4.67, 3.67, 0.62, 0.20 |
| TextBox | Will_Grow | Will Grow: | =([SOURCE_REQUIRED]*[GROSS_SOURCE_PER_UNIT]*([SOURCE_GERM_PCT]/100)*([SOURCE_PURITY_PCT]/100)*([HARVEST_FACTOR_1]/100)*([HARVEST_FACTOR_2]/100)*([HARVEST_FACTOR_3]/100)*([HARVEST_FACTOR_4]/100)*([HARVEST_ASF_ADJUSTMENT]/100))/1000 |  |  | 7.65, 3.72, 0.53, 0.20 |
| Rectangle | Box351 |  |  |  |  | 0.23, 4.92, 2.43, 0.56 |
| Subform | NMIS_SOURCE_LastTestData Query subform |  | Form.NMIS_SOURCE_LastTestData Query subform (master: SOURCE_LOT_CN → child: SOURCE_LOT_CN) |  |  | 0.70, 3.78, 1.89, 1.02 |
| Rectangle | Box374 |  |  |  |  | 5.67, 3.39, 3.03, 1.05 |
| Rectangle | Box376 |  |  |  |  | 5.67, 4.53, 3.04, 0.88 |
| CommandButton | Calculate | Click to Calculate Source Required and Est.Containers |  |  | Click | 5.73, 3.72, 1.03, 0.68 |
| CommandButton | Use Last Test Data | Click to Use Last Test Data |  |  | Click | 0.28, 3.90, 0.34, 0.82 |
| TextBox | Shortage | Shortage: | =[TOTAL_REQUEST]-[Will_Grow] |  |  | 7.65, 4.01, 0.53, 0.20 |
| ComboBox | Combo389 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN], [NMIS_PRODUCTS].[CONTAINER_1_FACTOR_CODE] FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN]) ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN];  |  | 4.67, 4.04, 0.62, 0.20 |
| ComboBox | Combo390 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN], [NMIS_PRODUCTS].[CONTAINER_2_FACTOR_CODE] FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN]) ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN];  |  | 4.67, 4.30, 0.62, 0.20 |
| ComboBox | Combo391 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN], [NMIS_PRODUCTS].[CONTAINER_3_FACTOR_CODE] FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN]) ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN];  |  | 4.67, 4.54, 0.62, 0.20 |
| TextBox | Desired_Density | Target Density: | DESIRED_DENSITY |  | DblClick, Exit | 6.79, 4.57, 0.31, 0.20 |
| TextBox | HARVEST_ASF_ADJUSTMENT | Harvest ASF Adj: | HARVEST_ASF_ADJUSTMENT |  |  | 4.33, 4.91, 0.28, 0.21 |
| Subform | Seed_Balance Query subform |  | Form.Seed_Balance Query subform (master: SOURCE_LOT_CN → child: CN) |  |  | 0.38, 5.04, 2.06, 0.30 |
| Label | Label396 | Like: |  |  |  | 4.50, 2.66, 0.30, 0.17 |
| TextBox | EST_CONTAINERS_REQUIRED | Est. | EST_CONTAINERS_REQUIRED |  |  | 6.64, 4.85, 0.72, 0.20 |
| TextBox | Type_of_Container |  | =[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1].Form!BEGIN_CONTAINER |  |  | 6.06, 4.85, 0.53, 0.20 |
| TextBox | CONTAINER_ASF_ADJUSTMENT | Container ASF Adj: | CONTAINER_ASF_ADJUSTMENT |  |  | 4.33, 5.13, 0.28, 0.21 |
| Label | Label626 | Seed/Cell |  |  |  | 8.12, 4.85, 0.53, 0.20 |
| TextBox | Text628 |  | =([GROSS_SOURCE_PER_UNIT]*[SOURCE_REQUIRED])/([EST_CONTAINERS_REQUIRED]*[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1].Form!CELLS_PER_CONTAINER) |  |  | 7.62, 4.84, 0.45, 0.21 |
| Label | Label630 | /Cell @  |  |  |  | 7.22, 4.57, 0.45, 0.19 |
| Label | Label631 | @ |  |  |  | 7.41, 4.87, 0.18, 0.19 |
| TextBox | Text632 |  | =[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1].Form!CELLS_PER_CONTAINER |  |  | 7.70, 4.57, 0.36, 0.21 |
| Label | Label634 | Cell/Cont  |  |  |  | 8.11, 4.58, 0.53, 0.19 |
| TextBox | Text641 | Est. | =([GROSS_SOURCE_PER_UNIT]*[SOURCE_REQUIRED])/([NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1].Form!CELLS_PER_CONTAINER*[seed_per_cell_to_use]) |  |  | 6.64, 5.14, 0.72, 0.20 |
| TextBox | Text643 |  | =[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1].Form!BEGIN_CONTAINER |  |  | 6.06, 5.14, 0.53, 0.20 |
| Label | Label644 | Seed/Cell |  |  |  | 8.12, 5.14, 0.53, 0.20 |
| TextBox | seed_per_cell_to_use |  |  |  |  | 7.62, 5.13, 0.45, 0.21 |
| Label | Label646 | @ |  |  |  | 7.41, 5.14, 0.18, 0.19 |
| Page | Agreements |  |  |  |  | 0.11, 2.38, 8.69, 3.25 |
| Subform | NMIS_AGREEMENTS subform1 |  | Form.NMIS_AGREEMENTS subform1 (master: CN → child: AGREEMENT_LOT_CN) |  |  | 0.12, 2.69, 8.65, 2.38 |
| CommandButton | Preview Source Work Order | Preview/Print Source Work Order |  |  | Click | 3.67, 5.18, 1.71, 0.38 |
| Label | NMIS_AGREEMENTS subform1 Label | AGREEMENTS |  |  |  | 3.92, 2.42, 1.08, 0.20 |
| Page |   IMT |  |  |  |  | 0.11, 2.38, 8.69, 3.25 |
| TextBox | Inserted By | Inserted By: | INSERTED_BY |  |  | 1.84, 2.59, 0.00, 0.21 |
| TextBox | Inserted Date | Inserted Date: | INSERTED_DATE |  |  | 1.84, 2.84, 0.84, 0.21 |
| TextBox | Inserted Instance | Inserted Instance: | INSERTED_INSTANCE |  |  | 1.84, 3.09, 0.25, 0.21 |
| TextBox | Modified By | Modified By: | MODIFIED_BY |  |  | 4.61, 2.59, 0.00, 0.21 |
| TextBox | Modified Date | Modified Date: | MODIFIED_DATE |  |  | 4.61, 2.84, 0.95, 0.21 |
| TextBox | Modified Instance | Modified Instance: | MODIFIED_INSTANCE |  |  | 4.61, 3.09, 0.25, 0.21 |
| TextBox | Transferred By | Transferred By: | TRANSFERRED_BY |  |  | 7.51, 2.59, 0.00, 0.21 |
| TextBox | Transferred Date | Transferred Date: | TRANSFERRED_DATE |  |  | 7.51, 2.84, 0.60, 0.21 |
| TextBox | Transferred Instance | Transferred Instance: | TRANSFERRED_INSTANCE |  |  | 7.51, 3.09, 0.25, 0.21 |
| Rectangle | Box276 |  |  |  |  | 0.34, 2.52, 2.67, 0.88 |
| Rectangle | Box277 |  |  |  |  | 3.13, 2.52, 2.67, 0.88 |
| Rectangle | Box278 |  |  |  |  | 5.90, 2.52, 2.67, 0.88 |
| Subform | NMIS_FACTORS subform | FACTORS | Form.NMIS_FACTORS_FOR_AGREEMENT_LOTS subform (master: SPECIES_PRODUCT_CN → child: SPECIES_PRODUCT_CN) |  |  | 0.33, 4.76, 8.25, 0.83 |
| Subform | NMIS_AGREE_UNITS subform | UNITS | Form.NMIS_AGREE_LOTS_UNITS subform (master: SPECIES_PRODUCT_CN → child: CN) |  |  | 0.33, 3.67, 6.96, 0.83 |
| Page | Field_Locations | Locations |  |  |  | 0.11, 2.38, 8.69, 3.25 |
| Subform | NMIS_ID_LOCATIONS subform1 |  | Form.NMIS_ID_LOCATIONS subform1 (master: CN → child: AGREEMENT_LOT_CN) |  |  | 0.14, 2.58, 8.64, 2.97 |
| Page | MISC |  Misc |  |  |  | 0.11, 2.38, 8.69, 3.25 |
| Subform | NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1 |  | Form.NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1 (master: SPECIES_PRODUCT_CN → child: SPECIES_PRODUCT_CN) |  |  | 0.25, 2.62, 2.75, 0.59 |
| ComboBox | SPECIES_PRODUCT_CN | Species Product | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [Species_Products_with_SizeSpecString].[Species_Products_String] AS [Species Product], [Product_String].[Product_String] AS Product FROM Product_String INNER JOIN (Species_Products_with_SizeSpecString INNER JOIN NMIS_SPECIES_PRODUCTS ON [Species_Products_with_SizeSpecString].[CN]=[NMIS_SPECIES_PRODUCTS].[CN]) ON [Product_String].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN] WHERE ((([Species_Products_with_SizeSpecString].[PLNTMSTR_SYMBOL])=[Forms]![NMIS_AGREEMENT_LOTS]![PLNTMSTR_SYMBOL])) ORDER BY [Product_String].[Product_String], [Species_Products_with_SizeSpecString].[Species_Products_String];  | DblClick, Exit | 2.16, 0.24, 3.66, 0.20 |
| ComboBox | Source Code | Source Code | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID], [NMIS_SOURCE_LOTS].[SOURCE_CODE] FROM NMIS_SOURCE_LOTS ORDER BY [NMIS_SOURCE_LOTS].[ID];  |  | 3.04, 0.78, 2.79, 0.20 |
| TextBox | ID_ORIGINAL | Original ID | ID_ORIGINAL |  | DblClick, Exit | 8.02, 0.78, 0.82, 0.20 |
| ComboBox | PREVIOUS_AGREEMENT_LOT_CN | Previous Agreement Lot | PREVIOUS_AGREEMENT_LOT_CN | SELECT [NMIS_AGREEMENT_LOTS].[CN], [NMIS_AGREEMENT_LOTS].[ID] FROM NMIS_AGREEMENT_LOTS ORDER BY [NMIS_AGREEMENT_LOTS].[ID];  |  | 0.08, 1.34, 1.63, 0.20 |
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 2.96, 0.25, 0.00, 0.00 |

## Code-behind (VBA)

```vb
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
    Dim Cells_Per_Container As Double
    Dim CONTAINER_ASF As Double
    Dim CONTAINER_FACTOR As Double


' Calculate source needs
    REQ = (Forms!NMIS_AGREEMENT_LOTS!TOTAL_REQUEST * 1000)
    PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
          (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
          (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
    ASF = (Forms!NMIS_AGREEMENT_LOTS!HARVEST_ASF_ADJUSTMENT / 100)
    HARVEST_FACTOR = (Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_1 / 100) * _
                     (Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_2 / 100) * _
                     (Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_3 / 100) * _
                     (Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_4 / 100)
    Source_Req = Round((REQ / (PLS * HARVEST_FACTOR * ASF)), 3)

    If Source_Req <= Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] Then
            Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
        Else
            If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] >= 0 Then
                If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < 0.0001 Then
                    MsgBox "This is a Zero Balance Lot!"
                    Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
                Else
                    Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS]
                    MsgBox "Insufficient Seed. Check Calculated for Request Adjustment"
                End If
            Else
                Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
                MsgBox "Undetermined amount of source material."
            End If
    End If
    
    'Calculate Grow Containers
    If [DESIRED_DENSITY] > 0 Then
            Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
            CF1 = [CONTAINER_FACTOR_1] / 100
            CF2 = [CONTAINER_FACTOR_2] / 100
            CF3 = [CONTAINER_FACTOR_3] / 100
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
     
Exit_Calculate_Click:
    Exit Sub

Err_Calculate_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Calculate_Click
    
End Sub

Private Sub Desired_Density_DblClick(Cancel As Integer)

    MsgBox "Target Density is now UNLOCKED for Editing."
    [DESIRED_DENSITY].Locked = False

End Sub

Private Sub Desired_Density_Exit(Cancel As Integer)

'Relock Desired_Density
    
    If [DESIRED_DENSITY].Locked = False Then
        [DESIRED_DENSITY].Locked = True
    End If

'Recalculate the container needs if the Target Density is changed

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
            PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
                  (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
                  (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
            CF1 = [CONTAINER_FACTOR_1] / 100
            CF2 = [CONTAINER_FACTOR_2] / 100
            CF3 = [CONTAINER_FACTOR_3] / 100
            TARGET_DENSITY = [DESIRED_DENSITY]
            Cells_Per_Container = _
                [NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![Cells_Per_Container]
            CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
            CONTAINER_FACTOR = CF1 * CF2 * CF3
    
            Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                    ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * CONTAINER_ASF)
        Else
            MsgBox "No target density has been entered. Est Containers will not be calculated."
     End If
     End If

End Sub

Private Sub Form_Close()
' Close the NMIS_AGREEMENT_LOTS_NEW FORM if it is open

    Dim strFormName As String
    
    strFormName = "NMIS_AGREEMENT_LOTS_NEW"
    
    If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 Then
        DoCmd.Close acForm, "NMIS_AGREEMENT_LOTS_NEW"
    End If
    
End Sub

Private Sub Form_Current()
    SPECIES_PRODUCT_CN.Requery
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

Private Sub Refresh_and_Close_Form_Click()
On Error GoTo Err_Refresh_and_Close_Form_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Refresh_and_Close_Form_Click:
    Exit Sub

Err_Refresh_and_Close_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_and_Close_Form_Click
    
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

Private Sub SOURCE_REQUIRED_DblClick(Cancel As Integer)

    [SOURCE_REQUIRED].Locked = False
    MsgBox "Source Required is now UNLOCKED for Editing."
    
End Sub

Private Sub SOURCE_REQUIRED_Exit(Cancel As Integer)
'Relock Source_Required
    
    If [SOURCE_REQUIRED].Locked = False Then
        [SOURCE_REQUIRED].Locked = True
    End If

'Recalculate the container needs if the source amount is changed

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
        PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
              (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
             (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
        CF1 = [CONTAINER_FACTOR_1] / 100
        CF2 = [CONTAINER_FACTOR_2] / 100
        CF3 = [CONTAINER_FACTOR_3] / 100
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
End Sub

Private Sub SPECIES_PRODUCT_CN_DblClick(Cancel As Integer)
    
    [SPECIES_PRODUCT_CN].Locked = False
    MsgBox "Species Product is now UNLOCKED for Editing."
    
End Sub

Private Sub SPECIES_PRODUCT_CN_Exit(Cancel As Integer)

    [SPECIES_PRODUCT_CN].Locked = True

End Sub

Private Sub TOTAL_REQUEST_DblClick(Cancel As Integer)

    [TOTAL_REQUEST].Locked = False
    MsgBox "Total Request is now UNLOCKED for Editing."
    
End Sub

Private Sub TOTAL_REQUEST_Exit(Cancel As Integer)
    
    If [TOTAL_REQUEST].Locked = False Then
        [TOTAL_REQUEST].Locked = True
        MsgBox "Total Request is now LOCKED."
    End If
    
End Sub

Private Sub Use_Last_Test_Data_Click()
On Error GoTo Err_Use_Last_Test_Data_Click
    
    Forms!NMIS_AGREEMENT_LOTS!Source_Stratified = _
            Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!STRATIFIED
    Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT = _
            Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!GERM_PCT
    Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT = _
            Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!PURITY_PCT
    Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT = _
            Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!GROSS_SOURCE_PER_UNIT
    
Exit_Use_Last_Test_Data_Click:
    Exit Sub

Err_Use_Last_Test_Data_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Use_Last_Test_Data_Click
    
End Sub


Private Sub Use_Default_Factors_Click()
On Error GoTo Err_Use_Default_Factors_Click

    Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_1 = [NMIS_FACTORS subform]![HARVEST_FACTOR_1]
    Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_2 = [NMIS_FACTORS subform]![HARVEST_FACTOR_2]
    Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_3 = [NMIS_FACTORS subform]![HARVEST_FACTOR_3]
    Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_4 = [NMIS_FACTORS subform]![HARVEST_FACTOR_4]
    Forms!NMIS_AGREEMENT_LOTS!CONTAINER_FACTOR_1 = [NMIS_FACTORS subform]![CONTAINER_FACTOR_1]
    Forms!NMIS_AGREEMENT_LOTS!CONTAINER_FACTOR_2 = [NMIS_FACTORS subform]![CONTAINER_FACTOR_2]
    Forms!NMIS_AGREEMENT_LOTS!CONTAINER_FACTOR_3 = [NMIS_FACTORS subform]![CONTAINER_FACTOR_3]
    Forms!NMIS_AGREEMENT_LOTS!DESIRED_DENSITY = [NMIS_FACTORS subform]![DESIRED_DENSITY]
    
Exit_Use_Default_Factors_Click:
    Exit Sub

Err_Use_Default_Factors_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Use_Default_Factors_Click
    
End Sub


Private Sub Preview_Source_Work_Order_Click()
On Error GoTo Err_Preview_Source_Work_Order_Click

    Dim stDocName As String

    stDocName = "Seed_Bank_Work_Order"
    
    [CN].Requery
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Source_Work_Order_Click:
    Exit Sub

Err_Preview_Source_Work_Order_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Source_Work_Order_Click
    
End Sub
```
