# Form: NMIS_ACCESS_EDIT_DEFAULT_INV_PLOT_SIZE

**Caption:** NMIS_ACCESS_USER_NURSERY  
**Record source:**

```sql
SELECT NMIS_ACCESS_USER_NURSERY.Inv_Plot_Area_Default FROM NMIS_ACCESS_USER_NURSERY WHERE (((NMIS_ACCESS_USER_NURSERY.Nursery_Associate_Code)=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code));
```

**Backend tables referenced:** `NMIS_ACCESS_USER_NURSERY`  
**Form events with code:** Close  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label6 | Inv Plot Area Default |  |  |  | 2.26, 0.17, 2.21, 0.31 |
| Line | Line7 |  |  |  |  | 0.04, 0.79, 6.33, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Inv_Plot_Area_Default |  | Inv_Plot_Area_Default |  |  | 3.02, 0.04, 0.55, 0.28 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Form_Close()

    Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Inv_Plot_Area_Default].Requery
    
End Sub
```
