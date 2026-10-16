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

    If IsNull(Activity_Code) Then
        Activity_Code.Locked = False
    Else
        Activity_Code.Locked = True
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
    Else
        ACTIVITY_DATE.Locked = True
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

    If IsNull(ACTIVITY_UNITS) Then
        ACTIVITY_UNITS.Locked = False
    Else
        ACTIVITY_UNITS.Locked = True
    End If
    
    If IsNull(ACTIVITY_DATE) Then
        ACTIVITY_DATE = Forms![NMIS_ID_ACTIVITY_FORM]![Default_Date]
    End If
    
    If IsNull(Activity_Code) Then
        ACTIVITY_DATE = Forms![NMIS_ID_ACTIVITY_FORM]![Default_Activity_Code]
    End If
    
End Sub

Private Sub ACTIVITY_UNITS_Exit(Cancel As Integer)

    If Not IsNull(Activity_Code) And Not IsNull(ACTIVITY_UNITS) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
   
End Sub

Private Sub Form_Current()

    ORDER_CN.Requery
    
End Sub

Private Sub NOTE_Change()

    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
 
End Sub

Private Sub Order_CN_Change()

    If IsNull(CONTRACT_ITEM) Then
        CONTRACT_ITEM = _
        Forms![NMIS_ID_ACTIVITY_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]
    End If

End Sub

Private Sub Order_CN_Enter()

    'If Not IsNull(ORDER_CN) Then
        ORDER_CN.Requery
    'End If
    
End Sub

Private Sub ORDER_CN_Exit(Cancel As Integer)

    If IsNull(CONTRACT_ITEM) Then
        CONTRACT_ITEM = _
        Forms![NMIS_ID_ACTIVITY_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]
    End If

End Sub

Private Sub Properties_Button_Click()

        Call Property_Module_Form_Open(Forms![NMIS_ID_ACTIVITY_FORM]![NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform].Form![PROPERTIES_MODULE], CN, AGREEMENT_LOT_CN, ORDER_CN, Ticket_ID)

End Sub