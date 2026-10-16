Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Begin_FY_Enter()

    [Lot_ID_1_CN] = Null
    [Lot_ID_2_CN] = Null
    [Lot_ID_3_CN] = Null
    [Lot_ID_4_CN] = Null
    [Lot_ID_5_CN] = Null
  
End Sub

Private Sub BorC_AfterUpdate()

    Product.Requery
    
End Sub

Private Sub BorC_Enter()

    [Lot_ID_1_CN] = Null
    [Lot_ID_2_CN] = Null
    [Lot_ID_3_CN] = Null
    [Lot_ID_4_CN] = Null
    [Lot_ID_5_CN] = Null
    
End Sub

Private Sub Create_Field_Tags_wo_Nid_Click()
On Error GoTo Err_Create_Field_Tags_wo_Nid_Click

    Dim stDocName As String

    stDocName = "Field_tag_pairs_wo_NIds"
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Field_Tags_wo_Nid_Click:
    Exit Sub

Err_Create_Field_Tags_wo_Nid_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Field_Tags_wo_Nid_Click
    
End Sub
Private Sub Create_Field_Tags_w_Lot_Ids_Click()
On Error GoTo Err_Create_Field_Tags_w_Lot_Ids_Click

    Dim stDocName As String

    stDocName = "Field_tag_pairs_w_NIds"
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Field_Tags_w_Lot_Ids_Click:
    Exit Sub

Err_Create_Field_Tags_w_Lot_Ids_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Field_Tags_w_Lot_Ids_Click
    
End Sub

Private Sub End_FY_Enter()

    [Lot_ID_1_CN] = Null
    [Lot_ID_2_CN] = Null
    [Lot_ID_3_CN] = Null
    [Lot_ID_4_CN] = Null
    [Lot_ID_5_CN] = Null
  
End Sub

Private Sub ID_Tags_W_ID_Intermec_Click()

    Dim stDocName As String

    'stDocName = "Field_tag_pairs_w_NIds_Intermec"
    'DoCmd.OpenReport stDocName, acPreview
    Select Case [Tag_Style] 'Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code]
        
    Case Is = "050357"
        stDocName = "Field_tag_pairs_w_NIds_Intermec_050357"
    Case Else
        stDocName = "Field_tag_pairs_w_NIds_Intermec"
    End Select
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub ID_Tags_WO_ID_Intermec_Click()

    Dim stDocName As String

    stDocName = "Field_tag_pairs_wo_NIds_Intermec"
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Clear_ids_Click()

    [Lot_ID_1_CN] = Null
    [Lot_ID_2_CN] = Null
    [Lot_ID_3_CN] = Null
    [Lot_ID_4_CN] = Null
    [Lot_ID_5_CN] = Null
End Sub


Private Sub Lot_ID_1_CN_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_1_CN_DblClick

    If Not IsNull(Lot_ID_1_CN) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags1 Form"
    End If
    
Exit_Lot_ID_1_CN_DblClick:
    Exit Sub

Err_Lot_ID_1_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_1_CN_DblClick
           
End Sub

Private Sub Lot_ID_2_CN_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_2_CN_DblClick

    If Not IsNull(Lot_ID_2_CN) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags2 Form"
    End If
    
Exit_Lot_ID_2_CN_DblClick:
    Exit Sub

Err_Lot_ID_2_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_2_CN_DblClick
           
End Sub

Private Sub Lot_ID_3_CN_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_3_CN_DblClick

    If Not IsNull(Lot_ID_3_CN) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags3 Form"
    End If
    
Exit_Lot_ID_3_CN_DblClick:
    Exit Sub

Err_Lot_ID_3_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_3_CN_DblClick
                
End Sub

Private Sub Lot_ID_4_CN_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_4_CN_DblClick

    If Not IsNull(Lot_ID_4_CN) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags4 Form"
    End If
    
Exit_Lot_ID_4_CN_DblClick:
    Exit Sub

Err_Lot_ID_4_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_4_CN_DblClick
           
End Sub

Private Sub Lot_ID_5_CN_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_5_CN_DblClick

    If Not IsNull(Lot_ID_5_CN) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags5 Form"
    End If
    
Exit_Lot_ID_5_CN_DblClick:
    Exit Sub

Err_Lot_ID_5_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_5_CN_DblClick
          
End Sub


Private Sub Plntmstr_Symbol_Enter()

    [Lot_ID_1_CN] = Null
    [Lot_ID_2_CN] = Null
    [Lot_ID_3_CN] = Null
    [Lot_ID_4_CN] = Null
    [Lot_ID_5_CN] = Null
  
End Sub

Private Sub Product_Enter()

    [Lot_ID_1_CN] = Null
    [Lot_ID_2_CN] = Null
    [Lot_ID_3_CN] = Null
    [Lot_ID_4_CN] = Null
    [Lot_ID_5_CN] = Null
    
End Sub