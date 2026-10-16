Option Compare Database

Private Sub Agreement_Lot_CN_AfterUpdate()

    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    '[Agreement_Lot_CN_for_Lot_Info] = AGREEMENT_LOT_CN
    End If

End Sub

Private Sub AGREEMENT_LOT_CN_DblClick(Cancel As Integer)

    AGREEMENT_LOT_CN.Locked = False
    
End Sub

Private Sub AGREEMENT_LOT_CN_Enter()

    If IsNull(AGREEMENT_LOT_CN) Then
        AGREEMENT_LOT_CN.Locked = False
    Else
        AGREEMENT_LOT_CN.Locked = True
    End If
    
End Sub

Private Sub Agreement_Lot_CN_Exit(Cancel As Integer)

    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    '[Agreement_Lot_CN_for_Lot_Info] = AGREEMENT_LOT_CN
    End If

End Sub

Private Sub CLIENT_ASSOCIATE_AfterUpdate()

    Dim Response As String
    
    If Not IsNull(ASSOCIATE_backup) Then
        Response = MsgBox("Are you Sure you Want to Change the Client Code?", vbYesNo)

        If Response = vbYes Then
            'Make It So
            Default_Contact_CN = Null
            Default_Contact2_CN = Null
        Else
            [CLIENT_ASSOCIATE] = ASSOCIATE_backup
        End If
    End If
    
End Sub

Private Sub CLIENT_ASSOCIATE_DblClick(Cancel As Integer)
    
    DoCmd.OpenForm "NMIS_ASSOCIATES", , , "[ASSOCIATE] = '" & Forms![NMIS_PROCESSING_ORDERS_INPUT]![CLIENT_ASSOCIATE] & "'"
        DoCmd.GoToControl "ASSOCIATE"
        Forms![NMIS_Associates]![ASSOCIATE_Lookup].Visible = False
        Forms![NMIS_Associates]![Associate_lookup_Label].Visible = False
        Forms![NMIS_Associates]![ASSOCIATE_Lookup_by_Name].Visible = False
            
End Sub


Private Sub CLIENT_ASSOCIATE_Enter()
    
    ASSOCIATE_backup = CLIENT_ASSOCIATE
    
End Sub

Private Sub CLIENT_ASSOCIATE_Exit(Cancel As Integer)

    Default_Client_Associate = CLIENT_ASSOCIATE
    CONTACT_CN.Requery
    SECONDARY_CONTACT_CN.Requery
    
    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull([Activity_Code]) Then
            Activity_Code = [Default_Order_Activity_Code]
        End If
        If IsNull(SPEC_MIN) Then
            SPEC_MIN = [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![SPEC_MIN]
        End If
        If IsNull(SPEC_MAX) Then
            SPEC_MAX = [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![SPEC_MAX]
        End If
        If IsNull(CALIPER_MIN) Then
            CALIPER_MIN = [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![CALIPER_MIN]
        End If
        'If IsNull(ORDER_AMT) And Not IsNull(NET_INV) Then
            'ORDER_AMT = Nz([AMT_SURPLUS], 0)
        'End If
    End If
    
End Sub

Private Sub Client_Associate_Name_AfterUpdate()
    
    Dim Response As String
   
    If Not IsNull(ASSOCIATE_backup) Then
        Response = MsgBox("Are you Sure you Want to Change the Client Name?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [Client_Associate_Name] = ASSOCIATE_backup
        End If
    End If
End Sub

Private Sub Client_Associate_Name_DblClick(Cancel As Integer)
    
        DoCmd.OpenForm "NMIS_ASSOCIATES", , , "[ASSOCIATE] = '" & Forms![NMIS_PROCESSING_ORDERS_INPUT]![Client_Associate_Name] & "'"
        DoCmd.GoToControl "ASSOCIATE"
        Forms![NMIS_Associates]![ASSOCIATE_Lookup].Visible = False
        Forms![NMIS_Associates]![Associate_lookup_Label].Visible = False
        Forms![NMIS_Associates]![ASSOCIATE_Lookup_by_Name].Visible = False
    
End Sub

Private Sub Client_Associate_Name_Enter()

    ASSOCIATE_backup = Client_Associate_Name
    
End Sub

Private Sub CLIENT_NOTE_DblClick(Cancel As Integer)

    CLIENT_NOTE = "Seedlings MUST have healthy terminal bud, foliage, and at least the minimum root length!"
    
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
    
    Dim Response As String
    
    If Not IsNull(Contact_CN_Backup) Then
        Response = MsgBox("Are you Sure you Want to Change the Contact?", vbYesNo)

        If Response = vbYes Then
            'Let It Be So
        Else
            [CONTACT_CN] = Contact_CN_Backup
        End If
        Default_Contact_CN = CONTACT_CN
    End If
        
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)
    
    'DoCmd.OpenForm "NMIS_CONTACTS", , , , acFormAdd
       Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    
    If IsNull(CONTACT_CN) Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , "([CN]=" & "'" & [CONTACT_CN] & "')", acFormEdit
          DoCmd.GoToControl "Last_Name"
          Forms![NMIS_CONTACTS]![CONTACT_Lookup].Visible = False
          Forms![NMIS_CONTACTS]!Find_Label.Visible = False
          Forms![NMIS_CONTACTS]!Home_Associate_Filter.Visible = False
          Forms![NMIS_CONTACTS]!Home_Associate_Filter_Label.Visible = False
          Forms![NMIS_CONTACTS]!Hide_99s.Visible = False
          Forms![NMIS_CONTACTS]!Hide_Historical.Visible = False
          Forms![NMIS_CONTACTS]!Unfilter.Visible = True
    End If
    
End Sub

Private Sub Contact_CN_Enter()
    
    If IsNull(CONTACT_CN) And Not IsNull(Default_Contact_CN) Then
        CONTACT_CN = Default_Contact_CN
    End If
    Contact_CN_Backup = CONTACT_CN
    CONTACT_CN.Requery
    
End Sub

Private Sub CONTACT_CN_Exit(Cancel As Integer)

    Default_Contact_CN = CONTACT_CN
    
End Sub

Private Sub CONTRACT_ITEM_Enter()
       
    If Not IsNull(Total_Order) Then
    If [Activity_Code] Like "PACK" Or [Activity_Code] Like "PXPLT*" Or [Activity_Code] Like "CPROC" Then
    Select Case Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code]
    
    Case Is = "061019"
        If IsNull(CONTRACT_ITEM) Then
        If [Activity_Code] Like "PXPLT*" Then
            cid = "2.4"
        Else
        If [Activity_Code] = "PACK" Then
            If Total_Order < 1 And Not OVERRUN_ALL_Check Then
                cid = "2.5"
            Else
            If [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![PRODUCT_DESC] Like "*1+0*" Then
                cid = "2.1"
            Else
                If [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![PRODUCT_DESC] Like "*2+0*" Or _
                [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![PRODUCT_DESC] Like "*3+0*" Then
                    cid = "2.2"
                Else
                    cid = "2.3"
                End If
            End If
            End If
        End If
        End If
        
        If [Activity_Code] = "CPROC" Then
                cid = "2.6"
        End If
        'If cid <> "2.5" Then
            'If [Total_Order] >= 7 Then
                'cid = cid & "a"
            'Else
                'cid = cid & "b"
            'End If
        'End If
        If Not IsNull(cid) Then
            CONTRACT_ITEM = cid
        End If
        End If
    Case Is = "050357"
        If IsNull(CONTRACT_ITEM) Then
            If [Activity_Code] = "cproc" Then
                cid = "2"
            Else
            If [Activity_Code] Like "PXPLT*" Then
                cid = "na"
            Else
            If [Activity_Code] = "PACK" Then
                If [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![PRODUCT_DESC] Like "*1+0*" Then
                    cid = "1E"
                Else
                    If [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![PRODUCT_DESC] Like "*2+0*" Then
                        cid = "1F"
                    Else
                        If [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![PRODUCT_DESC] Like "*3+0*" Then
                            cid = "1G"
                        Else
                            cid = "1H"
                        End If
                    End If
                End If
            End If
            End If
            End If
        End If
        If Not IsNull(cid) Then
            CONTRACT_ITEM = cid
        End If
    Case Is = "040207"
        If IsNull(CONTRACT_ITEM) Then
            If [Activity_Code] = "CPROC" Then
                cid = "3"
            Else
            If [Activity_Code] = "PACK" Then
                    cid = "2"
            End If
            End If
        End If
        If Not IsNull(cid) Then
            CONTRACT_ITEM = cid
        End If
    End Select
    End If
    End If
    
End Sub

Private Sub Contract_Item_Exit(Cancel As Integer)

    'Last_Contract_Item = CONTRACT_ITEM
    
End Sub

Private Sub Default_Job_Code_Exit(Cancel As Integer)
    
    DoCmd.GoToControl "AGREEMENT_LOT_CN"
    
End Sub

Private Sub DESTINATION_ASSOCIATE_Enter()

    If IsNull(DESTINATION_ASSOCIATE) Then
        DESTINATION_ASSOCIATE = [Default_Client_Associate]
    End If
    
End Sub

Private Sub Form_AfterInsert()
    
    If Not IsNull(AGREEMENT_LOT_CN) Then
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
    End If
    
End Sub

Private Sub Form_AfterUpdate()

End Sub

Private Sub Form_Current()

    '[Agreement_Lot_CN_for_Lot_Info] = AGREEMENT_LOT_CN
    FISCAL_YEAR.Requery
    AGREEMENT_LOT_CN.Requery
    CONTACT_CN.Requery
    SECONDARY_CONTACT_CN.Requery
    [NMIS_PROCESSING_ORDERS_ID_INFO subform].Requery
    
End Sub

Private Sub Form_Open(Cancel As Integer)
On Error GoTo Err_Form_Open

    'DoCmd.OpenQuery "NMIS_ORDER_ID_INFO_Orders_New mt Query"
    'DoCmd.OpenQuery "NMIS_SURPLUS_INV_mt"
    
    'DoCmd.GoToRecord , , acNewRec
    
Exit_Form_Open:
    Exit Sub

Err_Form_Open:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Open
    
End Sub

Private Sub NMIS_PROCESSING_ORDERs_INPUT_GRADES_subform_Enter()

    '[NMIS_PROCESSING_ORDERs_INPUT_GRADES subform].Requery
    
End Sub

Private Sub NMIS_PROCESSING_ORDERS_INPUT_MC_subform_Enter()

    '[NMIS_PROCESSING_ORDERS_INPUT_MC subform].Requery
    
End Sub

Private Sub NMIS_PROCESSING_ORDERs_INPUT_SVCS_subform_Enter()

    '[NMIS_PROCESSING_ORDERs_INPUT_SVCS subform].Requery
    
End Sub

Private Sub NURSERY_NOTE_DblClick(Cancel As Integer)

    NURSERY_NOTE = "Destroy any remaining seedlings after meeting client's request.  BE SURE TO ADJUST GROSS!"
    
End Sub

Private Sub Open_Sow_Req_Info_Click()
On Error GoTo Err_Open_Sow_Req_Info_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ORDERS_NEW_AGREEMENT_INFO"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Sow_Req_Info_Click:
    Exit Sub

Err_Open_Sow_Req_Info_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Sow_Req_Info_Click
    
End Sub

Private Sub ORDER_AMT_Change()

    Dont_Change_Order_On_Exit = False

End Sub

Private Sub ORDER_AMT_DblClick(Cancel As Integer)

    If AMT_SURPLUS > 0 Then
        ORDER_AMT = AMT_SURPLUS
    End If
    ORDER_AMT.Locked = False
    
End Sub

Private Sub ORDER_AMT_Enter()

    If Not IsNull(ORDER_AMT) Then
        ORDER_AMT.Locked = True
        Dont_Change_Order_On_Exit = True
    Else
        ORDER_AMT.Locked = False
        Dont_Change_Order_On_Exit = False
    End If
    
    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull([Activity_Code]) Then
            [Activity_Code] = [Default_Order_Activity_Code]
        End If
        'If IsNull(ORDER_AMT) Then
            'If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "061019" And _
                '[NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![PRODUCT_GROUP] <> "Propagule" Then
                'ORDER_AMT = [NMIS_PROCESSING_ORDERS_ID_INFO_New_Orders subform].Form![TOTAL_REQUEST]
            'Else
                'ORDER_AMT = [NMIS_PROCESSING_ORDERS_ID_INFO_New_Orders subform].Form![NET_INV]
            'End If
        'End If
    End If
    
End Sub

Private Sub ORDER_AMT_Exit(Cancel As Integer)

    If Dont_Change_Order_On_Exit = False Then
    If Not IsNull(ORDER_AMT) Then
        If (IsNull([NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![NET_INV])) Then
            OVERRUN_AMT = ORDER_AMT
            ORDER_AMT = 0
        End If
        If ORDER_AMT > AMT_SURPLUS And IsNull(OVERRUN_AMT) Then
            OVERRUN_AMT = Round(ORDER_AMT - AMT_SURPLUS, 3)
            ORDER_AMT = Round(AMT_SURPLUS, 3)
        End If
    End If
    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(SPEC_MIN) Then
            SPEC_MIN = [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![SPEC_MIN]
        End If
        If IsNull(SPEC_MAX) Then
            SPEC_MAX = [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![SPEC_MAX]
        End If
        If IsNull(CALIPER_MIN) Then
            CALIPER_MIN = [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![CALIPER_MIN]
        End If
    End If
        
    End If
    
End Sub

Private Sub OVERRUN_ALL_Check_AfterUpdate()

    If OVERRUN_ALL = True Then
        ORDER_AMT = AMT_SURPLUS
        OVERRUN_AMT = Null
    End If
    
End Sub



Private Sub PrvwOrdrFrm_Click()
On Error GoTo Err_PrvwOrdrFrm_Click


    If Not IsNull(CN) Then
    
    Dim stDocName As String
    
    DoCmd.RunCommand acCmdRefresh

    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    DoCmd.OpenQuery "ORDER_FORM_MT_FROM_ORDER_INPUT Query"
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
    
    Select Case Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code]
        
    Case Is = "040207"
        stDocName = "ORDER_FORM mt_040207_input"
    Case Is = "050357"
        stDocName = "ORDER_FORM mt_050357_input"
    Case Else
        stDocName = "order_form_from_order_input mt"
    End Select
    
    DoCmd.OpenReport stDocName, acPreview
    
    Else
        MsgBox "Must Enter and Order First"
    End If

Exit_PrvwOrdrFrm_Click:
    Exit Sub

Err_PrvwOrdrFrm_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_PrvwOrdrFrm_Click
    
End Sub

Private Sub PrvwStrgRcrd_Click()
On Error GoTo Err_PrvwStrgRcrd_Click


    If Not IsNull(CN) Then
    
    Dim stDocName As String
    
    DoCmd.RunCommand acCmdRefresh

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
    
    Else
        MsgBox "Must Enter Order First"
    End If

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

Private Sub SECONDARY_CONTACT_CN_AfterUpdate()
    
    Dim Response As String
    
    If Not IsNull(Contact_CN_Backup) And Not IsNull(SECONDARY_CONTACT_CN) Then
        Response = MsgBox("Are you Sure you Want to Change the Secondary Contact?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [SECONDARY_CONTACT_CN] = Contact_CN_Backup
        End If
        Default_Contact2_CN = SECONDARY_CONTACT_CN
    End If
    
End Sub

Private Sub SECONDARY_CONTACT_CN_DblClick(Cancel As Integer)
    
    'DoCmd.OpenForm "NMIS_CONTACTS", , , , acFormAdd
       Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    
    If IsNull(SECONDARY_CONTACT_CN) Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , "([CN]=" & "'" & [SECONDARY_CONTACT_CN] & "')", acFormEdit
          DoCmd.GoToControl "Last_Name"
          Forms![NMIS_CONTACTS]![CONTACT_Lookup].Visible = False
          Forms![NMIS_CONTACTS]!Find_Label.Visible = False
          Forms![NMIS_CONTACTS]!Home_Associate_Filter.Visible = False
          Forms![NMIS_CONTACTS]!Home_Associate_Filter_Label.Visible = False
          Forms![NMIS_CONTACTS]!Hide_99s.Visible = False
          Forms![NMIS_CONTACTS]!Hide_Historical.Visible = False
          Forms![NMIS_CONTACTS]!Unfilter.Visible = True
    End If
    
End Sub

Private Sub SECONDARY_CONTACT_CN_Enter()
    If IsNull(SECONDARY_CONTACT_CN) And Not IsNull(Default_Contact2_CN) Then
        SECONDARY_CONTACT_CN = Default_Contact2_CN
    End If
    Default_Contact2_CN = SECONDARY_CONTACT_CN
    SECONDARY_CONTACT_CN.Requery
    
End Sub

Private Sub SECONDARY_CONTACT_CN_Exit(Cancel As Integer)
    
    Default_Contact2_CN = SECONDARY_CONTACT_CN
    
End Sub