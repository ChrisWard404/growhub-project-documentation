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