# Form: Sample_Input_JHSN_bu

**Caption:** Sample_Input_JHSN  
**Record source:**

```sql
SELECT Processing_QI_Samples_Table_Sorting_Quality1b.SAMPLE_DATE, Processing_QI_Samples_Table_Sorting_Quality1b.SAMPLE_STATION, Processing_QI_Samples_Table_Sorting_Quality1b.SAMPLE_MODE, Processing_QI_Samples_Table_Sorting_Quality1b.SAMPLE_TIME, Processing_QI_Samples_Table_Sorting_Quality1b.CALIPER_HALF, Processing_QI_Samples_Table_Sorting_Quality1b.SAMPLE_SIZE, Processing_QI_Samples_Table_Sorting_Quality1b.Count, Processing_QI_Samples_Table_Sorting_Quality1b.Top_Size, Processing_QI_Samples_Table_Sorting_Quality1b.Roots, Processing_QI_Samples_Table_Sorting_Quality1b.Vigor, Processing_QI_Samples_Table_Sorting_Quality1b.Pest_Damage, Processing_QI_Samples_Table_Sorting_Quality1b.Mechanical_Damage, IIf(nz([sample_size],0)>0,Round(([sample_size]-([count]+[Top_size]+[roots]+[vigor]+[Pest_damage]+[Mechanical_Damage]))/[sample_size]*100,2)) AS Pct, Processing_QI_Samples_Table_Sorting_Quality1b.Order FROM Processing_QI_Samples_Table_Sorting_Quality1b WHERE (((Processing_QI_Samples_Table_Sorting_Quality1b.Order)=[Forms]![NMIS_PROCESS_QUALITY_SAMPLES]![Order_CN])) ORDER BY Processing_QI_Samples_Table_Sorting_Quality1b.SAMPLE_DATE, Processing_QI_Samples_Table_Sorting_Quality1b.SAMPLE_STATION, Processing_QI_Samples_Table_Sorting_Quality1b.SAMPLE_MODE, Processing_QI_Samples_Table_Sorting_Quality1b.SAMPLE_TIME;
```

**Form events with code:** BeforeInsert, BeforeUpdate, Error  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label14 | Sample Date |  |  |  | 0.56, 0.04, 0.60, 0.35 |
| Label | Label15 | Sample Station |  |  |  | 1.81, 0.04, 0.54, 0.35 |
| Label | Label16 | Sample Time |  |  |  | 1.19, 0.04, 0.60, 0.35 |
| Label | Label17 | Order ID |  |  |  | 0.04, 0.04, 0.50, 0.35 |
| Label | Label18 | Sample Size |  |  |  | 3.32, 0.04, 0.53, 0.35 |
| Label | Label19 | Count |  |  |  | 3.88, 0.04, 0.45, 0.35 |
| Label | Label20 | Top Size |  |  |  | 4.34, 0.04, 0.44, 0.35 |
| Label | Label21 | Roots  |  |  |  | 4.80, 0.04, 0.44, 0.35 |
| Label | Label22 | Vigor |  |  |  | 5.26, 0.04, 0.42, 0.35 |
| Label | Label23 | Pest Damage |  |  |  | 5.70, 0.04, 0.58, 0.35 |
| Label | Label24 | Mechanical Damage  |  |  |  | 6.30, 0.04, 0.77, 0.35 |
| Label | Label25 | Pct |  |  |  | 7.16, 0.04, 0.39, 0.35 |
| Label | Label27 | Sample Mode |  |  |  | 2.38, 0.04, 0.54, 0.35 |
| TextBox | Default_Station |  |  |  |  | 7.88, 0.04, 0.79, 0.00 |
| TextBox | Default_Mode |  |  |  |  | 7.88, 0.23, 0.79, 0.00 |
| TextBox | Default_Sample_Size |  |  |  |  | 7.38, 0.04, 0.42, 0.00 |
| TextBox | Text106 | Time: | =Time$() |  |  | 8.07, 0.12, 0.61, 0.21 |
| Label | Label34 |  Shelf |  |  |  | 2.94, 0.04, 0.36, 0.35 |
| TextBox | Last_Shelf |  |  |  |  | 7.36, 0.21, 0.42, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SAMPLE_DATE |  | SAMPLE_DATE |  |  | 0.56, 0.00, 0.59, 0.21 |
| TextBox | SAMPLE_STATION |  | SAMPLE_STATION |  | BeforeUpdate, DblClick, Enter, Exit | 1.81, 0.00, 0.54, 0.21 |
| TextBox | SAMPLE_TIME |  | SAMPLE_TIME |  |  | 1.19, 0.00, 0.59, 0.21 |
| TextBox | Order ID |  | =IIf(Not IsNull([CN]),Left$([CN],Len([CN])-7)) |  |  | 0.04, 0.00, 0.51, 0.21 |
| TextBox | SAMPLE_SIZE |  | SAMPLE_SIZE |  | DblClick, Enter, Exit | 3.32, 0.00, 0.53, 0.21 |
| TextBox | Counts |  | Count |  | DblClick, Enter | 3.88, 0.00, 0.43, 0.21 |
| TextBox | Top_Size |  | Top_Size |  | DblClick, Enter | 4.34, 0.00, 0.46, 0.21 |
| TextBox | Roots |  | Roots |  | DblClick, Enter | 4.80, 0.00, 0.43, 0.21 |
| TextBox | Vigor |  | Vigor |  | DblClick, Enter | 5.26, 0.00, 0.41, 0.21 |
| TextBox | Pest_Damage |  | Pest_Damage |  | DblClick, Enter | 5.70, 0.00, 0.56, 0.21 |
| TextBox | Mechanical_Damage |  | Mechanical_Damage |  | DblClick, Enter | 6.30, 0.00, 0.77, 0.21 |
| TextBox | Pct |  | Pct |  |  | 7.16, 0.00, 0.40, 0.21 |
| TextBox | CN |  | Order |  |  | 7.88, 0.04, 0.79, 0.00 |
| TextBox | SAMPLE_MODE |  | SAMPLE_MODE |  | Enter, Exit | 2.38, 0.00, 0.54, 0.21 |
| TextBox | Shelf |  | CALIPER_HALF |  | Enter, Exit | 2.94, 0.00, 0.36, 0.21 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text32 | Number of Samples: | =Count([sample_station]) |  |  | 4.49, 0.04, 0.42, 0.24 |

## Code-behind (VBA)

```vb
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
```
