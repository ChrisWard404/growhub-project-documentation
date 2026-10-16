# Form: NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT

**Caption:** NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT  
**Record source:**

```sql
NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT
```

**Opened from (VBA):** `Form_**********dbdNMIS_PRODUCT_INVENTORIES`, `Form_NMIS_PRODUCT_INVENTORIES`, `Form_NMIS_PRODUCT_INVENTORIES subform1`, `Form_NMIS_PRODUCT_INVENTORIES subform1b`, `Form_NMIS_PRODUCT_INVENTORY_SIZES2 subform`, `Form_NMIS_PRODUCT_INVENTORY_SIZES2c subform`  
**Form events with code:** Close, Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID_ACTIVITY_CN |  | ID_ACTIVITY_CN |  |  | 1.08, 0.00, 1.81, 0.21 |
| TextBox | TOTAL_COUNT_SIZED | Total Count | TOTAL_COUNT |  |  | 0.05, 1.21, 0.91, 0.21 |
| TextBox | AT_SPEC_SIZED | At Spec Count | AT_SPEC |  |  | 1.03, 1.21, 1.10, 0.21 |
| TextBox | PCT_AT_SPEC_SIZED | % at Spec | PCT_AT_SPEC |  |  | 2.21, 1.21, 1.10, 0.21 |
| Label | Label10 | Update Computed Target From Sizes Measurements |  |  |  | 2.25, 0.25, 2.50, 0.50 |
| TextBox | AT_SPEC_ALT | At Alt Spec Count | AT_SPEC_ALT |  |  | 1.03, 1.71, 1.10, 0.21 |
| TextBox | PCT_AT_SPEC_ALT_SIZED | % at Alt Spec | PCT_AT_SPEC_ALT |  |  | 2.21, 1.71, 1.10, 0.21 |
| TextBox | SumOfIngrowth_Count | Ingrowth Count | SumOfIngrowth_Count |  |  | 3.40, 1.21, 1.10, 0.21 |
| TextBox | Ingrowth_PCT | % Ingrowth | Ingrowth_PCT |  |  | 4.57, 1.21, 1.10, 0.21 |
| TextBox | Total_PCT | % Total | Total_PCT2 |  |  | 5.74, 1.21, 1.10, 0.21 |
| CommandButton | Close_Form | Update Factor |  |  | Click | 3.88, 2.08, 1.10, 0.31 |
| CommandButton | Close_wo_Updating | Cancel |  |  | Click | 3.00, 2.08, 0.62, 0.31 |
| TextBox | Ingrowth_ALT_Count | Ingrowth Alt Count | SumOfIngrowth_ALT_Count |  |  | 3.40, 1.71, 1.10, 0.21 |
| TextBox | Ingrowth_ALT_PCT | % Ingrowth Alt | Ingrowth_ALT_PCT |  |  | 4.57, 1.71, 1.10, 0.21 |
| TextBox | Total_PCT_ALT | % Total Alt | Total_PCT_ALT2 |  |  | 5.74, 1.71, 1.10, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database
Private Sub Close_Form_Click()
On Error GoTo Err_Close_Form_Click
    
    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![TARGET_FACTOR] = Nz([TOTAL_PCT], Null)
    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![TARGET_FACTOR_ALT] = Nz([Total_PCT_ALT], Null)
    
    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![NET_INV]) Then
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![Factor_Updated].Visible = True
    End If
    
    DoCmd.Close

Exit_Close_Form_Click:
    Exit Sub

Err_Close_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Close_Form_Click
    
End Sub
Private Sub Close_wo_Updating_Click()
On Error GoTo Err_Close_wo_Updating_Click


    DoCmd.Close

Exit_Close_wo_Updating_Click:
    Exit Sub

Err_Close_wo_Updating_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Close_wo_Updating_Click
    
End Sub

Private Sub Form_Close()

    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![Update_Target_Factors].Visible = False
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    If Round(Nz(TOTAL_PCT, 0), 2) <> 0 Then
        If (Round(Nz(TOTAL_PCT, 0), 2) = Round(Nz(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![TARGET_FACTOR], 0), 2) And _
            Round(Nz(Total_PCT_ALT, 0), 2) = Round(Nz(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![TARGET_FACTOR_ALT], 0), 2)) Then
            DoCmd.Close
        End If
    End If
    
End Sub
```
