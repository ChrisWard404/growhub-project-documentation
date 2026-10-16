# Form: Lifting_Priorty_Table_Rebuild_Form

**Caption:** Lifting Priorities Rebuild  
**Opens:** `Form:Lifting_Priorties`  
**Opened from (VBA):** `Form_Lifting_Priorties_Data_Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Rebuild Lifting Priorities |  |  |  | 1.29, 0.21, 2.38, 0.28 |
| CommandButton | Rebuild_Lift_Priorities_Table | Click to Rebuild Lifting Priorities... |  |  | Click | 1.92, 1.83, 1.21, 0.87 |
| Line | Line26 |  |  |  |  | 0.08, 0.67, 4.88, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Rebuild_Lift_Priorities_Table_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Lift_Priorities_at"
    
    Response = MsgBox("Rebuild Lifting Priorities?", vbYesNo)
    
    If Response = vbYes Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "TOLIFT_Lift_Prioities_Clear"
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.OpenQuery stDocName
        DoCmd.SetWarnings True
        Forms![Lifting_Priorties]![Lifting_Priorties_Subform].Requery
        'DoCmd.OpenForm "Lifting_Priorties"
    Else
        MsgBox "Request Cancelled"
    End If
    DoCmd.Close acForm, "Lifting_Locations_Form"
    DoCmd.Close acForm, "Lifting_Priorty_Table_Rebuild_Form"
    
End Sub
```
