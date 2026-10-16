# Form: Contract_Payment_Estimate_Invoice subform2

**Caption:** Seed_Ship_Ticked_ID_ACTIVITIES subform  
**Record source:**

```sql
NMIS_ID_ACTIVITIES Query
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_FISCAL_YEARS`, `NMIS_ID_ACTIVITIES`, `NMIS_SOURCE_LOTS`, `NMIS_TICKETS`, `NMIS_UNITS`  
**Opens:** `Form:NMIS_ACTIVITY_CODES`, `Form:NMIS_ID_MGMT_CODES_Ship_Ticket subform`  
**Form events with code:** AfterInsert  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | FISCAL_YEAR_Label | FY |  |  |  | 0.03, 0.04, 0.52, 0.35 |
| Label | ACTIVITY_CODE_Label | Activity Code |  |  |  | 5.11, 0.04, 0.84, 0.35 |
| Label | ACTIVITY_UNITS_Label | Activity Units |  |  |  | 6.01, 0.04, 0.54, 0.35 |
| Label | ACTIVITY_DATE_Label | Activity Date |  |  |  | 4.55, 0.04, 0.53, 0.35 |
| Label | UNIT_CODE_Label | Unit Code |  |  |  | 6.58, 0.04, 0.38, 0.35 |
| Label | DESTINATION_ASSOCIATE_Label | Ticket ID |  |  |  | 7.58, 0.04, 0.82, 0.35 |
| Label | SOURCE_LOT_CN_Label | Source ID |  |  |  | 0.57, 0.04, 1.09, 0.35 |
| Label | Label20 | Source |  |  |  | 1.71, 0.04, 2.81, 0.35 |
| Label | Label23 | Number of Ctrs |  |  |  | 7.00, 0.04, 0.54, 0.35 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | FISCAL_YEAR |  | FISCAL_YEAR | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  |  | 0.03, 0.03, 0.52, 0.20 |
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.NOTE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SDTRAN" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SDTRMT")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;  | DblClick | 5.11, 0.03, 0.85, 0.20 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  | Exit | 6.01, 0.03, 0.53, 0.20 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 4.55, 0.03, 0.53, 0.20 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS;  |  | 6.58, 0.03, 0.38, 0.20 |
| TextBox | Index |  | Index |  |  | 8.39, 0.29, 0.42, 0.14 |
| ComboBox | SOURCE_LOT_CN |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE FROM NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN=Source_Lot_ID_and_Source_string.CN ORDER BY NMIS_SOURCE_LOTS.ID;  | Enter, Exit | 0.58, 0.03, 1.07, 0.20 |
| ComboBox | Combo19 |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, Source_Lot_ID_and_Source_string.SOURCE, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN=Source_Lot_ID_and_Source_string.CN;  |  | 1.71, 0.03, 2.82, 0.20 |
| TextBox | NOTE | ID Activity Note: | NOTE |  |  | 1.28, 0.25, 7.08, 0.21 |
| TextBox | AMT_PER_UNIT |  | AMT_PER_UNIT |  |  | 6.99, 0.03, 0.56, 0.20 |
| TextBox | New_CN |  | =[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code |  |  | 2.96, 0.04, 0.97, 0.00 |
| TextBox | CN |  | CN |  |  | 3.96, 0.04, 0.67, 0.14 |
| TextBox | DESTINATION_ASSOCIATE |  | DESTINATION_ASSOCIATE |  |  | 6.24, 0.03, 0.75, 0.20 |
| ComboBox | TICKET_CN |  | TICKET_CN | SELECT NMIS_TICKETS.CN, NMIS_TICKETS.TKT_NO FROM NMIS_TICKETS WHERE (((NMIS_TICKETS.TICKET_TYPE) Like "S*")) ORDER BY NMIS_TICKETS.FY DESC , NMIS_TICKETS.TKT_NO DESC;  | AfterUpdate, DblClick, Exit | 7.58, 0.03, 0.83, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub ACTIVITY_CODE_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ACTIVITY_CODES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

End Sub

Private Sub ACTIVITY_UNITS_Exit(Cancel As Integer)
    
    Dim stBalance_Effect As String
    Dim lnNegBalance As Double
    
    If Not IsNull([BALANCE_EFFECT]) And Not IsNull([ACTIVITY_UNITS]) Then
    stBalance_Effect = [BALANCE_EFFECT]
    Select Case stBalance_Effect
        Case Is = "REMOVE"
            If [ACTIVITY_UNITS] > 0 Then
                'Response = MsgBox("Units should be Less than Zero. Change to Minus?", vbYesNo)
                'If Response = vbYes Then
                    lnNegBalance = [ACTIVITY_UNITS] * -1
                    [ACTIVITY_UNITS] = lnNegBalance
                'End If
            End If
        Case Is = "ADD"
            If [ACTIVITY_UNITS] < 0 Then
                MsgBox ("Units must be GREATER than Zero for Activity Code " & [Activity_Code])
                lnNegBalance = [ACTIVITY_UNITS] * -1
                [ACTIVITY_UNITS] = lnNegBalance
            End If
    End Select
    End If

End Sub

Private Sub Form_AfterInsert()

    'Sets the CN on the calling form to the INDEX on the calling form + User_Nursery_Code from the NMIS_ACCESS_SET_USER_NURSERY subform on the switchboard
    [CN] = [Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code

    Dim stDocName As String
    Dim stLinkCriteria As String


    stDocName = "NMIS_ID_MGMT_CODES_Ship_Ticket subform"
    
    stLinkCriteria = "[ACTIVITY_ID_CN]=" & "'" & Me![CN] & "'"

    DoCmd.RunCommand acCmdRefreshPage
    DoCmd.OpenForm stDocName, , , stLinkCriteria

End Sub

Private Sub Source_LOT_CN_DblClick(Cancel As Integer)

    SOURCE_LOT_CN.Locked = False
    MsgBox "Source Lot ID unlocked for edting"
    
End Sub

Private Sub SOURCE_LOT_CN_Enter()

    If IsNull(SOURCE_LOT_CN) Then
        SOURCE_LOT_CN.Locked = False
    Else
        SOURCE_LOT_CN.Locked = True
    End If

End Sub

Private Sub SOURCE_LOT_CN_Exit(Cancel As Integer)

    If Not IsNull(SOURCE_LOT_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
        If IsNull([NOTE]) Then
                NOTE = Forms![SEED_SHIPPING_TICKET Subform].Form![NOTE]
        End If
        If (Not IsNull(Forms![SEED_SHIPPING_TICKET Subform]![Default_Activity_Code]) And _
            IsNull(Activity_Code)) Then
            Activity_Code = Forms![SEED_SHIPPING_TICKET Subform]![Default_Activity_Code]
        End If
    End If
    SOURCE_LOT_CN.Locked = True
    
End Sub

Private Sub TICKET_CN_AfterUpdate()

    Requery
    
End Sub

Private Sub TICKET_CN_DblClick(Cancel As Integer)
    
    TICKET_CN.Locked = False
    MsgBox "Ticket ID now Unlocked for Editing"
    
End Sub

Private Sub TICKET_CN_Exit(Cancel As Integer)

    TICKET_CN.Locked = True
    
End Sub
```
