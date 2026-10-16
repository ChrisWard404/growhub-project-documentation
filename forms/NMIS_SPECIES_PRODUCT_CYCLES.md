# Form: NMIS_SPECIES_PRODUCT_CYCLES

**Caption:** NMIS FACTORS  
**Record source:**

```sql
NMIS_FACTORS
```

**Backend tables referenced:** `NMIS_FACTORS`, `NMIS_PRODUCTS`, `NMIS_SPECIES`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Form.NMIS_FACTORS subform`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label44 | NMIS FACTORS |  |  |  | 3.56, 0.08, 1.94, 0.33 |
| CommandButton | Command49 | Save/Close |  |  | Click | 8.17, 0.04, 0.82, 0.28 |
| TextBox | CN |  | =[Forms]![NMIS_PRODUCTS]![NMIS_SPECIES_PRODUCTS1].[Form]![CN] |  |  | 0.25, 0.08, 1.83, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Species_Product_Description | Species Product Descripton: | =[Forms]![NMIS_PRODUCTS]![NMIS_SPECIES_PRODUCTS1].[Form]![CN] | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES_PRODUCTS].[SPECIES_PRODUCT_DESC] FROM NMIS_SPECIES_PRODUCTS;  |  | 2.21, 0.38, 1.92, 0.20 |
| ComboBox | Species | Species: | =[Forms]![NMIS_PRODUCTS]![NMIS_SPECIES_PRODUCTS1].[Form]![CN] | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES].[PLNTMSTR_SYMBOL], [NMIS_SPECIES].[VERNACULAR] FROM NMIS_SPECIES INNER JOIN NMIS_SPECIES_PRODUCTS ON ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL]) AND ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL]) GROUP BY [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES].[PLNTMSTR_SYMBOL], [NMIS_SPECIES].[VERNACULAR] ORDER BY [NMIS_SPECIES].[PLNTMSTR_SYMBOL];  |  | 5.12, 0.38, 2.38, 0.20 |
| Subform | NMIS_FACTORS subform |  | Form.NMIS_FACTORS subform (master: CN → child: SPECIES_PRODUCT_CN) |  |  | 0.12, 1.17, 8.55, 4.75 |
| ComboBox | SPECIES_PRODUCT_CN | Product: | =[Forms]![NMIS_PRODUCTS]![NMIS_SPECIES_PRODUCTS1].[Form]![CN] | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_PRODUCTS].[PRODUCT_DESC] FROM NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN];  |  | 2.21, 0.10, 2.62, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Command49_Click()
On Error GoTo Err_Command49_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Command49_Click:
    Exit Sub

Err_Command49_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command49_Click
    
End Sub
```
