Option Compare Database

Private Sub BorC_AfterUpdate()

    Like_Lot_ID.Requery
    Like_Client.Requery
    
End Sub

Private Sub BorC_Change()
        
    Data_Processed = False
    Like_Lot_ID = Null
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    Data_Processed = False
    Contract.Visible = False
    
End Sub

Private Sub Lift_Date_Change()
           
    Data_Processed = False
    Data_Processed_ld = False
    Like_Lot_ID = Null
 
End Sub

Private Sub Like_Client_Change()
    
    Data_Processed = False
    Like_Lot_ID = Null
    
End Sub

Private Sub Like_Client_Enter()

    Like_Client.Requery
    
End Sub

Private Sub Like_Lot_ID_Change()
    
    'Data_Processed = False
    Like_Client = Null
    Like_Species = Null
    Like_Stock_Type = Null
    BorC = "*"
    
End Sub

Private Sub Like_Species_Change()

    Data_Processed = False
    Like_Lot_ID = Null
 
End Sub

Private Sub Like_Species_Enter()

    Like_Species.Requery
    
End Sub

Private Sub Like_Stock_Type_Change()
    
    Data_Processed = False
    Like_Lot_ID = Null
 
End Sub

Private Sub Like_Stock_Type_Enter()
    
    Like_Stock_Type.Requery
    
End Sub

Private Sub Order_Checklist_Click()
On Error GoTo Err_Order_Checklist_Click

    Dim stDocName As String
    
    If Not [Data_Processed] Then
    
    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.OpenQuery "Order_Form mt Query"
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

    DoCmd.SetWarnings True
    
    Data_Processed = True
    
    End If
      
    stDocName = "Order_Form_Checklist"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Order_Checklist_Click:
    Exit Sub

Err_Order_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Order_Checklist_Click
    
End Sub

Private Sub Order_Checklist_by_Lift_Date_Click()
On Error GoTo Err_Order_Checklist_Click

    Dim stDocName As String
    Like_Lot_ID = "*"
    Data_Processed = False
    
    If Not [Data_Processed_ld] Then
    
    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.OpenQuery "Order_Form_By_LD mt Query"
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

    DoCmd.SetWarnings True
    
    Data_Processed_ld = True
    
    End If
      
    stDocName = "Order_Form_Checklist"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Order_Checklist_Click:
    Exit Sub

Err_Order_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Order_Checklist_Click
End Sub

Private Sub Order_Form_By_Lift_Date_Click()
On Error GoTo Err_Order_Form_By_Lift_Date_Click

    Dim stDocName As String
    Like_Lot_ID = "*"
    Data_Processed = False
    
    If Not [Data_Processed_ld] Then
    
    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.OpenQuery "Order_Form_By_LD mt Query"
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
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"

    DoCmd.SetWarnings True
    Data_Processed_ld = True
    End If
    
    Select Case [Form_Style]
        
    Case Is = "040207"
        stDocName = "ORDER_FORM mt_040207"
    Case Is = "050357"
        stDocName = "ORDER_FORM mt_050357"
    Case Is = "061019L"
        stDocName = "ORDER_FORM mt_Long"
    Case Else
        stDocName = "order_form mt"
    End Select
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Order_Form_By_Lift_Date_Click:
    Exit Sub

Err_Order_Form_By_Lift_Date_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Order_Form_By_Lift_Date_Click
    
End Sub

Private Sub Order_Form_Click()
On Error GoTo Err_Order_Form_Click

    Dim stDocName As String

    If Not [Data_Processed] Then
    
    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    DoCmd.OpenQuery "Order_Form mt Query"
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
    'DoCmd.OpenQuery "Field_Location_Inv_Subform_MT"
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    
    DoCmd.SetWarnings True
    Data_Processed = True
    End If
    
    Select Case [Form_Style]
        
    Case Is = "040207"
        stDocName = "ORDER_FORM mt_040207"
    Case Is = "050357"
        stDocName = "ORDER_FORM mt_050357"
    Case Is = "061019L"
        stDocName = "ORDER_FORM mt_Long"
    Case Else
        If Not IsNull(Like_Lot_ID) Then
            stDocName = "order_form_from_Order_Print mt"
        Else
            stDocName = "order_form mt"
        End If
    End Select
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Order_Form_Click:
    Exit Sub

Err_Order_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Order_Form_Click
    
End Sub

Private Sub Order_FY_AfterUpdate()

    Like_Lot_ID.Requery
    Like_Client.Requery
    Forms![REPORTS Form]![FY_For_Reports] = Order_FY
    [Forms]![Switchboard]![FY_For_Reports] = Order_FY
    
End Sub

Private Sub Order_FY_Change()
    
    Data_Processed = False
    Forms![REPORTS Form]![FY_For_Reports] = Order_FY
    [Forms]![Switchboard]![FY_For_Reports] = Order_FY
    
End Sub

Private Sub Order_Mod_Date_Change()
        
    Data_Processed = False
    Like_Lot_ID = Null
 
    
End Sub

Private Sub Order_Mod_Date_DblClick(Cancel As Integer)

    Order_Mod_Date = Date
    
End Sub

Private Sub Order_Pack_form_Propagule_Click()
On Error GoTo Err_Order_Pack_form_Propagule_Click

    Dim stDocName As String

    If PRODUCT_GROUP = "propagule" Then
        If Not [Data_Processed] Then
        ' turns warning (about to update/delete...) off
        DoCmd.SetWarnings False

        DoCmd.OpenQuery "Order_Form_Propagule_mt Query"
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
        'DoCmd.OpenQuery "Field_Location_Inv_Subform_MT"
        DoCmd.OpenQuery "Field_Location_Propagule_Inv_Subform_MT"

        'Update Order_Services_String Table
        ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
        DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
        ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
        DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
        ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
        DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
        DoCmd.SetWarnings True
        Data_Processed = True
        stDocName = "ORDER_FORM_PROPAGULE mt"
    End If
    Else
        If Not [Data_Processed] Then
    
        ' turns warning (about to update/delete...) off
        DoCmd.SetWarnings False

        'Update Order_Services_String Table
        ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
        DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
        ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
        DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
        ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
        DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
        DoCmd.OpenQuery "Order_Form mt Query"
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
    
        DoCmd.SetWarnings True
        Data_Processed = True
        End If
    
        Select Case [Form_Style]
        
        Case Is = "050357"
            stDocName = "ORDER_FORM mt_050357"
        Case Is = "061019L"
            stDocName = "ORDER_FORM mt_Long"
        Case Else
            If Not IsNull(Like_Lot_ID) Then
                stDocName = "order_form_from_Order_Print mt"
            Else
                stDocName = "order_form mt"
            End If
        End Select
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Order_Pack_form_Propagule_Click:
    Exit Sub

Err_Order_Pack_form_Propagule_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Order_Pack_form_Propagule_Click
    
End Sub

Private Sub Processing_Quality_Inspection_Record_by_lift_date_Click()
On Error GoTo Err_Processing_Quality_Inspection_Record_by_lift_date_Click

    Dim stDocName As String
    Like_Lot_ID = "*"
    Data_Processed = False
    
    If Not [Data_Processed_ld] Then
    
    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.OpenQuery "Order_Form_By_LD mt Query"
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

    DoCmd.SetWarnings True
    
    Data_Processed_ld = True
    
    End If
      
    stDocName = "Processing_Quality_Recording_Form_050357"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Processing_Quality_Inspection_Record_by_lift_date_Click:
    Exit Sub

Err_Processing_Quality_Inspection_Record_by_lift_date_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Processing_Quality_Inspection_Record_by_lift_date_Click
    
End Sub

Private Sub Processing_Quality_Inspection_Record_Click()
On Error GoTo Err_Processing_Quality_Inspection_Record_Click

    Dim stDocName As String
    
    If Not [Data_Processed] Then
    
    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.OpenQuery "Order_Form mt Query"
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

    DoCmd.SetWarnings True
    
    Data_Processed = True
    
    End If
      
    stDocName = "Processing_Quality_Recording_Form_050357"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Processing_Quality_Inspection_Record_Click:
    Exit Sub

Err_Processing_Quality_Inspection_Record_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Processing_Quality_Inspection_Record_Click
    
End Sub