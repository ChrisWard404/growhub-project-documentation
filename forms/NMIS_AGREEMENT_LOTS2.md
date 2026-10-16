# Form: NMIS_AGREEMENT_LOTS2

**Caption:** NMIS AGREEMENT LOTS  
**Record source:**

```sql
NMIS_AGREEMENT_LOTS
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`, `NMIS_FACTORS`, `NMIS_FISCAL_YEARS`, `NMIS_PRODUCTS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES_PRODUCTS`, `NMIS_UNITS`  
**Subforms/subreports:** `Form.NMIS_AGREEMENTS subform1`, `Form.NMIS_SOURCE_LastTestData Query subform`, `Form.Seed_Balance Query subform`, `Form.NMIS_FACTORS_FOR_AGREEMENT_LOTS subform`, `Form.NMIS_AGREE_LOTS_UNITS subform`  
**Opens:** `Report:Refresh_Close`, `Report:Seed_Bank_Work_Order`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CN |  | CN |  |  | 0.08, 0.24, 1.22, 0.00 |
| TextBox | Index |  | Index |  |  | 1.33, 0.24, 0.00, 0.00 |
| Label | Label98 | NMIS Agreement Lots |  |  |  | 3.12, 0.12, 2.42, 0.31 |
| CommandButton | Refresh and Close Form | Save and Close |  |  | Click | 7.42, 0.08, 1.14, 0.28 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID | Nursery ID | ID |  |  | 1.92, 0.24, 0.78, 0.21 |
| ComboBox | CATEGORY_CODE | Category | CATEGORY_CODE | SELECT [NMIS_CATEGORIES].[CATEGORY_CODE], [NMIS_CATEGORIES].[CATEGORY_DESC] FROM NMIS_CATEGORIES;  | Enter, Exit | 0.10, 0.24, 1.50, 0.21 |
| ComboBox | NURSERY_ASSOCIATE | Nursery Associate | NURSERY_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME], [NMIS_ASSOCIATES].[NURSERY] FROM NMIS_ASSOCIATES WHERE ((([NMIS_ASSOCIATES].[NURSERY])=-1));  |  | 7.62, 0.24, 1.25, 0.21 |
| ComboBox | BEGIN_FY | Begin FY | BEGIN_FY | SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;  |  | 6.17, 0.24, 0.63, 0.21 |
| ComboBox | END_FY | End FY | END_FY | SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;  |  | 6.92, 0.24, 0.63, 0.21 |
| TextBox | TOTAL_REQUEST | Total Request | TOTAL_REQUEST |  | Enter | 2.88, 0.24, 0.96, 0.21 |
| TextBox | PREVIOUS_SPECIES_PRODUCT_CN | Previous Species Product | PREVIOUS_SPECIES_PRODUCT_CN |  |  | 2.46, 1.32, 1.74, 0.20 |
| ComboBox | PREVIOUS_NURSERY_ASSOCIATE | Previous Nursery Associate | PREVIOUS_NURSERY_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 0.12, 1.33, 1.88, 0.21 |
| TextBox | CLIENT_SURPLUS_AVAILABLE | Client Surplus Avaliable | CLIENT_SURPLUS_AVAILABLE |  |  | 4.54, 1.32, 1.61, 0.21 |
| TextBox | NURSERY_SURPLUS_AVALIABLE | Nursery Surplus Avaliable | NURSERY_SURPLUS_AVALIABLE |  |  | 6.42, 1.32, 1.86, 0.21 |
| TextBox | NOTE | Note | NOTE |  |  | 0.12, 1.84, 8.40, 0.28 |
| ComboBox | SOURCE_LOT_CN | Source Lot ID | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID], [NMIS_SOURCE_LOTS].[SOURCE_CODE] FROM NMIS_SOURCE_LOTS ORDER BY [NMIS_SOURCE_LOTS].[ID];  |  | 0.12, 0.78, 0.00, 0.20 |
| TabControl | TabCtl197 |  |  |  |  | 0.00, 2.08, 8.67, 3.53 |
| Page | Agreements |  |  |  |  | 0.07, 2.33, 8.52, 3.21 |
| Subform | NMIS_AGREEMENTS subform1 | AGREEMENTS | Form.NMIS_AGREEMENTS subform1 (master: CN → child: AGREEMENT_LOT_CN) |  |  | 0.17, 2.58, 8.34, 1.92 |
| CommandButton | Preview Source Work Order | Preview/Print Source Work Order |  |  | Click | 3.58, 4.83, 1.71, 0.38 |
| Page | Calculations |  |  |  |  | 0.07, 2.33, 8.52, 3.21 |
| TextBox | HARVEST_FACTOR_1 | Harvest Factor 1: | HARVEST_FACTOR_1 |  |  | 4.25, 2.83, 0.28, 0.20 |
| TextBox | HARVEST_FACTOR_2 | Harvest Factor 2: | HARVEST_FACTOR_2 |  |  | 4.25, 3.09, 0.28, 0.20 |
| TextBox | HARVEST_FACTOR_3 | Harvest Factor 3: | HARVEST_FACTOR_3 |  |  | 4.25, 3.33, 0.28, 0.20 |
| TextBox | HARVEST_FACTOR_4 | Harvest Factor 4: | HARVEST_FACTOR_4 |  |  | 4.25, 3.58, 0.28, 0.20 |
| TextBox | SOURCE_REQUIRED | Source Required: | SOURCE_REQUIRED |  |  | 7.15, 3.88, 0.53, 0.20 |
| TextBox | CONTAINER_FACTOR_1 | Container Factor 1: | CONTAINER_FACTOR_1 |  |  | 4.25, 3.95, 0.28, 0.20 |
| TextBox | CONTAINER_FACTOR_2 | Container Factor 2: | CONTAINER_FACTOR_2 |  |  | 4.25, 4.21, 0.28, 0.20 |
| TextBox | CONTAINER_FACTOR_3 | Container Factor 3: | CONTAINER_FACTOR_3 |  |  | 4.25, 4.45, 0.28, 0.20 |
| TextBox | EST_CONTAINERS_REQUIRED | Est Containers: | EST_CONTAINERS_REQUIRED |  |  | 6.90, 5.06, 0.65, 0.20 |
| Rectangle | Box268 |  |  |  |  | 2.80, 2.79, 2.51, 1.06 |
| Rectangle | Box269 |  |  |  |  | 2.80, 3.90, 2.52, 0.82 |
| Rectangle | Box270 |  |  |  |  | 2.74, 2.52, 2.63, 2.87 |
| Rectangle | Box271 |  |  |  |  | 5.60, 3.25, 2.72, 2.12 |
| CheckBox | Source_Stratified | Source Stratified | SOURCE_STRATIFIED |  |  | 1.91, 2.60, 0.00, 0.21 |
| TextBox | SOURCE_PURITY_PCT | Source Purity %: | SOURCE_PURITY_PCT |  |  | 1.91, 3.03, 0.40, 0.21 |
| TextBox | HARVEST_ASF_ADJUSTMENT | Harvest ASF Adj: | HARVEST_ASF_ADJUSTMENT |  |  | 4.25, 4.82, 0.28, 0.21 |
| TextBox | CONTAINER_ASF_ADJUSTMENT | Container ASF Adj: | CONTAINER_ASF_ADJUSTMENT |  |  | 4.25, 5.04, 0.28, 0.21 |
| TextBox | CONTAINER_PROBABILITY_PCT | Container Probability %: | CONTAINER_PROBABILITY_PCT |  |  | 7.44, 2.85, 0.40, 0.21 |
| TextBox | THINNING_PROBABILITY_PCT | Thinning Probability %: | THINNING_PROBABILITY_PCT |  |  | 7.44, 2.61, 0.40, 0.21 |
| Rectangle | Box331 |  |  |  |  | 0.13, 2.51, 2.43, 1.02 |
| Rectangle | Box332 |  |  |  |  | 2.80, 4.76, 2.52, 0.57 |
| Rectangle | Box333 |  |  |  |  | 5.60, 2.52, 2.69, 0.65 |
| Subform | NMIS_SOURCE_LastTestData Query subform |  | Form.NMIS_SOURCE_LastTestData Query subform (master: SOURCE_LOT_CN → child: SOURCE_LOT_CN) |  |  | 0.62, 3.69, 1.89, 1.02 |
| TextBox | SOURCE_GERM_PCT | Source Germ %: | SOURCE_GERM_PCT |  |  | 1.91, 2.80, 0.39, 0.20 |
| Rectangle | Box342 |  |  |  |  | 0.14, 3.65, 2.43, 1.11 |
| CommandButton | Use Last Test Data | Click to Use Last Test Data |  |  | Click | 0.19, 3.81, 0.34, 0.82 |
| CommandButton | Calculate | Click to Calculate Source Required |  |  | Click | 5.72, 3.39, 1.29, 0.40 |
| TextBox | GROSS_SOURCE_PER_UNIT | Gross/Unit: | GROSS_SOURCE_PER_UNIT |  |  | 1.91, 3.28, 0.58, 0.20 |
| Subform | Seed_Balance Query subform |  | Form.Seed_Balance Query subform (master: SOURCE_LOT_CN → child: SOURCE_LOT_CN) |  |  | 0.33, 4.96, 1.99, 0.28 |
| Rectangle | Box351 |  |  |  |  | 0.15, 4.83, 2.43, 0.56 |
| CommandButton | Use_Default_Factors | Click to Use Default Factors |  |  | Click | 2.81, 2.55, 1.43, 0.19 |
| Rectangle | Box374 |  |  |  |  | 5.67, 3.33, 2.58, 0.88 |
| CommandButton | Calculate_Containers_Required_Button | Click To Calculate Est Containers Required |  |  | Click | 5.74, 4.29, 1.38, 0.36 |
| Rectangle | Box376 |  |  |  |  | 5.68, 4.27, 2.58, 1.05 |
| TextBox | Source_Units |  | =[Seed_Balance Query subform].Form![Text4] |  |  | 7.77, 3.88, 0.33, 0.20 |
| TextBox | Type_of_Container |  | =[NMIS_AGREE_UNITS subform].Form![NMIS_UNITS_UNIT_CODE] |  |  | 7.62, 5.06, 0.53, 0.20 |
| ComboBox | Combo383 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN], [NMIS_PRODUCTS].[HARVEST_1_FACTOR_CODE] FROM (NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN]) INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN];  |  | 4.58, 2.83, 0.62, 0.20 |
| ComboBox | Combo386 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN], [NMIS_PRODUCTS].[HARVEST_2_FACTOR_CODE] FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN]) ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN];  |  | 4.58, 3.09, 0.62, 0.20 |
| ComboBox | Combo387 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN], [NMIS_PRODUCTS].[HARVEST_3_FACTOR_CODE] FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN]) ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN];  |  | 4.58, 3.33, 0.62, 0.20 |
| ComboBox | Combo388 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN], [NMIS_PRODUCTS].[HARVEST_4_FACTOR_CODE] FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN]) ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN];  |  | 4.58, 3.58, 0.62, 0.20 |
| ComboBox | Combo389 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN], [NMIS_PRODUCTS].[CONTAINER_1_FACTOR_CODE] FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN]) ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN];  |  | 4.58, 3.95, 0.62, 0.20 |
| ComboBox | Combo390 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN], [NMIS_PRODUCTS].[CONTAINER_2_FACTOR_CODE] FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN]) ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN];  |  | 4.58, 4.21, 0.62, 0.20 |
| ComboBox | Combo391 |  | SPECIES_PRODUCT_CN | SELECT [NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN], [NMIS_PRODUCTS].[CONTAINER_3_FACTOR_CODE] FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN]) ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN];  |  | 4.58, 4.45, 0.62, 0.20 |
| TextBox | Text392 |  | =[NMIS_FACTORS subform].Form![LIKE_ASSOCIATE] |  |  | 4.76, 2.55, 0.50, 0.20 |
| Label | Label396 | Like: |  |  |  | 4.42, 2.57, 0.30, 0.17 |
| TextBox | Text397 | Target Density: | =[NMIS_FACTORS subform].Form![DESIRED_DENSITY] |  |  | 6.90, 4.81, 0.41, 0.20 |
| Page |   IMT |  |  |  |  | 0.07, 2.33, 8.52, 3.21 |
| TextBox | Inserted By | Inserted By: | INSERTED_BY |  |  | 1.76, 2.50, 0.00, 0.21 |
| TextBox | Inserted Date | Inserted Date: | INSERTED_DATE |  |  | 1.76, 2.75, 0.84, 0.21 |
| TextBox | Inserted Instance | Inserted Instance: | INSERTED_INSTANCE |  |  | 1.76, 3.00, 0.25, 0.21 |
| TextBox | Modified By | Modified By: | MODIFIED_BY |  |  | 4.53, 2.50, 0.00, 0.21 |
| TextBox | Modified Date | Modified Date: | MODIFIED_DATE |  |  | 4.53, 2.75, 0.95, 0.21 |
| TextBox | Modified Instance | Modified Instance: | MODIFIED_INSTANCE |  |  | 4.53, 3.00, 0.25, 0.21 |
| TextBox | Transferred By | Transferred By: | TRANSFERRED_BY |  |  | 7.42, 2.50, 0.00, 0.21 |
| TextBox | Transferred Date | Transferred Date: | TRANSFERRED_DATE |  |  | 7.42, 2.75, 0.60, 0.21 |
| TextBox | Transferred Instance | Transferred Instance: | TRANSFERRED_INSTANCE |  |  | 7.42, 3.00, 0.25, 0.21 |
| Rectangle | Box276 |  |  |  |  | 0.26, 2.42, 2.67, 0.88 |
| Rectangle | Box277 |  |  |  |  | 3.05, 2.42, 2.67, 0.88 |
| Rectangle | Box278 |  |  |  |  | 5.82, 2.43, 2.67, 0.88 |
| Subform | NMIS_FACTORS subform | FACTORS | Form.NMIS_FACTORS_FOR_AGREEMENT_LOTS subform (master: SPECIES_PRODUCT_CN → child: SPECIES_PRODUCT_CN) |  |  | 0.25, 4.67, 8.25, 0.83 |
| Subform | NMIS_AGREE_UNITS subform | UNITS | Form.NMIS_AGREE_LOTS_UNITS subform (master: SPECIES_PRODUCT_CN → child: CN) |  |  | 0.25, 3.58, 6.96, 0.83 |
| ComboBox | SPECIES_PRODUCT_CN | Species Product | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_PRODUCTS].[PRODUCT_DESC], [NMIS_SPECIES_PRODUCTS].[SPECIES_PRODUCT_DESC] FROM NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN];  |  | 4.08, 0.24, 2.00, 0.20 |
| ComboBox | Source Code | Source Code | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID], [NMIS_SOURCE_LOTS].[SOURCE_CODE] FROM NMIS_SOURCE_LOTS ORDER BY [NMIS_SOURCE_LOTS].[ID];  |  | 1.21, 0.78, 2.43, 0.20 |

## Code-behind (VBA)

```vb
Private Sub Calculate_Click()
On Error GoTo Err_Calculate_Click
    Dim ASF As Double
    Dim PLS As Double
    Dim NF As Double
    Dim REQ As Double
    Dim HARVEST_FACTOR As Double
    Dim Source_Req As Double

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
    Source_Req = (REQ / (PLS * HARVEST_FACTOR * ASF))
    
    Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req

    
Exit_Calculate_Click:
    Exit Sub

Err_Calculate_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Calculate_Click
    
End Sub

Private Sub CATEGORY_CODE_Enter()

    With CodeContextObject
        ' Sets the Category_Code to a default value of Bareroot'
        .CATEGORY_CODE = "BR"
    End With
        
End Sub

Private Sub CATEGORY_CODE_Exit(Cancel As Integer)

    With CodeContextObject
        ' Sets the ID to a default based on the table index'
        .ID = .Index
        DoCmd.RunCommand acCmdRefreshPage
    End With


CATEGORY_CODE_Exit_Exit:
    Exit Sub
    
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

Private Sub TOTAL_REQUEST_Enter()
On Error GoTo TOTAL_REQUEST_Enter_Err

    Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN = Forms!NMIS_AGREEMENT_LOTS!CN


TOTAL_REQUEST_Enter_Exit:
    Exit Sub
    
TOTAL_REQUEST_Enter_Err:
    MsgBox Error$
    Resume TOTAL_REQUEST_Enter_Exit
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
    
Exit_Use_Default_Factors_Click:
    Exit Sub

Err_Use_Default_Factors_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Use_Default_Factors_Click
    
End Sub


Private Sub Calculate_Containers_Required_Button_Click()
On Error GoTo Err_Calculate_Containers_Required_Button_Click

Dim ASF As Double
    Dim Source_Req As Double
    Dim PLS As Double
    Dim CF1 As Double
    Dim CF2 As Double
    Dim CF3 As Double
    Dim TARGET_DENSITY As Double
    Dim Cells_Per_Container As Double
    Dim CONTAINER_ASF As Double
    Dim CONTAINER_FACTOR As Double


'Calculate Grow Containers
    Source_Req = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
    PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
          (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
          (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
    CF1 = [NMIS_FACTORS subform]![CONTAINER_FACTOR_1] / 100
    CF2 = [NMIS_FACTORS subform]![CONTAINER_FACTOR_2] / 100
    CF3 = [NMIS_FACTORS subform]![CONTAINER_FACTOR_3] / 100
    TARGET_DENSITY = [NMIS_FACTORS subform]![DESIRED_DENSITY]
    Cells_Per_Container = [NMIS_AGREE_UNITS subform]![Cells_Per_Container]
    CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
    CONTAINER_FACTOR = CF1 * CF2 * CF3
    
    Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
            ((Source_Req * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
              CONTAINER_ASF)
    

Exit_Calculate_Containers_Required_Butto:
    Exit Sub

Err_Calculate_Containers_Required_Button_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Calculate_Containers_Required_Butto
    
End Sub
Private Sub Preview_Source_Work_Order_Click()
On Error GoTo Err_Preview_Source_Work_Order_Click

    Dim stDocName As String

    stDocName = "Seed_Bank_Work_Order"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Source_Work_Order_Click:
    Exit Sub

Err_Preview_Source_Work_Order_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Source_Work_Order_Click
    
End Sub
```
