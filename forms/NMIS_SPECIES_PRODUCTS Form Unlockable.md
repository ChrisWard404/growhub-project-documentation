# Form: NMIS_SPECIES_PRODUCTS Form Unlockable

**Caption:** NMIS SPECIES PRODUCTS  
**Backend tables referenced:** `NMIS_PRODUCTS`, `NMIS_PRODUCT_TYPES`, `NMIS_SEASONS`, `NMIS_SOWING_ORDER`, `NMIS_SPECIES`, `NMIS_SPECIES_PRODUCTS`, `NMIS_UNITS`  
**Subforms/subreports:** `Form.NMIS_SPECIES_PRODUCT_CYCLES subform1_Unlockable`, `Form.NMIS_FACTORS subform`  
**Opens:** `Form:NMIS_PRODUCTS`, `Form:NMIS_SOWING_ORDER`, `Form:NMIS_SPECIES_PRODUCTS_Duplicate Form`, `Form:Refresh_Close`  
**Form events with code:** Close, Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box201 |  |  |  |  | 0.03, 0.03, 9.16, 1.15 |
| Label | NMIS_PRODUCTS | NMIS Species Products |  |  |  | 5.34, 0.07, 2.59, 0.31 |
| TextBox | Index |  | Index |  |  | 6.29, 0.06, 0.62, 0.00 |
| TextBox | CN |  | CN |  |  | 6.54, 0.26, 1.21, 0.00 |
| CommandButton | Refresh_and_Close | Close |  |  | Click | 8.65, 0.08, 0.42, 0.00 |
| ComboBox | SPECIES_PRODUCT_Lookup |  |  | SELECT NMIS_SPECIES_PRODUCTS.CN, IIf([Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![View_By_Scientific_Name]=False,[nmis_species].[Vernacular],[Scientific_Name]) & " (" & [NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL] & ") " & [NMIS_SPECIES_PRODUCTS].[SPECIES_PRODUCT_DESC] & " " & [SIZE_SPEC_STRING] & " " & [nmis_species_products].[BEGIN_SEASON_CODE] & " " & [nmis_species_products].[END_SEASON_CODE] & IIf([nmis_species_products].[historical]," (Historical)") AS [Species Product Description], [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" AS PRODUCT_DESCRIPTION, IIf([diverse],"No","Yes") AS Trad, [nmis_species_products].[TOTAL_NUMBER_OF_FY]+0 AS [FY's], [SOWING_GROUP] & " " AS [Sow Ord], [TRANSPLANT_GROUP] & "" AS [Trans Ord] FROM (NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE = NMIS_PRODUCTS.END_PRODUCT_TYPE) INNER JOIN ([*Species_Products_Currently_Active_in_Grow_Containers] RIGHT JOIN (NMIS_SPECIES INNER JOIN (NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN Species_Products_with_SizeSpecString ON NMIS_SPECIES_PRODUCTS.CN = Species_Products_with_SizeSpecString.CN) ON NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL = NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) ON (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) AND (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL)) ON [*Species_Products_Currently_Active_in_Grow_Containers].SPECIES_PRODUCT_CN = NMIS_SPECIES_PRODUCTS.CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) Like [Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![Filter_for_Species] & "*") AND ((NMIS_PRODUCTS.CN) Like [Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![PRODUCT_Lookup] & "*" And (NMIS_PRODUCTS.CN) Like [Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![Filter_For_Product] & "*") AND ((Left$([NMIS_PRODUCTS].[CATEGORY_CODE],1)) Like [Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![Filter_for_Product_Type]) AND ((IIf([Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![Current_Crop_Only],[SPECIES_PRODUCT_CN],"all")) Is Not Null) AND ((NMIS_SPECIES_PRODUCTS.HISTORICAL) Like IIf([Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![Hide_Historical],0,"*"))) GROUP BY NMIS_SPECIES_PRODUCTS.CN, IIf([Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![View_By_Scientific_Name]=False,[nmis_species].[Vernacular],[Scientific_Name]) & " (" & [NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL] & ") " & [NMIS_SPECIES_PRODUCTS].[SPECIES_PRODUCT_DESC] & " " & [SIZE_SPEC_STRING] & " " & [nmis_species_products].[BEGIN_SEASON_CODE] & " " & [nmis_species_products].[END_SEASON_CODE] & IIf([nmis_species_products].[historical]," (Historical)"), [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")", IIf([diverse],"No","Yes"), [nmis_species_products].[TOTAL_NUMBER_OF_FY]+0, [SOWING_GROUP] & " ", [TRANSPLANT_GROUP] & "", NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL, NMIS_SPECIES_PRODUCTS.SPECIES_PRODUCT_DESC, NMIS_PRODUCTS.CATEGORY_CODE, NMIS_SPECIES.DIVERSE, NMIS_SPECIES_PRODUCTS.SPECIES_PRODUCT_DESC, NMIS_PRODUCTS.PRODUCT_DESC, NMIS_PRODUCTS.PRODUCT_CLASS, NMIS_SPECIES_PRODUCTS.AGE_STRING, NMIS_SPECIES_PRODUCTS.SPEC_MIN, NMIS_SPECIES_PRODUCTS.SPEC_MAX, NMIS_SPECIES_PRODUCTS.CALIPER_MIN, IIf([Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![View_By_Scientific_Name]=False,[nmis_species].[Vernacular],[Scientific_Name]) & " (" & [NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL] & ") " & [NMIS_SPECIES_PRODUCTS].[SPECIES_PRODUCT_DESC] & " " & [NMIS_SPECIES_PRODUCTS].[SPECIES_PRODUCT_DESC] & " " & [SIZE_SPEC_STRING] & " " & [nmis_species_products].[BEGIN_SEASON_CODE] & " " & [nmis_species_products].[END_SEASON_CODE], NMIS_SPECIES_PRODUCTS.Index HAVING (((NMIS_SPECIES_PRODUCTS.SPECIES_PRODUCT_DESC) Like [Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![Like_Description] & "*")) ORDER BY NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL, NMIS_PRODUCTS.CATEGORY_CODE, NMIS_SPECIES.DIVERSE DESC , NMIS_SPECIES_PRODUCTS.SPECIES_PRODUCT_DESC, NMIS_PRODUCTS.PRODUCT_DESC, NMIS_PRODUCTS.PRODUCT_CLASS, NMIS_SPECIES_PRODUCTS.AGE_STRING, NMIS_SPECIES_PRODUCTS.SPEC_MIN, NMIS_SPECIES_PRODUCTS.SPEC_MAX, NMIS_SPECIES_PRODUCTS.CALIPER_MIN, IIf([Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![View_By_Scientific_Name]=False,[nmis_species].[Vernacular],[Scientific_Name]) & " (" & [NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL] & ") " & [NMIS_SPECIES_PRODUCTS].[SPECIES_PRODUCT_DESC] & " " & [NMIS_SPECIES_PRODUCTS].[SPECIES_PRODUCT_DESC] & " " & [SIZE_SPEC_STRING] & " " & [nmis_species_products].[BEGIN_SEASON_CODE] & " " & [nmis_species_products].[END_SEASON_CODE], NMIS_SPECIES_PRODUCTS.Index; | AfterUpdate, Enter | 0.52, 0.88, 6.50, 0.25 |
| Label | Label84 | Find: |  |  |  | 0.09, 0.88, 0.40, 0.21 |
| ComboBox | Filter_for_Species |  |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, IIf([Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![View_By_Scientific_Name]=False,[Vernacular],[Scientific_Name]) AS Sort FROM ((NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY LEFT JOIN [*Species_Products_Currently_Active_in_Grow_Containers] ON NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL = [*Species_Products_Currently_Active_in_Grow_Containers].PLNTMSTR_SYMBOL) LEFT JOIN NMIS_SPECIES_PRODUCTS ON [*Species_Products_Currently_Active_in_Grow_Containers].SPECIES_PRODUCT_CN = NMIS_SPECIES_PRODUCTS.CN) LEFT JOIN NMIS_PRODUCTS ON NMIS_SPECIES_PRODUCTS.PRODUCT_CN = NMIS_PRODUCTS.CN WHERE (((IIf([Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![Current_Crop_Only],[SPECIES_PRODUCT_CN],"all")) Is Not Null)) GROUP BY NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, IIf([Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![View_By_Scientific_Name]=False,[Vernacular],[Scientific_Name]), NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.HIDE HAVING (((NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.HIDE)=False)) ORDER BY IIf([Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![View_By_Scientific_Name]=False,[Vernacular],[Scientific_Name]); | AfterUpdate, DblClick | 2.26, 0.07, 0.96, 0.22 |
| Label | Label172 | Like Species (Blank for All): |  |  |  | 0.30, 0.08, 1.89, 0.21 |
| ComboBox | Filter_for_Product_Type |  |  | B;Bareroot Plant;C;Container Plant;N;Native Propagules;*;All Product Types | AfterUpdate | 0.52, 0.59, 1.75, 0.25 |
| Label | Filter_for_Product_Type_Label | Like: |  |  |  | 0.10, 0.61, 0.39, 0.21 |
| Label | Filter_For_Product_Label | Like Prod (Blank for All): |  |  |  | 2.50, 0.64, 1.68, 0.21 |
| ComboBox | Filter_For_Product |  |  | SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" & IIf([nmis_products].[historical]," (Historical)") AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_CLASS, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE FROM NMIS_PRODUCTS LEFT JOIN ([*Species_Products_Currently_Active_in_Grow_Containers] RIGHT JOIN NMIS_SPECIES_PRODUCTS ON [*Species_Products_Currently_Active_in_Grow_Containers].SPECIES_PRODUCT_CN = NMIS_SPECIES_PRODUCTS.CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((Left$([CATEGORY_CODE],1)) Like [Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![Filter_for_Product_Type]) AND ((Nz([NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL],"*")) Like [Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![Filter_for_Species] & "*") AND ((IIf([Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![Current_Crop_Only],[SPECIES_PRODUCT_CN],"all")) Is Not Null) AND ((NMIS_PRODUCTS.HISTORICAL) Like IIf([Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![Hide_Historical],0,"*"))) GROUP BY NMIS_PRODUCTS.CN, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" & IIf([nmis_products].[historical]," (Historical)"), NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_CLASS, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")", NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE ORDER BY NMIS_PRODUCTS.CATEGORY_CODE, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")", NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE; | AfterUpdate, DblClick, Enter | 4.25, 0.59, 3.75, 0.25 |
| TextBox | New_CN |  | =[Index] & [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery_Code] |  |  | 8.08, 0.59, 1.08, 0.21 |
| CheckBox | View_By_Scientific_Name |  |  |  | AfterUpdate | 8.94, 0.96, 0.17, 0.00 |
| Label | Label183 | View by Scientific Name: |  |  |  | 7.15, 0.92, 1.72, 0.21 |
| Label | Like_Description Label | Like Description (Blank for All): |  |  |  | 0.08, 0.35, 2.10, 0.21 |
| TextBox | Like_Description |  |  |  | AfterUpdate, DblClick | 2.26, 0.34, 1.36, 0.22 |
| CheckBox | Current_Crop_Only |  |  |  | AfterUpdate | 4.76, 0.12, 0.17, 0.00 |
| Label | Current_Crop_Only Label | Current Crop Only: |  |  |  | 3.40, 0.08, 1.29, 0.21 |
| CheckBox | New_Species_Product | New Species Product |  |  |  | 8.53, 0.33, 0.00, 0.00 |
| CheckBox | Hide_Historical | Hide Historical |  |  |  | 4.75, 0.40, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | TOTAL_NUMBER_OF_FY | Total # of FY's: | TOTAL_NUMBER_OF_FY |  | DblClick, Enter | 1.26, 0.56, 0.28, 0.20 |
| TextBox | DRILL_FUNNEL_SETTING | FunnelSetting | DRILL_FUNNEL_SETTING |  |  | 3.05, 1.41, 0.50, 0.20 |
| TextBox | DRILL_MIN_REV_UNITS | Min Rev Units | DRILL_MIN_REV_UNITS |  |  | 3.59, 1.41, 0.50, 0.20 |
| TextBox | DRILL_MAX_REV_UNITS | Max Rev Units | DRILL_MAX_REV_UNITS |  |  | 4.14, 1.41, 0.50, 0.20 |
| ComboBox | PLNTMSTR_SYMBOL | Species: | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, IIf([Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![View_By_Scientific_Name]=True,[Scientific_Name],[VERNACULAR]) AS Expr1, IIf([Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![View_By_Scientific_Name]=False,[Scientific_Name],[VERNACULAR]) AS Expr2, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY ORDER BY IIf([Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![View_By_Scientific_Name]=True,[Scientific_Name],[VERNACULAR]); |  | 1.79, 0.29, 3.04, 0.20 |
| ComboBox | BEGIN_SEASON_CODE | Begin | BEGIN_SEASON_CODE | SELECT NMIS_SEASONS.SEASON_CODE, NMIS_SEASONS.SEASON_DESC FROM NMIS_SEASONS;  |  | 4.70, 1.39, 0.50, 0.20 |
| ComboBox | END_SEASON_CODE | End | END_SEASON_CODE | SELECT NMIS_SEASONS.SEASON_CODE, NMIS_SEASONS.SEASON_DESC FROM NMIS_SEASONS;  |  | 5.24, 1.39, 0.50, 0.20 |
| ComboBox | UNIT_Description | Final Container: | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, [UNIT_DESC] & IIf([Unit_Type] Like "*HIST*"," (Hist)") AS ud, NMIS_UNITS.UNIT_CODE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE) Like IIf(IsNull("unit_desc"),"g","g*"))) ORDER BY [UNIT_DESC] & IIf([Unit_Type] Like "*HIST*"," (Hist)"); | DblClick, Enter | 3.53, 0.56, 2.60, 0.20 |
| Label | Label31 | Drill |  |  |  | 3.04, 0.80, 1.60, 0.18 |
| Label | Label32 | Seasons |  |  |  | 4.70, 0.80, 1.04, 0.29 |
| CommandButton | Open_NMIS_Factors_Form |  Add or Edit Products |  |  | Click | 8.49, 0.41, 0.66, 0.87 |
| TextBox | AGE_STRING | Age String: | AGE_STRING |  |  | 7.15, 1.40, 1.04, 0.20 |
| TextBox | SPECIES_PRODUCT_DESC | Description: | SPECIES_PRODUCT_DESC |  | DblClick, Enter | 4.71, 0.04, 1.96, 0.20 |
| ComboBox | PRODUCT_CN | Product: | PRODUCT_CN | SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_CLASS, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE FROM NMIS_PRODUCTS ORDER BY NMIS_PRODUCTS.CATEGORY_CODE, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")", NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE; | DblClick, Enter, Exit | 0.81, 0.03, 2.79, 0.20 |
| TabControl | TabCtl45 |  |  |  |  | 0.07, 1.67, 9.04, 3.01 |
| Page | Cycles/Inventory Factors |  |  |  |  | 0.17, 1.96, 8.85, 2.62 |
| Subform | NMIS_SPECIES_PRODUCT_CYCLES subform1 |  | Form.NMIS_SPECIES_PRODUCT_CYCLES subform1_Unlockable (master: CN → child: SPECIES_PRODUCT_CN) |  |  | 0.17, 1.96, 8.85, 2.58 |
| Page | Sowing Factors |  |  |  |  | 0.17, 1.96, 8.85, 2.62 |
| Subform | NMIS_FACTORS subform |  | Form.NMIS_FACTORS subform (master: CN → child: SPECIES_PRODUCT_CN) |  | Exit | 0.38, 2.00, 8.53, 2.58 |
| ComboBox | Species_Symbol |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, IIf([Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![View_By_Scientific_Name]=True,[Scientific_Name],[VERNACULAR]) AS [Common Name], IIf([Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![View_By_Scientific_Name]=False,[Scientific_Name],[VERNACULAR]) AS [Scientific Name], NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.DIVERSE FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY ORDER BY IIf([Forms]![NMIS_SPECIES_PRODUCTS Form Unlockable]![View_By_Scientific_Name]=True,[Scientific_Name],[VERNACULAR]); | DblClick, Enter | 0.81, 0.29, 0.93, 0.20 |
| ComboBox | Unit_Code |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, [UNIT_DESC] & IIf([Unit_Type] Like "*HIST*"," (Hist)") AS ud FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE) Like IIf(IsNull("unit_desc"),"g","g*"))) ORDER BY NMIS_UNITS.UNIT_CODE; |  | 2.84, 0.56, 0.65, 0.20 |
| ComboBox | CULTURAL_GROUP | Sowing Group: | SOWING_GROUP | SELECT NMIS_SOWING_ORDER.SOWING_ORDER_CODE, NMIS_SOWING_ORDER.DESCRIPTION FROM NMIS_SOWING_ORDER WHERE (((Right$(nz([group],"S"),1)) Like "S")) ORDER BY NMIS_SOWING_ORDER.DESCRIPTION; | DblClick | 7.15, 0.91, 0.53, 0.21 |
| TextBox | SPEC_MIN | Ht Min | SPEC_MIN |  |  | 0.58, 1.41, 0.35, 0.22 |
| TextBox | SPEC_MAX | Ht Max | SPEC_MAX |  |  | 0.99, 1.41, 0.35, 0.21 |
| TextBox | CALIPER_MIN | Cal Min | CALIPER_MIN |  |  | 1.39, 1.41, 0.35, 0.21 |
| Label | Label30 | Specs |  |  |  | 0.08, 0.80, 0.46, 0.19 |
| ComboBox | SPECS_UNIT_CODE | Unit Code | SPECS_UNIT_CODE | SELECT [NMIS_UNITS].[UNIT_CODE], [NMIS_UNITS].[UNIT_DESC], [NMIS_UNITS].[UNIT_TYPE] FROM NMIS_UNITS WHERE ((([NMIS_UNITS].[UNIT_TYPE])="LENGT"));  |  | 0.08, 1.41, 0.47, 0.22 |
| Label | Label50 | Standard |  |  |  | 0.57, 0.80, 1.19, 0.19 |
| TextBox | SPEC_MIN_ALT | Ht Min | SPEC_MIN_ALT |  |  | 1.80, 1.41, 0.35, 0.22 |
| TextBox | SPEC_MAX_ALT | Ht Max | SPEC_MAX_ALT |  |  | 2.20, 1.41, 0.35, 0.21 |
| TextBox | CALIPER_MIN_ALT | Cal Min | CALIPER_MIN_ALT |  |  | 2.61, 1.41, 0.35, 0.21 |
| Label | Label64 | Alternate |  |  |  | 1.78, 0.80, 1.20, 0.19 |
| CommandButton | Duplicate_Current_Species_Product | New Species Product From Selected |  |  | Click | 7.79, 0.41, 0.66, 0.87 |
| CommandButton | Tip_on_Create_New_Species_Product | Tip |  |  | Click | 8.29, 0.09, 0.34, 0.29 |
| Rectangle | Box182 |  |  |  |  | 7.74, 0.05, 1.45, 1.28 |
| CheckBox | HISTORICAL | Historical | HISTORICAL |  |  | 7.14, 0.59, 0.00, 0.00 |
| ComboBox | TRANSPLANT_GROUP | Transplant Group: | TRANSPLANT_GROUP | SELECT NMIS_SOWING_ORDER.SOWING_ORDER_CODE, NMIS_SOWING_ORDER.DESCRIPTION, Right$(nz([group],"T"),1) AS Type FROM NMIS_SOWING_ORDER WHERE (((Right$(nz([group],"T"),1)) Like "T")) ORDER BY NMIS_SOWING_ORDER.DESCRIPTION; | DblClick | 7.15, 1.15, 0.53, 0.21 |
| TextBox | Text205 |  | =IIf([Historical],"HISTORICAL") |  |  | 6.00, 0.26, 1.58, 0.25 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub CULTURAL_GROUP_DblClick(Cancel As Integer)
On Error GoTo Err_CULTURAL_GROUP_DblClick

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOWING_ORDER"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_CULTURAL_GROUP_DblClick:
    Exit Sub

Err_CULTURAL_GROUP_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_CULTURAL_GROUP_DblClick
    
End Sub

Private Sub Current_Crop_Only_AfterUpdate()

    SPECIES_PRODUCT_Lookup.Requery
    DoCmd.Requery
    Filter_for_Species.Requery
    
End Sub

Private Sub Duplicate_Current_Species_Product_Click()
On Error GoTo Err_Duplicate_Current_Species_Product_Click

    Dim stDocName As String

    stDocName = "NMIS_SPECIES_PRODUCTS_Duplicate Form"
    Response = MsgBox("Create New Species Product using selected?", vbOKCancel)
    
    If Response = vbOK Then
        
        DoCmd.RunMacro "Refresh"
        DoCmd.OpenForm stDocName
    Else
        'MsgBox "OK I won't do it"
    End If
    
    
Exit_Duplicate_Current_Species_Product_Click:
    Exit Sub

Err_Duplicate_Current_Species_Product_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Duplicate_Current_Species_Product_Click
End Sub

Private Sub Filter_For_Product_AfterUpdate()

    'DoCmd.Requery
    SPECIES_PRODUCT_Lookup = Null
    
End Sub

Private Sub Filter_For_Product_DblClick(Cancel As Integer)

    Filter_For_Product = Null
    
End Sub

Private Sub Filter_For_Product_Enter()

    Filter_for_Product_Type.Requery
    Filter_For_Product.Requery
    
End Sub

Private Sub Filter_for_Product_Type_AfterUpdate()

    Filter_For_Product = Null
    DoCmd.Requery
    Filter_for_Species.Requery
    
End Sub

Private Sub Filter_for_Species_AfterUpdate()

    Filter_For_Product = Null
    DoCmd.Requery
    
End Sub

Private Sub Filter_for_Species_DblClick(Cancel As Integer)

    Filter_for_Species = Null
    
End Sub

Private Sub Form_Close()
    Dim strFormName As String
    
    strFormName = "NMIS_AGREEMENTS"
    strFormName2 = "NMIS_AGREEMENT_LOTS"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS_APPEND"
    DoCmd.SetWarnings True
    
    If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 Then
        Forms![NMIS_AGREEMENTS]![SPECIES_PRODUCT_CN].Requery
    End If
    If SysCmd(acSysCmdGetObjectState, acForm, strFormName2) <> 0 Then
        Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![SPECIES_PRODUCT_CN].Requery
        Forms![NMIS_AGREEMENT_LOTS]![SPECIES_PRODUCT_CN].Requery
    End If
End Sub


Private Sub Form_Open(Cancel As Integer)
On Error GoTo Err_Form_Open_Click

    DoCmd.Requery
    DoCmd.GoToControl "SPECIES_PRODUCT_Lookup"

Exit_Form_Open_Click:
    Exit Sub

Err_Form_Open_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Open_Click
    
    
End Sub

Private Sub Like_Description_AfterUpdate()

    DoCmd.Requery
    SPECIES_PRODUCT_Lookup.Requery
    
End Sub

Private Sub Like_Description_DblClick(Cancel As Integer)

    Like_Description = "*"

End Sub

Private Sub NMIS_FACTORS_subform_Exit(Cancel As Integer)

    DoCmd.RunCommand acCmdRefresh
    
End Sub

Private Sub Open_NMIS_Factors_Form_Click()
On Error GoTo Err_Open_NMIS_Factors_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
    stDocName = "NMIS_PRODUCTS"
    
    DoCmd.RunMacro "Refresh"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_NMIS_Factors_Form_Click:
    Exit Sub

Err_Open_NMIS_Factors_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Factors_Form_Click
    
End Sub

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)

    Plntmstr_Symbol.Locked = False
 
End Sub

Private Sub Plntmstr_Symbol_Enter()

    If Not IsNull(Plntmstr_Symbol) Then
        Plntmstr_Symbol.Locked = True
    Else
        Plntmstr_Symbol.Locked = False
    End If
   
End Sub

Private Sub PRODUCT_CN_DblClick(Cancel As Integer)

    PRODUCT_CN.Locked = False
    'MsgBox "Product Description unlocked for editing"
    
End Sub

Private Sub PRODUCT_CN_Enter()
    If IsNull(Index) Then
        New_Species_Product = True
    End If
    
    If IsNull(PRODUCT_CN) Then
        PRODUCT_CN.Locked = False
        Else
        PRODUCT_CN.Locked = True
    End If
    
End Sub

Private Sub PRODUCT_CN_Exit(Cancel As Integer)
    If New_Species_Product Then
        DoCmd.RunMacro "Set_CN2"
        New_Species_Product = False
    End If

End Sub

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

Private Sub SPECIES_PRODUCT_DESC_DblClick(Cancel As Integer)

    SPECIES_PRODUCT_DESC.Locked = False
    
End Sub

Private Sub SPECIES_PRODUCT_DESC_Enter()

    If Not IsNull(SPECIES_PRODUCT_DESC) Then
        SPECIES_PRODUCT_DESC.Locked = True
    Else
        SPECIES_PRODUCT_DESC.Locked = False
    End If
    
End Sub

Private Sub SPECIES_PRODUCT_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![SPECIES_PRODUCT_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
   
End Sub

Private Sub SPECIES_PRODUCT_Lookup_Enter()

    SPECIES_PRODUCT_Lookup.Requery
    
End Sub

Private Sub Species_Symbol_DblClick(Cancel As Integer)

    Species_Symbol.Locked = False
    
End Sub

Private Sub Species_Symbol_Enter()

    If Not IsNull(Species_Symbol) Then
        Species_Symbol.Locked = True
    Else
        Species_Symbol.Locked = False
    End If
    
End Sub

Private Sub TOTAL_NUMBER_OF_FY_DblClick(Cancel As Integer)

    TOTAL_NUMBER_OF_FY.Locked = False
 
End Sub

Private Sub TOTAL_NUMBER_OF_FY_Enter()

    If Not IsNull(TOTAL_NUMBER_OF_FY) Then
        TOTAL_NUMBER_OF_FY.Locked = True
    Else
        TOTAL_NUMBER_OF_FY.Locked = False
    End If
    
End Sub

Private Sub TRANSPLANT_GROUP_DblClick(Cancel As Integer)
On Error GoTo Err_TRANSPLANT_GROUP_DblClick

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOWING_ORDER"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_TRANSPLANT_GROUP_DblClick:
    Exit Sub

Err_TRANSPLANT_GROUP_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_TRANSPLANT_GROUP_DblClick
    
End Sub

Private Sub UNIT_CODE_DblClick(Cancel As Integer)

    UNIT_CODE.Locked = False
 
End Sub

Private Sub UNIT_CODE_Enter()

    If Not IsNull(UNIT_CODE) Then
        UNIT_CODE.Locked = True
    Else
        UNIT_CODE.Locked = False
    End If
End Sub

Private Sub UNIT_Description_DblClick(Cancel As Integer)

    UNIT_Description.Locked = False
 
End Sub

Private Sub UNIT_Description_Enter()

    If Not IsNull(UNIT_Description) Then
        UNIT_Description.Locked = True
    Else
        UNIT_Description.Locked = False
    End If
End Sub

Private Sub View_By_Scientific_Name_AfterUpdate()

    SPECIES_PRODUCT_Lookup.Requery
    Filter_for_Species.Requery
    Species_Symbol.Requery
    Plntmstr_Symbol.Requery
    
End Sub
Private Sub Tip_on_Create_New_Species_Product_Click()
On Error GoTo Err_Tip_on_Create_New_Species_Product_Click


    MsgBox "To Create a new Species Product using a current Species Product, " & _
        "Select the Species Product to Duplicate and Click the Create New Species Product from Selected Button Below. " & _
        "To Create a Species Product from scratch click the New Record Icon (>*) on the menu bar or the Record Selector. " & _
        "To Add add or edit a Product click on the Add or Edit Product Button Below.", vbInformation

Exit_Tip_on_Create_New_Species_Product_C:
    Exit Sub

Err_Tip_on_Create_New_Species_Product_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Tip_on_Create_New_Species_Product_C
    
End Sub
```
