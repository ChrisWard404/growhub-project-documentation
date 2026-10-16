
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

Private Sub Form_Close()

    If Not IsNull(Last_ID_Location_CN) And _
        IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN]) Then
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN] = Last_ID_Location_CN
        If Not IsNull(Last_Est_Units) Then
            If Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS] = 0 Then
                Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS] = Last_Est_Units
            End If
        End If
    End If
    Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN].Requery
    Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].SetFocus
    DoCmd.GoToControl "[NUMBER_OF_ACTIVITY_UNITS]"
    
End Sub

Private Sub Form_Current()

    Last_ID_Location_CN = CN
    'Last_Est_Units = Est_Units
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    If IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN]) Then
        DoCmd.GoToRecord , , acNewRec
        If Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Container]) Then
            DoCmd.GoToControl "UNIT_CODE"
            DoCmd.Close
        End If
    End If
    
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
        If Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Location]) Then
            If IsNull(LOCATION_CN) Then
                LOCATION_CN = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Location]
                DoCmd.GoToControl "UNIT_CODE"
            End If
        End If
    End If
    
End Sub

Private Sub LOCATION_CN_Exit(Cancel As Integer)

    If Not IsNull(LOCATION_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
    Last_ID_Location_CN = CN
    Last_Est_Units = Est_Units
    
End Sub

Private Sub UNIT_CODE_Enter()

    If IsNull(UNIT_CODE) And Not IsNull(DEFAULT_UNIT_CODE) Then
        UNIT_CODE = DEFAULT_UNIT_CODE
    End If
    
End Sub

Private Sub UNIT_CODE_Exit(Cancel As Integer)

    DEFAULT_UNIT_CODE = UNIT_CODE
    
End Sub