Private Sub Open_PROCESS_QUALITY_SAMPLES2_Form_Click()
On Error GoTo Err_Open_PROCESS_QUALITY_SAMPLES2_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PROCESS_QUALITY_SAMPLES2"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_PROCESS_QUALITY_SAMPLES2_Form_:
    Exit Sub

Err_Open_PROCESS_QUALITY_SAMPLES2_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_PROCESS_QUALITY_SAMPLES2_Form_
    
End Sub

Private Sub Child102_Enter()

    If IsNull(ORDER_CN) Then
        MsgBox "Please select an Order to view"
        ORDER_CN.SetFocus
        DoCmd.GoToControl "[Order_CN]"
    End If
    
End Sub

Private Sub Child103_Enter()

    If IsNull(ORDER_CN) Then
        MsgBox "Please select an Order to view"
        ORDER_CN.SetFocus
        DoCmd.GoToControl "ORDER_CN"
    End If
    
End Sub

Private Sub Child104_Enter()

    If IsNull(ORDER_CN) Then
        MsgBox "Please select an Order to view"
        ORDER_CN.SetFocus
        DoCmd.GoToControl "ORDER_CN"
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToControl "ORDER_CN"
    
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)

    Like_Client = "*"
    Like_Client.Requery
    
End Sub

Private Sub Like_Client_Exit(Cancel As Integer)

    ORDER_CN.Requery
    ORDER_CN = Null
    
End Sub

Private Sub NMIS_PROCESSING_ORDERS_ID_UPDATE_subform_Enter()

    If IsNull(ORDER_CN) And Open_Flag = False Then
        MsgBox "Please select an Order to view"
        DoCmd.GoToControl "ORDER_CN"
    End If
    
End Sub

Private Sub Order_CN_Change()

    [NMIS_PROCESSING_ORDERS_ID_UPDATE subform]![CONTACT_CN].Requery
    [NMIS_PROCESSING_ORDERS_ID_UPDATE subform]![SECONDARY_CONTACT_CN].Requery
    
End Sub

Private Sub Order_CN_Enter()

    Open_Flag = False
    ORDER_CN.Requery
    
End Sub

Private Sub ORDER_CN_Exit(Cancel As Integer)

    [NMIS_PROCESSING_ORDERS_ID_UPDATE subform]![CONTACT_CN].Requery
    [NMIS_PROCESSING_ORDERS_ID_UPDATE subform]![SECONDARY_CONTACT_CN].Requery
    
End Sub

Private Sub Product_Group_Exit(Cancel As Integer)

    ORDER_CN.Requery
    ORDER_CN = Null
 
End Sub

Private Sub PrvwOrdrFrm_Click()
    
    If Not IsNull(ORDER_CN) Then
    
        Dim stDocName As String

        If PRODUCT_GROUP = "Propagule" Then
        If Not [order_form_data_processed] Then
        ' turns warning (about to update/delete...) off
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "ORDER_FORM_MT_FROM_ORDER_REVIEW Query"
            'DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
            'DoCmd.OpenQuery "Order_Form_LOC mt Query"
            'DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
            'DoCmd.OpenQuery "Order_Form_QI mt Query"
            'DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
            'DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
            DoCmd.OpenQuery "Order_Form_Specs mt Query"
            DoCmd.OpenQuery "Order_Form_MCODES mt Query"
            DoCmd.OpenQuery "Order_form_Contacts mt Query"
            DoCmd.OpenQuery "Order_form_Contacts at Query"
            DoCmd.OpenQuery "Order_Form_PKC mt Query"
            'DoCmd.OpenQuery "Field_Location_Inv_Subform_MT"

            'Update Order_Services_String Table
            ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
            DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
            ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
            DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
            ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
            DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
            DoCmd.SetWarnings True
            [order_form_data_processed] = True
        End If
    
            stDocName = "ORDER_FORM_PROPAGULE mt"
            DoCmd.OpenReport stDocName, acPreview
    
        Else
            If Not [order_form_data_processed] Then
            ' turns warning (about to update/delete...) off
            DoCmd.SetWarnings False

            'Update Order_Services_String Table
            ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
            DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
            ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
            DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
            ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
            DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
            DoCmd.OpenQuery "ORDER_FORM_MT_FROM_ORDER_REVIEW Query"
            DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
            DoCmd.OpenQuery "Order_Form_LOC mt Query"
            DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
            DoCmd.OpenQuery "Order_Form_QI mt Query"
            DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
            DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
            DoCmd.OpenQuery "Order_Form_Specs mt Query"
            DoCmd.OpenQuery "Order_Form_MCODES mt Query"
            DoCmd.OpenQuery "Order_form_Contacts mt Query"
            DoCmd.OpenQuery "Order_form_Contacts at Query"
            DoCmd.OpenQuery "Order_Form_PKC mt Query"
            DoCmd.OpenQuery "Order_Form_PKT mt Query"
            DoCmd.OpenQuery "Field_Location_Inv_Subform_MT"
            DoCmd.OpenQuery "Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class_mt"
    
            DoCmd.SetWarnings True
            '[order_form_data_processed] = True
            End If
    
            Select Case Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code]
        
            Case Is = "040207"
                stDocName = "ORDER_FORM mt_040207_edit"
            Case Is = "050357"
                stDocName = "ORDER_FORM mt_050357_edit"
            Case Else
                stDocName = "order_form_from_order_edit mt"
            End Select
    
            DoCmd.OpenReport stDocName, acPreview
        End If
    Else
        MsgBox "Must select an Order First"
    End If

End Sub

Private Sub PrvwStrgRcrd_Click()
    
    If Not IsNull(ORDER_CN) Then
    
    Dim stDocName As String

    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.SetWarnings True
    
    stDocName = "PRODUCT_STORAGE_RECORD_FROM_ORDER_REVIEW_FORM"
    DoCmd.OpenReport stDocName, acPreview
    Else
        MsgBox "Must select an Order First"
    End If

End Sub

Private Sub View_by_Click()

    [ORDER_CN].Requery
    
End Sub

Private Sub VIEW_FY_AfterUpdate()

    Forms![Switchboard]![FY_For_Reports] = View_FY
    
End Sub

Private Sub VIEW_FY_Change()

    Forms![Switchboard]![FY_For_Reports] = View_FY
    
End Sub

Private Sub VIEW_FY_Click()

End Sub

Private Sub View_FY_Exit(Cancel As Integer)

    ORDER_CN.Requery
    ORDER_CN = Null
    
End Sub
Private Sub Open_Sow_Req_Info_Click()
On Error GoTo Err_Open_Sow_Req_Info_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ORDERS_REVIEW_AGREEMENT_INFO"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Sow_Req_Info_Click:
    Exit Sub

Err_Open_Sow_Req_Info_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Sow_Req_Info_Click
    
End Sub