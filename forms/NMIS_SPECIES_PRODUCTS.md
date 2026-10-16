# Form: NMIS_SPECIES_PRODUCTS

**Caption:** NMIS_SPECIES_PRODUCTS  
**Record source:**

```sql
NMIS_PRODUCTS
```

**Backend tables referenced:** `NMIS_PRODUCTS`  
**Subforms/subreports:** `Form.NMIS_SPECIES_PRODUCTS Subform2`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label19 | NMIS Species Products |  |  |  | 2.58, 0.17, 2.92, 0.29 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CN | CN | =[Combo11] |  |  | 4.50, 0.08, 0.63, 0.20 |
| TextBox | PRODUCT_DESC | Product Description | PRODUCT_DESC |  |  | 5.37, 0.38, 2.03, 0.20 |
| ComboBox | Combo11 | Find Product |  | SELECT NMIS_PRODUCTS.CN, NMIS_PRODUCTS.PRODUCT_DESC FROM NMIS_PRODUCTS;  | AfterUpdate | 1.38, 0.17, 1.92, 0.25 |
| TextBox | Text13 | Category | CATEGORY_CODE |  |  | 6.00, 0.08, 1.38, 0.20 |
| Subform | NMIS_SPECIES_PRODUCTS1 | Species Products | Form.NMIS_SPECIES_PRODUCTS Subform2 (master: CN → child: PRODUCT_CN) |  |  | 0.17, 0.92, 7.50, 4.58 |
| Line | Line17 |  |  |  |  | 3.50, 0.00, 0.00, 0.62 |
| Line | Line18 |  |  |  |  | 0.00, 0.58, 7.75, 0.04 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub find_product_Click()
On Error GoTo Err_find_product_Click

    Screen.PreviousControl.SetFocus
    DoCmd.DoMenuItem acFormBar, acEditMenu, 10, , acMenuVer70

Exit_find_product_Click:
    Exit Sub

Err_find_product_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_find_product_Click
    
End Sub
Private Sub cmdFind_Click()
On Error GoTo Err_cmdFind_Click


    Screen.PreviousControl.SetFocus
    DoCmd.DoMenuItem acFormBar, acEditMenu, 10, , acMenuVer70

Exit_cmdFind_Click:
    Exit Sub

Err_cmdFind_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_cmdFind_Click
    
End Sub
Private Sub Combo11_AfterUpdate()
    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![Combo11] & "'"
    Me.Bookmark = rs.Bookmark
End Sub
```
