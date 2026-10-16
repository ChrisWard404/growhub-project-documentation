# Form: Species_Products_Reports

**Caption:** Species Products Reports  
**Backend tables referenced:** `NMIS_PRODUCTS`, `NMIS_PRODUCT_TYPES`, `NMIS_SPECIES_PRODUCTS`  
**Opens:** `Report:NMIS_SPECIES_PRODUCTS_AND_CYCLES`, `Report:NMIS_SPECIES_PRODUCTS_AND_CYCLES_Current_Crop`, `Report:NMIS_SPECIES_PRODUCTS_AND_FACTORS`, `Report:NMIS_SPECIES_PRODUCTS_CHECKLIST`  
**Opened from (VBA):** `Form_Reports_Menu_Maintenance Subform`  
**Form events with code:** Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Species Products Reports |  |  |  | 1.73, 0.12, 1.99, 0.50 |
| CommandButton | Species_Products_With_Sow_Factors | Species Products With Sow Factors |  |  | Click | 1.46, 3.25, 1.21, 0.58 |
| CommandButton | Species_Products_With_Cycles | Species Products With Inventory Cycles |  |  | Click | 2.81, 3.25, 1.21, 0.58 |
| ComboBox | Filter_for_Species |  |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.DIVERSE FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY ON NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL = NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((NMIS_PRODUCTS.CN) Like [Forms]![Species_Products_Reports]![Filter_For_Product] & "*") AND ((Left$([nmis_Products].[CATEGORY_CODE],1)) Like [Forms]![Species_Products_Reports]![Filter_for_Product_Type] & "*")) GROUP BY NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.HIDE, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.DIVERSE HAVING (((NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.HIDE)=False) AND ((NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.DIVERSE) Like [Forms]![Species_Products_Reports]![Species_Type])); | Enter | 1.55, 2.06, 0.96, 0.25 |
| Label | Filter_for_Species_Label | Species: |  |  |  | 0.71, 2.06, 0.76, 0.25 |
| Label | Filter_For_Product_Label | Like Prod: |  |  |  | 0.58, 1.45, 0.89, 0.25 |
| ComboBox | Filter_For_Product |  |  | SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & IIf([nmis_products].[historical]," (Historical)") AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.PRODUCT_CLASS, [NMIS_PRODUCT_TYPES].[PRODUCT_TYPE_DESC] & " " AS [Begin Product], [NMIS_PRODUCT_TYPES_1].[PRODUCT_TYPE_DESC] & " " AS [End Product], [CATEGORY_CODE] & " " AS Category, NMIS_PRODUCTS.HISTORICAL FROM NMIS_PRODUCT_TYPES AS NMIS_PRODUCT_TYPES_1 INNER JOIN (NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE = NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE) ON NMIS_PRODUCT_TYPES_1.PRODUCT_TYPE = NMIS_PRODUCTS.END_PRODUCT_TYPE WHERE (((NMIS_PRODUCTS.PRODUCT_CLASS) Like "*" & [Forms]![Species_Products_Reports]![Like_Grow_Unit] & "*") AND ((Left$([CATEGORY_CODE],1)) Like [Forms]![Species_Products_Reports]![Filter_for_Product_Type] & "*") AND ((NMIS_PRODUCTS.HISTORICAL) Like IIf([Forms]![Species_Products_Reports]![Hide_Historical],0,"*"))) ORDER BY [CATEGORY_CODE] & " ", [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")", NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE; | Change, Enter | 1.55, 1.45, 3.75, 0.25 |
| ComboBox | Filter_for_Product_Type |  |  | B;Bareroot Plant;C;Container Plant;N;Native Propagules;*;All Product Types | Change | 1.55, 0.81, 1.75, 0.25 |
| Label | Filter_for_Product_Type_Label | Like: |  |  |  | 1.01, 0.81, 0.46, 0.25 |
| CommandButton | Species_Products | Species Products  |  |  | Click | 0.12, 3.25, 1.21, 0.58 |
| CheckBox | Hide_Historical | Hide Historical |  |  |  | 1.55, 2.88, 0.00, 0.00 |
| ComboBox | Species_Type |  |  | *;Traditional and Non-Traditional;0;Traditional;-1;Non-Traditional | AfterUpdate | 1.54, 2.39, 2.80, 0.25 |
| Label | Label18 | Species Type: |  |  |  | 0.26, 2.39, 1.20, 0.25 |
| Label | Label87 | Like Product Class: |  |  |  | 0.17, 1.16, 1.32, 0.21 |
| TextBox | Like_Grow_Unit |  |  |  |  | 1.54, 1.11, 1.04, 0.25 |
| CommandButton | Wildcard_Tip | Wildcard Tip |  |  | Click | 2.71, 1.12, 0.88, 0.00 |
| CommandButton | Species_Products_With_Cycles_Current_Crop | Species Products With Inv Cycles-Current Crop Only |  |  | Click | 4.12, 3.25, 1.21, 0.58 |
| CheckBox | Show_Lots | Show Lots |  |  |  | 3.46, 2.88, 0.00, 0.00 |
| Label | Like_Description Label | Like Description: |  |  |  | 0.05, 1.76, 1.42, 0.25 |
| TextBox | Like_Description |  |  |  |  | 1.54, 1.75, 1.36, 0.25 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Filter_For_Product_Change()

    Filter_for_Species = "*"
    
End Sub

Private Sub Filter_For_Product_Enter()
    
    Filter_For_Product.Requery
    
End Sub

Private Sub Filter_for_Product_Type_Change()

    Filter_For_Product = "*"
    
End Sub

Private Sub Filter_for_Species_Enter()

    Filter_for_Species.Requery
    
End Sub

Private Sub Form_Open(Cancel As Integer)

End Sub

Private Sub Species_Products_Click()
On Error GoTo Err_Species_Products_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_SPECIES_PRODUCTS_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview
Exit_Species_Products_Click:
    Exit Sub

Err_Species_Products_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Species_Products_Click
    
End Sub

Private Sub Species_Products_With_Cycles_Click()
On Error GoTo Err_Species_Products_With_Cycles_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_SPECIES_PRODUCTS_AND_CYCLES"
    DoCmd.OpenReport stDocName, acPreview
Exit_Species_Products_With_Cycles_Click:
    Exit Sub

Err_Species_Products_With_Cycles_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Species_Products_With_Cycles_Click
    
End Sub

Private Sub Species_Products_With_Cycles_Current_Crop_Click()
On Error GoTo Err_Species_Products_With_Cycles_Current_Crop_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_SPECIES_PRODUCTS_AND_CYCLES_Current_Crop"
    DoCmd.OpenReport stDocName, acPreview
Exit_Species_Products_With_Cycles_Current_Crop_Click:
    Exit Sub

Err_Species_Products_With_Cycles_Current_Crop_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Species_Products_With_Cycles_Current_Crop_Click
    
End Sub

Private Sub Species_Products_With_Sow_Factors_Click()
On Error GoTo Err_Species_Products_With_Sow_Factors_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_SPECIES_PRODUCTS_AND_FACTORS"
    DoCmd.OpenReport stDocName, acPreview
Exit_Species_Products_With_Sow_Factors_Click:
    Exit Sub

Err_Species_Products_With_Sow_Factors_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Species_Products_With_Sow_Factors_Click
    
End Sub

Private Sub Species_Type_AfterUpdate()

    Filter_for_Species = Null
    
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
        "# Matches any single numeric character. 1#3 finds 103, 113, 123", vbInformation

Exit_Wildcard_Tip_Click:
    Exit Sub

Err_Wildcard_Tip_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Wildcard_Tip_Click
    
End Sub
```
