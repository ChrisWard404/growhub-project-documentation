# Form: NMIS_SHIPPING_ID_ACTIVITIES subform

**Caption:** NMIS_SHIPPING_ID_ACTIVITIES subform  
**Record source:**

```sql
SELECT NMIS_ID_ACTIVITIES.* FROM NMIS_ID_ACTIVITIES WHERE (((NMIS_ID_ACTIVITIES.TICKET_CN) Is Not Null) AND ((NMIS_ID_ACTIVITIES.SOURCE_LOT_CN) Is Null));
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_ID_ACTIVITIES`, `NMIS_ORDERS`, `NMIS_TICKETS`, `NMIS_UNITS`  
**Embedded in:** `Form:NMIS_SHIPPING_TICKET subform`  
**Opens:** `Form:NMIS_CLIENT_MGMT_CODES_Prod_Ship`, `Form:NMIS_ID_ACTIVITIES_MORE_INFO_PRODUCTION_ShipTicket_SUBFORM`  
**Form events with code:** Current, Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ACTIVITY_CODE_Label | Activity Code |  |  |  | 6.22, 0.04, 0.78, 0.35 |
| Label | ACTIVITY_UNITS_Label | Activity Units |  |  |  | 7.04, 0.04, 0.67, 0.35 |
| Label | ACTIVITY_DATE_Label | Activity Date |  |  |  | 5.57, 0.04, 0.60, 0.35 |
| Label | UNIT_CODE_Label | Unit Code |  |  |  | 7.75, 0.04, 0.49, 0.35 |
| Label | AGREEMENT_LOT_CN_Label | (Source ID) Source |  |  |  | 1.80, 0.04, 3.31, 0.35 |
| TextBox | TICKET_CN |  | TICKET_CN |  |  | 1.99, 0.01, 0.72, 0.14 |
| TextBox | Index |  | Index |  |  | 3.34, 0.03, 0.38, 0.14 |
| TextBox | DESTINATION_ASSOCIATE |  | DESTINATION_ASSOCIATE |  |  | 6.52, 0.21, 0.69, 0.12 |
| TextBox | New_CN |  | =[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code |  |  | 2.02, 0.01, 0.97, 0.00 |
| TextBox | CN |  | CN |  |  | 1.82, 0.21, 0.59, 0.14 |
| TextBox | Order_ID_Label |  | =IIf([Forms]![NMIS_SHIPPING_TICKET subform]![View_by]=1,"Order ID/Lot ID","Lot ID/Order ID") |  |  | 0.23, 0.04, 1.53, 0.35 |
| ComboBox | Like_Client | Like Client: |  | SELECT NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_TICKETS, NMIS_ASSOCIATES INNER JOIN NMIS_ORDERS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_ORDERS.CLIENT_ASSOCIATE WHERE (((NMIS_ORDERS.FISCAL_YEAR) Like [Forms]![NMIS_SHIPPING_TICKET subform]![View_FY] & "*")) GROUP BY NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME ORDER BY NMIS_ORDERS.CLIENT_ASSOCIATE; | DblClick | 0.95, 0.06, 0.76, 0.15 |
| Label | Label41 | Ticket |  |  |  | 8.27, 0.03, 0.66, 0.35 |
| Label | Fiscal_Year Label | FY |  |  |  | 5.15, 0.04, 0.36, 0.35 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  |  | 7.04, 0.02, 0.65, 0.21 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 5.57, 0.03, 0.60, 0.21 |
| ComboBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN | SELECT agreement_lot_ID_and_source_string.AGREEMENT_LOT_CN, agreement_lot_ID_and_source_string.ID_SOURCE2 FROM agreement_lot_ID_and_source_string; |  | 1.80, 0.03, 3.31, 0.21 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS;  |  | 7.75, 0.03, 0.51, 0.21 |
| ComboBox | ORDER_CN |  | ORDER_CN | SELECT NMIS_ORDERS.CN, IIf([Forms]![NMIS_SHIPPING_TICKET subform]![View_by]=1,Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7) & "/" & [ID],[ID] & "/" & Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7)) AS [Order], NMIS_ORDERS.CLIENT_ASSOCIATE AS Client, NMIS_ORDERS.ACTIVITY_CODE AS [Act Code], Round([Order_Amt],3) & " M" AS [Order Amt], Sum(Round([NO_CONTAINERS]*[DENSITY]/[UNIT_MULTIPLIER],3)) AS [Bal M], NMIS_ORDERS.FISCAL_YEAR AS fy FROM (NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) INNER JOIN [*NMIS_ORDER_LOT_BALANCES Table] ON NMIS_ORDERS.CN = [*NMIS_ORDER_LOT_BALANCES Table].CN WHERE (((NMIS_ORDERS.CLIENT_ASSOCIATE) Like IIf(IsNull([order_cn]),[Forms]![NMIS_SHIPPING_TICKET subform]![NMIS_SHIPPING_ID_ACTIVITIES subform].[Form]![Like_Client] & "*","*")) AND ((NMIS_ORDERS.FISCAL_YEAR) Like IIf(IsNull([Forms]![NMIS_SHIPPING_TICKET subform]![NMIS_SHIPPING_ID_ACTIVITIES subform].[Form]![ORDER_CN]),[Forms]![NMIS_SHIPPING_TICKET subform]![view_fy] & "*","*"))) GROUP BY NMIS_ORDERS.CN, NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ORDERS.ACTIVITY_CODE, Round([Order_Amt],3) & " M", NMIS_ORDERS.FISCAL_YEAR, IIf([Forms]![NMIS_SHIPPING_TICKET subform]![View_by]=1,Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7) & "/ " & [ID],[ID] & "/ " & Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7)), NMIS_ORDERS.FISCAL_YEAR, NMIS_ORDERS.CN, NMIS_AGREEMENT_LOTS.ID HAVING (((IIf(Sum(Round([NO_CONTAINERS]*[DENSITY]/[UNIT_MULTIPLIER],3))>0,"n","y")) Like IIf(IsNull([Forms]![NMIS_SHIPPING_TICKET subform]![NMIS_SHIPPING_ID_ACTIVITIES subform].[Form]![ORDER_CN]),IIf([Forms]![NMIS_SHIPPING_TICKET subform]![Hide_Zero_Bal_Trans],"n","*"),"*"))) ORDER BY NMIS_ORDERS.FISCAL_YEAR DESC , IIf([Forms]![NMIS_SHIPPING_TICKET subform]![View_by]=1,Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7) & "/ " & [ID],[ID] & "/ " & Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7)), NMIS_ORDERS.FISCAL_YEAR DESC , NMIS_AGREEMENT_LOTS.ID, NMIS_ORDERS.CN; | AfterUpdate, DblClick | 0.23, 0.03, 1.55, 0.21 |
| CommandButton | Open_Client_MGMT_CODE_FORM | JobCode |  |  | Click | 8.97, 0.02, 0.55, 0.22 |
| TextBox | NOTE |  | NOTE |  |  | 3.03, 0.04, 1.92, 0.17 |
| CommandButton | Open_More_Info_Form | + |  |  | Click | 0.04, 0.03, 0.17, 0.20 |
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SHIP" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ORDER")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE; |  | 6.22, 0.03, 0.79, 0.21 |
| ComboBox | Ticket |  | TICKET_CN | SELECT NMIS_TICKETS.CN, NMIS_TICKETS.TKT_NO, NMIS_TICKETS.DELIVERED_TO_ASSOCIATE, NMIS_TICKETS.NOTE, NMIS_TICKETS.TICKET_TYPE FROM NMIS_TICKETS WHERE (((NMIS_TICKETS.TICKET_TYPE)="p") AND ((NMIS_TICKETS.FY) Like [Forms]![NMIS_SHIPPING_TICKET subform]![View_FY])) ORDER BY NMIS_TICKETS.TKT_NO DESC; | DblClick, Enter | 8.27, 0.02, 0.71, 0.21 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 5.15, 0.03, 0.38, 0.20 |

## Code-behind (VBA)

```vb
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
```
