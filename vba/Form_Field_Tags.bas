Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Begin_Container_DblClick(Cancel As Integer)
    
    BEGIN_CONTAINER = Null
    
End Sub

Private Sub Begin_Container_Enter()
    
    BEGIN_CONTAINER.Requery
    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
    
End Sub

Private Sub Begin_FY_Enter()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
  
End Sub

Private Sub Begin_Product_Type_DblClick(Cancel As Integer)

    BEGIN_PRODUCT_TYPE = Null
    
End Sub

Private Sub BEGIN_PRODUCT_TYPE_Enter()

    BEGIN_PRODUCT_TYPE.Requery
    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
End Sub

Private Sub BorC_AfterUpdate()

    Product.Requery
    
End Sub

Private Sub BorC_Change()
    
    Product = Null
    
End Sub

Private Sub BorC_DblClick(Cancel As Integer)

    BorC = "*"
    
End Sub

Private Sub BorC_Enter()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
    
End Sub

Private Sub End_FY_Enter()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
  
End Sub

Private Sub Find_Lot_DblClick(Cancel As Integer)
On Error GoTo Err_Find_Lot_DblClick

    DoCmd.GoToControl "Lot_ID_2"
    DoCmd.GoToControl "Find_Lot"
    If Not IsNull(Find_Lot) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags0 Form"
    End If
    
Exit_Find_Lot_DblClick:
    Exit Sub

Err_Find_Lot_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Find_Lot_DblClick
           
End Sub

Private Sub Find_Lot_Enter()
    
   
    Find_Lot.Requery
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        Split_Lot.Visible = True
    Else
        Split_Lot.Visible = False
    End If
    
End Sub

Private Sub ID_Tags_W_ID_Intermec_Click()
On Error GoTo Err_ID_Tags_W_ID_Intermec_Click
    Dim stDocName As String

    Select Case [Printer_and_Label_Type]
    Case Is = 1
        'stDocName = "Field_tag_pairs_w_NIds_Intermec"
        Select Case [Tag_Style] 'Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code]
        
        Case Is = "050357"
            If Split_Lot Then
                stDocName = "Field_tag_pairs_w_NIds_Intermec_050357_Split_Lot"
            Else
                stDocName = "Field_tag_pairs_w_NIds_Intermec_050357"
            End If
        Case Is = "040207"
                stDocName = "Field_tag_pairs_w_NIds_Intermec_040207"
            
        Case Else
            stDocName = "Field_tag_pairs_w_NIds_Intermec"
        End Select
    Case Is = 2
        stDocName = "Field_tag_pairs_wo_NIds_Intermec"
    Case Is = 3
        'stDocName = "Field_tag_pairs_w_NIds_Intermec"
        Select Case [Tag_Style] 'Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code]
        
        Case Is = "040207"
            If Split_Lot Then
                stDocName = "Field_tag_pairs_w_NIds_040207_Split_Lot"
            Else
                stDocName = "Field_tag_pairs_w_NIds_040207"
            End If
        Case Else
            stDocName = "Field_tag_pairs_w_NIds"
        End Select
    Case Is = 4
        stDocName = "Field_tag_pairs_wo_NIds"
    Case Is = 5
        stDocName = "field_tag_PotStakes_Datamax"
    End Select
    
    DoCmd.OpenReport stDocName, acPreview

Exit_ID_Tags_W_ID_Intermec_Click:
    Exit Sub

Err_ID_Tags_W_ID_Intermec_Click:
    MsgBox Err.DESCRIPTION
Resume Exit_ID_Tags_W_ID_Intermec_Click
           
End Sub

Private Sub Clear_ids_Click()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
    [Split_Lot] = False
    
End Sub


Private Sub Lot_ID_1_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_1_DblClick

    DoCmd.GoToControl "Lot_ID_2"
    DoCmd.GoToControl "Lot_ID_1"
    If Not IsNull(Lot_ID_1) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags1 Form"
    Else
        If Not IsNull(Find_Lot) Then
            Lot_ID_1 = Find_Lot
        End If
    End If
    
Exit_Lot_ID_1_DblClick:
    Exit Sub

Err_Lot_ID_1_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_1_DblClick
           
End Sub

Private Sub Lot_ID_2_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_2_DblClick

    DoCmd.GoToControl "Lot_ID_1"
    DoCmd.GoToControl "Lot_ID_2"
    If Not IsNull(Lot_ID_2) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags2 Form"
    Else
        If Not IsNull(Find_Lot) Then
            Lot_ID_2 = Find_Lot
        End If
    End If
    
Exit_Lot_ID_2_DblClick:
    Exit Sub

Err_Lot_ID_2_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_2_DblClick
           
End Sub

Private Sub Lot_ID_3_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_3_DblClick

    DoCmd.GoToControl "Lot_ID_2"
    DoCmd.GoToControl "Lot_ID_3"
    If Not IsNull(Lot_ID_3) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags3 Form"
    Else
        If Not IsNull(Find_Lot) Then
            Lot_ID_3 = Find_Lot
        End If
    End If
    
Exit_Lot_ID_3_DblClick:
    Exit Sub

Err_Lot_ID_3_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_3_DblClick
                
End Sub

Private Sub Lot_ID_4_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_4_DblClick

    DoCmd.GoToControl "Lot_ID_2"
    DoCmd.GoToControl "Lot_ID_4"
    If Not IsNull(Lot_ID_4) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags4 Form"
    Else
        If Not IsNull(Find_Lot) Then
            Lot_ID_4 = Find_Lot
        End If
    End If
    
Exit_Lot_ID_4_DblClick:
    Exit Sub

Err_Lot_ID_4_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_4_DblClick
           
End Sub

Private Sub Lot_ID_5_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_5_DblClick

    DoCmd.GoToControl "Lot_ID_2"
    DoCmd.GoToControl "Lot_ID_5"
    If Not IsNull(Lot_ID_5) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags5 Form"
    Else
        If Not IsNull(Find_Lot) Then
            Lot_ID_5 = Find_Lot
        End If
    End If
    
Exit_Lot_ID_5_DblClick:
    Exit Sub

Err_Lot_ID_5_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_5_DblClick
          
End Sub

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)

    Plntmstr_Symbol = "*"
    
End Sub

Private Sub Plntmstr_Symbol_Enter()

    Plntmstr_Symbol.Requery
    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
  
End Sub

Private Sub Printer_and_Label_Type_Change()

    If Printer_and_Label_Type = 1 Then
        Split_Lot.Visible = True
    Else
        Split_Lot.Visible = False
    End If
    
End Sub

Private Sub Product_DblClick(Cancel As Integer)

    Product = Null
    
End Sub

Private Sub Product_Enter()

    Product.Requery
    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
    
End Sub

Private Sub Tags_For_Bailing_Click()
    On Error GoTo Err_Tags_For_Bailing_Click
    Dim stDocName As String

        stDocName = "Field_tag_pairs_w_NIds_bailing"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Tags_For_Bailing_Click:
    Exit Sub

Err_Tags_For_Bailing_Click:
    MsgBox Err.DESCRIPTION
Resume Exit_Tags_For_Bailing_Click
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
