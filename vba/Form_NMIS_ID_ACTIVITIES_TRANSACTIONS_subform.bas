Option Compare Database

Private Sub AMT_PER_UNIT_Exit(Cancel As Integer)

    ac = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![Activity_Code]
    pac = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform].Form![PARENT_ACTIVITY_CODE]
    'Update Sowing Amounts per unit
    If Not IsNull(NUMBER_OF_ACTIVITY_UNITS) Then
        If NUMBER_OF_ACTIVITY_UNITS <> 0 Then
        If (ac = "SOW" Or ac = "XPLT" Or ac = "XPLTN" Or ac = "XFERFM" Or ac = "CTSTRK") And _
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![PRODUCT_GROUP] = "PLANT" Then
        If AMT_PER_UNIT = 0 And AMT_PER_UNIT_INV_GROSS = 0 Then
            DoCmd.SetWarnings False
            DoCmd.Requery
            DoCmd.OpenQuery "TRANSACTION_SOW_AMT_PER_UNIT_UPDATE1"
            DoCmd.OpenQuery "TRANSACTION_SOW_AMT_PER_UNIT_UPDATE"
            AMT_PER_UNIT_INV_GROSS.Requery
            AMT_PER_UNIT.Requery
            DoCmd.SetWarnings True
            DoCmd.Requery
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Transaction_Totals_By_Location_and_amt_per_unit1a subform].Requery
            DoCmd.GoToRecord , , acNewRec
        End If
        End If
        End If
    End If
    
    'Update Lifting Amounts per unit
    If Not IsNull(NUMBER_OF_ACTIVITY_UNITS) Then
        If NUMBER_OF_ACTIVITY_UNITS <> 0 Then
            If pac = "LIFT" And (Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_LOCATIONS subform2].Form![UNIT_CODE] = "MBIN" Or _
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_LOCATIONS subform2].Form![UNIT_CODE] = "PTUB") Then
            If (AMT_PER_UNIT = 0 And AMT_PER_UNIT_INV_GROSS = 0) Then
                DoCmd.SetWarnings False
                DoCmd.Requery
                DoCmd.OpenQuery "TRANSACTION_Lift_AMT_PER_UNIT_UPDATE_1b"
                DoCmd.OpenQuery "TRANSACTION_Lift_AMT_PER_UNIT_UPDATE"
                AMT_PER_UNIT_INV_GROSS.Requery
                AMT_PER_UNIT.Requery
                DoCmd.SetWarnings True
                DoCmd.Requery
                Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Transaction_Totals_By_Location_and_amt_per_unit1a subform].Requery
                DoCmd.GoToRecord , , acNewRec
            End If
            End If
        End If
    End If
End Sub

Private Sub AMT_PER_UNIT_INV_GROSS_DblClick(Cancel As Integer)

End Sub

Private Sub AMT_PER_UNIT_INV_GROSS_Exit(Cancel As Integer)

    If Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform].Form![PARENT_ACTIVITY_CODE] = "ORDER" Or _
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![Activity_Code] = "LOCCHG" Then
        If Not IsNull(AMT_PER_UNIT_INV_GROSS) Then
        If IsNull(AMT_PER_UNIT) Or AMT_PER_UNIT = 0 Then
            AMT_PER_UNIT = AMT_PER_UNIT_INV_GROSS
        End If
        End If
    End If
    
    ac = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![Activity_Code]
    pac = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform].Form![PARENT_ACTIVITY_CODE]
    'Update Sowing Amounts per unit
    If Not IsNull(NUMBER_OF_ACTIVITY_UNITS) Then
        If NUMBER_OF_ACTIVITY_UNITS <> 0 Then
        If (ac = "SOW" Or ac = "XPLT" Or ac = "XPLTN" Or ac = "XFERFM" Or ac = "CTSTRK") And _
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![PRODUCT_GROUP] = "PLANT" Then
        If AMT_PER_UNIT = 0 And AMT_PER_UNIT_INV_GROSS = 0 Then
            DoCmd.SetWarnings False
            DoCmd.Requery
            DoCmd.OpenQuery "TRANSACTION_SOW_AMT_PER_UNIT_UPDATE1"
            DoCmd.OpenQuery "TRANSACTION_SOW_AMT_PER_UNIT_UPDATE"
            AMT_PER_UNIT_INV_GROSS.Requery
            AMT_PER_UNIT.Requery
            DoCmd.SetWarnings True
            DoCmd.Requery
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Transaction_Totals_By_Location_and_amt_per_unit1a subform].Requery
            DoCmd.GoToRecord , , acNewRec
        End If
        End If
        End If
    End If
    
    'Update Lifting Amounts per unit
    If Not IsNull(NUMBER_OF_ACTIVITY_UNITS) Then
        If NUMBER_OF_ACTIVITY_UNITS <> 0 Then
        If pac = "LIFT" And (Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_LOCATIONS subform2].Form![UNIT_CODE] = "MBIN" Or _
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_LOCATIONS subform2].Form![UNIT_CODE] = "PTUB") Then
        If AMT_PER_UNIT = 0 And AMT_PER_UNIT_INV_GROSS = 0 Then
            DoCmd.SetWarnings False
            DoCmd.Requery
            DoCmd.OpenQuery "TRANSACTION_Lift_AMT_PER_UNIT_UPDATE_1b"
            DoCmd.OpenQuery "TRANSACTION_Lift_AMT_PER_UNIT_UPDATE"
            AMT_PER_UNIT_INV_GROSS.Requery
            AMT_PER_UNIT.Requery
            DoCmd.SetWarnings True
            DoCmd.Requery
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Transaction_Totals_By_Location_and_amt_per_unit1a subform].Requery
            DoCmd.GoToRecord , , acNewRec
        End If
        End If
        End If
    End If
    
End Sub

Private Sub Form_AfterDelConfirm(Status As Integer)

    'Update_Inv_Info.Visible = True
    Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Transaction_Totals_By_Location_and_amt_per_unit1a subform].Requery

End Sub

Private Sub Form_AfterInsert()

    'Update_Inv_Info.Visible = True
    Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Transaction_Totals_By_Location_and_amt_per_unit1a subform].Requery

End Sub

Private Sub Form_AfterUpdate()

    'Update_Inv_Info.Visible = True
    Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Transaction_Totals_By_Location_and_amt_per_unit1a subform].Requery

End Sub

Private Sub Form_Current()

    If Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![ACTIVITY_UNITS]) Then
        If Not IsNull(ID_LOCATION_CN) Then
            [ID_LOCATION_CN].Requery
        End If
        If Not IsNull(ID_LOCATION_UNIT_CODE) Then
            ID_LOCATION_UNIT_CODE.Requery
        End If
    End If
    MsgBox "current"
    
End Sub

Private Sub ID_LOCATION_CN_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String

    Activity = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![Activity_Code]

    If Activity = "SOW" Or Activity Like "XPLT*" Or Activity = "XFERFM" Or ac = "CTSTRK" Then
        stDocName = "NMIS_ID_LOCATIONS_Sow_Form"
    Else
        stDocName = "NMIS_ID_LOCATIONS subform1B"
    End If
    
    stLinkCriteria = "[AGREEMENT_LOT_CN]=" & "'" & Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![CN] & "'"
    
        DoCmd.OpenForm stDocName, , , stLinkCriteria
        'If IsNull(ID_LOCATION_CN) And Not IsNull(Forms![NMIS_ID_LOCATIONS subform1B]![LOCATION_CN]) Then
            'DoCmd.GoToRecord , , acNewRec
        'End If

End Sub

Private Sub ID_LOCATION_CN_Enter()

    If Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![ACTIVITY_UNITS]) Then
        If Not IsNull(Default_ID_Location_CN) Then
            If IsNull(ID_LOCATION_CN) Then
                'ID_LOCATION_CN = Default_ID_Location_CN
            End If
        End If
    
        If Not IsNull(ID_LOCATION_CN) Then
            ID_LOCATION_CN.Requery
        End If
    End If

End Sub

Private Sub ID_LOCATION_CN_Exit(Cancel As Integer)
    
    If Not IsNull(ID_LOCATION_UNIT_CODE) Then
        ID_LOCATION_UNIT_CODE.Requery
    End If
    
End Sub

Private Sub ID_LOCATION_CN_Label_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    Activity = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![Activity_Code]

    If Activity = "SOW" Or Activity Like "XPLT*" Or ac = "XFERFM" Or ac = "CTSTRK" Then
        stDocName = "NMIS_ID_LOCATIONS_Sow_Form"
    Else
        stDocName = "NMIS_ID_LOCATIONS subform1B"
    End If
    
    stLinkCriteria = "[AGREEMENT_LOT_CN]=" & "'" & Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![CN] & "'"
    
        DoCmd.OpenForm stDocName, , , stLinkCriteria
        
End Sub

Private Sub Label30_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    Activity = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![Activity_Code]

    If Activity = "SOW" Or Activity Like "XPLT*" Or Activity = "XFERFM" Or ac = "CTSTRK" Then
        stDocName = "NMIS_ID_LOCATIONS_Sow_Form"
    Else
        stDocName = "NMIS_ID_LOCATIONS subform1B"
    End If
    
    stLinkCriteria = "[AGREEMENT_LOT_CN]=" & "'" & Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![CN] & "'"
    
        DoCmd.OpenForm stDocName, , , stLinkCriteria
        
End Sub

Private Sub NUMBER_OF_ACTIVITY_UNITS_AfterUpdate()

    ac = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![Activity_Code]
    pac = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform].Form![PARENT_ACTIVITY_CODE]

    'Update Lifting Amounts per unit
    If Not IsNull(NUMBER_OF_ACTIVITY_UNITS) Then
        If NUMBER_OF_ACTIVITY_UNITS <> 0 Then
        If ac = "SOW" Or ac = "xpltn" Or ac = "xplt" Or ac = "XFERFM" Or ac = "CTSTRK" Then
            AMT_PER_UNIT = 0
            AMT_PER_UNIT_INV_GROSS = 0
        End If
        If pac = "LIFT" And (Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_LOCATIONS subform2].Form![UNIT_CODE] = "MBIN" Or _
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_LOCATIONS subform2].Form![UNIT_CODE] = "PTUB") Then
            If (ac <> "FAHVP" And ac <> "FDEST" And ac <> "CRHLF" And ac <> "FAHLF") Then
            AMT_PER_UNIT = 0
            AMT_PER_UNIT_INV_GROSS = 0
            DoCmd.SetWarnings False
            'DoCmd.Requery
            DoCmd.OpenQuery "TRANSACTION_Lift_AMT_PER_UNIT_UPDATE_1b"
            DoCmd.OpenQuery "TRANSACTION_Lift_AMT_PER_UNIT_UPDATE"
            AMT_PER_UNIT_INV_GROSS.Requery
            AMT_PER_UNIT.Requery
            DoCmd.SetWarnings True
            'DoCmd.Requery
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Transaction_Totals_By_Location_and_amt_per_unit1a subform].Requery
            DoCmd.GoToRecord , , acNewRec
            End If
        End If
        End If
    End If
    
End Sub

Private Sub NUMBER_OF_ACTIVITY_UNITS_Enter()

    If Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![ACTIVITY_UNITS]) Then
        If Not IsNull(Default_ID_Location_CN) Then
            If IsNull(ID_LOCATION_CN) Then
                ID_LOCATION_CN = Default_ID_Location_CN
            End If
        End If
    
        If Not IsNull(ID_LOCATION_CN) Then
            ID_LOCATION_CN.Requery
        End If
    End If

End Sub

Private Sub NUMBER_OF_ACTIVITY_UNITS_Exit(Cancel As Integer)

    ac = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![Activity_Code]
    pac = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform].Form![PARENT_ACTIVITY_CODE]
    'Update Sowing Amounts per unit
    If Not IsNull(NUMBER_OF_ACTIVITY_UNITS) Then
        If NUMBER_OF_ACTIVITY_UNITS <> 0 Then
        If ac = "SOW" Or ac = "XPLT" Or ac = "XPLTN" Or ac = "XFERFM" Or ac = "CTSTRK" Then
            If AMT_PER_UNIT = 0 And AMT_PER_UNIT_INV_GROSS = 0 Then
                DoCmd.SetWarnings False
                DoCmd.Requery
                DoCmd.OpenQuery "TRANSACTION_SOW_AMT_PER_UNIT_UPDATE1"
                DoCmd.OpenQuery "TRANSACTION_SOW_AMT_PER_UNIT_UPDATE"
                AMT_PER_UNIT_INV_GROSS.Requery
                AMT_PER_UNIT.Requery
                DoCmd.SetWarnings True
                DoCmd.Requery
                Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Transaction_Totals_By_Location_and_amt_per_unit1a subform].Requery
                DoCmd.GoToRecord , , acNewRec
            End If
        End If
        End If
    End If
    If ac = "PACK" Or ac Like "PXPLT*" Or ac Like "CPROC" Or ac Like "FAHVP" Or ac Like "LOCCHG" Then
        Default_ID_Location_CN = ID_LOCATION_CN
        ID_LOCATION_CN.TabStop = False
    End If
    
    'Update Lifting Amounts per unit
    If Not IsNull(NUMBER_OF_ACTIVITY_UNITS) Then
        If NUMBER_OF_ACTIVITY_UNITS <> 0 Then
        If pac = "LIFT" Then
        If Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_LOCATIONS subform2].Form![UNIT_CODE] = "MBIN" Or _
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_LOCATIONS subform2].Form![UNIT_CODE] = "PTUB" Then
            If (ac <> "FAHVP" And ac <> "FDEST") Then
                If AMT_PER_UNIT = 0 And AMT_PER_UNIT_INV_GROSS = 0 Then
                    DoCmd.SetWarnings False
                    DoCmd.Requery
                    DoCmd.OpenQuery "TRANSACTION_Lift_AMT_PER_UNIT_UPDATE_1b"
                    DoCmd.OpenQuery "TRANSACTION_Lift_AMT_PER_UNIT_UPDATE"
                    AMT_PER_UNIT_INV_GROSS.Requery
                    AMT_PER_UNIT.Requery
                    DoCmd.SetWarnings True
                    DoCmd.Requery
                    Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Transaction_Totals_By_Location_and_amt_per_unit1a subform].Requery
                    DoCmd.GoToRecord , , acNewRec
                End If
            End If
        End If
        End If
        End If
    End If
End Sub

Private Sub Update_Inv_Info_Click()

    DoCmd.Requery
    Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Transaction_Totals_By_Location_and_amt_per_unit1a subform].Requery
    
End Sub

Private Sub Update_Sow_Unit_Amts_Click()

    DoCmd.SetWarnings False
    DoCmd.Requery
    DoCmd.OpenQuery "TRANSACTION_SOW_AMT_PER_UNIT_UPDATE1"
    DoCmd.OpenQuery "TRANSACTION_SOW_AMT_PER_UNIT_UPDATE"
    AMT_PER_UNIT_INV_GROSS.Requery
    AMT_PER_UNIT.Requery
    DoCmd.SetWarnings True
    
End Sub