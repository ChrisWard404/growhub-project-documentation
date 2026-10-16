

Private Sub Agreement_Lot_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![Agreement_Lot_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
    
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
            "[CN] = Forms![NMIS_ID_ACTIVITY_FORM]![Agreement_Lot_Lookup]", , acNormal
        Forms![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Find_Lot].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Sort_By_Entry_Order].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots Label].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![Open_NMIS_Agreements Form].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Green_Background_Box].Visible = False
    End If
End Sub

Private Sub Default_Activity_Code_AfterUpdate()

    [NMIS_ID_ACTIVITIES_ACTIVITIES3_subform].Requery
    
End Sub

Private Sub Default_Date_AfterUpdate()

    [NMIS_ID_ACTIVITIES_ACTIVITIES3_subform].Requery
    
End Sub

Private Sub Form_Current()

    Agreement_Lot_Lookup = CN  'update the find record box match record selected
    
End Sub

Private Sub NMIS_ID_ACTIVITIES_ACTIVITIES_subform_Enter()

    [Transaction_Totals_By_Location_and_amt_per_unit1a subform].Visible = False
    
End Sub

Private Sub View_All_Activities_Click()

     Activity_Parent1 = "*"
     Activity_Code1 = "*"
     Default_Activity_Code = Null
     Viewing_All_Activities_Notice.Visible = True
     DoCmd.Requery
     
End Sub