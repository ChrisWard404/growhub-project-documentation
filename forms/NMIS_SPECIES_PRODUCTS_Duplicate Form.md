# Form: NMIS_SPECIES_PRODUCTS_Duplicate Form

**Caption:** NMIS Species Product Duplicate Form  
**Record source:**

```sql
SELECT NMIS_SPECIES_PRODUCTS.*, NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE FROM NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN ORDER BY NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_DESC, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE, NMIS_SPECIES_PRODUCTS.SPEC_MIN, NMIS_SPECIES_PRODUCTS.SPEC_MAX, NMIS_SPECIES_PRODUCTS.CALIPER_MIN, NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL;
```

**Backend tables referenced:** `NMIS_PRODUCTS`, `NMIS_SEASONS`, `NMIS_SOWING_ORDER`, `NMIS_SPECIES_PRODUCTS`, `NMIS_UNITS`  
**Subforms/subreports:** `Form.NMIS_SPECIES_PRODUCT_CYCLES_Duplicate subform1`, `Form.NMIS_FACTORS_Duplicate subform`  
**Opens:** `Form:NMIS_PRODUCTS`, `Form:Refresh_Close`  
**Opened from (VBA):** `Form_NMIS_SPECIES_PRODUCTS Form`, `Form_NMIS_SPECIES_PRODUCTS Form Unlockable`  
**Form events with code:** Close  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | NMIS_PRODUCTS | NMIS Species Products Duplication |  |  |  | 2.80, 0.05, 3.74, 0.30 |
| Line | Line42 |  |  |  |  | 0.04, 0.41, 8.92, 0.00 |
| TextBox | Index |  | Index |  |  | 1.38, 0.08, 0.62, 0.00 |
| TextBox | CN |  | CN |  |  | 7.04, 0.08, 1.21, 0.00 |
| CommandButton | Refresh_and_Close | Close |  |  | Click | 8.65, 0.06, 0.42, 0.00 |
| TextBox | New_CN |  | =[Index] & [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery_Code] |  |  | 0.12, 0.08, 1.08, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | TOTAL_NUMBER_OF_FY | Total # of FY's: | TOTAL_NUMBER_OF_FY |  |  | 2.12, 0.55, 0.28, 0.20 |
| TextBox | DRILL_FUNNEL_SETTING | FunnelSetting | DRILL_FUNNEL_SETTING |  |  | 3.37, 1.40, 0.50, 0.20 |
| TextBox | DRILL_MIN_REV_UNITS | Min Rev Units | DRILL_MIN_REV_UNITS |  |  | 3.91, 1.40, 0.50, 0.20 |
| TextBox | DRILL_MAX_REV_UNITS | Max Rev Units | DRILL_MAX_REV_UNITS |  |  | 4.45, 1.40, 0.50, 0.20 |
| ComboBox | PLNTMSTR_SYMBOL | Species: | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY ORDER BY NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR; |  | 2.65, 0.29, 2.41, 0.20 |
| ComboBox | BEGIN_SEASON_CODE | Begin | BEGIN_SEASON_CODE | SELECT NMIS_SEASONS.SEASON_CODE, NMIS_SEASONS.SEASON_DESC FROM NMIS_SEASONS;  |  | 5.11, 1.39, 0.50, 0.20 |
| ComboBox | END_SEASON_CODE | End | END_SEASON_CODE | SELECT NMIS_SEASONS.SEASON_CODE, NMIS_SEASONS.SEASON_DESC FROM NMIS_SEASONS;  |  | 5.65, 1.39, 0.50, 0.20 |
| ComboBox | UNIT_Description | Final Container: | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_CODE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="g"));  |  | 4.75, 0.55, 1.98, 0.20 |
| Label | Label31 | Drill |  |  |  | 3.36, 0.80, 1.60, 0.18 |
| Label | Label32 | Seasons |  |  |  | 5.11, 0.80, 1.04, 0.29 |
| TextBox | SPECIES_PRODUCT_DESC | Description: | SPECIES_PRODUCT_DESC |  |  | 5.57, 0.04, 1.96, 0.20 |
| ComboBox | PRODUCT_CN | Product: | PRODUCT_CN | SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_CLASS, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE FROM NMIS_PRODUCTS ORDER BY NMIS_PRODUCTS.CATEGORY_CODE, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")", NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE;  | Enter | 1.67, 0.03, 2.79, 0.20 |
| TabControl | TabCtl45 |  |  |  |  | 0.07, 1.67, 9.05, 3.59 |
| Page | Cycles/Inventory Factors |  |  |  |  | 0.17, 1.96, 8.85, 3.21 |
| Subform | NMIS_SPECIES_PRODUCT_CYCLES subform1 |  | Form.NMIS_SPECIES_PRODUCT_CYCLES_Duplicate subform1 (master: CN → child: SPECIES_PRODUCT_CN) |  |  | 0.17, 1.96, 8.85, 3.21 |
| Page | Sowing Factors |  |  |  |  | 0.17, 1.96, 8.85, 3.21 |
| Subform | NMIS_FACTORS subform |  | Form.NMIS_FACTORS_Duplicate subform (master: CN → child: SPECIES_PRODUCT_CN) |  |  | 0.38, 1.96, 8.53, 3.21 |
| ComboBox | Species_Symbol |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY ORDER BY NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL; |  | 1.67, 0.29, 0.93, 0.20 |
| ComboBox | Unit_Code |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="g"));  |  | 3.79, 0.55, 0.88, 0.20 |
| TextBox | SPEC_MIN | Ht Min | SPEC_MIN |  |  | 0.84, 1.41, 0.35, 0.22 |
| TextBox | SPEC_MAX | Ht Max | SPEC_MAX |  |  | 1.24, 1.41, 0.35, 0.21 |
| TextBox | CALIPER_MIN | Cal Min | CALIPER_MIN |  |  | 1.65, 1.41, 0.35, 0.21 |
| Label | Label30 | Specs |  |  |  | 0.34, 0.80, 0.46, 0.19 |
| ComboBox | SPECS_UNIT_CODE | Unit Code | SPECS_UNIT_CODE | SELECT [NMIS_UNITS].[UNIT_CODE], [NMIS_UNITS].[UNIT_DESC], [NMIS_UNITS].[UNIT_TYPE] FROM NMIS_UNITS WHERE ((([NMIS_UNITS].[UNIT_TYPE])="LENGT"));  |  | 0.34, 1.41, 0.47, 0.22 |
| Label | Label50 | Standard |  |  |  | 0.83, 0.80, 1.19, 0.19 |
| TextBox | SPEC_MIN_ALT | Ht Min | SPEC_MIN_ALT |  |  | 2.06, 1.41, 0.35, 0.22 |
| TextBox | SPEC_MAX_ALT | Ht Max | SPEC_MAX_ALT |  |  | 2.46, 1.41, 0.35, 0.21 |
| TextBox | CALIPER_MIN_ALT | Cal Min | CALIPER_MIN_ALT |  |  | 2.87, 1.41, 0.35, 0.21 |
| Label | Label64 | Alternate |  |  |  | 2.04, 0.80, 1.20, 0.19 |
| TextBox | Dup | Dup: | =IIf([SPECIES_PRODUCT_DESC] Like "*@*",True,False) |  |  | 7.71, 0.33, 0.92, 0.21 |
| TextBox | AGE_STRING | Age String: | AGE_STRING |  |  | 7.62, 1.27, 1.04, 0.20 |
| ComboBox | CULTURAL_GROUP | Sowing Group: | SOWING_GROUP | SELECT NMIS_SOWING_ORDER.SOWING_ORDER_CODE, NMIS_SOWING_ORDER.DESCRIPTION FROM NMIS_SOWING_ORDER WHERE (((Right$(nz([group],"S"),1)) Like "S")) ORDER BY NMIS_SOWING_ORDER.DESCRIPTION; |  | 7.62, 0.78, 0.53, 0.21 |
| ComboBox | TRANSPLANT_GROUP | Transplant Group: | TRANSPLANT_GROUP | SELECT NMIS_SOWING_ORDER.SOWING_ORDER_CODE, NMIS_SOWING_ORDER.DESCRIPTION, Right$(nz([group],"T"),1) AS Type FROM NMIS_SOWING_ORDER WHERE (((Right$(nz([group],"T"),1)) Like "T")) ORDER BY NMIS_SOWING_ORDER.DESCRIPTION; |  | 7.62, 1.02, 0.53, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Filter_For_Product_Enter()

    Filter_for_Product_Type.Requery
    Filter_For_Product.Requery
    
End Sub

Private Sub Form_Close()
    Dim strFormName As String
    
    strFormName = "NMIS_SPECIES_PRODUCTS Form"
    
    If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 Then
        Forms![NMIS_SPECIES_PRODUCTS Form].Requery
    End If
    
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

Private Sub PRODUCT_CN_Enter()
   
    PRODUCT_CN = [Forms]![NMIS_SPECIES_PRODUCTS Form]![PRODUCT_CN]

    If IsNull(CN) And Not IsNull(Index) Then
        DoCmd.RunMacro "Set_CN2"
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_SPECIES_PRODUCT_DUPLICATE_CYCLES_APPEND"
        DoCmd.OpenQuery "NMIS_SPECIES_PROD_DUP_FACTOR_APPEND_CT"
        DoCmd.OpenQuery "NMIS_SPECIES_PRODUCT_DUPLICATE_FACTORS_APPEND1"
        DoCmd.RunMacro "Refresh"
        DoCmd.OpenQuery "NMIS_SPECIES_PRODUCT_DUPLICATE_FACTORS_APPEND"
        DoCmd.DeleteObject acTable, "**NMIS_SPECIES_PROD_DUP_FACTOR_APPEND"
        DoCmd.SetWarnings True
        DoCmd.RunMacro "Refresh"
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
```
