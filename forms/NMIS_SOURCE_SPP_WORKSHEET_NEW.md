# Form: NMIS_SOURCE_SPP_WORKSHEET_NEW

**Caption:** Seed Per Pound Worksheet  
**Backend tables referenced:** `NMIS_SOURCE_LOTS`  
**Opens:** `Report:Field_tag_pairs_w_NIds`, `Report:Field_tag_pairs_w_NIds_Intermec`, `Report:Field_tag_pairs_wo_NIds`, `Report:Field_tag_pairs_wo_NIds_Intermec`, `Report:NMIS_Seed_Per_Pound_NEW_Worksheet`, `Report:NMIS_Seed_Per_Pound_Worksheet`  
**Opened from (VBA):** `Form_NMIS_SOURCE_TESTS_NEW Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Seed/Pound Worksheet |  |  |  | 1.83, 0.08, 2.31, 0.27 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 5.80, 0.00 |
| TextBox | SAMPLE1 | Sample 1: |  |  | Exit, LostFocus | 1.34, 1.56, 0.79, 0.20 |
| TextBox | SAMPLE5 | Sample 5: |  |  | Exit, LostFocus | 1.34, 2.56, 0.79, 0.20 |
| TextBox | SAMPLE4 | Sample 4: |  |  | Exit, LostFocus | 1.34, 2.31, 0.79, 0.20 |
| TextBox | SAMPLE3 | Sample 3: |  |  | Exit, LostFocus | 1.34, 2.06, 0.79, 0.20 |
| TextBox | SAMPLE2 | Sample 2: |  |  | Exit, LostFocus | 1.34, 1.81, 0.79, 0.20 |
| Rectangle | Box27 |  |  |  |  | 0.29, 1.21, 4.79, 2.42 |
| Rectangle | Box33 |  |  |  |  | 0.29, 3.71, 4.79, 1.06 |
| TextBox | SAMPLE6 | Sample 6: |  |  | Exit, LostFocus | 1.34, 2.81, 0.79, 0.20 |
| Label | Label41 | Wt of 100 Seeds in grams |  |  |  | 0.52, 1.27, 1.73, 0.20 |
| TextBox | Average_100_Seed_Wt | Average: | =IIf([Total_Samples]>0,(NZ([Sample1],0)+NZ([Sample2],0)+NZ([Sample3],0)+NZ([Sample4],0)+NZ([Sample5],0)+NZ([Sample6],0))/[Total_Samples],Null) |  |  | 3.99, 2.81, 0.79, 0.20 |
| TextBox | Count_Sample1 |  | =IIf(IsNull([SAMPLE1]) Or [SAMPLE1]=0,0,1) |  |  | 2.21, 1.56, 0.23, 0.20 |
| TextBox | Count_Sample2 |  | =IIf(IsNull([SAMPLE2]) Or [SAMPLE2]=0,0,1) |  |  | 2.21, 1.81, 0.23, 0.20 |
| TextBox | Count_Sample3 |  | =IIf(IsNull([SAMPLE3]) Or [SAMPLE3]=0,0,1) |  |  | 2.21, 2.06, 0.23, 0.20 |
| TextBox | Count_Sample4 |  | =IIf(IsNull([SAMPLE4]) Or [SAMPLE4]=0,0,1) |  |  | 2.21, 2.31, 0.23, 0.20 |
| TextBox | Count_Sample5 |  | =IIf(IsNull([SAMPLE5]) Or [SAMPLE5]=0,0,1) |  |  | 2.21, 2.56, 0.23, 0.20 |
| TextBox | Count_Sample6 |  | =IIf(IsNull([SAMPLE6]) Or [SAMPLE6]=0,0,1) |  |  | 2.21, 2.81, 0.23, 0.20 |
| TextBox | Min | Min: |  |  |  | 3.99, 1.54, 0.79, 0.20 |
| TextBox | Max | Max: |  |  |  | 3.99, 1.27, 0.79, 0.20 |
| TextBox | Total_Samples | Samples: | =IIf([Count_Sample1]+[Count_Sample2]+[Count_Sample3]+[Count_Sample4]+[Count_Sample5]+[Count_Sample6]>0,[Count_Sample1]+[Count_Sample2]+[Count_Sample3]+[Count_Sample4]+[Count_Sample5]+[Count_Sample6],Null) |  |  | 3.99, 2.56, 0.79, 0.20 |
| TextBox | Total_Weight | Total Wt: | =IIf(NZ([Sample1],0)+NZ([Sample2],0)+NZ([Sample3],0)+NZ([Sample4],0)+NZ([Sample5],0)+NZ([Sample6],0)>0,NZ([Sample1],0)+NZ([Sample2],0)+NZ([Sample3],0)+NZ([Sample4],0)+NZ([Sample5],0)+NZ([Sample6],0),Null) |  |  | 3.99, 2.31, 0.79, 0.20 |
| TextBox | Max_minus_Min | Max - Min: | =[max]-[min] |  |  | 3.99, 1.81, 0.79, 0.20 |
| TextBox | Ten_PCT_of_Average | 10% of Average: | =IIf([Total_Samples]>0,((NZ([Sample1],0)+NZ([Sample2],0)+NZ([Sample3],0)+NZ([Sample4],0)+NZ([Sample5],0)+NZ([Sample6],0))/[Total_Samples])/10,Null) |  |  | 3.99, 3.06, 0.79, 0.20 |
| TextBox | Thousand_Seed_Wt | 1000 Seed Wt: | =Round([Average_100_Seed_Wt]*10,3) |  |  | 2.39, 3.91, 0.79, 0.20 |
| TextBox | Seed_Per_Pound | Seed Per Pound: | =Round(453600/[Thousand_Seed_Wt],0) |  |  | 2.39, 4.31, 1.47, 0.28 |
| TextBox | Date | Date: |  |  |  | 0.78, 0.83, 0.79, 0.20 |
| TextBox | Comments | Comments |  |  |  | 0.36, 5.12, 4.64, 0.42 |
| Rectangle | Box79 |  |  |  |  | 0.29, 4.82, 4.79, 1.43 |
| ComboBox | Lot ID | Lot ID: |  | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS; |  | 3.07, 0.83, 1.43, 0.21 |
| CommandButton | Preview_SPP_Worksheet | Preview Report |  |  | Click | 2.04, 5.75, 1.06, 0.31 |

## Code-behind (VBA)

```vb
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
```
