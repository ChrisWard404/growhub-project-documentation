# Form: NMIS_PRODUCT_INVENTORY_SIZES subform2

**Caption:** NMIS_PRODUCT_INVENTORY_SIZES subform  
**Record source:**

```sql
SELECT NMIS_PRODUCT_INVENTORY_SIZES.SAMPLE_NO, NMIS_PRODUCT_INVENTORY_SIZES.HEIGHT, NMIS_PRODUCT_INVENTORY_SIZES.CALIPER, NMIS_PRODUCT_INVENTORY_SIZES.COUNT, NMIS_PRODUCT_INVENTORY_SIZES.ID_ACTIVITY_CN FROM NMIS_PRODUCT_INVENTORY_SIZES ORDER BY NMIS_PRODUCT_INVENTORY_SIZES.SAMPLE_NO, NMIS_PRODUCT_INVENTORY_SIZES.HEIGHT, NMIS_PRODUCT_INVENTORY_SIZES.CALIPER;
```

**Backend tables referenced:** `NMIS_PRODUCT_INVENTORY_SIZES`  
**Embedded in:** `Form:NMIS_PRODUCT_INVENTORIES2`, `Form:NMIS_PRODUCT_INVENTORIES3`  
**Form events with code:** AfterDelConfirm, AfterInsert, AfterUpdate, GotFocus  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | SAMPLE_NO_Label | Sample # |  |  |  | 0.04, 0.05, 0.75, 0.20 |
| Label | HEIGHT_Label | Height |  |  |  | 0.84, 0.05, 0.60, 0.20 |
| Label | CALIPER_Label | Caliper |  |  |  | 1.51, 0.05, 0.60, 0.20 |
| TextBox | ID_ACTIVITY_CN |  | ID_ACTIVITY_CN |  |  | 0.12, 0.04, 0.62, 0.00 |
| Label | COUNT_LABEL | Count |  |  |  | 2.18, 0.04, 0.62, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SAMPLE_NO |  | SAMPLE_NO |  |  | 0.04, 0.03, 0.75, 0.20 |
| TextBox | HEIGHT |  | HEIGHT |  |  | 0.84, 0.03, 0.60, 0.20 |
| TextBox | CALIPER |  | CALIPER |  |  | 1.51, 0.03, 0.60, 0.20 |
| TextBox | COUNT |  | [Count] |  |  | 2.19, 0.03, 0.60, 0.20 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | TOTAL_SIZED |  | =Sum([Count]) |  |  | 2.22, 0.04, 0.57, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Form_AfterDelConfirm(Status As Integer)

    DoCmd.Requery
    DoCmd.GoToRecord , , acNewRec
   
End Sub

Private Sub Form_AfterInsert()

    DoCmd.Requery
    DoCmd.GoToRecord , , acNewRec

End Sub

Private Sub Form_AfterUpdate()

    DoCmd.Requery
    DoCmd.GoToRecord , , acNewRec
    
End Sub

Private Sub Form_GotFocus()

    DoCmd.Requery
    
End Sub
```
