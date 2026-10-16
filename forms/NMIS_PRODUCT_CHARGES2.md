# Form: NMIS_PRODUCT_CHARGES2

**Caption:** NMIS PRODUCT CHARGES  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_CATEGORIES`, `NMIS_PRODUCTS`, `NMIS_PRODUCT_GRADES`  
**Subforms/subreports:** `Form.NMIS_PRODUCT_MGMT_CODES1 Subform2`  
**Opens:** `Form:NMIS_Product_Charges_add_activity_codes_and_MCs Form`, `Form:Products_Price_Reports`  
**Opened from (VBA):** `Form_Client_Bill_Menu`, `Form_Propagule_Billing_Report`, `Form_xLookup_Tables_Menu`  
**Form events with code:** AfterUpdate, Current, Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box52 |  |  |  |  | 0.01, 0.03, 8.58, 1.06 |
| Label | FISCAL_YEAR_Label | Fiscal Year |  |  |  | 2.89, 1.12, 0.42, 0.37 |
| Label | CATEGORY_CODE_Label | Category Code |  |  |  | 3.39, 1.12, 0.68, 0.37 |
| Label | ACTIVITY_CODE_Label | Activity Code |  |  |  | 4.99, 1.12, 0.80, 0.37 |
| Label | PRODUCT_GRADE_Label |   Product Grade |  |  |  | 5.83, 1.12, 1.03, 0.37 |
| Label | CHARGE_PER_UNIT_Label | Charge per Unit |  |  |  | 6.92, 1.12, 0.77, 0.37 |
| Label | CHARGE_PER_AMT_Label | Charge per Amt. |  |  |  | 7.73, 1.12, 0.89, 0.37 |
| ComboBox | PRODUCT_CN |  |  | SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" & IIf([HISTORICAL]," Historical") AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_CLASS, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE FROM NMIS_PRODUCTS WHERE (((NMIS_PRODUCTS.PRODUCT_CLASS) Like nz([Forms]![NMIS_PRODUCT_CHARGES2]![Like_Grow_Unit],"*")) AND ((IIf([Historical]=-1,-1,0)) Like IIf([Forms]![NMIS_PRODUCT_CHARGES2]![Hide_Historical]=-1,0,"*")) AND ((Left$([CATEGORY_CODE],1)) Like nz([Forms]![NMIS_PRODUCT_CHARGES2]![Filter_for_Product_Type],"*"))) ORDER BY NMIS_PRODUCTS.CATEGORY_CODE, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")", NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE; | AfterUpdate, DblClick, Enter | 4.60, 0.80, 3.91, 0.25 |
| Label | Label25 | Product Charges |  |  |  | 3.50, 0.08, 1.71, 0.28 |
| TextBox | View_FY |  |  |  | DblClick | 1.26, 0.08, 0.66, 0.21 |
| Label | Label56 | Like View FY: |  |  |  | 0.25, 0.08, 0.97, 0.21 |
| Label | Label36 | Parent Activity |  |  |  | 4.14, 1.14, 0.81, 0.37 |
| TextBox | Filter_For_Parent_Activity |  |  |  | AfterUpdate, DblClick | 1.26, 0.33, 0.66, 0.21 |
| Label | Label39 | Like Parent Act: |  |  |  | 0.10, 0.33, 1.11, 0.21 |
| CheckBox | Hide_0_Charges | Hide $0.00's: |  |  | Click | 4.33, 0.58, 0.00, 0.00 |
| Label | Label42 | <- Double-    <- Click        <- these for   <- All (Blank) |  |  |  | 2.27, 0.34, 0.99, 0.69 |
| ComboBox | Filter_for_Product_Type |  |  | B;Bareroot Plant;C;Container Plant;N;Native Propagules;*;All Product Types | Change | 6.75, 0.56, 1.75, 0.21 |
| Label | Filter_for_Product_Type_Label | Like: |  |  |  | 6.31, 0.56, 0.39, 0.21 |
| Label | Label87 | Like Product Class: |  |  |  | 5.38, 0.08, 1.32, 0.21 |
| TextBox | Like_Grow_Unit |  |  |  | AfterUpdate, DblClick | 6.75, 0.08, 1.04, 0.21 |
| CommandButton | Wildcard_Tip | Wildcard Tip |  |  | Click | 2.29, 0.07, 0.88, 0.24 |
| Label | Label46 | Product |  |  |  | 0.05, 1.12, 2.78, 0.37 |
| TextBox | Like_Activity |  |  |  | AfterUpdate, DblClick | 1.26, 0.58, 0.66, 0.21 |
| Label | Label48 | Like Activity: |  |  |  | 0.31, 0.58, 0.91, 0.21 |
| Label | Label49 |  Find Product: |  |  |  | 3.38, 0.80, 1.20, 0.25 |
| TextBox | Like_Product_Grade |  |  |  | AfterUpdate, DblClick | 1.26, 0.83, 0.94, 0.21 |
| Label | Label51 | Like prod Grade: |  |  |  | 0.04, 0.83, 1.18, 0.21 |
| Label | Label53 | Like Catagory Code: |  |  |  | 5.29, 0.32, 1.41, 0.21 |
| TextBox | Like_Category_Code |  |  |  | AfterUpdate, DblClick | 6.75, 0.32, 1.04, 0.21 |
| CheckBox | Hide_Historical | Hide Historical: |  |  | Click | 5.77, 0.58, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  | DblClick | 2.89, 0.03, 0.42, 0.21 |
| TextBox | CHARGE_PER_UNIT |  | CHARGE_PER_UNIT |  |  | 6.92, 0.03, 0.76, 0.21 |
| TextBox | CHARGE_PER_AMT |  | CHARGE_PER_AMT |  |  | 7.73, 0.03, 0.89, 0.21 |
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ORDER" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="LIFT" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="PROC" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SPCSVC" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SHIP" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SDTRAN" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="REQ")) OR (((NMIS_ACTIVITY_CODES.ACTIVITY_CODE) In ("LOTINV","CTSTRK"))) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE; | DblClick | 4.99, 0.03, 0.81, 0.21 |
| ComboBox | PRODUCT_GRADE |  | PRODUCT_GRADE | SELECT NMIS_PRODUCT_GRADES.PRODUCT_GRADE, NMIS_PRODUCT_GRADES.PRODUCT_GRADE_DESC FROM NMIS_PRODUCT_GRADES; | DblClick | 5.83, 0.03, 1.03, 0.21 |
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES; |  | 3.39, 0.03, 0.69, 0.21 |
| TextBox | PMC_LINK |  | PMC_LINK |  |  | 5.97, 0.04, 0.55, 0.19 |
| TextBox | PARENT_ACTIVITY_CODE |  | PARENT_ACTIVITY_CODE |  | DblClick | 4.14, 0.03, 0.81, 0.21 |
| ComboBox | Product |  | PRODUCT_CN | SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" & IIf([HISTORICAL]," Historical") AS PRODUCT_DESCRIPTION FROM NMIS_PRODUCTS ORDER BY Left$(nz([CATEGORY_CODE],"B"),1), [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" & IIf([HISTORICAL]," Historical"); | DblClick | 0.03, 0.03, 2.82, 0.21 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_PRODUCT_MGMT_CODES1 Subform |  | Form.NMIS_PRODUCT_MGMT_CODES1 Subform2 |  |  | 1.42, 0.03, 5.58, 1.49 |
| CommandButton | Products_Price_Reports | Products Charges Reports... |  |  | Click | 7.21, 0.54, 1.17, 0.50 |
| CommandButton | Add_Activity_and_Mgmt_Codes | Add Activity and Mgmt Codes |  |  | Click | 0.10, 0.54, 1.17, 0.50 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub ACTIVITY_CODE_DblClick(Cancel As Integer)

    Like_Activity = Activity_Code
    DoCmd.Requery
    
End Sub

Private Sub Add_Activity_and_Mgmt_Codes_Click()
On Error GoTo Err_Add_Activity_and_Mgmt_Codes_Click

    Dim stDocName As String

    stDocName = "NMIS_Product_Charges_add_activity_codes_and_MCs Form"
    DoCmd.OpenForm stDocName
Exit_Add_Activity_and_Mgmt_Codes_Click:
    Exit Sub

Err_Add_Activity_and_Mgmt_Codes_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Add_Activity_and_Mgmt_Codes_Click
End Sub

Private Sub Filter_For_Parent_Activity_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Filter_For_Parent_Activity_DblClick(Cancel As Integer)

    Filter_For_Parent_Activity = "*"
    DoCmd.Requery
    
End Sub

Private Sub Filter_for_Product_Type_Change()

    PRODUCT_CN.Requery
    DoCmd.Requery
    
End Sub

Private Sub FISCAL_YEAR_DblClick(Cancel As Integer)
    
    View_FY = FISCAL_YEAR
    DoCmd.Requery
    
End Sub


Private Sub Form_AfterUpdate()

    If IsNull(Activity_Code) Then
        [Add_Activity_and_Mgmt_Codes].Visible = True
    Else
        [Add_Activity_and_Mgmt_Codes].Visible = False
    End If
    
End Sub

Private Sub Form_Current()

    If IsNull(Activity_Code) Then
        [Add_Activity_and_Mgmt_Codes].Visible = True
    Else
        [Add_Activity_and_Mgmt_Codes].Visible = False
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    [Add_Activity_and_Mgmt_Codes].Visible = False
        
    DoCmd.Requery
    DoCmd.GoToControl "PRODUCT_CN"
    
End Sub

Private Sub Hide_0_Charges_Click()

    DoCmd.Requery
    
End Sub

Private Sub Hide_Historical_Click()

    DoCmd.Requery
    
End Sub

Private Sub Like_Activity_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Like_Activity_DblClick(Cancel As Integer)

    Like_Activity = "*"
    DoCmd.Requery
    
End Sub

Private Sub Like_Category_Code_AfterUpdate()

    PRODUCT_CN.Requery
    DoCmd.Requery
   
End Sub

Private Sub Like_Category_Code_DblClick(Cancel As Integer)

    Like_Category_Code = "*"
    DoCmd.Requery
    
End Sub

Private Sub Like_Grow_Unit_AfterUpdate()

    PRODUCT_CN.Requery
    DoCmd.Requery
    
End Sub

Private Sub Like_Grow_Unit_DblClick(Cancel As Integer)

    Like_Grow_Unit = "*"
    DoCmd.Requery
    
End Sub

Private Sub Like_Product_Grade_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Like_Product_Grade_DblClick(Cancel As Integer)
    
    Like_Product_Grade = "*"
    DoCmd.Requery
    
End Sub

Private Sub PARENT_ACTIVITY_CODE_DblClick(Cancel As Integer)

    Filter_For_Parent_Activity = PARENT_ACTIVITY_CODE
    DoCmd.Requery
    
End Sub

Private Sub PRODUCT_CN_AfterUpdate()

    ' Find the record that matches the control.
    'Dim rs As Object

    'Set rs = Me.Recordset.Clone
    'rs.FindFirst "[PRODUCT_CN] like '" & Nz(Me![PRODUCT_CN], "*") & "'"
    'Me.Bookmark = rs.Bookmark
       
    DoCmd.Requery
    
End Sub

Private Sub PRODUCT_CN_DblClick(Cancel As Integer)

    PRODUCT_CN = Null
    DoCmd.Requery
    
End Sub

Private Sub PRODUCT_CN_Enter()

    If IsNull(Activity_Code) Then
        [Add_Activity_and_Mgmt_Codes].Visible = True
    Else
        [Add_Activity_and_Mgmt_Codes].Visible = False
    End If
    
    PRODUCT_CN.Requery
    
End Sub

Private Sub PRODUCT_Lookup_Enter()

    PRODUCT_Lookup.Requery
 
End Sub

Private Sub Product_DblClick(Cancel As Integer)
    
    PRODUCT_CN = Product
    DoCmd.Requery
    
End Sub

Private Sub PRODUCT_GRADE_DblClick(Cancel As Integer)

    Like_Product_Grade = PRODUCT_GRADE
    DoCmd.Requery
    
End Sub

Private Sub Products_Price_Reports_Click()
On Error GoTo Err_Products_Price_Reports_Click

    Dim stDocName As String

    stDocName = "Products_Price_Reports"
    DoCmd.OpenForm stDocName
Exit_Products_Price_Reports_Click:
    Exit Sub

Err_Products_Price_Reports_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Products_Price_Reports_Click
 
End Sub

Private Sub VIEW_FY_AfterUpdate()

    If Not IsNull(Activity_Code) Then
        DoCmd.Requery
    End If
    Forms![Switchboard]![FY_For_Reports] = View_FY
    
End Sub

Private Sub View_FY_DblClick(Cancel As Integer)

    View_FY = "*"
    DoCmd.Requery
    
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
