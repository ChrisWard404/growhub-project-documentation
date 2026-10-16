Option Compare Database

Private Sub ACTIVITY_DATE_Change()

    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
    
End Sub

Private Sub ACTIVITY_DATE_Enter()

    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![CN]) Then
        If IsNull(ACTIVITY_DATE) Then
            If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![Default_Date]) Then
                ACTIVITY_DATE = Forms![NMIS_PRODUCT_INVENTORIES]![Default_Date]
            Else
                ACTIVITY_DATE = Date
            End If
        End If
    End If
    
    'ACTIVITY_UNITS.SetFocus
    
    'DoCmd.GoToControl "ACTIVITY_UNITS"
    
    If Not IsNull(Activity_Code) And Not IsNull(ACTIVITY_DATE) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
   
End Sub

Private Sub ACTIVITY_DATE_Exit(Cancel As Integer)
        
    'If Not IsNull(Activity_Code) And Not IsNull(ACTIVITY_DATE) Then
        'If IsNull(CN) Then
            'DoCmd.RunMacro "Set_CN2"
        'End If
    'End If
   
End Sub

Private Sub ACTIVITY_DATE_LostFocus()
        
    If Not IsNull(Activity_Code) And Not IsNull(ACTIVITY_DATE) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
   
End Sub

Private Sub ACTIVITY_UNITS_Enter()
    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![CN]) Then
        If IsNull(ACTIVITY_DATE) Then
            If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![Default_Date]) Then
                ACTIVITY_DATE = Forms![NMIS_PRODUCT_INVENTORIES]![Default_Date]
            Else
                ACTIVITY_DATE = Date
            End If
        End If
    End If
        If Not IsNull(Activity_Code) And Not IsNull(ACTIVITY_DATE) Then
            If IsNull(CN) Then
                DoCmd.RunMacro "Set_CN2"
            End If
        End If
        
End Sub

Private Sub Form_Current()
Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform].Requery
    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![CN]) Then
        If Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform].Form![PARENT_ACTIVITY_CODE] = "PLNINV" Then
            Forms![NMIS_PRODUCT_INVENTORIES]![TabCtl18].Visible = True
        Else
        Forms![NMIS_PRODUCT_INVENTORIES]![TabCtl18].Visible = False
        End If
    Else
        Forms![NMIS_PRODUCT_INVENTORIES]![TabCtl18].Visible = False
    End If
    
End Sub