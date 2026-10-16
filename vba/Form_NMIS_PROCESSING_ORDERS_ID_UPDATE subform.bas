Option Compare Database

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

Private Sub CLIENT_ASSOCIATE_DblClick(Cancel As Integer)
    
    CLIENT_ASSOCIATE.Locked = False
    
End Sub

Private Sub CLIENT_ASSOCIATE_Enter()
    
    If IsNull(CLIENT_ASSOCIATE) Then
        CLIENT_ASSOCIATE.Locked = False
    Else
        CLIENT_ASSOCIATE.Locked = True
    End If
    
End Sub

Private Sub CLIENT_ASSOCIATE_Exit(Cancel As Integer)

    CLIENT_ASSOCIATE.Locked = True
    
End Sub

Private Sub CLIENT_NOTE_DblClick(Cancel As Integer)

    CLIENT_NOTE = "Seedlings MUST have healthy terminal bud, foliage, and at least the minimum root length!"
    
End Sub

Private Sub CONTACT_CN_AfterUpdate()

    Dim Response As String
    
    If Not IsNull(Contact_CN_Backup) Then
        Response = MsgBox("Are you Sure you Want to Change the Contact?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [CONTACT_CN] = Contact_CN_Backup
        End If
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

    Contact_CN_Backup = CONTACT_CN
    CONTACT_CN.Requery
    
End Sub

Private Sub Form_BeforeUpdate(Cancel As Integer)

    MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    MODIFIED_DATE = Date
    Forms![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![order_form_data_processed] = False
 
End Sub

Private Sub NURSERY_NOTE_DblClick(Cancel As Integer)

    NURSERY_NOTE = "Destroy any remaining seedlings after meeting client's request.  BE SURE TO ADJUST GROSS!"
    
End Sub

Private Sub ORDER_AMT_AfterUpdate()

    DoCmd.Requery

        If [NMIS_PROCESSING_ORDERS_ID_INFO_REVIEW_Orders subform].Form![LOT_SURPLUS] < 0 Then
            [OVERRUN_AMT] = Abs([NMIS_PROCESSING_ORDERS_ID_INFO_REVIEW_Orders subform].Form![LOT_SURPLUS])
            [ORDER_AMT] = [ORDER_AMT] + [NMIS_PROCESSING_ORDERS_ID_INFO_REVIEW_Orders subform].Form![LOT_SURPLUS]
            DoCmd.Requery
        End If
        
    DoCmd.GoToControl "OVERRUN_AMT"
    
End Sub

Private Sub ORDER_AMT_DblClick(Cancel As Integer)

    ORDER_AMT.Locked = False
    
End Sub

Private Sub ORDER_AMT_Enter()
    
    If IsNull(ORDER_AMT) Then
        ORDER_AMT.Locked = False
    Else
        ORDER_AMT.Locked = True
    End If
    
End Sub

Private Sub OVERRUN_AMT_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub OVERRUN_AMT_DblClick(Cancel As Integer)

    OVERRUN_AMT.Locked = False
    
End Sub

Private Sub OVERRUN_AMT_Enter()
    
    If IsNull(OVERRUN_AMT) Then
        OVERRUN_AMT.Locked = False
    Else
        OVERRUN_AMT.Locked = True
    End If
    
End Sub

Private Sub SECONDARY_CONTACT_CN_AfterUpdate()
    
    Dim Response As String
    
    If Not IsNull(Contact_CN_Backup) Then
        Response = MsgBox("Are you Sure you Want to Change the Secondary Contact?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [SECONDARY_CONTACT_CN] = Contact_CN_Backup
        End If
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

    Contact_CN_Backup = CONTACT_CN
    SECONDARY_CONTACT_CN.Requery
    
End Sub
Private Sub Open_NMIS_PROCESSING_ORDERS_ID_INFO_Review_Orders_Form_Click()
On Error GoTo Err_Open_NMIS_PROCESSING_ORDERS_ID_INFO_Review_Orders_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PROCESSING_ORDERS_ID_INFO_Review_Orders_Form"
    If Not IsNull([AGREEMENT_LOT_CN]) Then
        DoCmd.OpenForm stDocName, , , stLinkCriteria
    Else
        MsgBox "Must Select An Order First", vbInformation
    End If

Exit_Open_NMIS_PROCESSING_ORDERS_ID_INFO:
    Exit Sub

Err_Open_NMIS_PROCESSING_ORDERS_ID_INFO_Review_Orders_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_PROCESSING_ORDERS_ID_INFO
    
End Sub