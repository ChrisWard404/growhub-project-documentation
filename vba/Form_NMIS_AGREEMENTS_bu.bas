Option Explicit

Private Sub refresh_Click()
On Error GoTo Err_refresh_Click

    DoCmd.DoMenuItem acFormBar, acRecordsMenu, 5, , acMenuVer70

Exit_refresh_Click:
    Exit Sub

Err_refresh_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_refresh_Click
    
End Sub

Private Sub Agreement_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![Agreement_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
    
End Sub

Private Sub Agreement_Lookup_Enter()

    Agreement_Lookup.Requery
    
End Sub

Private Sub AGREEMENT_LOT_CN_DblClick(Cancel As Integer)
On Error GoTo Err_AGREEMENT_LOT_CN_DblClick

    [AGREEMENT_LOT_CN].Locked = False
    MsgBox "AGREEMENT LOT is now unlocked for editing"
    
Exit_AGREEMENT_LOT_CN_DblClick:
    Exit Sub

Err_AGREEMENT_LOT_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_AGREEMENT_LOT_CN_DblClick
    
End Sub

Private Sub Agreement_Lot_CN_Exit(Cancel As Integer)
    
    [AGREEMENT_LOT_CN].Locked = True
    
End Sub

Private Sub AMOUNT_REQUESTED_DblClick(Cancel As Integer)

    AMOUNT_REQUESTED.Locked = False
    
End Sub

Private Sub AMOUNT_REQUESTED_Enter()

    If AMOUNT_REQUESTED > 0 Then
        AMOUNT_REQUESTED.Locked = True
    Else
        AMOUNT_REQUESTED.Locked = False
    End If
    
End Sub

Private Sub AMOUNT_REQUESTED_Exit(Cancel As Integer)

    If Not IsNull(AMOUNT_REQUESTED) Then
        If IsNull(ORIG_AMOUNT_REQUESTED) Then
            ORIG_AMOUNT_REQUESTED = AMOUNT_REQUESTED
        End If
    Else
        AMOUNT_REQUESTED.Locked = True
    End If
    
End Sub

Private Sub AMOUNT_REQUESTED_LostFocus()

    If Not IsNull(AMOUNT_REQUESTED) Then
        If IsNull(ORIG_AMOUNT_REQUESTED) Then
            ORIG_AMOUNT_REQUESTED = AMOUNT_REQUESTED
        End If
    End If
    
End Sub

Private Sub Associate_AfterUpdate()
    
    Dim Response As String
    
    If Not IsNull(ASSOCIATE_backup) Then
        Response = MsgBox("Are you Sure you Want to Change the Client Code?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [Associate] = ASSOCIATE_backup
        End If
    End If
    
End Sub

Private Sub ASSOCIATE_DblClick(Cancel As Integer)

        DoCmd.OpenForm "NMIS_ASSOCIATES", , , "[ASSOCIATE] = '" & Forms![NMIS_AGREEMENTS]![Associate] & "'"
        DoCmd.GoToControl "ASSOCIATE"
        Forms![NMIS_Associates]![ASSOCIATE_Lookup].Visible = False
        Forms![NMIS_Associates]![Associate_lookup_Label].Visible = False
        Forms![NMIS_Associates]![ASSOCIATE_Lookup_by_Name].Visible = False
        Forms![NMIS_Associates]!Unfilter.Visible = True
            
End Sub

Private Sub ASSOCIATE_Enter()

    ASSOCIATE_backup = Associate
    Associate.Requery
    
End Sub

Private Sub ASSOCIATE_Exit(Cancel As Integer)
    
    LastAgreementCN = CN
    
    If Not IsNull(Associate) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
    
End Sub

Private Sub BEGIN_FY_Exit(Cancel As Integer)

    If Not IsNull(END_FY) Then
        '[END_FY] = [BEGIN_FY] + [Total_FY]
    End If
    
End Sub

Private Sub CLIENT_NAME_AfterUpdate()
    
   Dim Response As String
   
    If Not IsNull(ASSOCIATE_backup) Then
        Response = MsgBox("Are you Sure you Want to Change the Client Name?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [CLIENT_NAME] = ASSOCIATE_backup
        End If
    End If
End Sub

Private Sub CLIENT_NAME_DblClick(Cancel As Integer)
    
        DoCmd.OpenForm "NMIS_ASSOCIATES", , , "[ASSOCIATE] = '" & Forms![NMIS_AGREEMENTS]![CLIENT_NAME] & "'"
        DoCmd.GoToControl "ASSOCIATE"
        Forms![NMIS_Associates]![ASSOCIATE_Lookup].Visible = False
        Forms![NMIS_Associates]![Associate_lookup_Label].Visible = False
        Forms![NMIS_Associates]![ASSOCIATE_Lookup_by_Name].Visible = False
        Forms![NMIS_Associates]!Unfilter.Visible = True
            
End Sub

Private Sub CLIENT_NAME_Enter()

    ASSOCIATE_backup = CLIENT_NAME
    CLIENT_NAME.Requery
    
End Sub

Private Sub CLIENT_NAME_Exit(Cancel As Integer)
    
    LastAgreementCN = CN
    
    If Not IsNull(CLIENT_NAME) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
    
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
          Forms![NMIS_CONTACTS]!Unfilter.Visible = True
    End If
    
End Sub

Private Sub Contact_CN_Enter()

    Contact_CN_Backup = CONTACT_CN
    Associate.Requery
    CONTACT_CN.Requery
    
End Sub

Private Sub Contact_CN_GotFocus()

    CONTACT_CN.Requery
    
End Sub

Private Sub Filter_For_Product_Enter()

    Filter_for_Product_Type.Requery
    Filter_For_Product.Requery
    
End Sub

Private Sub Filter_For_Product_Exit(Cancel As Integer)

    If IsNull(Filter_For_Product) Then
        Filter_For_Product = "*"
    End If
    SPECIES_PRODUCT_CN.Requery
    
End Sub

Private Sub Filter_for_Product_Type_Enter()

    Filter_For_Product = "*"
    Filter_For_Product.Requery
    
End Sub

Private Sub Form_BeforeUpdate(Cancel As Integer)
    
    MODIFIED_BY = CurrentUserName()
    MODIFIED_DATE = Date
    
End Sub

Private Sub Form_Current()

    If [source_id] > "" Then
        [SPECIES_PRODUCT_CN].Requery
    End If
 
End Sub

Private Sub Form_Open(Cancel As Integer)

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "061019" Then
        Open_Bend_Lots_Form.Visible = True
    Else
        Open_Bend_Lots_Form.Visible = False
    End If
    Forms![NMIS_AGREEMENTS]![Like_Like_Label].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_For_Beg_Fy].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_For_End_Fy].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_For_Fy_Label].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_For_End_Fy_Label].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_for_Species].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_for_Species_Label].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_For_Client].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_For_Client_Label].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_for_Product_Type].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_for_Product_Type_Label].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_For_Product].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_For_Product_Label].Visible = True
    Forms![NMIS_AGREEMENTS]![Agreement_Lookup].Visible = True
    Forms![NMIS_AGREEMENTS]![Agreement_Lookup_Label].Visible = True
    Forms![NMIS_AGREEMENTS]![Open Agreement Lots Form].Visible = True
    DoCmd.GoToRecord , , acLast
    
End Sub

Private Sub Open_Agreement_Lots_Form_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String
    Dim rs As Object
    
    LastAgreementCN = CN

    If IsNull(AMOUNT_REQUESTED) Then
        MsgBox "Must Enter Amount Requested", vbCritical
        DoCmd.GoToControl "amount_Requested"
    Else
    If (Not IsNull([AGREEMENT_LOT_CN]) Or [AGREEMENT_LOT_CN] = "") Then
        DoCmd.Requery
        Set rs = Me.Recordset.Clone
        rs.FindFirst "[CN] = '" & Me![LastAgreementCN] & "'"
        Me.Bookmark = rs.Bookmark

        'DoCmd.FindRecord
        '"[CN] = [LastAgreementCN]"
        DoCmd.OpenForm "NMIS_AGREEMENT_LOTS", acNormal, , _
            "[CN] = Forms![NMIS_AGREEMENTS]![AGREEMENT_LOT_CN]", , acNormal
        Forms![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Find_Lot].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Sort_By_Entry_Order].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![Open_NMIS_Agreements Form].Visible = False
    Else
        If (Not IsNull(source_id) And Not IsNull(Species_Product)) Then
            DoCmd.OpenForm "NMIS_AGREEMENT_LOTS_NEW", acNormal, "", "", acAdd
        Else
            MsgBox "Source Lot AND Species Product must be entered"
        End If
    End If
    End If
End Sub

Private Sub Open_Products_Form_Click()
On Error GoTo Err_Open_Products_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SPECIES_PRODUCTS Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Products_Form_Click:
    Exit Sub

Err_Open_Products_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Products_Form_Click
    
End Sub

Private Sub Open_Source_Lot_Form_Click()
On Error GoTo Err_Open_Source_Lot_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOTS_INPUT"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Source_Lot_Form_Click:
    Exit Sub

Err_Open_Source_Lot_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Source_Lot_Form_Click
    
End Sub

Private Sub Lookup_Lots_Click()
On Error GoTo Err_Lookup_Lots_Click

    [SOURCE_CODE].Requery

Exit_Lookup_Lots_Click:
    Exit Sub

Err_Lookup_Lots_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lookup_Lots_Click
    
End Sub

Private Sub ORIG_AMOUNT_REQUESTED_DblClick(Cancel As Integer)

        ORIG_AMOUNT_REQUESTED.Locked = False

End Sub

Private Sub ORIG_AMOUNT_REQUESTED_Enter()

    If Not IsNull(ORIG_AMOUNT_REQUESTED) Then
        ORIG_AMOUNT_REQUESTED.Locked = True
    Else
        ORIG_AMOUNT_REQUESTED.Locked = False
    End If
    
End Sub

Private Sub ORIG_AMOUNT_REQUESTED_Exit(Cancel As Integer)

        ORIG_AMOUNT_REQUESTED.Locked = True
        
End Sub

Private Sub Refresh_and_Close_Click()
On Error GoTo Err_Refresh_and_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Refresh_and_Close_Click:
    Exit Sub

Err_Refresh_and_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_and_Close_Click
    
End Sub

Private Sub source_id_DblClick(Cancel As Integer)

    DoCmd.OpenForm "NMIS_SOURCE_LOTS_INPUT", acNormal, , , acFormAdd
    Forms![NMIS_SOURCE_LOTS_INPUT]![Source_Lot_Lookup_Label].Visible = False
    Forms![NMIS_SOURCE_LOTS_INPUT]![Source_Lot_Lookup].Visible = False

End Sub

Private Sub source_id_Exit(Cancel As Integer)
    
    If [source_id] > "" Then
        [SPECIES_PRODUCT_CN].Requery
    End If

End Sub

Private Sub source_id_NotInList(NewData As String, Response As Integer)
On Error GoTo Err_source_id_NotInList

'Lot not currently in Source Database, Give option to enter as new lot."
    
    [source_id].Undo
    Response = MsgBox("Lot Not Currently in Database. Do you want to Enter this Source Lot?", vbYesNo)
    
    If Response = vbYes Then
        'MsgBox "Click on the Source Lot ID Label above the Source Lot ID Entry Field After adding new lots"
        DoCmd.OpenForm "NMIS_SOURCE_LOTS_INPUT", acNormal, , , acFormAdd
    End If
    
Exit_source_id_NotInList:
    Exit Sub

Err_source_id_NotInList:
    Resume Exit_source_id_NotInList
    
End Sub
Private Sub Requery_Click()
On Error GoTo Err_Requery_Click

    [source_id].Requery
    MsgBox "Source Lots Updated. You may now use any lots you added."
    
Exit_Requery_Click:
    Exit Sub

Err_Requery_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Requery_Click
    
End Sub

Private Sub SPECIES_PRODUCT_CN_Change()

    [END_FY] = [BEGIN_FY] + [Total_FY]
    
End Sub
Private Sub Open_Bend_Lots_Form_Click()
On Error GoTo Err_Open_Bend_Lots_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOTS_Bend"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Bend_Lots_Form_Click:
    Exit Sub

Err_Open_Bend_Lots_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Bend_Lots_Form_Click
    
End Sub

Private Sub SPECIES_PRODUCT_CN_Enter()

    SPECIES_PRODUCT_CN.Requery
    
End Sub

Private Sub SPECIES_PRODUCT_CN_Exit(Cancel As Integer)

    [END_FY] = [BEGIN_FY] + [Total_FY]
  
End Sub
Private Sub Agreements_for_Source_Click()
On Error GoTo Err_Agreements_for_Source_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Agreement_for_Source_Lot"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Agreements_for_Source_Click:
    Exit Sub

Err_Agreements_for_Source_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Agreements_for_Source_Click
    
End Sub

Private Sub Duplicate_Agreement_Click()
On Error GoTo Err_Duplicate_Agreement_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 2, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 5, , acMenuVer70 'Paste Append
    AGREEMENT_LOT_CN = Null
    CN = Null
    SPECIES_PRODUCT_CN = Null
    DoCmd.GoToControl "associate"
    DoCmd.GoToControl "client_name"

Exit_Duplicate_Agreement_Click:
    Exit Sub

Err_Duplicate_Agreement_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Duplicate_Agreement_Click
    
End Sub