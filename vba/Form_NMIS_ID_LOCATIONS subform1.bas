
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
    
    If (IsNull(INDEX_INCREMENT) And VarX = "FIELD") Then
        INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
    End If
    
End Sub

Private Sub Form_AfterDelConfirm(Status As Integer)

    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN].Requery
    
End Sub

Private Sub Form_AfterInsert()

    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN].Requery
    
End Sub

Private Sub Form_AfterUpdate()

    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN].Requery
    
End Sub

Private Sub INDEX_INCREMENT_Enter()
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")

    If (VarX = "FIELD" And (IsNull(BEGIN_INDEX) Or IsNull(END_INDEX))) Then
        MsgBox "Begin and End Index Must Be Entered"
    End If
    
End Sub

Private Sub LOCATION_CN_Exit(Cancel As Integer)

    If Not IsNull(LOCATION_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
    
End Sub