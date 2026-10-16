Option Compare Database

Private Sub Agreement_Lot_CN_Exit(Cancel As Integer)

    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    [Agreement_Lot_CN_for_Lot_Info] = AGREEMENT_LOT_CN
    End If

End Sub

Private Sub CLIENT_ASSOCIATE_Exit(Cancel As Integer)

    Default_Client_Associate = CLIENT_ASSOCIATE
    CONTACT_CN.Requery
    SECONDARY_CONTACT_CN.Requery
    
    [Activity_Code] = [Default_Order_Activity_Code]
    
    'If IsNull([NMIS_PROCESSING_ORDERS_INPUT_MC subform].Form![CLIENT_ASSOCIATE]) Then
        '[NMIS_PROCESSING_ORDERS_INPUT_MC subform].Form![CLIENT_ASSOCIATE] = CLIENT_ASSOCIATE
        '[NMIS_PROCESSING_ORDERS_INPUT_MC subform].Form![MGMT_CODE] = CLIENT_ASSOCIATE
    'End If
    
    'If IsNull([NMIS_PROCESSING_ORDERs_INPUT_SVCS subform].Form![Activity_Code]) Then
        '[NMIS_PROCESSING_ORDERs_INPUT_SVCS subform].Form![Activity_Code] = [Default_Special_Service_Activity_Code]
    'End If
    
    'If IsNull([NMIS_PROCESSING_ORDERs_INPUT_GRADES subform].Form![PRODUCT_GRADE]) Then
        '[NMIS_PROCESSING_ORDERs_INPUT_GRADES subform].Form![PRODUCT_GRADE] = "STANDARD"
    'End If
    
End Sub

Private Sub cmdExit_Click()
On Error GoTo Err_cmdExit_Click

    DoCmd.Close

Exit_cmdExit_Click:
    Exit Sub

Err_cmdExit_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_cmdExit_Click
    
End Sub

Private Sub CONTACT_CN_AfterUpdate()
    
    Default_Contact_CN = CONTACT_CN
    
End Sub

Private Sub Form_AfterInsert()
    
    'If IsNull([NMIS_PROCESSING_ORDERS_INPUT_MC subform].Form![CLIENT_ASSOCIATE]) Then
        [NMIS_PROCESSING_ORDERS_INPUT_MC subform].Form![CLIENT_ASSOCIATE] = CLIENT_ASSOCIATE
        If Not IsNull([Default_Job_Code]) Then
            [NMIS_PROCESSING_ORDERS_INPUT_MC subform].Form![MGMT_CODE] = [Default_Job_Code]
        Else
            [NMIS_PROCESSING_ORDERS_INPUT_MC subform].Form![MGMT_CODE] = CLIENT_ASSOCIATE
        End If
        [NMIS_PROCESSING_ORDERS_INPUT_MC subform].Requery
        
    'End If
    
    'If IsNull([NMIS_PROCESSING_ORDERs_INPUT_SVCS subform].Form![Activity_Code]) Then
        [NMIS_PROCESSING_ORDERs_INPUT_SVCS subform].Form![Activity_Code] = [Default_Special_Service_Activity_Code]
        [NMIS_PROCESSING_ORDERs_INPUT_SVCS subform].Requery
    'End If
        
    'If IsNull([NMIS_PROCESSING_ORDERs_INPUT_GRADES subform].Form![PRODUCT_GRADE]) Then
        [NMIS_PROCESSING_ORDERs_INPUT_GRADES subform].Form![PRODUCT_GRADE] = "STANDARD"
        [NMIS_PROCESSING_ORDERs_INPUT_GRADES subform].Form![GRADE_PCT] = 100
        [NMIS_PROCESSING_ORDERs_INPUT_GRADES subform].Requery
    'End If
    
End Sub

Private Sub NMIS_PROCESSING_ORDERs_INPUT_GRADES_subform_Enter()

    [NMIS_PROCESSING_ORDERs_INPUT_GRADES subform].Requery
    
End Sub

Private Sub NMIS_PROCESSING_ORDERS_INPUT_MC_subform_Enter()

    [NMIS_PROCESSING_ORDERS_INPUT_MC subform].Requery
    
End Sub

Private Sub NMIS_PROCESSING_ORDERs_INPUT_SVCS_subform_Enter()

    [NMIS_PROCESSING_ORDERs_INPUT_SVCS subform].Requery
    
End Sub

Private Sub ORDER_AMT_DblClick(Cancel As Integer)

    If Not IsNull(AMT_SURPLUS) Then
        ORDER_AMT = AMT_SURPLUS
    End If
    
End Sub

Private Sub ORDER_AMT_Exit(Cancel As Integer)

    If Not IsNull(ORDER_AMT) Then
        If ORDER_AMT > AMT_SURPLUS And IsNull(OVERRUN_AMT) Then
            OVERRUN_AMT = Round(ORDER_AMT - AMT_SURPLUS, 3)
            ORDER_AMT = Round(AMT_SURPLUS, 3)
        End If
    End If
        
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
 
    stDocName = "ORDER_FORM_FROM_ORDERS"
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
    
    stDocName = "PRODUCT_STORAGE_RECORD_FROM_ORDER_INPUT_FORM"
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
    DoCmd.GoToControl "AGREEMENT_LOT_CN"

Exit_CmdAddRec_Click:
    Exit Sub

Err_CmdAddRec_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdAddRec_Click
    
End Sub