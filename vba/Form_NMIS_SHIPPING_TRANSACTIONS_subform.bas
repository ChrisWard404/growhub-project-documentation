Option Compare Database

Private Sub AMT_PER_UNIT_Exit(Cancel As Integer)

    AMT_PER_UNIT_INV_GROSS = AMT_PER_UNIT

End Sub

Private Sub Form_AfterDelConfirm(Status As Integer)

    Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Requery

End Sub

Private Sub Form_AfterInsert()

    Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Requery

End Sub

Private Sub Form_AfterUpdate()

    Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Requery

End Sub

Private Sub Form_Current()

    If Not IsNull(ID_LOCATION_CN) Then
        [ID_LOCATION_CN].Requery
    End If
    
End Sub



Private Sub NUMBER_OF_ACTIVITY_UNITS_Enter()

    If IsNull(ID_LOCATION_CN) Then
        ID_LOCATION_CN = Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Form![ID_LOCATION_CN]
    End If
    ID_LOCATION_CN.Requery

End Sub

Private Sub NUMBER_OF_ACTIVITY_UNITS_Exit(Cancel As Integer)

    If (Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_SHIPPING_ID_ACTIVITIES subform].Form![Activity_Code] = "SHIP" Or _
        Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_SHIPPING_ID_ACTIVITIES subform].Form![Activity_Code] = "PICKUP" Or _
        Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_SHIPPING_ID_ACTIVITIES subform].Form![Activity_Code] = "DLIVR") Then
        If NUMBER_OF_ACTIVITY_UNITS > 0 Then
            NUMBER_OF_ACTIVITY_UNITS = NUMBER_OF_ACTIVITY_UNITS * -1
        End If
    End If
    
End Sub