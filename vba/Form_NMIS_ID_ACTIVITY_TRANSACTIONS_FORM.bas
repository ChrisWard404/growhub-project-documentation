

Private Sub Agreement_lot_Act_Tran_Balances_Click()

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE"
    DoCmd.OpenForm stDocName
    DoCmd.GoToControl "NMIS_AGREEMENT_LOT_REPORT_CREATE"
    
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID1_SELECT] = Agreement_Lot_Lookup
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID1_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID2_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID3_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID4_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID5_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID1_SELECT Label].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID2_SELECT Label].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID3_SELECT Label].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID4_SELECT Label].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID5_SELECT Label].Visible = False
    
 
End Sub

Private Sub Agreement_lot_Activities_Transactions_Click()

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENT_LOT_SELECT"
    
    DoCmd.OpenForm stDocName
    DoCmd.GoToControl "NMIS_AGREEMENT_LOT_REPORT_CREATE"
    
    
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID1_SELECT] = Agreement_Lot_Lookup
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID1_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID2_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID3_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID4_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID5_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID1_SELECT Label].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID2_SELECT Label].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID3_SELECT Label].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID4_SELECT Label].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID5_SELECT Label].Visible = False
    
End Sub

Private Sub Agreement_Lot_Lookup_AfterUpdate()

    'Find the record that matches the control.
    Dim rs As Object

    If first_open Then
        first_open = False
        What_It_Is_Longer.Visible = True
        Source_Label.Visible = True
        SOURCE_LOT_CN.Visible = True
        FYs.Visible = True
        Combo138.Visible = True
        Label139.Visible = True
        UNIT_CODE.Visible = True
        [NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Requery
        TabCtl67.Visible = True
    End If
    
    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![Agreement_Lot_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
    
    [NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![Default_ID_Location_CN] = Null
    
    [NMIS_ID_ACTIVITIES_ACTIVITIES_subform].SetFocus
    
    If IsNull([NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![Activity_Code]) Then
        DoCmd.GoToControl "ACTIVITY_CODE"
    Else
        DoCmd.GoToControl "ACTIVITY_UNITS"
    End If
    What_It_Is_Longer.Visible = True
    Source_Label.Visible = True
    SOURCE_LOT_CN.Visible = True
    FYs.Visible = True
    Combo138.Visible = True
    Label139.Visible = True
    UNIT_CODE.Visible = True
    
End Sub

Private Sub Agreement_Lot_Lookup_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String
    Dim rs As Object
    
    LastAgreementCN = Agreement_Lot_Lookup

    If (Not IsNull([Agreement_Lot_Lookup]) Or [Agreement_Lot_Lookup] = "") Then
        Set rs = Me.Recordset.Clone
        rs.FindFirst "[CN] = '" & [Agreement_Lot_Lookup] & "'"
        Me.Bookmark = rs.Bookmark

        'DoCmd.FindRecord
        '"[CN] = [LastAgreementCN]"
        DoCmd.OpenForm "NMIS_AGREEMENT_LOTS", acNormal, , _
            "[CN] = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Agreement_Lot_Lookup]", , acNormal
        Forms![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Find_Lot].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Sort_By_Entry_Order].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots Label].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![Open_NMIS_Agreements Form].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Green_Background_Box].Visible = False
    End If
End Sub

Private Sub Agreement_Lot_Lookup_Enter()

    [Transaction_Totals_By_Location_and_amt_per_unit1a subform].Visible = False
    [NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form!ID_LOCATION_CN.TabStop = True
    If first_open Then Agreement_Lot_Lookup = Null
    Agreement_Lot_Lookup.Requery
        
End Sub

Private Sub Default_Activity_Code_Enter()

    [Transaction_Totals_By_Location_and_amt_per_unit1a subform].Visible = False
    
End Sub

Private Sub Default_Container_Enter()

    [Transaction_Totals_By_Location_and_amt_per_unit1a subform].Visible = False
    
End Sub

Private Sub Default_Date_AfterUpdate()

    [NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Requery
    
End Sub

Private Sub Default_Date_Enter()

    [Transaction_Totals_By_Location_and_amt_per_unit1a subform].Visible = False
    
End Sub

Private Sub Default_Location_Enter()

    [Transaction_Totals_By_Location_and_amt_per_unit1a subform].Visible = False
    
End Sub

Private Sub Filter_For_Client_DblClick(Cancel As Integer)

    Filter_For_Client = "*"
    
End Sub

Private Sub Filter_For_End_FY_DblClick(Cancel As Integer)

    Filter_For_End_Fy = "*"
    
End Sub

Private Sub Filter_For_Fy_DblClick(Cancel As Integer)

    Filter_For_Fy = "*"
    
End Sub

Private Sub Filter_For_Source_ID_DblClick(Cancel As Integer)

    Filter_For_Source_ID = "*"
    
End Sub

Private Sub Form_Current()

    Agreement_Lot_Lookup = CN  'update the find record box match record selected
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToControl "Agreement_Lot_Lookup"
    What_It_Is_Longer.Visible = False
    Source_Label.Visible = False
    SOURCE_LOT_CN.Visible = False
    FYs.Visible = False
    Combo138.Visible = False
    Label139.Visible = False
    UNIT_CODE.Visible = False
    TabCtl67.Visible = False
    
End Sub

Private Sub Like_Agreement_Lots_AfterUpdate()

    Agreement_Lot_Lookup.Requery
    
End Sub

Private Sub Like_Agreement_Lots_DblClick(Cancel As Integer)
On Error GoTo Err_Like_Agreement_Lots_DblClick

    Dim stDocName As String

    MsgBox "Wildcards" & Chr(13) & Chr(10) & Chr(10) & _
        "* Matches any number of characters. It can be used as the first or last character in the character string. -5* finds -5, -56, and -56H" & Chr(13) & Chr(10) & Chr(10) & _
        "? Matches any single alphabetic character. B?ll finds ball, bell, and bill" & Chr(13) & Chr(10) & Chr(10) & _
        "[ ] Matches any single character within the brackets. B[ae]ll finds ball and bell but not bill" & Chr(13) & Chr(10) & Chr(10) & _
        "! Matches any character not in the brackets. b[!ae]ll finds bill and bull but not ball or bell" & Chr(13) & Chr(10) & Chr(10) & _
        "- Matches any one of a range of characters. You must specify the range in ascending order (A to Z, not Z to A). b[a-c]d finds bad, bbd, and bcd" & Chr(13) & Chr(10) & Chr(10) & _
        "# Matches any single numeric character. 1#3 finds 103, 113, 123", vbInformation

Exit_Like_Agreement_Lots_DblClick:
    Exit Sub

Err_Like_Agreement_Lots_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Like_Agreement_Lots_DblClick
    
End Sub

Private Sub NMIS_ID_ACTIVITIES_ACTIVITIES_subform_Enter()

    [Transaction_Totals_By_Location_and_amt_per_unit1a subform].Visible = False
    
End Sub

Private Sub NMIS_ID_ACTIVITIES_ACTIVITIES_subform_Exit(Cancel As Integer)
    
    If (Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform].Form![PARENT_ACTIVITY_CODE] = "ORDER" And _
        IsNull([NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![ORDER_CN]) And _
        Not IsNull([NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![CN])) Then
        MsgBox "This Activity REQUIRES an ORDER NUMBER"
    End If
    
End Sub

Private Sub NMIS_ID_ACTIVITIES_TRANSACTIONS_subform_Enter()

    If IsNull([NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![CN]) Then
        MsgBox "Must enter Activity Information First"
        [NMIS_ID_ACTIVITIES_ACTIVITIES_subform].SetFocus
        If IsNull(Activity_Code) Then
            DoCmd.GoToControl "[NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form!ACTIVITY_CODE"
        Else
            'MsgBox "Must enter Activity Information First"
            'DoCmd.GoToControl "ACTIVITY_UNITS"
        End If
    Else
        [Transaction_Totals_By_Location_and_amt_per_unit1a subform].Visible = True
        ac = [NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![Activity_Code]
        If ac = "SOW" Or ac = "XPLT" Or ac = "XPLTN" Or ac = "XPLTC" Or ac = "XPLTP" Then
            [NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![Update_Sow_Unit_Amts].Visible = True
        Else
            [NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![Update_Sow_Unit_Amts].Visible = False
        End If
    End If
    
End Sub

Private Sub NMIS_ID_LOCATIONS_subform1_Exit(Cancel As Integer)

    'Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN].Requery

End Sub

Private Sub View_All_Activities_Click()

     Activity_Parent1 = "*"
     Activity_Code1 = "*"
     Default_Activity_Code = Null
     Viewing_All_Activities_Notice.Visible = True
     DoCmd.Requery
     
End Sub

Private Sub NMIS_ID_ACTIVITIES_TRANSACTIONS_subform_Exit(Cancel As Integer)

    '[NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![FISCAL_YEAR].SetFocus
    [NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![Update_Sow_Unit_Amts].Visible = False
    [NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![Update_Inv_Info].Visible = False
    [NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form!ID_LOCATION_CN.TabStop = True
End Sub

Private Sub Wildcard_Tip_Click()
On Error GoTo Err_Wildcard_Tip_Click

    Dim stDocName As String

    MsgBox "Wildcards" & Chr(13) & Chr(10) & Chr(10) & _
        "* Matches any number of characters. It can be used as the first or last character in the character string. wh* finds what, white, and why" & Chr(13) & Chr(10) & Chr(10) & _
        "? Matches any single alphabetic character. B?ll finds ball, bell, and bill" & Chr(13) & Chr(10) & Chr(10) & _
        "[ ] Matches any single character within the brackets. B[ae]ll finds ball and bell but not bill" & Chr(13) & Chr(10) & Chr(10) & _
        "! Matches any character not in the brackets. b[!ae]ll finds bill and bull but not ball or bell" & Chr(13) & Chr(10) & Chr(10) & _
        "- Matches any one of a range of characters. You must specify the range in ascending order (A to Z, not Z to A). b[a-c]d finds bad, bbd, and bcd" & Chr(13) & Chr(10) & Chr(10) & _
        "# Matches any single numeric character. 1#3 finds 103, 113, 123", vbInformation

Exit_Wildcard_Tip_Click:
    Exit Sub

Err_Wildcard_Tip_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Wildcard_Tip_Click
  
End Sub