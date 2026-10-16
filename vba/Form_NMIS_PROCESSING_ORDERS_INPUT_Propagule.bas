Option Compare Database

Private Sub AGREEMENT_LOT_CN_Enter()

    AGREEMENT_LOT_CN.Requery
    
End Sub

Private Sub Agreement_Lot_CN_Exit(Cancel As Integer)

    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    [Agreement_Lot_CN_for_Lot_Info] = AGREEMENT_LOT_CN
    End If

End Sub

Private Sub CLIENT_ASSOCIATE_Exit(Cancel As Integer)

    If Not IsNull(CLIENT_ASSOCIATE) Then
        Default_Client_Associate = CLIENT_ASSOCIATE
        DESTINATION_ASSOCIATE = CLIENT_ASSOCIATE
        CONTACT_CN.Requery
        SECONDARY_CONTACT_CN.Requery
    End If
    
End Sub

Private Sub cmdExit_Click()

    Dim stDocName As String

    stDocName = "Close_Form"
    DoCmd.RunMacro stDocName

End Sub




Private Sub PrvwOrdrFrm_Click()
On Error GoTo Err_PrvwOrdrFrm_Click

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
 
    stDocName = "ORDER_FORM"
    DoCmd.OpenReport stDocName, acPreview

Exit_PrvwOrdrFrm_Click:
    Exit Sub

Err_PrvwOrdrFrm_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_PrvwOrdrFrm_Click
    
End Sub

Private Sub PrvwStrgRcrd_Click()
On Error GoTo Err_PrvwStrgRcrd_Click

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
    
    stDocName = "PRODUCT_STORAGE_RECORD"
    DoCmd.OpenReport stDocName, acPreview

Exit_PrvwStrgRcrd_Click:
    Exit Sub

Err_PrvwStrgRcrd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_PrvwStrgRcrd_Click
    
End Sub
Private Sub CmdAddRec_Click()
On Error GoTo Err_CmdAddRec_Click

    [Agreement_Lot_CN_for_Lot_Info] = Null
    DoCmd.GoToRecord , , acNewRec

Exit_CmdAddRec_Click:
    Exit Sub

Err_CmdAddRec_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdAddRec_Click
    
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)
On Error GoTo Err_CONTACT_CN_DblClick

    DoCmd.OpenForm "NMIS_CONTACTS"

Exit_CONTACT_CN_DblClick:
    Exit Sub

Err_CONTACT_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_CONTACT_CN_DblClick
    
End Sub

Private Sub Contact_CN_Enter()

    CONTACT_CN.Requery
    
End Sub

Private Sub Form_AfterInsert()
'[NMIS_PROCESSING_ORDERs_Propagule_INPUT_SVCS subform].Form![ACTIVITY_CODE]
    
    If Not IsNull(AGREEMENT_LOT_CN) Then
    'If IsNull([NMIS_PROCESSING_ORDERS_INPUT_MC subform].Form![CLIENT_ASSOCIATE]) Then
        [NMIS_PROCESSING_ORDERS_Propagule_INPUT_MC subform].Form![CLIENT_ASSOCIATE] = CLIENT_ASSOCIATE
        [NMIS_PROCESSING_ORDERS_Propagule_INPUT_MC subform].Form![MGMT_CODE] = CLIENT_ASSOCIATE
        [NMIS_PROCESSING_ORDERS_Propagule_INPUT_MC subform].Requery
        
    'End If
    
    'If IsNull([NMIS_PROCESSING_ORDERs_INPUT_SVCS subform].Form![Activity_Code]) Then
        [NMIS_PROCESSING_ORDERs_Propagule_INPUT_SVCS subform].Form![Activity_Code] = "FAHVP"
        [NMIS_PROCESSING_ORDERs_Propagule_INPUT_SVCS subform].Requery
    'End If
        
    'If IsNull([NMIS_PROCESSING_ORDERs_INPUT_GRADES subform].Form![PRODUCT_GRADE]) Then
        [NMIS_PROCESSING_ORDERs_Propagule_INPUT_GRADES subform].Form![PRODUCT_GRADE] = "STANDARD"
        [NMIS_PROCESSING_ORDERs_Propagule_INPUT_GRADES subform].Form![GRADE_PCT] = 100
        [NMIS_PROCESSING_ORDERs_Propagule_INPUT_GRADES subform].Requery
    'End If
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToRecord , , acNewRec
    
End Sub

Private Sub ORDER_AMT_Enter()

    If IsNull(ORDER_AMT) Then
        ORDER_AMT = Nz([*propagule_Grow_Containers_for_Orders_table subform].Form![SumOfSum_of_Activity_Units], 0)
    End If
    
End Sub

Private Sub SECONDARY_CONTACT_CN_DblClick(Cancel As Integer)
On Error GoTo Err_SECONDARY_CONTACT_CN_DblClick

    DoCmd.OpenForm "NMIS_CONTACTS"

Exit_SECONDARY_CONTACT_CN_DblClick:
    Exit Sub

Err_SECONDARY_CONTACT_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_SECONDARY_CONTACT_CN_DblClick
    
End Sub

Private Sub SECONDARY_CONTACT_CN_Enter()

    SECONDARY_CONTACT_CN.Requery
    
End Sub