# Form: NMIS_Product_Charges_add_activity_codes_and_MCs Form

**Caption:** NMIS PRODUCTS  
**Record source:**

```sql
SELECT NMIS_PRODUCTS.* FROM NMIS_PRODUCTS ORDER BY NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_DESC, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE;
```

**Backend tables referenced:** `NMIS_PRODUCTS`  
**Opens:** `Form:NMIS_PRODUCTS_CHECKLIST1`, `Form:NMIS_PRODUCT_CHARGES`, `Form:NMIS_Product_Charges_add_activity_codes_and_MCs1b`, `Report:NMIS_PRODUCTS_CHECKLIST1`, `Report:NMIS_PRODUCT_CHARGES`, `Report:NMIS_Product_Charges_add_activity_codes_and_MCs1b`  
**Opened from (VBA):** `Form_NMIS_PRODUCT_CHARGES2`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label92 | Select a Product to Copy Activities and Mgmt Codes From |  |  |  | 1.39, 0.07, 3.67, 0.54 |
| ComboBox | Find |  |  | SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" & IIf([HISTORICAL]," Historical") AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_CLASS, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE, NMIS_PRODUCTS.HISTORICAL FROM NMIS_PRODUCTS WHERE (((NMIS_PRODUCTS.HISTORICAL) Like IIf([Forms]![NMIS_Product_Charges_add_activity_codes_and_MCs Form]![Hide_Historical],0,"*")) AND ((Left$([CATEGORY_CODE],1)) Like [Forms]![NMIS_Product_Charges_add_activity_codes_and_MCs Form]![Filter_for_Product_Type] & "*")) ORDER BY NMIS_PRODUCTS.CATEGORY_CODE, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")", NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE; |  | 0.58, 1.08, 3.75, 0.25 |
| Label | Label96 | Find: |  |  |  | 0.05, 1.08, 0.48, 0.25 |
| ComboBox | Filter_for_Product_Type |  |  | B;Bareroot Plant;C;Container Plant;N;Native Propagules;*;All Product Types | AfterUpdate | 0.58, 0.79, 1.75, 0.25 |
| Label | Label98 | Like: |  |  |  | 0.15, 0.83, 0.39, 0.21 |
| Label | Label99 | Like Product Class: |  |  |  | 2.42, 0.83, 1.32, 0.21 |
| TextBox | Text100 |  |  |  |  | 3.79, 0.79, 1.04, 0.25 |
| CommandButton | Wildcard_Tip | Wildcard Tip |  |  | Click | 4.95, 0.78, 0.88, 0.00 |
| CheckBox | Hide_Historical | Hide Historical |  |  | Click | 6.02, 1.15, 0.00, 0.00 |
| CommandButton | Command77 | Cancel |  |  | Click | 3.46, 2.14, 0.78, 0.33 |
| CommandButton | Add_Activity_and_Mgmt_Codes | Copy |  |  | Click | 2.29, 2.14, 0.78, 0.33 |
| Label | Label105 | If there are already Product Charges for the Product CLICK CANCEL! |  |  |  | 0.42, 1.42, 5.62, 0.54 |

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

Private Sub Command104_Click()
'NMIS_Product_Charges_add_activity_codes_and_MCs1b
End Sub

Private Sub Add_Activity_and_Mgmt_Codes_Click()
On Error GoTo Err_Add_Activity_and_Mgmt_Codes_Click

    Dim stDocName As String
    Dim stDocName2 As String

    stDocName = "NMIS_Product_Charges_add_activity_codes_and_MCs1b"
    stDocName2 = "NMIS_Product_Charges_add_activity_codes_and_MCs2"
    DoCmd.SetWarnings False
    DoCmd.OpenQuery stDocName
    DoCmd.OpenQuery stDocName2
    DoCmd.SetWarnings True
    
    DoCmd.Close
    Forms![NMIS_PRODUCT_CHARGES2].Requery
    
Exit_Add_Activity_and_Mgmt_Codes_Click:
    Exit Sub

Err_Add_Activity_and_Mgmt_Codes_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Add_Activity_and_Mgmt_Codes_Click
 
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

Private Sub Filter_for_Product_Type_AfterUpdate()

    Find.Requery
    
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

Private Sub Hide_Historical_Click()

    Find.Requery
    
End Sub
```
