
Private Sub BEGIN_COUNTER_Enter()

    If IsNull(BEGIN_COUNTER) Then
        BEGIN_COUNTER = End_Counter_Last
    End If
    
End Sub

Private Sub BEGIN_COUNTER_Exit(Cancel As Integer)

     BEGIN_COUNTER_LAST = BEGIN_COUNTER
     
End Sub

Private Sub BEGIN_INDEX_DblClick(Cancel As Integer)

    BEGIN_INDEX.Locked = False
    
End Sub

Private Sub BEGIN_INDEX_Enter()

    If IsNull(BEGIN_INDEX) Then
        BEGIN_INDEX = End_Index_Last
        BEGIN_INDEX.Locked = False
    Else
        BEGIN_INDEX.Locked = True
    End If

End Sub

Private Sub BEGIN_INDEX_Exit(Cancel As Integer)
    
    Dim VarX As Variant
    Dim VarY As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    VarY = DLookup("[index_max]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    If Not IsNull(BEGIN_INDEX) Then
        If (IsNull(INDEX_INCREMENT) And VarX = "FIELD") Then
            INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
        End If
    End If
    If BEGIN_INDEX = 999 Then
        BEGIN_INDEX = Round(VarY / Nz(INDEX_INCREMENT, 1), 1)
    End If

End Sub


Private Sub END_COUNTER_Exit(Cancel As Integer)

    End_Counter_Last = END_COUNTER
    
End Sub

Private Sub END_INDEX_DblClick(Cancel As Integer)

    END_INDEX.Locked = False
    
End Sub

Private Sub END_INDEX_Enter()

    If IsNull(END_INDEX) Then
        END_INDEX.Locked = False
        END_INDEX = Beg_Index_Last
    Else
        END_INDEX.Locked = True
    End If

End Sub

Private Sub END_INDEX_Exit(Cancel As Integer)
    Dim VarX As Variant
    Dim VarY As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    VarY = DLookup("[index_max]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    
    Last_Est_Units = Est_Units
    If Not IsNull(END_INDEX) Then
        If (IsNull(INDEX_INCREMENT) And VarX = "FIELD") Then
            INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
        End If
        Beg_Index_Last = BEGIN_INDEX
        End_Index_Last = END_INDEX
        If SOW_DIRECTION = 1 Then
            If BEGIN_INDEX > END_INDEX Then
                temp = BEGIN_INDEX
                BEGIN_INDEX = END_INDEX
                END_INDEX = temp
                'SOWN_BACKWARDS = True
                Map_Backwards = True
            Else
                SOWN_BACKWARDS = False
                Map_Backwards = False
            End If
        Else
            If END_INDEX > BEGIN_INDEX Then
                temp = BEGIN_INDEX
                BEGIN_INDEX = END_INDEX
                END_INDEX = temp
                'SOWN_BACKWARDS = True
                Map_Backwards = True
            Else
                SOWN_BACKWARDS = False
                Map_Backwards = False
            End If
        End If
        If END_INDEX = 999 Then
            END_INDEX = Round(VarY / Nz(INDEX_INCREMENT, 1), 1)
        End If
    End If
        
End Sub

Private Sub Find_Lot_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[AGREEMENT_LOT_CN] = '" & Me![Find_Lot] & "'"
    Me.Bookmark = rs.Bookmark

End Sub

Private Sub Form_AfterInsert()

    Dim VarX As Variant
    Dim VarY As Variant
    Dim VarZ As Variant
    Dim VarNext As Variant
    Dim VarPrev As Variant
    
    VarX = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "CN = [LOCATION_CN]")
    VarY = DLookup("[INDEX]", "*NMIS_LOCATIONS_SORTED_TABLE", "CN = [LOCATION_CN]")
    VarZ = DLookup("LOCATION_TYPE", "NMIS_LOCATIONS", "CN = LOCATION_CN")
    Location_Type_Default = VarZ
    LOCATION_NEXT_Index = VarY + 1
    LOCATION_PREVIOUS_Index = VarY - 1
    LOCATION_NEXT = DLookup("[CN]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_NEXT_Index]")
    LOCATION_PREVIOUS = DLookup("[CN]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_PREVIOUS_Index]")
    'Beg_Index_Last = BEGIN_INDEX
    'End_Index_Last = END_INDEX
    If Not IsNull(BEGIN_DATE) Then
        Begin_Date_Default = BEGIN_DATE
    End If
    
End Sub

Private Sub Form_Close()

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "ID_LOCATION_GROW_INDEX_UPDATE_MT"
    DoCmd.OpenQuery "ID_LOCATION_GROW_INDEX_UPDATE"
    DoCmd.SetWarnings True
    
End Sub

Private Sub Form_Error(DataErr As Integer, Response As Integer)
On Error GoTo Err_Form_Error

    MsgBox "You have started to enter another record. Either Complete the record or press the ESC Key", vbCritical

Exit_Form_Error:
    Exit Sub

Err_Form_Error:
    'MsgBox Err.DESCRIPTION
    MsgBox "dont show"
    Resume Exit_Form_Error
        
End Sub

Private Sub Form_Open(Cancel As Integer)
On Error GoTo Err_Form_Open

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_DROP"
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_CREATE"
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_AT"
    DoCmd.SetWarnings True

Exit_Form_Open:
    Exit Sub

Err_Form_Open:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Open
End Sub

Private Sub INDEX_INCREMENT_Enter()
    Dim VarX As Variant

    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")

    If Not IsNull(INDEX_INCREMENT) Then
        If (VarX = "FIELD" And (IsNull(BEGIN_INDEX) Or IsNull(END_INDEX))) Then
            MsgBox "Begin and End Index Must Be Entered"
        End If
    End If
    
End Sub

Private Sub LOCATION_CN_DblClick(Cancel As Integer)

    LOCATION_CN.Locked = False
    
End Sub

Private Sub LOCATION_CN_Enter()

        If Not IsNull(LOCATION_CN) Then
            LOCATION_CN.Locked = True
        Else
            LOCATION_CN.Locked = False
            If Not IsNull(LOCATION_NEXT) Then
                If Location_Type_Default = "FIELD" Then
                    If Not Map_Backwards Then
                        If Not IsNull(LOCATION_NEXT) Then
                            LOCATION_CN = LOCATION_NEXT
                        End If
                    Else
                        If Not IsNull(LOCATION_PREVIOUS) Then
                            LOCATION_CN = LOCATION_PREVIOUS
                        End If
                    End If
                    If Not IsNull(Unit_Code_Default) Then
                        UNIT_CODE = Unit_Code_Default
                        BEGIN_DATE = Begin_Date_Default
                    End If
                End If
            End If
        End If
        If Not IsNull(LOCATION_CN) Then
            If IsNull(CN) Then
                DoCmd.RunMacro "Set_CN2"
            End If
        End If
        Last_ID_Location_CN = CN
        If IsNull(BEGIN_DATE) And Not IsNull(LOCATION_CN) Then
            BEGIN_DATE = Begin_Date_Default
        End If

    
End Sub

Private Sub Screen_For_Begin_FY_AfterUpdate()

    Find_Lot.Requery
  
End Sub

Private Sub LOCATION_CN_Exit(Cancel As Integer)

    If Not IsNull(LOCATION_CN) Then
        If IsNull(BEGIN_DATE) Then
            BEGIN_DATE = Begin_Date_Default
        End If
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
    
End Sub

Private Sub SOWN_BACKWARDS_AfterUpdate()
    
    Map_Backwards = SOWN_BACKWARDS
    
End Sub

Private Sub UNIT_CODE_DblClick(Cancel As Integer)

    UNIT_CODE.Locked = False
    
End Sub

Private Sub UNIT_CODE_Enter()

    If Not IsNull(UNIT_CODE) Then
        UNIT_CODE.Locked = True
    Else
        UNIT_CODE.Locked = False
    End If
    
End Sub

Private Sub UNIT_CODE_Exit(Cancel As Integer)

    Unit_Code_Default = UNIT_CODE
    
    Dim VarX As Variant
    Dim VarY As Variant
    Dim VarNext As Variant
    Dim VarPrev As Variant
    
    VarX = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "CN = [LOCATION_CN]")
    VarY = DLookup("[INDEX]", "*NMIS_LOCATIONS_SORTED_TABLE", "CN = [LOCATION_CN]")
    LOCATION_NEXT_Index = VarY + 1
    LOCATION_PREVIOUS_Index = VarY - 1
    LOCATION_NEXT = DLookup("[CN]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_NEXT_Index]")
    LOCATION_PREVIOUS = DLookup("[CN]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_PREVIOUS_Index]")
    
End Sub