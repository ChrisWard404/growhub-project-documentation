# Form: NMIS_AGREEMENT_LOTS_old

**Caption:** NMIS AGREEMENT LOTS  
**Record source:**

```sql
NMIS_AGREEMENT_LOTS
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`, `NMIS_FISCAL_YEARS`, `NMIS_PRODUCTS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Form.NMIS_AGREEMENTS subform1`, `Form.NMIS_SOURCE_LastTestData Query subform`, `Form.Seed_Balance Query subform`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CN |  | CN |  |  | 0.08, 0.24, 1.22, 0.00 |
| TextBox | Index |  | Index |  |  | 1.33, 0.24, 0.00, 0.00 |
| Label | Label98 | NMIS Agreement Lots |  |  |  | 3.09, 0.12, 2.48, 0.31 |
| CommandButton | Refresh and Close | Save and Close |  |  | Click | 7.75, 0.08, 0.95, 0.38 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID | Nursery ID | ID |  |  | 0.12, 0.24, 0.78, 0.21 |
| ComboBox | CATAGORY_CODE | Catagory Code | CATEGORY_CODE | SELECT [NMIS_CATEGORIES].[CATEGORY_CODE], [NMIS_CATEGORIES].[CATEGORY_DESC] FROM NMIS_CATEGORIES;  |  | 1.09, 0.24, 1.50, 0.21 |
| ComboBox | NURSERY_ASSOCIATE | Nursery Associate | NURSERY_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 6.35, 0.24, 1.25, 0.21 |
| ComboBox | BEGIN_FY | Begin FY | BEGIN_FY | SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;  |  | 0.12, 0.78, 0.63, 0.21 |
| ComboBox | END_FY | End FY | END_FY | SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;  |  | 0.88, 0.78, 0.63, 0.21 |
| TextBox | TOTAL_REQUEST | Total Request | TOTAL_REQUEST |  |  | 2.06, 0.78, 0.96, 0.21 |
| TextBox | PREVIOUS_SPECIES_PRODUCT_CN | Previous Species Product | PREVIOUS_SPECIES_PRODUCT_CN |  |  | 2.46, 1.32, 1.74, 0.20 |
| ComboBox | PREVIOUS_NURSERY_ASSOCIATE | Previous Nursery Associate | PREVIOUS_NURSERY_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 0.12, 1.33, 1.88, 0.21 |
| TextBox | CLIENT_SURPLUS_AVAILABLE | Client Surplus Avaliable | CLIENT_SURPLUS_AVAILABLE |  |  | 4.00, 0.78, 1.61, 0.21 |
| TextBox | NURSERY_SURPLUS_AVALIABLE | Nursery Surplus Avaliable | NURSERY_SURPLUS_AVALIABLE |  |  | 5.88, 0.78, 1.86, 0.21 |
| TextBox | NOTE | Note | NOTE |  |  | 0.12, 1.84, 8.40, 0.28 |
| ComboBox | SOURCE_LOT_CN | Source Lot ID | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS ORDER BY [NMIS_SOURCE_LOTS].[ID];  |  | 4.97, 0.24, 0.00, 0.20 |
| TabControl | TabCtl197 |  |  |  |  | 0.00, 2.21, 8.82, 3.58 |
| Page | Agreements |  |  |  |  | 0.07, 2.46, 8.68, 3.26 |
| Subform | NMIS_AGREEMENTS subform1 | AGREEMENTS | Form.NMIS_AGREEMENTS subform1 (master: CN → child: AGREEMENT_LOT_CN) |  |  | 0.16, 3.00, 8.34, 1.92 |
| Page | Calculations |  |  |  |  | 0.07, 2.46, 8.68, 3.26 |
| TextBox | HARVEST_FACTOR_1 | Harvest Factor 1: | HARVEST_FACTOR_1 |  |  | 4.57, 2.74, 0.40, 0.20 |
| TextBox | HARVEST_FACTOR_2 | Harvest Factor 2: | HARVEST_FACTOR_2 |  |  | 4.57, 3.02, 0.40, 0.20 |
| TextBox | HARVEST_FACTOR_3 | Harvest Factor 3: | HARVEST_FACTOR_3 |  |  | 4.57, 3.29, 0.40, 0.20 |
| TextBox | HARVEST_FACTOR_4 | Harvest Factor 4: | HARVEST_FACTOR_4 |  |  | 4.57, 3.57, 0.40, 0.20 |
| TextBox | SOURCE_REQUIRED | Source Required: | SOURCE_REQUIRED |  |  | 7.75, 4.52, 0.50, 0.20 |
| TextBox | CONTAINER_FACTOR_1 | Container Factor 1: | CONTAINER_FACTOR_1 |  |  | 4.57, 4.00, 0.40, 0.20 |
| TextBox | CONTAINER_FACTOR_2 | Container Factor 2: | CONTAINER_FACTOR_2 |  |  | 4.57, 4.27, 0.40, 0.20 |
| TextBox | CONTAINER_FACTOR_3 | Container Factor 3: | CONTAINER_FACTOR_3 |  |  | 4.57, 4.54, 0.40, 0.20 |
| TextBox | EST_CONTAINERS_REQUIRED | Est Containers Required: | EST_CONTAINERS_REQUIRED |  |  | 7.75, 4.78, 0.50, 0.20 |
| Rectangle | Box268 |  |  |  |  | 2.99, 2.67, 2.17, 1.17 |
| Rectangle | Box269 |  |  |  |  | 2.99, 3.92, 2.17, 0.92 |
| Rectangle | Box270 |  |  |  |  | 2.87, 2.53, 2.46, 2.44 |
| Rectangle | Box271 |  |  |  |  | 5.67, 4.12, 2.71, 0.96 |
| CheckBox | Source_Stratified | Source Stratified | SOURCE_STRATIFIED |  |  | 1.96, 2.62, 0.00, 0.21 |
| TextBox | SOURCE_PURITY_PCT | Source Purity %: | SOURCE_PURITY_PCT |  |  | 1.96, 3.05, 0.40, 0.21 |
| TextBox | HARVEST_ASF_ADJUSTMENT | Harvest ASF Adj: | HARVEST_ASF_ADJUSTMENT |  |  | 7.49, 2.59, 0.40, 0.21 |
| TextBox | CONTAINER_ASF_ADJUSTMENT | Container ASF Adj: | CONTAINER_ASF_ADJUSTMENT |  |  | 7.49, 2.85, 0.40, 0.21 |
| TextBox | CONTAINER_PROBABILITY_PCT | Container Probability %: | CONTAINER_PROBABILITY_PCT |  |  | 7.49, 3.54, 0.40, 0.21 |
| TextBox | THINNING_PROBABILITY_PCT | Thinning Probability %: | THINNING_PROBABILITY_PCT |  |  | 7.49, 3.30, 0.40, 0.21 |
| Rectangle | Box331 |  |  |  |  | 0.18, 2.53, 2.43, 1.02 |
| Rectangle | Box332 |  |  |  |  | 5.65, 2.53, 2.72, 0.60 |
| Rectangle | Box333 |  |  |  |  | 5.65, 3.22, 2.72, 0.65 |
| Subform | NMIS_SOURCE_LastTestData Query subform |  | Form.NMIS_SOURCE_LastTestData Query subform (master: SOURCE_LOT_CN → child: SOURCE_LOT_CN) |  |  | 0.38, 3.73, 2.00, 0.99 |
| TextBox | SOURCE_GERM_PCT | Source Germ %: | SOURCE_GERM_PCT |  |  | 1.96, 2.82, 0.39, 0.20 |
| Rectangle | Box342 |  |  |  |  | 0.19, 3.67, 2.43, 1.11 |
| CommandButton | Use Last Test Data | Click to Use Last Test Data |  |  | Click | 0.25, 2.60, 0.34, 0.82 |
| CommandButton | Calculate | Click to Calculate |  |  | Click | 5.78, 4.21, 1.29, 0.21 |
| TextBox | GROSS_SOURCE_PER_UNIT | Gross/Unit: | GROSS_SOURCE_PER_UNIT |  |  | 1.96, 3.30, 0.58, 0.20 |
| Subform | Seed_Balance Query subform |  | Form.Seed_Balance Query subform (master: SOURCE_LOT_CN → child: SOURCE_LOT_CN) |  |  | 0.38, 4.97, 1.99, 0.28 |
| Rectangle | Box351 |  |  |  |  | 0.20, 4.85, 2.43, 0.55 |
| Page | Calibration |  |  |  |  | 0.07, 2.46, 8.68, 3.26 |
| TextBox | Calibration Revs Used | Calibration Revs Used: | CALIBRATION_REVS_USED |  |  | 2.71, 3.07, 0.40, 0.20 |
| TextBox | Calibration Rev Source Units | Calibration Rev Source Units: | CALIBRATION_REV_SOURCE_UNITS |  |  | 2.71, 3.33, 0.40, 0.20 |
| TextBox | Calibration Source Units | Calibration Source Units: | CALIBRATION_SOURCE_UNITS |  |  | 2.71, 2.80, 0.40, 0.20 |
| TextBox | Calibration Travel Per Rev | Calibration Travel/Rev: | CALIBRATION_TRAVEL_PER_REV |  |  | 2.71, 4.40, 0.40, 0.20 |
| TextBox | Calibration Sublots | Calibration Sublots: | CALIBRATION_SUBLOTS |  |  | 2.71, 4.13, 0.40, 0.20 |
| TextBox | Number Calibration Containers | Number Calibration Containers: | NUMBER_CALIBRATION_CONTAINERS |  |  | 2.71, 3.87, 0.40, 0.20 |
| TextBox | Calibration Funnel Setting ID | Calibration Funnel Setting ID: | CALIBRATION_FUNNEL_SETTING_ID |  |  | 2.71, 3.60, 0.40, 0.20 |
| Rectangle | Box316 |  |  |  |  | 0.31, 2.59, 2.96, 2.17 |
| Page |   IMT |  |  |  |  | 0.07, 2.46, 8.68, 3.26 |
| TextBox | Inserted By | Inserted By: | INSERTED_BY |  |  | 1.76, 2.92, 0.00, 0.21 |
| TextBox | Inserted Date | Inserted Date: | INSERTED_DATE |  |  | 1.76, 3.28, 0.84, 0.21 |
| TextBox | Inserted Instance | Inserted Instance: | INSERTED_INSTANCE |  |  | 1.76, 3.64, 0.25, 0.21 |
| TextBox | Modified By | Modified By: | MODIFIED_BY |  |  | 4.53, 2.92, 0.00, 0.21 |
| TextBox | Modified Date | Modified Date: | MODIFIED_DATE |  |  | 4.53, 3.28, 0.95, 0.21 |
| TextBox | Modified Instance | Modified Instance: | MODIFIED_INSTANCE |  |  | 4.53, 3.64, 0.25, 0.21 |
| TextBox | Transferred By | Transferred By: | TRANSFERRED_BY |  |  | 7.42, 2.92, 0.00, 0.21 |
| TextBox | Transferred Date | Transferred Date: | TRANSFERRED_DATE |  |  | 7.42, 3.28, 0.60, 0.21 |
| TextBox | Transferred Instance | Transferred Instance: | TRANSFERRED_INSTANCE |  |  | 7.42, 3.64, 0.25, 0.21 |
| Rectangle | Box276 |  |  |  |  | 0.26, 2.75, 2.67, 1.29 |
| Rectangle | Box277 |  |  |  |  | 3.05, 2.75, 2.67, 1.29 |
| Rectangle | Box278 |  |  |  |  | 5.82, 2.76, 2.67, 1.29 |
| ComboBox | SPECIES_PRODUCT_CN | Species Product | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_PRODUCTS].[PRODUCT_DESC], [NMIS_SPECIES_PRODUCTS].[SPECIES_PRODUCT_DESC] FROM NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN];  |  | 2.79, 0.24, 2.00, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

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
Private Sub Use_Last_Test_Data_Click()
On Error GoTo Err_Use_Last_Test_Data_Click
    
    Forms!NMIS_AGREEMENT_LOTS!Source_Stratified = Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!STRATIFIED
    Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT = Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!GERM_PCT
    Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT = Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!PURITY_PCT
    Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT = Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!GROSS_SOURCE_PER_UNIT
    
Exit_Use_Last_Test_Data_Click:
    Exit Sub

Err_Use_Last_Test_Data_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Use_Last_Test_Data_Click
    
End Sub
Private Sub Calculate_Click()
On Error GoTo Err_Calculate_Click
    Dim ASF As Double
    Dim PLS As Double
    Dim NF As Double
    Dim REQ As Double
    
    REQ = (Forms!NMIS_AGREEMENT_LOTS!TOTAL_REQUEST * 1000)
    PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT * 0.01) * (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT * 0.01))
    ASF = (Forms!NMIS_AGREEMENT_LOTS!HARVEST_ASF_ADJUSTMENT * 0.01)
    NF = (Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_1 * 0.01) * (Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_2 * 0.01) * (Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_3 * 0.01) * (Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_4 * 0.01)
    
    Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = (REQ / (PLS * NF * ASF))
    DoCmd.RunCommand acCmdRefreshPage
    
Exit_Calculate_Click:
    Exit Sub

Err_Calculate_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Calculate_Click
    
End Sub
```
