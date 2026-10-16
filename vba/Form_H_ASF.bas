Option Compare Database

Private Sub AVERAGE_ASF_DblClick(Cancel As Integer)

    Forms![NMIS_AGREEMENT_LOTS]![HARVEST_ASF_ADJUSTMENT] = Round(AVERAGE_ASF, 0)
    
End Sub
Private Sub LOT_ID_DblClick(Cancel As Integer)
    'Dim rs As Object
    
    If Not IsNull(CN) Then
    stDocName = "NMIS_ID_ACTIVITY_TRANSACTIONS_FORM"
    stLinkCriteria = "[CN]=" & "'" & Me![CN] & "'"

    DoCmd.OpenForm stDocName, , , stLinkCriteria
   
        'DoCmd.OpenForm "NMIS_ID_ACTIVITY_TRANSACTIONS_FORM"
        'Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!CN = AGREEMENT_LOT_CN
        Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!Agreement_Lot_Lookup = [CN]
        Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM![first_open] = False
        Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM.Requery
        'If first_open Then
        'first_open = False
        Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!What_It_Is_Longer.Visible = True
        Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!Source_Label.Visible = True
        Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!SOURCE_LOT_CN.Visible = True
        Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!FYs.Visible = True
        Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!Combo138.Visible = True
        Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!Label139.Visible = True
        Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!UNIT_CODE.Visible = True
        Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Requery
        Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!TabCtl67.Visible = True
        'End If
    
    'Set rs = Me.Recordset.Clone
    'rs.FindFirst "[CN] = '" & AGREEMENT_LOT_CN & "'"
    'Me.Bookmark = rs.Bookmark
    
    '[NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![Default_ID_Location_CN] = Null
    
    '[NMIS_ID_ACTIVITIES_ACTIVITIES_subform].SetFocus
    
    'If IsNull([NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![Activity_Code]) Then
        'DoCmd.GoToControl "ACTIVITY_CODE"
    'Else
        'DoCmd.GoToControl "ACTIVITY_UNITS"
    'End If
    'Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!What_It_Is_Longer.Visible = True
    'Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!Source_Label.Visible = True
    'Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!SOURCE_LOT_CN.Visible = True
    'Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!FYs.Visible = True
    'Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!Combo138.Visible = True
    'Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!Label139.Visible = True
    'Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!UNIT_CODE.Visible = True
    'Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!TabCtl67.Visible = True
    
    Else
        MsgBox ("No Activity Data")
    End If

End Sub

Private Sub USED_AfterUpdate()

    USE_SUM.Requery
    AVERAGE_ASF.Requery
    Requery

End Sub