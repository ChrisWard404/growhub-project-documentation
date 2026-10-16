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