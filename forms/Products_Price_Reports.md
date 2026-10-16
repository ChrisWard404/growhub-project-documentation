# Form: Products_Price_Reports

**Caption:** Products Charges Reports  
**Backend tables referenced:** `NMIS_PRODUCTS`, `NMIS_PRODUCT_TYPES`  
**Opens:** `Report:NMIS_PRODUCTS_All_Price_CHECKLIST`, `Report:NMIS_PRODUCTS_All_Price_CHECKLIST_SPD`, `Report:NMIS_PRODUCTS_NO_Charges_CHECKLIST`, `Report:NMIS_PRODUCTS_Non_Product_Grade_Price_CHECKLIST`, `Report:NMIS_PRODUCTS_With_Product_Grade_Price_CHECKLIST`  
**Opened from (VBA):** `Form_NMIS_PRODUCT_CHARGES2`, `Form_Reports_Menu_Maintenance Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Product Charges Reports |  |  |  | 1.73, 0.12, 1.99, 0.50 |
| CommandButton | Products_Non_Pack_Or_Destroy_Prices | Non-Pack or Destroy Prices |  |  | Click | 2.15, 3.08, 1.21, 0.58 |
| CommandButton | All_Prices | All Prices |  |  | Click | 3.60, 3.08, 1.21, 0.58 |
| Label | Filter_For_Product_Label | Product: |  |  |  | 0.71, 1.56, 0.76, 0.25 |
| ComboBox | Filter_For_Product |  |  | SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & IIf([HISTORICAL]," (Historical)") AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.PRODUCT_CLASS, [NMIS_PRODUCT_TYPES].[PRODUCT_TYPE_DESC] & " " AS [Begin Product], [NMIS_PRODUCT_TYPES_1].[PRODUCT_TYPE_DESC] & " " AS [End Product], [CATEGORY_CODE] & " " AS Category FROM NMIS_PRODUCT_TYPES AS NMIS_PRODUCT_TYPES_1 INNER JOIN (NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE = NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE) ON NMIS_PRODUCT_TYPES_1.PRODUCT_TYPE = NMIS_PRODUCTS.END_PRODUCT_TYPE WHERE (((NMIS_PRODUCTS.PRODUCT_CLASS) Like "*" & [Forms]![Products_Price_Reports]![Like_Product_Class] & "*") AND ((Left$([CATEGORY_CODE],1)) Like [Forms]![Products_Price_Reports]![Filter_for_Product_Type] & "*") AND ((NMIS_PRODUCTS.HISTORICAL) Like IIf([Forms]![Products_Price_Reports]![Hide_Historical]=-1,0,"*"))) ORDER BY [CATEGORY_CODE] & " ", [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")", NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE; | Change, Enter | 1.55, 1.56, 3.75, 0.25 |
| ComboBox | Filter_for_Product_Type |  |  | B;Bareroot Plant;C;Container Plant;N;Native Propagules;*;All Product Types | Change | 1.55, 0.83, 1.75, 0.25 |
| Label | Filter_for_Product_Type_Label | Product Type: |  |  |  | 0.27, 0.83, 1.20, 0.25 |
| CommandButton | Products_Pack_or_Destroy_Prices | Pack or Destroy Prices  |  |  | Click | 0.67, 3.08, 1.21, 0.58 |
| CheckBox | Hide_Historical | Hide Historical |  |  |  | 4.53, 2.42, 0.00, 0.00 |
| Label | Label87 | Like Stocktype: |  |  |  | 0.17, 1.21, 1.30, 0.25 |
| TextBox | Like_Product_Class |  |  |  |  | 1.54, 1.19, 1.04, 0.25 |
| CommandButton | Wildcard_Tip | Wildcard Tip |  |  | Click | 2.71, 1.20, 0.88, 0.00 |
| CheckBox | Product_Grade_Standard_Only | Product Grade Standard Only |  |  |  | 2.77, 2.42, 0.00, 0.00 |
| CheckBox | PACK_OR_CPROC_ONLY | PACK or CPROC Only |  |  |  | 2.77, 2.11, 0.00, 0.00 |
| CheckBox | Hide_JobCodes | Hide JobCodes |  |  |  | 4.53, 2.11, 0.00, 0.00 |
| CheckBox | Hide_0_Charges | Hide $0.00's: |  |  |  | 4.54, 2.72, 0.00, 0.00 |
| CommandButton | No_Product_Charges | NO Prices Checklist |  |  | Click | 0.62, 2.73, 1.40, 0.26 |
| CommandButton | All_Prices_SPD | Spreadsheet |  |  | Click | 3.60, 3.71, 1.21, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub All_Prices_Click()
On Error GoTo Err_All_Prices_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCTS_All_Price_CHECKLIST"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_CHARGES_Dist_Subreport_MT"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
Exit_All_Prices_Click:
    Exit Sub

Err_All_Prices_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_All_Prices_Click
    
End Sub

Private Sub All_Prices_SPD_Click()
On Error GoTo Err_All_Prices_SPD_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCTS_All_Price_CHECKLIST_SPD"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_CHARGES_Dist_Subreport_MT"
    DoCmd.SetWarnings True
    
    DoCmd.OpenQuery stDocName
Exit_All_Prices_SPD_Click:
    Exit Sub

Err_All_Prices_SPD_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_All_Prices_SPD_Click
    
End Sub

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

Private Sub No_Product_Charges_Click()
On Error GoTo Err_No_Product_Charges_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCTS_NO_Charges_CHECKLIST"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_CHARGES_Dist_Subreport_MT"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
Exit_No_Product_Charges_Click:
    Exit Sub

Err_No_Product_Charges_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_No_Product_Charges_Click
    
End Sub

Private Sub Products_Non_Pack_Or_Destroy_Prices_Click()

On Error GoTo Err_Products_Non_Pack_Or_Destroy_Prices_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCTS_Non_Product_Grade_Price_CHECKLIST"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_CHARGES_Dist_Subreport_MT"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
Exit_Products_Non_Pack_Or_Destroy_Prices_Click:
    Exit Sub

Err_Products_Non_Pack_Or_Destroy_Prices_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Products_Non_Pack_Or_Destroy_Prices_Click
    
End Sub

Private Sub Products_Pack_or_Destroy_Prices_Click()

On Error GoTo Err_Products_Pack_or_Destroy_Prices_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCTS_With_Product_Grade_Price_CHECKLIST"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_CHARGES_Dist_Subreport_MT"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
Exit_Products_Pack_or_Destroy_Prices_Click:
    Exit Sub

Err_Products_Pack_or_Destroy_Prices_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Products_Pack_or_Destroy_Prices_Click
    
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
