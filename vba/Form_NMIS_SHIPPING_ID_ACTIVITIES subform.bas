Option Compare Database

Private Sub Form_Current()

     ORDER_CN.Requery
  
End Sub

Private Sub Form_Open(Cancel As Integer)

    'DoCmd.SetWarnings False
    'DoCmd.OpenQuery "NMIS_ORDER_LOT_BALANCES MT query"
    'DoCmd.SetWarnings True
    
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)

    Like_Client = "*"
    
End Sub

Private Sub Open_More_Info_Form_Click()
On Error GoTo Err_Open_More_Info_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_ACTIVITIES_MORE_INFO_PRODUCTION_ShipTicket_SUBFORM"
    stLinkCriteria = "[ID_ACTIVITY_CN]=" & "'" & Me![CN] & "'"
   
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_More_Info_Form_Click:
    Exit Sub

Err_Open_More_Info_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_More_Info_Form_Click
    
End Sub

Private Sub ORDER_CN_AfterUpdate()

    If (Not IsNull(Forms![NMIS_SHIPPING_TICKET Subform].Form![TKT_NO]) _
        And Not IsNull(ORDER_CN)) Then
        
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
            
        'If IsNull(AGREEMENT_LOT_CN) Then
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform].Requery
            AGREEMENT_LOT_CN = Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform].Form![AGREEMENT_LOT_CN]
        'End If
            
        If IsNull(Activity_Code) Then
            Activity_Code = [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![DFLT_ACT]
        End If
    
        If IsNull(ACTIVITY_DATE) Then
            ACTIVITY_DATE = [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![DESIRED_DATE]
        End If
    
        If IsNull(DESTINATION_ASSOCIATE) Then
            DESTINATION_ASSOCIATE = [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![DELIVERED_TO_ASSOCIATE]
        End If
        
        If IsNull(FISCAL_YEAR) Then
            FISCAL_YEAR = [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![FISCAL_YEAR]
        End If
            If Not IsNull(Forms![NMIS_SHIPPING_TICKET Subform]![Bill_To]) Then
        If Not IsNull(Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_CLIENT_MGMT_CODES_prod_ship subform].Form![CLIENT_ASSOCIATE]) Then
        'do nothing
        Else
            Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_CLIENT_MGMT_CODES_prod_ship subform].Form![CLIENT_ASSOCIATE] = _
            Forms![NMIS_SHIPPING_TICKET Subform]![Bill_To]
            If Not IsNull(Forms![NMIS_SHIPPING_TICKET Subform]![MGMT_CODE]) Then
                Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_CLIENT_MGMT_CODES_prod_ship subform].Form![MGMT_CODE] = _
                    Forms![NMIS_SHIPPING_TICKET Subform]![MGMT_CODE]
            Else
                Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_CLIENT_MGMT_CODES_prod_ship subform].Form![MGMT_CODE] = _
                "**"
            End If
        Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_CLIENT_MGMT_CODES_prod_ship subform].Form![FISCAL_YEAR_USED] = _
            Forms![NMIS_SHIPPING_TICKET Subform]![FISCAL_YEAR]
        Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_CLIENT_MGMT_CODES_prod_ship subform].Requery
        End If
    End If
    End If
        
    Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_SHIPPING_TRANSACTIONS_subform].SetFocus
    DoCmd.GoToControl "[ID_LOCATION_CN]"
    
End Sub
Private Sub Open_Client_MGMT_CODE_FORM_Click()
On Error GoTo Err_Open_Client_MGMT_CODE_FORM_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    If Not IsNull(Forms![NMIS_SHIPPING_TICKET Subform]![Bill_To]) Then
        If Not IsNull(Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_CLIENT_MGMT_CODES_prod_ship subform].Form![CLIENT_ASSOCIATE]) Then
        'do nothing
        Else
            Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_CLIENT_MGMT_CODES_prod_ship subform].Form![CLIENT_ASSOCIATE] = _
            Forms![NMIS_SHIPPING_TICKET Subform]![Bill_To]
            If Not IsNull(Forms![NMIS_SHIPPING_TICKET Subform]![MGMT_CODE]) Then
                Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_CLIENT_MGMT_CODES_prod_ship subform].Form![MGMT_CODE] = _
                    Forms![NMIS_SHIPPING_TICKET Subform]![MGMT_CODE]
            Else
                Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_CLIENT_MGMT_CODES_prod_ship subform].Form![MGMT_CODE] = _
                "**"
            End If
        Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_CLIENT_MGMT_CODES_prod_ship subform].Form![FISCAL_YEAR_USED] = _
            Forms![NMIS_SHIPPING_TICKET Subform]![FISCAL_YEAR]
        Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_CLIENT_MGMT_CODES_prod_ship subform].Requery
        End If
    End If

    stDocName = "NMIS_CLIENT_MGMT_CODES_Prod_Ship"
    
    stLinkCriteria = "[ACTIVITY_ID_CN]=" & "'" & Me![CN] & "'"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Client_MGMT_CODE_FORM_Click:
    Exit Sub

Err_Open_Client_MGMT_CODE_FORM_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Client_MGMT_CODE_FORM_Click
    
End Sub

Private Sub ORDER_CN_DblClick(Cancel As Integer)

    ORDER_CN.Locked = False

End Sub

Private Sub Order_CN_Enter()

    If Not IsNull(ORDER_CN) Then
        ORDER_CN.Locked = True
    Else
        ORDER_CN.Locked = False
    End If
    ORDER_CN.Requery
    
End Sub

Private Sub Ticket_DblClick(Cancel As Integer)

    Ticket.Locked = False
    
End Sub

Private Sub Ticket_Enter()
    If Not IsNull(Ticket) Then
        Ticket.Locked = True
    Else
        Ticket.Locked = False
    End If
    Ticket.Requery
End Sub