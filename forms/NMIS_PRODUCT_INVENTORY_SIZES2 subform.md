# Form: NMIS_PRODUCT_INVENTORY_SIZES2 subform

**Caption:** NMIS_PRODUCT_INVENTORY_SIZES subform  
**Record source:**

```sql
SELECT NMIS_PRODUCT_INVENTORY_SIZES.SAMPLE_NO, NMIS_PRODUCT_INVENTORY_SIZES.HEIGHT, NMIS_PRODUCT_INVENTORY_SIZES.CALIPER, NMIS_PRODUCT_INVENTORY_SIZES.ID_ACTIVITY_CN, NMIS_PRODUCT_INVENTORY_SIZES.COUNT FROM NMIS_PRODUCT_INVENTORY_SIZES WHERE (((NMIS_PRODUCT_INVENTORY_SIZES.SAMPLE_NO)=Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form!SAMPLE_NO) And ((NMIS_PRODUCT_INVENTORY_SIZES.ID_ACTIVITY_CN)=Forms!NMIS_PRODUCT_INVENTORIES![NMIS_ID_ACTIVITIES subform1].Form!CN)) ORDER BY NMIS_PRODUCT_INVENTORY_SIZES.SAMPLE_NO, NMIS_PRODUCT_INVENTORY_SIZES.HEIGHT, NMIS_PRODUCT_INVENTORY_SIZES.CALIPER;
```

**Backend tables referenced:** `NMIS_ID_ACTIVITIES`, `NMIS_PRODUCT_INVENTORIES`, `NMIS_PRODUCT_INVENTORY_SAMPLES`, `NMIS_PRODUCT_INVENTORY_SIZES`  
**Opens:** `Form:NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT`  
**Opened from (VBA):** `Form_NMIS_PRODUCT_INVENTORY_SAMPLES subform2`  
**Form events with code:** Close  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | HEIGHT_Label | Height |  |  |  | 0.11, 0.29, 0.60, 0.20 |
| Label | CALIPER_Label | Caliper |  |  |  | 0.78, 0.29, 0.60, 0.20 |
| TextBox | ID_ACTIVITY_CN |  | ID_ACTIVITY_CN |  |  | 0.00, 0.04, 0.00, 0.00 |
| TextBox | SAMPLE_NO |  | SAMPLE_NO |  |  | 0.95, 0.04, 0.37, 0.20 |
| Label | Label8 | Sample #: |  |  |  | 0.16, 0.04, 0.73, 0.21 |
| Label | Label10 | Count |  |  |  | 1.45, 0.29, 0.62, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | HEIGHT |  | HEIGHT |  |  | 0.11, 0.03, 0.60, 0.20 |
| TextBox | CALIPER |  | CALIPER |  |  | 0.78, 0.03, 0.60, 0.20 |
| TextBox | COUNT |  | COUNT |  |  | 0.54, 0.04, 0.46, 0.20 |
| TextBox | Text11 |  | COUNT |  |  | 1.46, 0.03, 0.60, 0.20 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | TOTAL_SIZED |  | =Sum([Count]) |  |  | 1.46, 0.03, 0.60, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Form_Close()
    
    If Not IsNull([TOTAL_SIZED]) Then
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SIZES subform].Requery
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Plant_inv_matrix_xtab1b"
        DoCmd.SetWarnings True
        DoCmd.OpenForm "NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT"
    End If
    
End Sub
```
