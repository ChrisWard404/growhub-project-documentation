Option Compare Database

Private Sub ACTIVITY_DATE_Change()
    
    If Not IsNull(Activity_Code) And Not IsNull(ACTIVITY_DATE) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
   
End Sub

Private Sub ACTIVITY_DATE_Enter()

    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![CN]) Then
        If IsNull(ACTIVITY_DATE) Then
            ACTIVITY_DATE = Forms![NMIS_PRODUCT_INVENTORIES]![Default_Date]
        End If
    End If
    
End Sub

Private Sub ACTIVITY_DATE_Exit(Cancel As Integer)
    
    'If Not IsNull(Activity_Code) And Not IsNull(ACTIVITY_DATE) Then
        'If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
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
