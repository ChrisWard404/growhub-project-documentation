# Form: NMIS_PRODUCT_INVENTORIES3

**Caption:** NMIS Product Inventories  
**Record source:**

```sql
NMIS_AGREEMENT_LOTS
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_SOURCE_LOTS`  
**Subforms/subreports:** `Form.NMIS_PRODUCT_INVENTORIES subform1b`, `Form.NMIS_PRODUCT_INVENTORY_SAMPLES subform2`, `Form.NMIS_PRODUCT_INVENTORY_SIZES subform2`  
**Opens:** `Form:Plant_Inventory_Worksheets Form`, `Form:Refresh_Close`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label16 | NMIS Product Inventory |  |  |  | 3.20, 0.08, 2.64, 0.31 |
| Line | Line17 |  |  |  |  | 0.08, 0.47, 8.72, 0.00 |
| TextBox | MODIFIED_BY |  |  |  |  | 7.33, 0.12, 0.00, 0.00 |
| CommandButton | Close | Close |  |  | Click | 8.54, 0.04, 0.47, 0.28 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TabControl | TabCtl18 |  |  |  |  | 0.05, 0.73, 9.05, 4.86 |
| Page | Lot Information |  |  |  |  | 0.15, 1.02, 8.86, 4.48 |
| Subform | NMIS_PRODUCT_INVENTORIES subform1 |  | Form.NMIS_PRODUCT_INVENTORIES subform1b (master: MODIFIED_BY → child: ID_ACTIVITY_CN) |  |  | 0.27, 1.03, 4.39, 4.43 |
| Subform | NMIS_PRODUCT_INVENTORY_SAMPLES subform1b |  | Form.NMIS_PRODUCT_INVENTORY_SAMPLES subform2 (master: MODIFIED_BY → child: ID_ACTIVITY_CN) |  |  | 4.83, 1.03, 3.96, 4.42 |
| Page | Inventory Sizes |  |  |  |  | 0.15, 1.02, 8.86, 4.48 |
| Subform | NMIS_PRODUCT_INVENTORY_SIZES subform2d |  | Form.NMIS_PRODUCT_INVENTORY_SIZES subform2 (master: MODIFIED_BY → child: ID_ACTIVITY_CN) |  |  | 2.97, 1.03, 3.28, 4.47 |
| Label | Label41 | Agreement Lot ID: |  |  |  | 0.12, 0.04, 1.48, 0.24 |
| ComboBox | CN |  |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_SOURCE_LOTS.SOURCE_CODE FROM NMIS_SOURCE_LOTS RIGHT JOIN NMIS_AGREEMENT_LOTS ON NMIS_SOURCE_LOTS.CN=NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID;  |  | 1.67, 0.04, 1.91, 0.24 |
| Label | Label69 | Inventory Date: |  |  |  | 0.32, 0.33, 1.28, 0.25 |
| TextBox | Inv_Date |  | =[Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].[Form]![ACTIVITY_DATE] |  |  | 1.67, 0.33, 0.74, 0.24 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Field_Worksheets____Click()
On Error GoTo Err_Field_Worksheets____Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Plant_Inventory_Worksheets Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Field_Worksheets____Click:
    Exit Sub

Err_Field_Worksheets____Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Worksheets____Click
    
End Sub
Private Sub Close_Click()
On Error GoTo Err_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Close_Click:
    Exit Sub

Err_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Close_Click
    
End Sub
```
