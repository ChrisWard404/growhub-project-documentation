Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
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

Private Sub ID_Tags_W_ID_Intermec_Click()

    Dim stDocName As String

    stDocName = "Field_tag_pairs_w_NIds_Intermec"
    DoCmd.OpenReport stDocName, acPreview


End Sub

Private Sub ID_Tags_WO_ID_Intermec_Click()

    Dim stDocName As String

    stDocName = "Field_tag_pairs_wo_NIds_Intermec"
    DoCmd.OpenReport stDocName, acPreview


End Sub

Private Sub Lot_ID_1_Enter()
    
    [Product] = Null
    [Plntmstr_Symbol] = "*"
    [BEGIN_FY] = "*"
    [END_FY] = "*"
    
End Sub
Private Sub Clear_ids_Click()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
End Sub

Private Sub Product_Enter()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
End Sub


Private Sub Preview_SPP_Worksheet_Click()

    DoCmd.OpenReport "NMIS_Seed_Per_Pound_NEW_Worksheet", acViewPreview
    
End Sub

Private Sub SAMPLE1_Exit(Cancel As Integer)

    Check_Max_Min
    'If IsNull(Max) Then
        'Max = SAMPLE1
    'Else
        'If SAMPLE1 > Max Then
            'Max = SAMPLE1
        'End If
    'End If
    
    'If IsNull(Min) Then
        'Min = SAMPLE1
    'Else
        'If SAMPLE1 < Min Then
            'Min = SAMPLE1
        'End If
    'End If
    
End Sub

Private Sub SAMPLE1_LostFocus()

    Check_Max_Min
   
End Sub

Private Sub SAMPLE2_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE2_LostFocus()

    Check_Max_Min
    
End Sub

Private Sub SAMPLE3_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE3_LostFocus()

    Check_Max_Min
 
End Sub

Private Sub SAMPLE4_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE4_LostFocus()

    Check_Max_Min
 
End Sub

Private Sub SAMPLE5_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE5_LostFocus()

    Check_Max_Min
 
End Sub

Private Sub SAMPLE6_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE6_LostFocus()

    Check_Max_Min
 
End Sub
Private Sub Preview_SPP__Click()
On Error GoTo Err_Preview_SPP__Click

    Dim stDocName As String

    stDocName = "NMIS_Seed_Per_Pound_Worksheet"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_SPP__Click:
    Exit Sub

Err_Preview_SPP__Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_SPP__Click
    
End Sub

Private Sub Check_Max_Min()

    'Find Max
    If SAMPLE1 > 0 Then
        Max = SAMPLE1
    End If
    If SAMPLE2 > 0 And SAMPLE2 > Max Then
        Max = SAMPLE2
    End If
    If SAMPLE3 > 0 And SAMPLE3 > Max Then
        Max = SAMPLE3
    End If
    If SAMPLE4 > 0 And SAMPLE4 > Max Then
        Max = SAMPLE4
    End If
    If SAMPLE5 > 0 And SAMPLE5 > Max Then
        Max = SAMPLE5
    End If
    If SAMPLE6 > 0 And SAMPLE6 > Max Then
        Max = SAMPLE6
    End If
    
    'Find Min
    If SAMPLE1 > 0 Then
        Min = SAMPLE1
    End If
    If SAMPLE2 > 0 And SAMPLE2 < Min Then
        Min = SAMPLE2
    End If
    If SAMPLE3 > 0 And SAMPLE3 < Min Then
        Min = SAMPLE3
    End If
    If SAMPLE4 > 0 And SAMPLE4 < Min Then
        Min = SAMPLE4
    End If
    If SAMPLE5 > 0 And SAMPLE5 < Min Then
        Min = SAMPLE5
    End If
    If SAMPLE6 > 0 And SAMPLE6 < Min Then
        Min = SAMPLE6
    End If
    
End Sub