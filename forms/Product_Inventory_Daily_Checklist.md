# Form: Product_Inventory_Daily_Checklist

**Opens:** `Report:NMIS_PRODUCT_INVENTORY_CHECKLIST_by_stocktype`, `Report:NMIS_PRODUCT_INVENTORY_DAILY_CHECKLIST`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  
**Form events with code:** Close, Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Product Inventory Checklist |  |  |  | 1.59, 0.23, 1.86, 0.50 |
| TextBox | Begin_Date | Begin Date: |  |  |  | 2.44, 1.51, 1.04, 0.23 |
| TextBox | End_Date | End Date: |  |  |  | 2.44, 1.84, 1.04, 0.23 |
| CommandButton | Preview_Product_Inventory_Daily_Checklist | Click to Preview Daily Checklist... |  |  | Click | 1.17, 2.34, 1.21, 0.58 |
| ComboBox | BorC | Cost Center: |  | *;All;B;Bareroot;C;Container |  | 2.44, 1.04, 1.06, 0.24 |
| CommandButton | Preview_Product_Inventory_Checklist | Click to Preview Stocktype Checklist... |  |  | Click | 2.88, 2.34, 1.21, 0.58 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Form_Close()

    Forms![Switchboard]![FY_For_Reports] = Forms![Switchboard]![Current FY:]
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    'Forms![Switchboard]![FY_For_Reports] = 2000 + Val(Right$(Date, 2))
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    DoCmd.SetWarnings True

End Sub

Private Sub Preview_Product_Inventory_Checklist_Click()
On Error GoTo Err_Preview_Product_Inventory_Checklist_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_CHECKLIST_by_stocktype"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Product_Inventory_Checklist_Click:
    Exit Sub

Err_Preview_Product_Inventory_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Product_Inventory_Checklist_Click
    
End Sub

Private Sub Preview_Product_Inventory_Daily_Checklist_Click()
On Error GoTo Err_Preview_Product_Inventory_Daily_Checklist_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_DAILY_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Product_Inventory_Daily_Checklist_C:
    Exit Sub

Err_Preview_Product_Inventory_Daily_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Product_Inventory_Daily_Checklist_C
    
End Sub
```
