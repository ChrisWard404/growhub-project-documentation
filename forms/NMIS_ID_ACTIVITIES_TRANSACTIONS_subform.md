# Form: NMIS_ID_ACTIVITIES_TRANSACTIONS_subform

**Caption:** NMIS_Cultrual_TRANSACTIONS subform  
**Record source:**

```sql
SELECT NMIS_TRANSACTIONS.*, Round(Abs(([BEGIN_INDEX]-[END_INDEX])*[INDEX_INCREMENT]),0) AS Est_Units FROM NMIS_TRANSACTIONS LEFT JOIN (NMIS_LOCATIONS RIGHT JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN) ON NMIS_TRANSACTIONS.ID_LOCATION_CN = NMIS_ID_LOCATIONS.CN ORDER BY NMIS_LOCATIONS.LOCATION, NMIS_ID_LOCATIONS.SUBLOT_NO, NMIS_TRANSACTIONS.AMT_PER_UNIT;
```

**Order by:** `[NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].[NUMBER_OF_ACTIVITY_UNITS]`  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_FISCAL_YEARS`, `NMIS_ID_LOCATIONS`, `NMIS_LOCATIONS`, `NMIS_TRANSACTIONS`  
**Embedded in:** `Form:NMIS_ID_ACTIVITY_TRANSACTIONS_FORM`, `Form:NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_bu`, `Form:NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_bu3`, `Form:NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_orig`  
**Opens:** `Form:NMIS_ID_LOCATIONS subform1B`, `Form:NMIS_ID_LOCATIONS_Sow_Form`  
**Form events with code:** AfterDelConfirm, AfterInsert, AfterUpdate, Current  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | FISCAL_YEAR_Label | Fiscal Year |  |  |  | 1.08, 0.02, 0.62, 0.37 |
| Label | NUMBER_OF_ACTIVITY_UNITS_Label | Units |  |  |  | 3.28, 0.02, 0.67, 0.37 |
| Label | AMT_PER_UNIT_Label | Amt/Unit Net |  |  |  | 5.56, 0.02, 0.76, 0.37 |
| Label | AMT_PER_UNIT_INV_GROSS_Label | Amt/Unit Gross |  |  |  | 4.79, 0.02, 0.72, 0.37 |
| TextBox | ID_ACTIVITY_CN |  | ID_ACTIVITY_CN |  |  | 0.17, 0.06, 0.75, 0.00 |
| Label | Label13 | Contract Item |  |  |  | 6.36, 0.02, 0.65, 0.37 |
| Label | Label14 | Chg/Amt Override |  |  |  | 7.76, 0.02, 0.66, 0.37 |
| Label | Label15 | Chg/Unit Override |  |  |  | 7.06, 0.02, 0.66, 0.37 |
| Label | ID_LOCATION_CN_Label | Location |  |  | Click | 1.74, 0.02, 1.50, 0.37 |
| Label | Label23 | Unit Code |  |  |  | 3.99, 0.02, 0.76, 0.37 |
| CommandButton | Update_Sow_Unit_Amts | Click to Update Amt/Units |  |  | Click | 0.04, 0.02, 1.02, 0.39 |
| CommandButton | Update_Inv_Info | Click to Update Inv Info |  |  | Click | 8.45, 0.02, 0.90, 0.39 |
| Label | Label30 | Click Here to EDIT location |  |  | Click | 1.82, 0.21, 1.34, 0.16 |
| Label | Label52 | Transactions  |  |  |  | 0.04, 0.02, 1.01, 0.36 |
| TextBox | Default_ID_Location_CN |  |  |  |  | 0.12, 0.12, 0.92, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | FISCAL_YEAR |  | FISCAL_YEAR | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  |  | 1.08, 0.02, 0.62, 0.19 |
| TextBox | NUMBER_OF_ACTIVITY_UNITS |  | NUMBER_OF_ACTIVITY_UNITS |  | AfterUpdate, Enter, Exit | 3.28, 0.02, 0.67, 0.19 |
| TextBox | AMT_PER_UNIT |  | AMT_PER_UNIT |  | Exit | 5.56, 0.02, 0.74, 0.19 |
| TextBox | AMT_PER_UNIT_INV_GROSS |  | AMT_PER_UNIT_INV_GROSS |  | DblClick, Exit | 4.79, 0.02, 0.73, 0.19 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 6.36, 0.02, 0.63, 0.19 |
| TextBox | CHARGE_PER_AMT_OVERRIDE |  | CHARGE_PER_AMT_OVERRIDE |  |  | 7.76, 0.02, 0.66, 0.19 |
| TextBox | CHARGE_PER_UNIT_OVERRIDE |  | CHARGE_PER_UNIT_OVERRIDE |  |  | 7.06, 0.02, 0.66, 0.19 |
| ComboBox | ID_LOCATION_CN |  | ID_LOCATION_CN | SELECT NMIS_ID_LOCATIONS.CN, [LOCATION] & IIf((IsNull([Sublot_No]) Or [Sublot_No]=" "),"","(" & [sublot_no] & ")") & " " & [BEGIN_INDEX] & IIf(IsNull([END_INDEX]),""," - " & [END_INDEX]) AS [Location(s)], NMIS_ID_LOCATIONS.UNIT_CODE, NMIS_ID_LOCATIONS.BEGIN_DATE, IIf(IsNull([BEGIN_COUNTER]) Or IsNull([END_COUNTER]),Round(Abs(([BEGIN_INDEX]-[END_INDEX])*[INDEX_INCREMENT]),0),Abs([END_COUNTER]-[BEGIN_COUNTER])) AS [Est Units], NMIS_ID_LOCATIONS.Index FROM NMIS_AGREEMENT_LOTS INNER JOIN (NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN) ON NMIS_AGREEMENT_LOTS.CN = NMIS_ID_LOCATIONS.AGREEMENT_LOT_CN WHERE (((NMIS_ID_LOCATIONS.AGREEMENT_LOT_CN)=[Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![CN])) ORDER BY NMIS_ID_LOCATIONS.Index DESC; | DblClick, Enter, Exit | 1.75, 0.02, 1.51, 0.19 |
| ComboBox | ID_LOCATION_UNIT_CODE |  | ID_LOCATION_CN | SELECT NMIS_ID_LOCATIONS.CN, NMIS_ID_LOCATIONS.UNIT_CODE FROM NMIS_AGREEMENT_LOTS INNER JOIN (NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN=NMIS_ID_LOCATIONS.LOCATION_CN) ON NMIS_AGREEMENT_LOTS.CN=NMIS_ID_LOCATIONS.AGREEMENT_LOT_CN;  |  | 4.00, 0.02, 0.77, 0.19 |

## Code-behind (VBA)

```vb
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
```
