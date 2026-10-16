Option Compare Database

Private Sub By_TSO_Click()
    
    Find_Ticket.Requery
    
End Sub

Private Sub Client_Contact_CN_DblClick(Cancel As Integer)
    
    'DoCmd.OpenForm "NMIS_CONTACTS", , , , acFormAdd
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    
    DoCmd.GoToControl "NURSERY_CONTACT_CN"
    DoCmd.GoToControl "Client_CONTACT_CN"
    If IsNull(Client_Contact_CN) Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , "([CN]=" & "'" & [Client_Contact_CN] & "')", acFormEdit
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

Private Sub Create_Pull_Ticket_Click()
On Error GoTo Err_Create_Pull_Ticket_Click

    Dim stDocName As String

    stDocName = "PRODUCT_PULL_ticket"
    
    [NMIS_SHIPPING_ID_ACTIVITIES subform].Requery
    [NMIS_SHIPPING_TRANSACTIONS_subform].Requery
    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    
    If Not IsNull(TKT_NO) Then
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
    
        DoCmd.OpenReport stDocName, acPreview
    Else
        MsgBox "Select a Ticket to Print", vbInformation
    End If

Exit_Create_Pull_Ticket_Click:
    Exit Sub

Err_Create_Pull_Ticket_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Pull_Ticket_Click
    
End Sub

Private Sub Create_Shipping_Ticket_Click()
On Error GoTo Err_Create_Shipping_Ticket_Click

    Dim stDocName As String

    stDocName = "PRODUCT_ticket"
    
    DoCmd.RunMacro "Refresh"
    [NMIS_SHIPPING_ID_ACTIVITIES subform].Requery
    [NMIS_SHIPPING_TRANSACTIONS_subform].Requery
    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    
    If Not IsNull(TKT_NO) Then
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
    
        DoCmd.OpenReport stDocName, acPreview
    Else
        MsgBox "Select a Ticket to Print", vbInformation
    End If

Exit_Create_Shipping_Ticket_Click:
    Exit Sub

Err_Create_Shipping_Ticket_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Shipping_Ticket_Click
    
End Sub

Private Sub DELIVERED_TO_ASSOCIATE_DblClick(Cancel As Integer)
On Error GoTo Err_DELIVERED_TO_ASSOCIATE_DblClick

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_Ship_Miles_st"
    DoCmd.OpenForm stDocName, , , , acFormEdit
    
Exit_DELIVERED_TO_ASSOCIATE_DblClick:
    Exit Sub

Err_DELIVERED_TO_ASSOCIATE_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_DELIVERED_TO_ASSOCIATE_DblClick
    
End Sub

Private Sub DESIRED_DATE_Enter()

    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    
End Sub

Private Sub Find_Ticket_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[TKT_NO] = '" & Me![Find_Ticket] & "'"
    Me.Bookmark = rs.Bookmark
    
    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    
    Client_Contact_Name = Null
    Client_Contact_Phone = Null
    Bill_To = Null
    [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![Like_Client] = "*"
    [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ORDER_CN].Requery
                     
End Sub

Private Sub Find_Ticket_Enter()

    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    Find_Ticket.Requery
    
End Sub

Private Sub FISCAL_YEAR_DblClick(Cancel As Integer)

    FISCAL_YEAR.Locked = False
    
End Sub

Private Sub FISCAL_YEAR_Enter()

    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    If IsNull(FISCAL_YEAR) Then
        FISCAL_YEAR.Locked = False
    Else
        FISCAL_YEAR.Locked = True
    End If
    
End Sub

Private Sub Form_Current()

    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    Find_Ticket = TKT_NO  'update the find record box match record selected
    
    Client_Contact_Name = Null
    Client_Contact_Phone = Null
    Bill_To = Null
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ORDER_CN].Requery
    DoCmd.GoToRecord , , acNewRec
    
End Sub

Private Sub FY_Current_Only_Click()

    [NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Requery
    
End Sub



Private Sub Hide_Zero_Bal_Trans_Click()

    [NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Requery
    [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ORDER_CN].Requery
    
End Sub

Private Sub Like_Client_AfterUpdate()

    [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ORDER_CN].Requery
    
End Sub

Private Sub NMIS_SHIPPING_ID_ACTIVITIES_subform_Enter()

    If IsNull([TKT_NO]) Then
        MsgBox "Must enter Ticket ID first!"
        [TKT_NO].SetFocus
    Else
        [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    End If
  
End Sub

Private Sub NMIS_SHIPPING_TRANSACTIONS_subform_Enter()

    If IsNull([NMIS_SHIPPING_ID_ACTIVITIES subform].Form![CN]) Then
        MsgBox "Must enter Order ID first!"
        [NMIS_SHIPPING_ID_ACTIVITIES subform].SetFocus
    Else
        [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = True
        [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Requery
    End If
    
End Sub

Private Sub NOTE_DblClick(Cancel As Integer)
    
    If Not IsNull([DELIVERED_TO_ASSOCIATE]) Then
        DoCmd.Hourglass hourglasson
        DoCmd.RunCommand acCmdRefresh
        DoCmd.OpenForm "NMIS_TICKET_NOTE_FORM"
    Else
        MsgBox "Must enter 'Del. To' Associate first"
    End If
End Sub

Private Sub Note_Enter()

    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    
End Sub

Private Sub NURSERY_CONTACT_CN_Enter()

    NURSERY_CONTACT_CN.Requery
    
End Sub

Private Sub Refresh_Close_Click()

    Dim stDocName As String

    stDocName = "Close_Form"
    
    DoCmd.RunMacro stDocName

End Sub

Private Sub Ship_Ticket_Product_spd2_Click()
On Error GoTo Err_Ship_Ticket_Product_spd2_Click

    If Not IsNull(TKT_NO) Then
        Dim stDocName As String

        stDocName = "Ship_Ticket_Product_spd2"
        DoCmd.OpenQuery stDocName ', acViewPreview
        'MsgBox "Use Export to Excel to save Spreadsheet in desired folder"
    Else
        MsgBox "Select a Ticket to Print", vbInformation
    End If
Exit_Ship_Ticket_Product_spd2_Click:
    Exit Sub

Err_Ship_Ticket_Product_spd2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Ship_Ticket_Product_spd2_Click
    
End Sub

Private Sub SUM_OF_TRANSACTIONS_DblClick(Cancel As Integer)

    If IsNull([NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ACTIVITY_UNITS]) Then
        [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ACTIVITY_UNITS] = SUM_OF_TRANSACTIONS
    End If
    
End Sub

Private Sub TKT_NO_DblClick(Cancel As Integer)

    TKT_NO.Locked = False
    MsgBox "Ticket ID now unlocked for editing"
    
End Sub

Private Sub TKT_NO_Enter()

    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    If IsNull(TKT_NO) Then
        TKT_NO = "P-" & MAX_TKT_USED
    End If
    TKT_NO.Locked = True

End Sub

Private Sub TKT_NO_Exit(Cancel As Integer)
    
    If Not IsNull(TKT_NO) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
        TKT_NO.Locked = True
    End If
    
End Sub

Private Sub New_Ticket_Click()
On Error GoTo Err_New_Ticket_Click

    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False

    DoCmd.GoToRecord , , acNewRec

Exit_New_Ticket_Click:
    Exit Sub

Err_New_Ticket_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_New_Ticket_Click
    
End Sub
Private Sub Update_ID_Activity_Units_Click()

    If [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![Activity_Code] <> "REPACK" Then
        If SUM_OF_TRANSACTIONS > 0 Then
            If IsNull([NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ACTIVITY_UNITS]) Then
                [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ACTIVITY_UNITS] = SUM_OF_TRANSACTIONS
                [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![UNIT_CODE] = _
                [NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform].Form![Product_Units]
                [NMIS_SHIPPING_ID_ACTIVITIES subform].SetFocus
                DoCmd.GoToControl "ORDER_CN"
                DoCmd.GoToRecord , , acNewRec
            Else
                [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ACTIVITY_UNITS] = SUM_OF_TRANSACTIONS
                [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![UNIT_CODE] = _
                [NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform].Form![Product_Units]
            End If
        Else
            MsgBox "Nothing to ship!"
        End If
    Else
        If IsNull([NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ACTIVITY_UNITS]) Then
            [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ACTIVITY_UNITS] = SUM_OF_TRANSACTIONS
            [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![UNIT_CODE] = _
            [NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform].Form![Product_Units]
            [NMIS_SHIPPING_ID_ACTIVITIES subform].SetFocus
            DoCmd.GoToControl "ORDER_CN"
            DoCmd.GoToRecord , , acNewRec
        Else
            [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ACTIVITY_UNITS] = SUM_OF_TRANSACTIONS
            [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![UNIT_CODE] = _
            [NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform].Form![Product_Units]
        End If
    End If
    
End Sub

Private Sub View_by_AfterUpdate()

    [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ORDER_CN].Requery
    
End Sub

Private Sub VIEW_FY_AfterUpdate()

    [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ORDER_CN].Requery
  
End Sub

Private Sub View_FY_Exit(Cancel As Integer)

    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    Find_Ticket.Requery
    
End Sub
Private Sub Ship_Ticket_Product_spd_Click()
On Error GoTo Err_Ship_Ticket_Product_spd_Click

    If Not IsNull(TKT_NO) Then
        Dim stDocName As String

        stDocName = "Ship_Ticket_Product_spd"
        DoCmd.OpenQuery stDocName ', acViewPreview
        'MsgBox "Use Export to Excel to save Spreadsheet in desired folder"
    Else
        MsgBox "Select a Ticket to Print", vbInformation
    End If
Exit_Ship_Ticket_Product_spd_Click:
    Exit Sub

Err_Ship_Ticket_Product_spd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Ship_Ticket_Product_spd_Click
    
End Sub
Private Sub Ticket_Info_By_TSO_Click()
On Error GoTo Err_Ticket_Info_By_TSO_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_TICKETS_charge_per_ticket2"
    If Not IsNull([EXT_DOC_REF]) Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Product_Ship_Ticket_Total_Containers_mt"
        DoCmd.SetWarnings True
    
        DoCmd.OpenForm stDocName, , , stLinkCriteria
        Forms![NMIS_TICKETS_charge_per_ticket2]![View_FY] = View_FY
        Forms![NMIS_TICKETS_charge_per_ticket2]![Find_TSO] = EXT_DOC_REF
        Forms![NMIS_TICKETS_charge_per_ticket2]![Find_TSO].Visible = False
        Forms![NMIS_TICKETS_charge_per_ticket2]![View_FY].Visible = False
        Forms![NMIS_TICKETS_charge_per_ticket2]![Green_Background_Box].Visible = False
    Else
        MsgBox "Must have a TSO on Ticket"
    End If
    
Exit_Ticket_Info_By_TSO_Click:
    Exit Sub

Err_Ticket_Info_By_TSO_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Ticket_Info_By_TSO_Click
    
End Sub
Private Sub Ticket_Container_Summary_Click()
On Error GoTo Err_Ticket_Container_Summary_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Ticket_Container_Summary"
    If Not IsNull(TKT_NO) Then
        DoCmd.OpenForm stDocName, , , stLinkCriteria
    Else
        MsgBox "Please choose a Ticket", vbInformation
    End If

Exit_Ticket_Container_Summary_Click:
    Exit Sub

Err_Ticket_Container_Summary_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Ticket_Container_Summary_Click
    
End Sub