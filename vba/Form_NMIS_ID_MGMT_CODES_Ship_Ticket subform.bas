Option Compare Database

Private Sub Form_Open(Cancel As Integer)

'If a new entry set to defaults on Shipping ticket

    If IsNull(Forms![NMIS_ID_Mgmt_Codes_Ship_Ticket subform]![NMIS_CLIENT_MGMT_CODES subform]![CLIENT_ASSOCIATE]) Then
        If Not IsNull(Forms![SEED_SHIPPING_TICKET Subform]![Default_Payee]) Then
            Forms![NMIS_ID_Mgmt_Codes_Ship_Ticket subform]! _
          [NMIS_CLIENT_MGMT_CODES subform]![CLIENT_ASSOCIATE] = _
        Forms![SEED_SHIPPING_TICKET Subform]![Default_Payee]
        End If
    End If
    If IsNull(Forms![NMIS_ID_Mgmt_Codes_Ship_Ticket subform]! _
        [NMIS_CLIENT_MGMT_CODES subform]![MGMT_CODE]) Then
      If Not IsNull(Forms![SEED_SHIPPING_TICKET Subform]![Default_Mgmt_Code]) Then
        Forms![NMIS_ID_Mgmt_Codes_Ship_Ticket subform]! _
          [NMIS_CLIENT_MGMT_CODES subform]![MGMT_CODE] = _
        Forms![SEED_SHIPPING_TICKET Subform]![Default_Mgmt_Code]
      End If
    End If
    
End Sub

Private Sub Refresh_Close_Click()
On Error GoTo Err_Refresh_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Refresh_Close_Click:
    Exit Sub

Err_Refresh_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_Close_Click
    
End Sub