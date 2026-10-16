# Form: Oyjord_Calibration

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_PRODUCTS`, `NMIS_SOURCE_LOTS`, `NMIS_SOWING_ORDER`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Form.Oyjord_Calibration subform`  
**Opens:** `Form:NMIS_SOWING_ORDER`, `Report:oyjord_calibration_checklist`, `Report:oyjord_calibration_checklist_Blank`  
**Form events with code:** Load  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label16 | Oyjord Calibration |  |  |  | 2.96, 0.08, 2.07, 0.31 |
| Line | Line17 |  |  |  |  | 0.08, 0.50, 7.75, 0.00 |
| OptionGroup | View_by |  |  |  | AfterUpdate | 0.14, 0.05, 2.53, 0.41 |
| OptionButton | Option45 | Source Lot/Agreement Lot |  |  |  | 0.83, 0.11, 0.00, 0.00 |
| OptionButton | Option47 | Agreement Lot/Source Lot |  |  |  | 0.83, 0.28, 0.00, 0.00 |
| Label | Label99 | View by: |  |  |  | 0.22, 0.16, 0.55, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Green_Background_Box |  |  |  |  | 0.04, 0.01, 7.62, 0.33 |
| ComboBox | SPECIES_PRODUCT | Species Product: | =[cn] | SELECT [NMIS_AGREEMENT_LOTS].[CN], [PLNTMSTR_SYMBOL] & " " & [SPECIES_PRODUCT_DESC] AS SP FROM NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN];  |  | 4.94, 0.38, 2.71, 0.20 |
| ComboBox | PRODUCT | Product: | =[cn] | SELECT [NMIS_AGREEMENT_LOTS].[CN], [NMIS_PRODUCTS].[PRODUCT_DESC] FROM (NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN]) INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN];  |  | 0.94, 0.38, 2.71, 0.20 |
| ComboBox | CN |  |  | SELECT NMIS_AGREEMENT_LOTS.CN, IIf([Forms]![Oyjord_Calibration]![View_by]=1,[NMIS_SOURCE_LOTS].[ID] & "/" & [NMIS_AGREEMENT_LOTS].[ID],[NMIS_AGREEMENT_LOTS].[ID] & "/" & [NMIS_SOURCE_LOTS].[ID]) AS ID_ID, Source_Lot_ID_and_Source_string.SOURCE, NMIS_AGREEMENT_LOTS.EST_CONTAINERS_REQUIRED, NMIS_SPECIES_PRODUCTS.SOWING_GROUP, NMIS_AGREEMENT_LOTS.CALIBRATION_FUNNEL_SETTING_ID, NMIS_AGREEMENT_LOTS.CALIBRATION_REVS_USED, NMIS_AGREEMENT_LOTS.CALIBRATION_TRAVEL_PER_REV, Nz([SOWING_GROUP],"None") AS SG FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER RIGHT JOIN (Source_Lot_ID_and_Source_string INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON Source_Lot_ID_and_Source_string.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN) ON NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER.SPECIES_PRODUCT_CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((Nz([SOWING_GROUP],"None")) Like Nz([Forms]![Oyjord_Calibration]![Sowing_Group],"None")) AND ((NMIS_AGREEMENT_LOTS.BEGIN_FY)=[Forms]![Oyjord_Calibration]![Begin_fy]) AND ((NMIS_PRODUCTS.CATEGORY_CODE) Like "*B*" Or (NMIS_PRODUCTS.CATEGORY_CODE) Like "NSP") AND ((NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER.BEGIN_CONTAINER)="SB" Or (NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER.BEGIN_CONTAINER) Like "S?B")) ORDER BY IIf([Forms]![Oyjord_Calibration]![View_by]=1,[NMIS_SOURCE_LOTS].[ID] & "/" & [NMIS_AGREEMENT_LOTS].[ID],[NMIS_AGREEMENT_LOTS].[ID] & "/" & [NMIS_SOURCE_LOTS].[ID]), NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_SOURCE_LOTS.ID; | Enter | 1.96, 0.08, 1.72, 0.20 |
| Line | Line62 |  |  |  |  | 0.26, 0.85, 7.43, 0.00 |
| Subform | Ojyord_Calibration subform |  | Form.Oyjord_Calibration subform (master: CN → child: CN) |  |  | 0.26, 0.92, 7.45, 3.84 |
| ComboBox | Combo67 |  | =[cn] | SELECT [NMIS_AGREEMENT_LOTS].[CN], [Source_Lot_ID_and_Source_string].[ID_SOURCE2] FROM Source_Lot_ID_and_Source_string INNER JOIN NMIS_AGREEMENT_LOTS ON [Source_Lot_ID_and_Source_string].[CN]=[NMIS_AGREEMENT_LOTS].[SOURCE_LOT_CN];  |  | 1.16, 0.61, 5.42, 0.20 |
| ComboBox | Sowing_Group | Sow Group: |  | SELECT Nz([SOWING_ORDER_CODE]," None") AS SOC, NMIS_SOWING_ORDER.DESCRIPTION FROM NMIS_SOWING_ORDER WHERE (((NMIS_SOWING_ORDER.GROUP)="bs")) ORDER BY Nz([SOWING_ORDER_CODE]," None"); | AfterUpdate, DblClick, Exit | 5.44, 0.08, 0.48, 0.20 |
| TextBox | Begin_fy | FY: |  |  | Change | 4.07, 0.08, 0.41, 0.20 |
| Label | Label98 | Source Lot: |  |  |  | 0.26, 0.62, 0.82, 0.20 |
| TextBox | Agreement_Lot_Label |  | =IIf([View_by]=1,"Source Lot/Agreement Lot:","Agreement Lot/Source Lot:") |  |  | 0.26, 0.08, 1.65, 0.20 |
| CommandButton | Calibration_Checklist | Caibration Checklist |  |  | Click | 1.88, 4.82, 2.00, 0.00 |
| CommandButton | Calibration_Checklist_Blank | Caibration Checklist Blank |  |  | Click | 4.10, 4.82, 2.00, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Begin_FY_AfterUpdate()

    CN = Null
    CN.Requery
    
End Sub

Private Sub Begin_fy_Change()

    DoCmd.RunMacro "Refresh"
    
End Sub

Private Sub Calibration_Checklist_Blank_Click()
    
    Report_name = "oyjord_calibration_checklist_Blank"
    DoCmd.OpenReport Report_name, acViewPreview
    
End Sub

Private Sub Calibration_Checklist_Click()
    
    Report_name = "oyjord_calibration_checklist"
    DoCmd.OpenReport Report_name, acViewPreview
    
End Sub

Private Sub CN_Enter()

    If Not IsNull(CN) Then
        CN.Requery
        '[Ojyord_Calibration subform].Form![Calibration_Sublots] = 0
        [Ojyord_Calibration subform].Form![Sublot_Units] = Null
    End If
    
End Sub

Private Sub Form_Load()
        
    'not sure why this works but it keeps the form from crashing when selecting the first lot
    'for calibration after opening. ???? dbd 04/27/12
    DoCmd.OpenReport "oyjord_calibration_checklist", acViewPreview
    DoCmd.Close
    
End Sub

Private Sub Sowing_Group_AfterUpdate()

    CN = Null
    CN.Requery
    
End Sub

Private Sub Sowing_Group_DblClick(Cancel As Integer)

    DoCmd.OpenForm "NMIS_SOWING_ORDER"
    
End Sub

Private Sub Sowing_Group_Exit(Cancel As Integer)

    DoCmd.RunMacro "refresh"

End Sub

Private Sub View_by_AfterUpdate()

    [CN].Requery
    
End Sub
```
