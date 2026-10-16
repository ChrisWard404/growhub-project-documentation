# Form: NMIS_UNITS

**Caption:** NMIS Units  
**Record source:**

```sql
SELECT NMIS_UNITS.* FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE) Like [Forms]![NMIS_UNITS]![Like_Unit_Type] & "*") AND ((NMIS_UNITS.UNIT_CODE) Like [Forms]![NMIS_UNITS]![Like_Unit_Code] & "*")) ORDER BY NMIS_UNITS.UNIT_CODE;
```

**Order by:** `[_NMIS_UNITS].[UNIT_TYPE], [_NMIS_UNITS].[UNIT_CODE], [_NMIS_UNITS].[UNIT_DESC]`  
**Backend tables referenced:** `NMIS_UNITS`  
**Opened from (VBA):** `Form_Lookup_Tables_Menu Subform`, `Form_xLookup_Tables_Menu`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box40 |  |  |  |  | 0.03, 0.04, 2.04, 0.58 |
| Label | UNIT_CODE_Label |  Unit Code |  |  |  | 0.07, 0.71, 0.57, 0.38 |
| Label | UNIT_TYPE_Label |   Unit  Type |  |  |  | 0.66, 0.70, 0.53, 0.38 |
| Label | UNIT_MULTIPLIER_Label |  Multi- plier |  |  |  | 1.21, 0.70, 0.48, 0.38 |
| Label | UNIT_DESC_Label | Description |  |  |  | 1.72, 0.70, 1.90, 0.38 |
| Label | CELLS_PER_CONTAINER_Label | Cells/ Cont |  |  |  | 5.55, 0.70, 0.45, 0.38 |
| Label | INV_DENSITIES_PER_CONTAINER_Label | Densities Container |  |  |  | 6.51, 0.70, 0.70, 0.38 |
| Label | INV_SAMPLE_FORMULA_Label | Formula |  |  |  | 7.94, 0.90, 0.57, 0.18 |
| Label | INV_SAMPLES_PER_CONTAINER_Label | Samples/ Container |  |  |  | 7.24, 0.70, 0.68, 0.38 |
| Label | INV_SAMPLE_INTEGER_Label | Integer |  |  |  | 8.54, 0.90, 0.54, 0.18 |
| Label | INV_SAMPLE_CONTAINER_Label | Cont |  |  |  | 9.11, 0.90, 0.47, 0.18 |
| Label | INV_SAMPLE_MULTIPLIER_Label | Multiplier |  |  |  | 9.60, 0.90, 0.65, 0.18 |
| Label | INV_SAMPLE_PCT_Label | % |  |  |  | 10.27, 0.90, 0.30, 0.18 |
| Label | NMIS_UNIT_CODES | NMIS Unit Codes |  |  |  | 4.45, 0.06, 2.00, 0.33 |
| Label | Label26 | Sample |  |  |  | 7.94, 0.70, 2.62, 0.17 |
| Label | Label27 | Inventory |  |  |  | 6.51, 0.49, 4.07, 0.18 |
| Label | Label29 | Cell Dimensions |  |  |  | 3.65, 0.70, 1.85, 0.39 |
| Label | Label34 | Area/ Cont |  |  |  | 6.03, 0.70, 0.45, 0.38 |
| ComboBox | Like_Unit_Type | Like Unit Type: |  | SELECT NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS GROUP BY NMIS_UNITS.UNIT_TYPE ORDER BY NMIS_UNITS.UNIT_TYPE; | AfterUpdate, DblClick | 1.21, 0.09, 0.79, 0.21 |
| TextBox | Like_Unit_Code | Like Unit Code: |  |  | AfterUpdate, DblClick | 1.21, 0.35, 0.79, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | UNIT_CODE |  | UNIT_CODE |  | DblClick, Enter | 0.06, 0.03, 0.56, 0.20 |
| TextBox | UNIT_TYPE |  | UNIT_TYPE |  |  | 0.65, 0.03, 0.53, 0.20 |
| TextBox | UNIT_MULTIPLIER |  | UNIT_MULTIPLIER |  |  | 1.20, 0.03, 0.47, 0.20 |
| TextBox | UNIT_DESC |  | UNIT_DESC |  |  | 1.71, 0.03, 1.91, 0.20 |
| TextBox | CELLS_PER_CONTAINER |  | CELLS_PER_CONTAINER |  |  | 5.54, 0.03, 0.45, 0.20 |
| TextBox | INV_DENSITIES_PER_CONTAINER |  | INV_DENSITIES_PER_CONTAINER |  |  | 6.51, 0.03, 0.69, 0.20 |
| TextBox | INV_SAMPLES_PER_CONTAINER |  | INV_SAMPLES_PER_CONTAINER |  |  | 7.23, 0.03, 0.68, 0.20 |
| TextBox | INV_SAMPLE_INTEGER |  | INV_SAMPLE_INTEGER |  |  | 8.54, 0.03, 0.54, 0.20 |
| TextBox | INV_SAMPLE_CONTAINER |  | INV_SAMPLE_CONTAINER |  |  | 9.11, 0.03, 0.46, 0.20 |
| TextBox | INV_SAMPLE_MULTIPLIER |  | INV_SAMPLE_MULTIPLIER |  |  | 9.60, 0.03, 0.65, 0.20 |
| TextBox | INV_SAMPLE_PCT |  | INV_SAMPLE_PCT |  |  | 10.28, 0.03, 0.30, 0.20 |
| TextBox | UNIT_DIMENSIONS |  | CELL_DIMENSIONS |  |  | 3.66, 0.03, 1.82, 0.20 |
| TextBox | AREA_PER_CONTAINER |  | AREA_PER_CONTAINER |  |  | 6.03, 0.03, 0.45, 0.20 |
| TextBox | INV_SAMPLE_FORMULA |  | INV_SAMPLE_FORMULA |  |  | 7.94, 0.03, 0.57, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Like_Unit_Code_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Like_Unit_Code_DblClick(Cancel As Integer)

    Like_Unit_Code = "*"
    DoCmd.Requery
    
End Sub

Private Sub Like_Unit_Type_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Like_Unit_Type_DblClick(Cancel As Integer)
    
    Like_Unit_Type = "*"
    DoCmd.Requery
    
End Sub

Private Sub UNIT_CODE_DblClick(Cancel As Integer)

    UNIT_CODE.Locked = False
    
End Sub

Private Sub UNIT_CODE_Enter()

    If IsNull(UNIT_CODE) Then
        UNIT_CODE.Locked = False
    Else
        UNIT_CODE.Locked = True
    End If
        
End Sub
```
