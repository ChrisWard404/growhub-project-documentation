Option Compare Database

Private Sub Counts_DblClick(Cancel As Integer)

    Counts = Counts + 1
    
End Sub

Private Sub Count_Enter()

    If (IsNull(SAMPLE_SIZE) Or SAMPLE_SIZE = 0) And Not IsNull(Default_Sample_Size) Then
        SAMPLE_SIZE = Default_Sample_Size
    End If
    
    If Not IsNull(Default_Station) Then
        If IsNull(SAMPLE_STATION) Then
            SAMPLE_STATION = Default_Station
        End If
    End If
    
End Sub

Private Sub Counts_Enter()

    If (IsNull(SAMPLE_SIZE) Or SAMPLE_SIZE = 0) And Not IsNull(Default_Sample_Size) Then
        SAMPLE_SIZE = Default_Sample_Size
    End If
    
    If Not IsNull(Default_Station) Then
        If IsNull(SAMPLE_STATION) Then
            SAMPLE_STATION = Default_Station
        End If
    End If
  
End Sub

Private Sub Form_BeforeInsert(Cancel As Integer)
    
    If Not IsNull(SAMPLE_STATION) Then
        Default_Station = [SAMPLE_STATION]
    End If
    
End Sub

Private Sub Form_BeforeUpdate(Cancel As Integer)
    
    If Not IsNull(SAMPLE_STATION) Then
        Default_Station = [SAMPLE_STATION]
    End If
 
End Sub

Private Sub Form_Error(DataErr As Integer, Response As Integer)
On Error GoTo Err_Form_Error

Exit_Form_Error:
    Exit Sub

Err_Form_Error:
    MsgBox "You must complete the entry or press ESC!", vbCritical
    Resume Exit_Form_Error
    
End Sub

Private Sub Mechanical_Damage_DblClick(Cancel As Integer)

    Mechanical_Damage = Mechanical_Damage + 1
    
End Sub

Private Sub Mechanical_Damage_Enter()

    If (IsNull(SAMPLE_SIZE) Or SAMPLE_SIZE = 0) And Not IsNull(Default_Sample_Size) Then
        SAMPLE_SIZE = Default_Sample_Size
    End If
    
    If Not IsNull(Default_Station) Then
        If IsNull(SAMPLE_STATION) Then
            SAMPLE_STATION = Default_Station
        End If
    End If
    
End Sub

Private Sub Pest_Damage_DblClick(Cancel As Integer)

    Pest_Damage = Pest_Damage + 1
    
End Sub

Private Sub Pest_Damage_Enter()

    If (IsNull(SAMPLE_SIZE) Or SAMPLE_SIZE = 0) And Not IsNull(Default_Sample_Size) Then
        SAMPLE_SIZE = Default_Sample_Size
    End If
    
    If Not IsNull(Default_Station) Then
        If IsNull(SAMPLE_STATION) Then
            SAMPLE_STATION = Default_Station
        End If
    End If
    
End Sub

Private Sub Roots_DblClick(Cancel As Integer)
    
    Roots = Roots + 1
    
End Sub

Private Sub Roots_Enter()

    If (IsNull(SAMPLE_SIZE) Or SAMPLE_SIZE = 0) And Not IsNull(Default_Sample_Size) Then
        SAMPLE_SIZE = Default_Sample_Size
    End If
    
    If Not IsNull(Default_Station) Then
        If IsNull(SAMPLE_STATION) Then
            SAMPLE_STATION = Default_Station
        End If
    End If
    
End Sub

Private Sub SAMPLE_MODE_Enter()

    If IsNull(SAMPLE_MODE) And Not IsNull(Default_Mode) Then
        SAMPLE_MODE = Default_Mode
    End If
   
End Sub

Private Sub SAMPLE_MODE_Exit(Cancel As Integer)

    Default_Mode = SAMPLE_MODE
    
End Sub

Private Sub SAMPLE_SIZE_DblClick(Cancel As Integer)

    SAMPLE_SIZE = SAMPLE_SIZE + 25
    Default_Sample_Size = SAMPLE_SIZE

End Sub

Private Sub SAMPLE_SIZE_Enter()

    If (IsNull(SAMPLE_SIZE) Or SAMPLE_SIZE = 0) And Not IsNull(Default_Sample_Size) Then
        SAMPLE_SIZE = Default_Sample_Size
    End If
    
    If Not IsNull(Default_Station) Then
        If IsNull(SAMPLE_STATION) Then
            SAMPLE_STATION = Default_Station
        End If
    End If
   
End Sub

Private Sub SAMPLE_SIZE_Exit(Cancel As Integer)

    If SAMPLE_SIZE <> 0 Then
        Default_Sample_Size = SAMPLE_SIZE
    End If
    
End Sub

Private Sub SAMPLE_STATION_BeforeUpdate(Cancel As Integer)

    If Not IsNull(SAMPLE_STATION) Then
        Default_Station = [SAMPLE_STATION]
    End If
   
End Sub

Private Sub SAMPLE_STATION_DblClick(Cancel As Integer)

End Sub

Private Sub SAMPLE_STATION_Enter()

    If Not IsNull(Default_Station) Then
        If IsNull(SAMPLE_STATION) Then
            SAMPLE_STATION = Default_Station
        End If
    End If
    
End Sub

Private Sub SAMPLE_STATION_Exit(Cancel As Integer)

    If Not IsNull(SAMPLE_STATION) Then
        Default_Station = [SAMPLE_STATION]
    End If
    
End Sub

Private Sub Shelf_Enter()

    'Shelf = Last_Shelf + 1
    
End Sub

Private Sub Shelf_Exit(Cancel As Integer)

    'Last_Shelf = Shelf
    
End Sub

Private Sub Top_Size_DblClick(Cancel As Integer)

    Top_Size = Top_Size + 1
    
End Sub

Private Sub Top_Size_Enter()

    If (IsNull(SAMPLE_SIZE) Or SAMPLE_SIZE = 0) And Not IsNull(Default_Sample_Size) Then
        SAMPLE_SIZE = Default_Sample_Size
    End If
    
    If Not IsNull(Default_Station) Then
        If IsNull(SAMPLE_STATION) Then
            SAMPLE_STATION = Default_Station
        End If
    End If
    
End Sub

Private Sub Vigor_DblClick(Cancel As Integer)

    Vigor = Vigor + 1
    
End Sub

Private Sub Vigor_Enter()

    If (IsNull(SAMPLE_SIZE) Or SAMPLE_SIZE = 0) And Not IsNull(Default_Sample_Size) Then
        SAMPLE_SIZE = Default_Sample_Size
    End If
    
    If Not IsNull(Default_Station) Then
        If IsNull(SAMPLE_STATION) Then
            SAMPLE_STATION = Default_Station
        End If
    End If
    
End Sub