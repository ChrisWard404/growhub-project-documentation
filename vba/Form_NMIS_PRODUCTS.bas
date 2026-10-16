Option Compare Database

Private Sub BEGIN_PRODUCT_TYPE_Enter()
    If Not IsNull(BEGIN_PRODUCT_TYPE) Then
        BEGIN_PRODUCT_TYPE.Locked = True
    Else
        BEGIN_PRODUCT_TYPE.Locked = False
    End If
End Sub

Private Sub CATEGORY_CODE_DblClick(Cancel As Integer)

    'CATEGORY_CODE.Locked = False
    
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

Private Sub END_PRODUCT_TYPE_Enter()
    If Not IsNull(END_PRODUCT_TYPE) Then
        END_PRODUCT_TYPE.Locked = True
    Else
        END_PRODUCT_TYPE.Locked = False
    End If
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

Private Sub PRODUCT_CLASS_CONDENSED_Enter()
If Not IsNull(PRODUCT_CLASS_CONDENSED) Then
        PRODUCT_CLASS_CONDENSED.Locked = True
    Else
        PRODUCT_CLASS_CONDENSED.Locked = False
    End If
End Sub

Private Sub PRODUCT_CLASS_Enter()
    If Not IsNull(PRODUCT_CLASS) Then
        PRODUCT_CLASS.Locked = True
    Else
        PRODUCT_CLASS.Locked = False
    End If
End Sub

Private Sub PRODUCT_DESC_DblClick(Cancel As Integer)

    'Product_Desc.Locked = False
    
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