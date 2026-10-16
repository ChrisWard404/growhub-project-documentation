Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Preview_SPP_Worksheet_Click()

    DoCmd.OpenReport "NMIS_Seed_Per_Pound_Worksheet", acViewPreview
    
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
    If SAMPLE7 > 0 And SAMPLE7 > Max Then
        Max = SAMPLE7
    End If
    If SAMPLE8 > 0 And SAMPLE8 > Max Then
        Max = SAMPLE8
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
    If SAMPLE7 > 0 And SAMPLE7 < Min Then
        Min = SAMPLE7
    End If
    If SAMPLE8 > 0 And SAMPLE8 < Min Then
        Min = SAMPLE8
    End If
    
End Sub

Private Sub SAMPLE7_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE7_LostFocus()

    Check_Max_Min
 
End Sub

Private Sub SAMPLE8_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE8_LostFocus()

    Check_Max_Min
 
End Sub