Option Compare Database

Private Sub Ship_Click()
On Error GoTo Err_Ship_Click

    If NO_CONTAINERS <= 0 Then
        MsgBox "NO BALANCE"
    Else
        If Not IsNull(Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS]) Then
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].SetFocus
            DoCmd.GoToRecord , , acNewRec
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![ID_LOCATION_CN] _
                = ID_LOCATION_CN
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS] _
                = NO_CONTAINERS * -1
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![AMT_PER_UNIT] _
                = Density
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![AMT_PER_UNIT_INV_GROSS] _
                = Density
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].SetFocus
            DoCmd.GoToRecord , , acNewRec
        Else
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![ID_LOCATION_CN] _
                = ID_LOCATION_CN
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS] _
                = NO_CONTAINERS * -1
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![AMT_PER_UNIT] _
                = Density
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![AMT_PER_UNIT_INV_GROSS] _
                = Density
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Requery
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].SetFocus
            DoCmd.GoToRecord , , acNewRec
        End If
        Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![ID_LOCATION_CN].Requery
    End If
    
Exit_Ship_Click:
    Exit Sub

Err_Ship_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Ship_Click
    
End Sub