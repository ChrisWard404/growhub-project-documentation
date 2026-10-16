# Form: NMIS_SPECIES_PRODUCTS Subform1

**Caption:** NMIS_SPECIES_PRODUCTS1  
**Record source:**

```sql
NMIS_SPECIES_PRODUCTS
```

**Backend tables referenced:** `NMIS_SEASONS`, `NMIS_SPECIES_PRODUCTS`, `NMIS_UNITS`  
**Embedded in:** `Form:NMIS_PRODUCTS`, `Form:NMIS_PRODUCTS_Unlocked`  
**Opens:** `Form:NMIS_FACTORS`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SPECIES_PRODUCT_DESC | Species Product: | SPECIES_PRODUCT_DESC |  |  | 1.00, 0.20, 1.96, 0.20 |
| TextBox | TOTAL_NUMBER_OF_FY | Total # of FY's: | TOTAL_NUMBER_OF_FY |  |  | 1.34, 0.46, 0.28, 0.20 |
| TextBox | SPEC_MIN | Ht Min | SPEC_MIN |  |  | 0.72, 1.33, 0.35, 0.22 |
| TextBox | SPEC_MAX | Ht Max | SPEC_MAX |  |  | 1.12, 1.33, 0.35, 0.21 |
| TextBox | CALIPER_MIN | Cal Min | CALIPER_MIN |  |  | 1.53, 1.33, 0.35, 0.21 |
| TextBox | DRILL_FUNNEL_SETTING | FunnelSetting | DRILL_FUNNEL_SETTING |  |  | 3.67, 1.33, 0.51, 0.20 |
| TextBox | DRILL_MIN_REV_UNITS | Min Rev Units | DRILL_MIN_REV_UNITS |  |  | 4.22, 1.33, 0.50, 0.20 |
| TextBox | DRILL_MAX_REV_UNITS | Max Rev Units | DRILL_MAX_REV_UNITS |  |  | 4.76, 1.33, 0.50, 0.20 |
| ComboBox | PLNTMSTR_SYMBOL | Species: | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY; |  | 3.70, 0.20, 2.20, 0.20 |
| ComboBox | BEGIN_SEASON_CODE | Begin | BEGIN_SEASON_CODE | SELECT [NMIS_SEASONS].[SEASON_CODE], [NMIS_SEASONS].[SEASON_DESC] FROM NMIS_SEASONS;  |  | 5.42, 1.33, 0.50, 0.20 |
| ComboBox | END_SEASON_CODE | End | END_SEASON_CODE | SELECT [NMIS_SEASONS].[SEASON_CODE], [NMIS_SEASONS].[SEASON_DESC] FROM NMIS_SEASONS;  |  | 5.96, 1.33, 0.50, 0.20 |
| ComboBox | UNIT_CODE | Final Container: | UNIT_CODE | SELECT [NMIS_UNITS].[UNIT_CODE], [NMIS_UNITS].[UNIT_DESC], [NMIS_UNITS].[UNIT_CODE] FROM NMIS_UNITS WHERE ((([NMIS_UNITS].[UNIT_TYPE])="g"));  |  | 2.90, 0.46, 2.14, 0.20 |
| Label | Label30 | Specs |  |  |  | 0.22, 0.71, 0.46, 0.19 |
| Label | Label31 | Drill |  |  |  | 3.68, 0.71, 1.59, 0.18 |
| Label | Label32 | Seasons |  |  |  | 5.42, 0.71, 1.04, 0.31 |
| TextBox | Index |  | Index |  |  | 2.00, 0.54, 0.62, 0.00 |
| ComboBox | SPECS_UNIT_CODE | Unit Code | SPECS_UNIT_CODE | SELECT [NMIS_UNITS].[UNIT_CODE], [NMIS_UNITS].[UNIT_DESC], [NMIS_UNITS].[UNIT_TYPE] FROM NMIS_UNITS WHERE ((([NMIS_UNITS].[UNIT_TYPE])="LENGT"));  |  | 0.22, 1.33, 0.47, 0.21 |
| TextBox | PRODUCT_CN |  | PRODUCT_CN |  |  | 2.67, 0.54, 0.00, 0.00 |
| TextBox | CN |  | CN |  |  | 3.71, 0.54, 0.50, 0.00 |
| TextBox | CULTURAL_GROUP | Sowing Group: | SOWING_GROUP |  |  | 6.29, 0.46, 0.25, 0.20 |
| ComboBox | Species_Symbol |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY ORDER BY NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL; |  | 5.94, 0.20, 0.81, 0.20 |
| TextBox | AGE_STRING | Age String: | AGE_STRING |  |  | 1.12, 1.59, 1.04, 0.20 |
| Label | Label50 | Standard |  |  |  | 0.71, 0.71, 1.19, 0.19 |
| TextBox | SPEC_MIN_ALT | Ht Min | SPEC_MIN_ALT |  |  | 1.94, 1.33, 0.35, 0.22 |
| TextBox | SPEC_MAX_ALT | Ht Max | SPEC_MAX_ALT |  |  | 2.34, 1.33, 0.35, 0.21 |
| TextBox | CALIPER_MIN_ALT | Cal Min | CALIPER_MIN_ALT |  |  | 2.75, 1.33, 0.36, 0.21 |
| Label | Label64 | Alternate |  |  |  | 1.92, 0.71, 1.21, 0.19 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Open_NMIS_Factors_Form_Click()
On Error GoTo Err_Open_NMIS_Factors_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
    stDocName = "NMIS_FACTORS"
    
    DoCmd.RunMacro "Refresh"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_NMIS_Factors_Form_Click:
    Exit Sub

Err_Open_NMIS_Factors_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Factors_Form_Click
    
End Sub
```
