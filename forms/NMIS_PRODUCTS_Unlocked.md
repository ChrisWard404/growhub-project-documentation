# Form: NMIS_PRODUCTS_Unlocked

**Caption:** NMIS PRODUCTS  
**Backend tables referenced:** `NMIS_CATEGORIES`, `NMIS_PRODUCTS`, `NMIS_PRODUCT_TYPES`, `NMIS_UNITS`  
**Subforms/subreports:** `Form.NMIS_SPECIES_PRODUCTS Subform1`, `Form.NMIS_PRODUCT_GRADES Subform`, `Form.NMIS_PRODUCT_TYPES subform`  
**Opens:** `Form:NMIS_PRODUCTS_CHECKLIST1`, `Form:NMIS_PRODUCT_CHARGES`, `Report:NMIS_PRODUCTS_CHECKLIST1`, `Report:NMIS_PRODUCT_CHARGES`  
**Form events with code:** Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box90 |  |  |  |  | 0.04, 0.03, 8.01, 0.94 |
| Label | NMIS_PRODUCTS | NMIS Products |  |  |  | 3.08, 0.08, 1.66, 0.27 |
| CommandButton | Command77 | Close |  |  | Click | 7.50, 0.08, 0.47, 0.28 |
| ComboBox | PRODUCT_Lookup |  |  | SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" & IIf([HISTORICAL]," Historical") AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_CLASS, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE, NMIS_PRODUCTS.HISTORICAL FROM NMIS_PRODUCTS WHERE (((NMIS_PRODUCTS.PRODUCT_CLASS) Like Nz([Forms]![NMIS_PRODUCTS_unlocked]![Like_Grow_Unit],"*")) AND ((NMIS_PRODUCTS.HISTORICAL) Like IIf([Forms]![NMIS_PRODUCTS_unlocked]![Hide_Historical],0,"*")) AND ((Left$([CATEGORY_CODE],1)) Like [Forms]![NMIS_PRODUCTS_unlocked]![Filter_for_Product_Type] & "*")) ORDER BY NMIS_PRODUCTS.CATEGORY_CODE, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")", NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE; | AfterUpdate, Enter | 0.62, 0.68, 3.75, 0.25 |
| CommandButton | Open Products Checklist Report | View Checklist |  |  | Click | 6.46, 0.67, 1.00, 0.24 |
| Label | Label84 | Find: |  |  |  | 0.09, 0.68, 0.48, 0.25 |
| ComboBox | Filter_for_Product_Type |  |  | B;Bareroot Plant;C;Container Plant;N;Native Propagules;*;All Product Types |  | 0.62, 0.39, 1.75, 0.25 |
| Label | Filter_for_Product_Type_Label | Like: |  |  |  | 0.19, 0.43, 0.39, 0.21 |
| Label | Label87 | Like Product Class: |  |  |  | 2.46, 0.43, 1.32, 0.21 |
| TextBox | Like_Grow_Unit |  |  |  |  | 3.83, 0.39, 1.04, 0.25 |
| CommandButton | Wildcard_Tip | Wildcard Tip |  |  | Click | 4.99, 0.38, 0.88, 0.00 |
| CheckBox | Hide_Historical | Hide Historical |  |  |  | 7.10, 0.43, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_DESC | Product Description  | PRODUCT_DESC |  | DblClick, Enter | 1.68, 0.12, 2.80, 0.20 |
| TextBox | PRODUCT_CLASS | Class | PRODUCT_CLASS |  |  | 0.70, 0.62, 1.75, 0.20 |
| TextBox | PRODUCT_CLASS_CONDENSED | Class Condensed | PRODUCT_CLASS_CONDENSED |  |  | 3.83, 0.62, 1.75, 0.20 |
| TextBox | HARVEST_1_FACTOR_CODE | Harvest Code 1 | HARVEST_1_FACTOR_CODE |  |  | 3.02, 0.93, 0.50, 0.20 |
| TextBox | HARVEST_2_FACTOR_CODE | Code 2 | HARVEST_2_FACTOR_CODE |  |  | 4.41, 0.93, 0.50, 0.20 |
| TextBox | HARVEST_3_FACTOR_CODE | Code 3 | HARVEST_3_FACTOR_CODE |  |  | 5.82, 0.93, 0.50, 0.20 |
| TextBox | HARVEST_4_FACTOR_CODE | Code 4 | HARVEST_4_FACTOR_CODE |  |  | 7.28, 0.93, 0.50, 0.20 |
| TextBox | INV_1_FACTOR_CODE | Inventory Code 1 | INV_1_FACTOR_CODE |  |  | 3.02, 1.45, 0.50, 0.20 |
| TextBox | INV_2_FACTOR_CODE | Code 2 | INV_2_FACTOR_CODE |  |  | 4.41, 1.45, 0.50, 0.20 |
| TextBox | INV_3_FACTOR_CODE | Code 3 | INV_3_FACTOR_CODE |  |  | 5.82, 1.45, 0.50, 0.20 |
| TextBox | CONTAINER_1_FACTOR_CODE | Container Code 1 | CONTAINER_1_FACTOR_CODE |  |  | 3.03, 1.18, 0.50, 0.20 |
| TextBox | CONTAINER_2_FACTOR_CODE | Code 2 | CONTAINER_2_FACTOR_CODE |  |  | 4.42, 1.18, 0.50, 0.20 |
| TextBox | CONTAINER_3_FACTOR_CODE | Code 3 | CONTAINER_3_FACTOR_CODE |  |  | 5.83, 1.18, 0.50, 0.20 |
| TextBox | NOTE | Note | NOTE |  |  | 1.00, 1.76, 6.08, 0.38 |
| Label | FACTOR_CODES | Factor Codes |  |  |  | 0.29, 0.93, 1.17, 0.20 |
| ComboBox | CATEGORY_CODE | Category: | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC, NMIS_CATEGORIES.NURSERY_ASSOCIATE FROM NMIS_CATEGORIES WHERE (((NMIS_CATEGORIES.NURSERY_ASSOCIATE) Like [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code])) ORDER BY NMIS_CATEGORIES.CATEGORY_DESC; | DblClick, Enter | 5.36, 0.12, 2.20, 0.20 |
| TabControl | TabCtl43 |  |  |  |  | 0.18, 2.23, 7.82, 2.70 |
| Page | Species Products |  |  |  |  | 0.27, 2.52, 7.64, 2.31 |
| Subform | NMIS_SPECIES_PRODUCTS1 |  | Form.NMIS_SPECIES_PRODUCTS Subform1 (master: CN → child: PRODUCT_CN) |  |  | 0.72, 2.54, 6.83, 2.10 |
| Page | Product Charges | View/Edit Product Charges |  |  |  | 0.27, 2.52, 7.64, 2.31 |
| CommandButton | Product_Charges_Form | View/Edit Product Charges |  |  | Click | 3.12, 3.33, 1.70, 0.29 |
| Page | Product Types and Grades |  |  |  |  | 0.27, 2.52, 7.64, 2.31 |
| Subform | NMIS_PRODUCT_GRADES Subform | Product Grades | Form.NMIS_PRODUCT_GRADES Subform (master: NURSERY_ASSOCIATE → child: NURSERY_ASSOCIATE) |  |  | 4.20, 2.79, 3.63, 2.04 |
| Subform | Child88 | Product Types: | Form.NMIS_PRODUCT_TYPES subform |  |  | 0.33, 2.79, 3.74, 2.03 |
| ComboBox | BEGIN_PRODUCT_TYPE | Begin Type: | BEGIN_PRODUCT_TYPE | SELECT NMIS_PRODUCT_TYPES.PRODUCT_TYPE, NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC FROM NMIS_PRODUCT_TYPES ORDER BY NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC;  |  | 1.09, 0.37, 1.86, 0.20 |
| ComboBox | END_PRODUCT_TYPE | End Type: | END_PRODUCT_TYPE | SELECT NMIS_PRODUCT_TYPES.PRODUCT_TYPE, NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC FROM NMIS_PRODUCT_TYPES ORDER BY NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC;  |  | 4.05, 0.37, 1.86, 0.20 |
| Line | Line69 |  |  |  |  | 0.33, 0.04, 7.31, 0.00 |
| ComboBox | UNIT_CODE | Unit Code | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="AMT")) Or (((NMIS_UNITS.UNIT_TYPE)="area"));  |  | 6.44, 0.61, 0.50, 0.20 |
| Rectangle | Box78 |  |  |  |  | 0.15, 0.87, 7.72, 0.86 |
| TextBox | CN |  | CN |  |  | 3.08, 0.04, 0.00, 0.00 |
| TextBox | Index |  | Index |  |  | 0.17, 0.04, 0.00, 0.00 |
| TextBox | NURSERY_ASSOCIATE |  | NURSERY_ASSOCIATE |  |  | 6.27, 0.00, 1.70, 0.20 |
| CheckBox | HISTORICAL | Historical | HISTORICAL |  |  | 7.77, 0.65, 0.00, 0.00 |
| TextBox | Text205 |  | =IIf([Historical],"HISTORICAL") |  |  | 6.26, 0.31, 1.58, 0.28 |

## Code-behind (VBA)

```vb
Option Compare Database



Private Sub CATEGORY_CODE_DblClick(Cancel As Integer)

    CATEGORY_CODE.Locked = False
    
End Sub

Private Sub CATEGORY_CODE_Enter()

    If Not IsNull(CATEGORY_CODE) Then
        CATEGORY_CODE.Locked = True
    Else
        CATEGORY_CODE.Locked = False
    End If
   
End Sub

Private Sub Command77_Click()
On Error GoTo Err_Command77_Click

    Me.Refresh
    DoCmd.Close

Exit_Command77_Click:
    Exit Sub

Err_Command77_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command77_Click
    
End Sub



Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToControl "PRODUCT_Lookup"
    
End Sub

Private Sub Open_Products_Checklist_Report_Click()
On Error GoTo Err_Open_Products_Checklist_Report_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCTS_CHECKLIST1"
    DoCmd.OpenReport stDocName, acPreview

Exit_Open_Products_Checklist_Report_Clic:
    Exit Sub

Err_Open_Products_Checklist_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Products_Checklist_Report_Clic
    
End Sub





Private Sub PRODUCT_DESC_DblClick(Cancel As Integer)

    PRODUCT_DESC.Locked = False
    
End Sub

Private Sub PRODUCT_DESC_Enter()

    If Not IsNull(PRODUCT_DESC) Then
        PRODUCT_DESC.Locked = True
    Else
        PRODUCT_DESC.Locked = False
    End If
    
End Sub

Private Sub PRODUCT_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![PRODUCT_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
   
End Sub

Private Sub PRODUCT_Lookup_Enter()

    PRODUCT_Lookup.Requery
    
End Sub
Private Sub Product_Charges_Form_Click()
On Error GoTo Err_Product_Charges_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_CHARGES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Product_Charges_Form_Click:
    Exit Sub

Err_Product_Charges_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Charges_Form_Click
    
End Sub

Private Sub Wildcard_Tip_Click()
On Error GoTo Err_Wildcard_Tip_Click

    Dim stDocName As String

    MsgBox "Wildcards" & Chr(13) & Chr(10) & Chr(10) & _
        "* Matches any number of characters. It can be used as the first or last character in the character string. wh* finds what, white, and why" & Chr(13) & Chr(10) & Chr(10) & _
        "? Matches any single alphabetic character. B?ll finds ball, bell, and bill" & Chr(13) & Chr(10) & Chr(10) & _
        "[ ] Matches any single character within the brackets. B[ae]ll finds ball and bell but not bill" & Chr(13) & Chr(10) & Chr(10) & _
        "! Matches any character not in the brackets. b[!ae]ll finds bill and bull but not ball or bell" & Chr(13) & Chr(10) & Chr(10) & _
        "- Matches any one of a range of characters. You must specify the range in ascending order (A to Z, not Z to A). b[a-c]d finds bad, bbd, and bcd" & Chr(13) & Chr(10) & Chr(10) & _
        "# Matches any single numeric character. 1#3 finds 103, 113, 123"

Exit_Wildcard_Tip_Click:
    Exit Sub

Err_Wildcard_Tip_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Wildcard_Tip_Click
    
End Sub
```
