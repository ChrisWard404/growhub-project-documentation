# Form: NMIS_SOURCE_PROCESSING_RATES

**Subforms/subreports:** `Form.NMIS_SOURCE_PROCESSING_RATES Subform`  
**Opened from (VBA):** `Form_xLookup_Tables_Menu`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label2 | NMIS SOURCE PROCESSING RATES |  |  |  | 2.94, 0.08, 3.02, 0.25 |
| Line | Line4 |  |  |  |  | 0.09, 0.43, 8.57, 0.00 |
| Subform | NMIS_SOURCE_PRICE_RATES Subform |  | Form.NMIS_SOURCE_PROCESSING_RATES Subform |  |  | 0.06, 0.53, 8.82, 5.22 |
| TextBox | Like_FY | View FY Like: |  |  | AfterUpdate | 1.12, 0.08, 0.62, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Like_FY_AfterUpdate()

    [NMIS_SOURCE_PRICE_RATES Subform].Requery
    
End Sub
```
