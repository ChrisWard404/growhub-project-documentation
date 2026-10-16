Option Compare Database



Private Sub Contact_CN_DblClick(Cancel As Integer)

    CONTACT_CN = Null
    
End Sub

Private Sub Contact_CN_Enter()

    CONTACT_CN.Requery
    
End Sub

Private Sub Diverse_DblClick(Cancel As Integer)

    DIVERSE = "*"
    
End Sub

Private Sub Form_Close()
On Error GoTo Err_Form_Close

    Forms![Switchboard]![FY_For_Reports] = Forms![Switchboard]![NMIS_FISCAL_YEAR_Current].Form![FISCAL_YEAR_TEXT]
    Forms![REPORTS Form]![FY_For_Reports] = Forms![Switchboard]![NMIS_FISCAL_YEAR_Current].Form![FISCAL_YEAR_TEXT]
Exit_Form_Close:
    Exit Sub

Err_Form_Close:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Close

End Sub

Private Sub Like_Client_AfterUpdate()

    CONTACT_CN = Null
    CONTACT_CN.Requery
    
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)

    Like_Client = "*"
    
End Sub

Private Sub Parent_Associate_DblClick(Cancel As Integer)

    PARENT_ASSOCIATE = "*"
    
End Sub

Private Sub Order_FY_AfterUpdate()

    Forms![Switchboard]![FY_For_Reports] = Order_FY
    Forms![REPORTS Form]![FY_For_Reports] = Order_FY
     
End Sub

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)

    Plntmstr_Symbol = "*"
    
End Sub

Private Sub Preview_Report_Click()

On Error GoTo Err_Preview_Report_Click

    Dim stDocName As String

    stDocName = "ORDER_CONFIRM_MT"
    
    If Not [Data_Processed] Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        'Update Order_Services_String Table
        'Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
         DoCmd.OpenQuery "NMIS_SPCL_SVCSL_DEL_QUERY", acNormal, acEdit
        'Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
        DoCmd.OpenQuery "NMIS_SPCL_SVCS1L_QUERY", acNormal, acEdit
        'Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
        DoCmd.OpenQuery "NMIS_SPCL_SVCS2L_QUERY", acNormal, acEdit
        ' DoCmd.OpenQuery "Order_Confirm_SS_MT_Query"
        DoCmd.OpenQuery "Order_Confirm_MT_Query"
        DoCmd.OpenQuery "Order_Confirm_SS_MT_Query"
        DoCmd.OpenQuery "Order_Confirm_MC_MT_Query"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Report_Click:
    Exit Sub

Err_Preview_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_Click
    
    
End Sub

Private Sub Preview_Report2_Click()
On Error GoTo Err_Preview_Report2_Click
    
    Dim stDocName As String

    stDocName = "ORDER_CONFIRM_NURSERY"
    
    If Not [Data_Processed] Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        'Update Order_Services_String Table
        'Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
         DoCmd.OpenQuery "NMIS_SPCL_SVCSL_DEL_QUERY", acNormal, acEdit
        'Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
        DoCmd.OpenQuery "NMIS_SPCL_SVCS1L_QUERY", acNormal, acEdit
        'Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
        DoCmd.OpenQuery "NMIS_SPCL_SVCS2L_QUERY", acNormal, acEdit
        DoCmd.OpenQuery "Order_Confirm_MT_Query"
        DoCmd.OpenQuery "Order_Confirm_SS_MT_Query"
        DoCmd.OpenQuery "Order_Confirm_MC_MT_Query"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Report2_Click:
    Exit Sub

Err_Preview_Report2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report2_Click
End Sub