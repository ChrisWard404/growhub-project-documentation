# Form: NMIS_ID_ACTIVITIES_ACTIVITIES_subform

**Caption:** NMIS ID Cultural Activities subform  
**Record source:**

```sql
SELECT NMIS_ID_ACTIVITIES.* FROM NMIS_ID_ACTIVITIES WHERE (((NMIS_ID_ACTIVITIES.CN) Like IIf([Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![first_open],"XXX","*"))) ORDER BY NMIS_ID_ACTIVITIES.ACTIVITY_DATE, NMIS_ID_ACTIVITIES.Index;
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_FISCAL_YEARS`, `NMIS_ID_ACTIVITIES`, `NMIS_ORDERS`, `NMIS_TICKETS`, `NMIS_TREATMENT_PRODUCTS`  
**Embedded in:** `Form:NMIS_ID_ACTIVITY_TRANSACTIONS_FORM`, `Form:NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_bu`, `Form:NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_bu3`, `Form:NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_orig`  
**Opens:** `Form:NMIS_ID_ACTIVITIES_MORE_INFO_PRODUCTION_SUBFORM`  
**Form events with code:** Current  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Activity Date |  |  |  | 1.50, 0.03, 0.59, 0.36 |
| Label | Label33 | Activity Code |  |  |  | 2.12, 0.03, 0.82, 0.36 |
| Label | Label56 | Treatment Product |  |  |  | 4.21, 0.03, 1.07, 0.36 |
| Label | Label58 | Activity Units |  |  |  | 2.98, 0.03, 0.73, 0.36 |
| Label | Label60 | Amount/ Unit |  |  |  | 5.31, 0.03, 0.59, 0.36 |
| Label | Label68 | Unit Code |  |  |  | 3.74, 0.03, 0.44, 0.36 |
| Label | Label70 | Units Presc. |  |  |  | 5.94, 0.03, 0.52, 0.36 |
| Label | Label77 | Order No. |  |  |  | 6.49, 0.03, 0.70, 0.36 |
| Label | Label80 | Contract Item |  |  |  | 8.02, 0.03, 0.61, 0.36 |
| Label | Label83 | Activity Hours |  |  |  | 8.66, 0.03, 0.53, 0.36 |
| Label | Label87 | Ticket  ID |  |  |  | 7.22, 0.03, 0.78, 0.35 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 0.23, 0.22, 0.88, 0.00 |
| Label | Label54 | Fiscal Year |  |  |  | 0.95, 0.03, 0.53, 0.35 |
| Label | Label52 | Activities |  |  |  | 0.15, 0.03, 0.78, 0.36 |
| TextBox | Index |  | Index |  |  | 0.08, 0.21, 1.21, 0.16 |
| TextBox | New_CN |  | =[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code |  |  | 1.42, 0.21, 1.13, 0.16 |
| TextBox | CN |  | CN |  |  | 0.96, 0.01, 0.74, 0.16 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | ACTIVITY_CODE |  | NMIS_ID_ACTIVITIES.ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) Not In ("SDTRAN","CONE","SDEXTR","SDTRMT","SPCSVC"))) OR (((NMIS_ACTIVITY_CODES.ACTIVITY_CODE) In ("SOW","ADDNON","SRSDSL"))) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_NAME; | Change, DblClick, Enter | 2.12, 0.03, 0.84, 0.19 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  | Change, DblClick, Enter, Exit | 1.50, 0.03, 0.59, 0.19 |
| TextBox | NOTE |  | NOTE |  |  | 1.47, 0.24, 7.71, 0.19 |
| ComboBox | FISCAL_YEAR |  | FISCAL_YEAR | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  | Change | 0.95, 0.03, 0.54, 0.19 |
| ComboBox | TREATMENT_PRODUCT_ID |  | TREATMENT_PRODUCT_ID | SELECT NMIS_TREATMENT_PRODUCTS.TREATMENT_PRODUCT_ID, NMIS_TREATMENT_PRODUCTS.TREATMENT_PRODUCT_DESC FROM NMIS_TREATMENT_PRODUCTS; | Change | 4.21, 0.03, 1.07, 0.19 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  | Change, DblClick, Enter, Exit | 2.98, 0.03, 0.73, 0.19 |
| TextBox | AMT_PER_UNIT |  | AMT_PER_UNIT |  |  | 5.31, 0.03, 0.59, 0.19 |
| Label | Label64 | Note: |  |  |  | 0.96, 0.24, 0.41, 0.20 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 3.74, 0.03, 0.44, 0.19 |
| TextBox | ACTIVITY_UNITS_PRESCRIBED |  | ACTIVITY_UNITS_PRESCRIBED |  |  | 5.94, 0.03, 0.53, 0.19 |
| CommandButton | Properties_Button | Click for Properties |  |  | Click | 0.23, 0.07, 0.60, 0.35 |
| ComboBox | ORDER_CN |  | ORDER_CN | SELECT NMIS_ORDERS.CN, Left$(nmis_orders.cn,Len(nmis_orders.cn)-7) AS [Order], NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ORDERS.ACTIVITY_CODE, [Order_Amt] & "M" AS ORDER_AMT2, Nz([OVERRUN_AMT],0) & "M Over" AS [OR], IIf([overrun_all],"All") AS [All], NMIS_ORDERS.FISCAL_YEAR, NMIS_ORDERS.CONTRACT_ITEM, NMIS_ORDERS_SIZE_SPEC_STRING.Order_Size_Spec_W_Prune, "End FY: " & [END_FY] AS [End FY] FROM (NMIS_ORDERS INNER JOIN NMIS_ORDERS_SIZE_SPEC_STRING ON NMIS_ORDERS.CN = NMIS_ORDERS_SIZE_SPEC_STRING.CN) INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN GROUP BY NMIS_ORDERS.CN, Left$(nmis_orders.cn,Len(nmis_orders.cn)-7), NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ORDERS.ACTIVITY_CODE, [Order_Amt] & "M", Nz([OVERRUN_AMT],0) & "M Over", IIf([overrun_all],"All"), NMIS_ORDERS.FISCAL_YEAR, NMIS_ORDERS.CONTRACT_ITEM, NMIS_ORDERS_SIZE_SPEC_STRING.Order_Size_Spec_W_Prune, "End FY: " & [END_FY], NMIS_ORDERS.AGREEMENT_LOT_CN HAVING (((NMIS_ORDERS.AGREEMENT_LOT_CN)=[Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![CN])) ORDER BY Left$(nmis_orders.cn,Len(nmis_orders.cn)-7) DESC; | AfterUpdate, DblClick, Exit | 6.50, 0.03, 0.71, 0.19 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  | Click, Enter | 8.02, 0.03, 0.62, 0.19 |
| TextBox | ACTIVITY_HOURS |  | ACTIVITY_HOURS |  |  | 8.66, 0.03, 0.53, 0.19 |
| ComboBox | Ticket_ID |  | TICKET_CN | SELECT NMIS_TICKETS.CN, NMIS_TICKETS.TKT_NO, "(" & [DELIVERED_TO_ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS [TO], NMIS_TICKETS.NOTE FROM NMIS_ASSOCIATES INNER JOIN NMIS_TICKETS ON (NMIS_ASSOCIATES.ASSOCIATE = NMIS_TICKETS.DELIVERED_TO_ASSOCIATE) AND (NMIS_ASSOCIATES.ASSOCIATE = NMIS_TICKETS.DELIVERED_TO_ASSOCIATE) WHERE (((NMIS_TICKETS.TICKET_TYPE)=IIf([Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform].[Form]![PROPERTIES_MODULE] Like "*SOURCE","SW","P"))) ORDER BY NMIS_TICKETS.FY DESC , Val(Right$([TKT_NO],Len([TKT_NO])-2)) DESC; | DblClick, Enter | 7.23, 0.03, 0.77, 0.19 |
| CommandButton | Open_More_Info_Form | + |  |  | Click | 0.03, 0.14, 0.17, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub ACTIVITY_CODE_Change()
    
    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
   
End Sub

Private Sub ACTIVITY_CODE_DblClick(Cancel As Integer)

    Activity_Code.Locked = False
    
End Sub

Private Sub ACTIVITY_CODE_Enter()

    'If IsNull(ACTIVITY_DATE) Then
        'ACTIVITY_DATE = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Date]
    'End If
    
    ORDER_CN.Requery
    
    If IsNull(Activity_Code) And Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Activity_Code]) Then
        Activity_Code = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Activity_Code]
    End If
    
    If Not IsNull(Activity_Code) Then
        Activity_Code.Locked = True
        'If IsNull(CN) Then
            'DoCmd.RunMacro "Set_CN2"
        'End If
    Else
        Activity_Code.Locked = False
    End If
    
End Sub

Private Sub Activity_Code_Exit(Cancel As Integer)
    
    If Not IsNull(Activity_Code) Then
        'If IsNull(CN) Then
            'DoCmd.RunMacro "Set_CN2"
        'End If
    End If
   
End Sub

Private Sub ACTIVITY_DATE_Change()
    
    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
   
End Sub

Private Sub ACTIVITY_DATE_DblClick(Cancel As Integer)

    ACTIVITY_DATE.Locked = False
    
End Sub

Private Sub ACTIVITY_DATE_Enter()

    If IsNull(ACTIVITY_DATE) Then
        ACTIVITY_DATE.Locked = False
        ACTIVITY_DATE = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Date]
    Else
        ACTIVITY_DATE.Locked = True
    End If
    
End Sub

Private Sub ACTIVITY_DATE_Exit(Cancel As Integer)

    If IsNull(ACTIVITY_DATE) Then
        ACTIVITY_DATE = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Date]
    End If
    
    ORDER_CN.Requery
        
    If Not IsNull(ACTIVITY_DATE) Then
        'If IsNull(CN) Then
            'DoCmd.RunMacro "Set_CN2"
        'End If
    End If
    
End Sub

Private Sub ACTIVITY_UNITS_Change()
    
    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
   
End Sub

Private Sub ACTIVITY_UNITS_DblClick(Cancel As Integer)

    ACTIVITY_UNITS.Locked = False
    
End Sub

Private Sub ACTIVITY_UNITS_Enter()

    ac = [Activity_Code]
    
    If IsNull(Activity_Code) And Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Activity_Code]) Then
        Activity_Code = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Activity_Code]
    End If
    
    If IsNull(Activity_Code) Then
        MsgBox "Must enter an Activity Code", vbCritical
        DoCmd.GoToControl "activity_code"
        If IsNull(ACTIVITY_UNITS) Then
            ACTIVITY_UNITS.Locked = False
            If ac = "SOW" Or ac = "XPLT" Or ac = "XPLTN" Or ac = "XPLTC" Or ac = "XPLTP" Then
                ACTIVITY_UNITS = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![TOTAL_REQUEST]
            End If
    Else
        'ACTIVITY_UNITS.Locked = True
    End If
    End If
        If IsNull(CN) Then
            If Not IsNull(New_CN) Then
                CN = New_CN
            End If
        End If
    If Not IsNull(ACTIVITY_UNITS) Then
        ACTIVITY_UNITS.Locked = True
    Else
        ACTIVITY_UNITS.Locked = False
    End If
    
End Sub

Private Sub ACTIVITY_UNITS_Exit(Cancel As Integer)

    If Not IsNull(Activity_Code) And Not IsNull(ACTIVITY_UNITS) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
   
End Sub

Private Sub CONTRACT_ITEM_Click()

If (Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]) And IsNull(CONTRACT_ITEM)) Then
        CONTRACT_ITEM = _
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]
    End If

End Sub

Private Sub CONTRACT_ITEM_Enter()

    If (Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]) And IsNull(CONTRACT_ITEM)) Then
        CONTRACT_ITEM = _
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]
    End If

End Sub

Private Sub Contract_Item_Exit(Cancel As Integer)

If (Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]) And IsNull(CONTRACT_ITEM)) Then
        CONTRACT_ITEM = _
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]
    End If

End Sub

Private Sub FISCAL_YEAR_Change()
    
    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
   
End Sub

Private Sub Form_Current()

    Ticket_ID.Requery
    'If Not IsNull(ACTIVITY_UNITS) Then
        'If Not IsNull(ORDER_CN) Then
            ORDER_CN.Requery
        'End If
    'End If
    
End Sub

Private Sub Open_More_Info_Form_Click()
On Error GoTo Err_Open_More_Info_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_ACTIVITIES_MORE_INFO_PRODUCTION_SUBFORM"
    stLinkCriteria = "[ID_ACTIVITY_CN]=" & "'" & Me![CN] & "'"
   
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_More_Info_Form_Click:
    Exit Sub

Err_Open_More_Info_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_More_Info_Form_Click
    
End Sub

Private Sub ORDER_CN_AfterUpdate()

    If IsNull(CONTRACT_ITEM) Then
        CONTRACT_ITEM = _
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]
    End If
   
End Sub

Private Sub Order_CN_Change()

    If IsNull(CONTRACT_ITEM) Then
        CONTRACT_ITEM = _
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]
    End If
        
    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
   

End Sub

Private Sub ORDER_CN_DblClick(Cancel As Integer)

    ORDER_CN.Locked = False
    
End Sub

Private Sub Order_CN_Enter()

    DoCmd.RunMacro "Refresh"
    ORDER_CN.Requery

    If IsNull(ORDER_CN) Then
        ORDER_CN.Locked = False
    Else
        ORDER_CN.Locked = True
    End If
    
End Sub

Private Sub ORDER_CN_Exit(Cancel As Integer)

    'If (Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]) And IsNull(CONTRACT_ITEM)) Then
        'CONTRACT_ITEM = _
        'Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]
    'End If

End Sub

Private Sub Properties_Button_Click()

    Call Property_Module_Form_Open(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform].Form![PROPERTIES_MODULE], CN, AGREEMENT_LOT_CN, ORDER_CN, Ticket_ID)

End Sub

Private Sub Ticket_ID_DblClick(Cancel As Integer)

    Ticket_ID.Locked = False
    
End Sub

Private Sub Ticket_ID_Enter()
    
    Ticket_ID.Requery
    If IsNull(Ticket_ID) Then
        Ticket_ID.Locked = False
    Else
        Ticket_ID.Locked = True
    End If
    
End Sub

Private Sub TREATMENT_PRODUCT_ID_Change()
    
    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
   
End Sub
```
