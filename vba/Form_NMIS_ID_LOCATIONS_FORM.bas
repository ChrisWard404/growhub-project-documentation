
Private Sub BEGIN_INDEX_Exit(Cancel As Integer)
    
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    
    If (IsNull(INDEX_INCREMENT) And VarX = "FIELD") Then
        INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
    End If

End Sub

Private Sub END_INDEX_Exit(Cancel As Integer)
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    
    Last_Est_Units = Est_Units
    If (IsNull(INDEX_INCREMENT) And VarX = "FIELD") Then
        INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
        If SOW_DIRECTION = 1 Then
            If BEGIN_INDEX > END_INDEX Then
                SOWN_BACKWARDS = True
            Else
                SOWN_BACKWARDS = False
            End If
        Else
            If END_INDEX > BEGIN_INDEX Then
                SOWN_BACKWARDS = True
            Else
                SOWN_BACKWARDS = False
            End If
        End If
    End If
        
End Sub

Private Sub Filter_for_Product_Type_AfterUpdate()

    Find_Lot.Requery
    
End Sub

Private Sub Find_Lot_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object
    
    '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form!LOCATION_NEXT_Index = Null
    '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form!LOCATION_PREVIOUS_Index = Null
    [NMIS_ID_LOCATIONS_FORM_SUBFORM].Form!LOCATION_NEXT = Null
        '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form![Location_Last_CN]
    [NMIS_ID_LOCATIONS_FORM_SUBFORM].Form!LOCATION_PREVIOUS = Null
        '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form![Location_Last_CN]
    '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form!Beg_Index_Last = Null
    '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form!End_Index_Last = Null
    '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form![Last_Est_Units] = Null
    '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form![Map_Backwards] = Null
    '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form![Unit_Code_Default] = Null
    '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form![Last_ID_Location_CN] = Null
    
    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![Find_Lot] & "'"
    Me.Bookmark = rs.Bookmark

End Sub

Private Sub Form_Close()

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "ID_LOCATION_GROW_INDEX_UPDATE_MT"
    DoCmd.OpenQuery "ID_LOCATION_GROW_INDEX_UPDATE"
    DoCmd.SetWarnings True
    
End Sub

Private Sub Form_Current()

    Last_ID_Location_CN = CN
    Last_Est_Units = Est_Units
    
End Sub

Private Sub INDEX_INCREMENT_Enter()
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")

    If (VarX = "FIELD" And (IsNull(BEGIN_INDEX) Or IsNull(END_INDEX))) Then
        MsgBox "Begin and End Index Must Be Entered"
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
    End If
    
End Sub

Private Sub LOCATION_CN_Exit(Cancel As Integer)

    If Not IsNull(LOCATION_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
    Last_ID_Location_CN = CN
    
End Sub

Private Sub Form_Open(Cancel As Integer)
On Error GoTo Err_Form_Open

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_DROP"
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_CREATE"
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_AT"
    DoCmd.SetWarnings True
    
    DoCmd.GoToControl "find_Lot"
Exit_Form_Open:
    Exit Sub

Err_Form_Open:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Open
End Sub

Private Sub NMIS_ID_LOCATIONS_FORM_SUBFORM_Enter()
    
    If IsNull([Find_Lot]) Then
        'MsgBox "You must select a Lot first.", vbInformation
        Forms![NMIS_ID_LOCATIONS_FORM]![Find_Lot].SetFocus
    End If
    
End Sub

Private Sub Screen_For_Begin_FY_AfterUpdate()

    Find_Lot.Requery
  
End Sub