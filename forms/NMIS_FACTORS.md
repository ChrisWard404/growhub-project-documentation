# Form: NMIS_FACTORS

**Caption:** NMIS FACTORS  
**Record source:**

```sql
NMIS_SPECIES_PRODUCTS
```

**Backend tables referenced:** `NMIS_FACTORS`, `NMIS_PRODUCTS`, `NMIS_SPECIES`, `NMIS_SPECIES_PRODUCTS`, `NMIS_SPECIES_PRODUCT_CYCLES`  
**Subforms/subreports:** `Form.NMIS_FACTORS subform`, `Form.NMIS_SPECIES_PRODUCT_CYCLES subform1`  
**Opened from (VBA):** `Form_NMIS_PRODUCTS_MGMT_CODE Subform`, `Form_NMIS_SPECIES_PRODUCTS Subform1`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label44 | NMIS Factors and Product Cycles |  |  |  | 2.49, 0.08, 4.04, 0.33 |
| CommandButton | Command49 | Close |  |  | Click | 8.33, 0.04, 0.47, 0.28 |
| TextBox | CN |  | =[Forms]![NMIS_PRODUCTS]![NMIS_SPECIES_PRODUCTS1].Form!CN |  |  | 0.25, 0.08, 1.83, 0.00 |
| ComboBox | PLNTMSTR_SYMBOL |  | =[cn] | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL] FROM NMIS_SPECIES_PRODUCTS;  |  | 0.54, 0.33, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Species_Product_Description | Species Product Descripton: | =[Forms]![NMIS_PRODUCTS]![NMIS_SPECIES_PRODUCTS1].Form!CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES_PRODUCTS].[SPECIES_PRODUCT_DESC] FROM NMIS_SPECIES_PRODUCTS;  |  | 2.21, 0.38, 1.92, 0.20 |
| ComboBox | Species | Species: | =[Forms]![NMIS_PRODUCTS]![NMIS_SPECIES_PRODUCTS1].Form!CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES].[PLNTMSTR_SYMBOL], [NMIS_SPECIES].[VERNACULAR] FROM NMIS_SPECIES INNER JOIN NMIS_SPECIES_PRODUCTS ON ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL]) AND ([NMIS_SPECIES].[PLNTMSTR_SYMBOL]=[NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL]) GROUP BY [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES].[PLNTMSTR_SYMBOL], [NMIS_SPECIES].[VERNACULAR] ORDER BY [NMIS_SPECIES].[PLNTMSTR_SYMBOL];  |  | 5.12, 0.38, 2.38, 0.20 |
| ComboBox | Product_Descripton | Product: | =[Forms]![NMIS_PRODUCTS]![NMIS_SPECIES_PRODUCTS1].Form!CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_PRODUCTS].[PRODUCT_DESC] FROM NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN];  |  | 2.21, 0.10, 2.62, 0.20 |
| TabControl | TabCtl52 |  |  |  |  | 0.15, 0.75, 8.78, 5.17 |
| Page | Factors | Factors |  |  |  | 0.23, 1.00, 8.62, 4.84 |
| Subform | NMIS_FACTORS subform |  | Form.NMIS_FACTORS subform (master: CN → child: SPECIES_PRODUCT_CN) |  |  | 0.28, 1.08, 8.54, 4.75 |
| Page | Product_Cycles | Product Cycles |  |  |  | 0.23, 1.00, 8.62, 4.84 |
| Subform | NMIS_SPECIES_PRODUCT_CYCLES subform1 |  | Form.NMIS_SPECIES_PRODUCT_CYCLES subform1 (master: CN → child: SPECIES_PRODUCT_CN) |  |  | 0.28, 1.08, 8.55, 4.75 |

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
