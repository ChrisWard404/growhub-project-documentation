# Form: Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform

**Caption:** Seed_Ship_Ticked_ID_ACTIVITIES subform  
**Record source:**

```sql
SELECT NMIS_SOURCE_LOTS.ID, NMIS_ID_ACTIVITIES.AGREEMENT_LOT_CN, NMIS_ID_ACTIVITIES.ACTIVITY_DATE, NMIS_ID_ACTIVITIES.FISCAL_YEAR, NMIS_ID_ACTIVITIES.ACTIVITY_CODE, NMIS_ID_ACTIVITIES.ACTIVITY_UNITS, NMIS_ID_ACTIVITIES.ACTIVITY_UNITS_PRESCRIBED, NMIS_ID_ACTIVITIES.ACTIVITY_TIME, NMIS_ID_ACTIVITIES.ACTIVITY_HOURS, NMIS_ID_ACTIVITIES.AMT_PER_UNIT, NMIS_ID_ACTIVITIES.UNIT_CODE, NMIS_ID_ACTIVITIES.TREATMENT_PRODUCT_ID, NMIS_ID_ACTIVITIES.CONTRACT_ITEM, NMIS_ID_ACTIVITIES.CHARGE_PER_HOUR_OVERRIDE, NMIS_ID_ACTIVITIES.CHARGE_PER_AMT_OVERRIDE, NMIS_ID_ACTIVITIES.CHARGE_PER_UNIT_OVERRIDE, NMIS_ID_ACTIVITIES.CHARGE_PER_ACTIVITY_OVERRIDE, NMIS_ID_ACTIVITIES.NOTE, NMIS_ID_ACTIVITIES.DESTINATION_ASSOCIATE, NMIS_ID_ACTIVITIES.SOURCE_LOT_CN, NMIS_ID_ACTIVITIES.AGREEMENT_LOT_CN, NMIS_ID_ACTIVITIES.ORDER_CN, NMIS_ID_ACTIVITIES.TICKET_CN, NMIS_ACTIVITY_CODES.ACTIVITY_NAME AS ACTIVITY_NO_NAME, NMIS_ID_ACTIVITIES.Index, NMIS_ACTIVITY_CODES.BALANCE_EFFECT, NMIS_ID_ACTIVITIES.AMT_PER_UNIT, (IIf([BALANCE_EFFECT]="NOEFFECT",0,1))*[ACTIVITY_UNITS] AS ACTIVITY_UNITS_TO_SUM, NMIS_ID_ACTIVITIES.CN FROM NMIS_SOURCE_LOTS INNER JOIN (NMIS_ACTIVITY_CODES INNER JOIN NMIS_ID_ACTIVITIES ON NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ID_ACTIVITIES.ACTIVITY_CODE) ON NMIS_SOURCE_LOTS.CN = NMIS_ID_ACTIVITIES.SOURCE_LOT_CN WHERE (((NMIS_SOURCE_LOTS.ID) Like [Forms]![Seed_Sow_Withdrawal_Ticket Subform]![View_Lot] & "*")) ORDER BY NMIS_SOURCE_LOTS.ID, NMIS_ID_ACTIVITIES.AGREEMENT_LOT_CN, NMIS_ID_ACTIVITIES.ACTIVITY_DATE, NMIS_ID_ACTIVITIES.AGREEMENT_LOT_CN;
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_AGREEMENT_LOTS`, `NMIS_FISCAL_YEARS`, `NMIS_ID_ACTIVITIES`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES_PRODUCTS`, `NMIS_TICKETS`, `NMIS_UNITS`  
**Embedded in:** `Form:Seed_Sow_Withdrawal_Ticket Subform`  
**Opens:** `Form:NMIS_ACTIVITY_CODES`, `Form:NMIS_AGREEMENT_LOTS`, `Form:NMIS_ID_ACTIVITIES_MORE_INFO_Ship_Tkt_FORM`, `Form:NMIS_ID_LOCATIONS_for_Sow_Withdrawal subform`, `Form:NMIS_ID_MGMT_CODES_Ship_Ticket subform`, `Form:NMIS_ID_MGMT_CODES_Sow_Withdrawal_Ticket subform`, `Form:seed_shipping_lot_label_SW`, `Form:seed_shipping_lot_label_sw_040207`, `Report:NMIS_ACTIVITY_CODES`, `Report:NMIS_ID_ACTIVITIES_MORE_INFO_Ship_Tkt_FORM`, `Report:NMIS_ID_LOCATIONS_for_Sow_Withdrawal subform`, `Report:NMIS_ID_MGMT_CODES_Ship_Ticket subform`, `Report:NMIS_ID_MGMT_CODES_Sow_Withdrawal_Ticket subform`, `Report:seed_shipping_lot_label_SW`, `Report:seed_shipping_lot_label_sw_040207`  
**Form events with code:** AfterInsert, BeforeInsert, BeforeUpdate  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ACTIVITY_CODE_Label | Activity Code |  |  |  | 4.92, 0.04, 0.78, 0.35 |
| Label | FISCAL_YEAR_Label | FY |  |  |  | 0.03, 0.04, 0.52, 0.35 |
| Label | ACTIVITY_UNITS_Label | Activity Units |  |  |  | 5.73, 0.04, 0.73, 0.35 |
| Label | ACTIVITY_DATE_Label | Activity Date |  |  |  | 4.29, 0.04, 0.60, 0.35 |
| Label | UNIT_CODE_Label | Unit Code |  |  |  | 6.49, 0.04, 0.38, 0.35 |
| Label | SOURCE_LOT_CN_Label | Source ID |  |  |  | 0.57, 0.04, 1.31, 0.35 |
| Label | Label20 | Source |  |  |  | 1.94, 0.04, 2.33, 0.35 |
| Label | Label122 | Agree Lot / Sow Order |  |  |  | 6.92, 0.04, 1.57, 0.35 |
| Label | Label38 | Ticket ID |  |  |  | 8.52, 0.04, 0.92, 0.35 |
| Label | Label42 | Job Code |  |  |  | 9.47, 0.04, 0.36, 0.35 |
| Label | Label43 | Loc-ation |  |  |  | 9.85, 0.04, 0.35, 0.35 |
| TextBox | LastActivityCN |  |  |  |  | 1.50, 0.12, 0.00, 0.00 |
| Label | Label45 | Print Tag |  |  |  | 10.23, 0.03, 0.34, 0.36 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | FISCAL_YEAR |  | FISCAL_YEAR | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  |  | 0.03, 0.03, 0.52, 0.20 |
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.BALANCE_EFFECT, NMIS_ACTIVITY_CODES.NOTE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) In ("CONE","SDEXTR","SDTRAN","SDTRMT"))) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE; | DblClick, Enter | 4.92, 0.03, 0.79, 0.20 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  | Enter, Exit | 5.73, 0.03, 0.72, 0.20 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 4.29, 0.03, 0.60, 0.20 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS;  |  | 6.49, 0.03, 0.39, 0.20 |
| ComboBox | SOURCE_LOT_CN |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE, NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE FROM NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN WHERE (((NMIS_SOURCE_LOTS.ID) Not Like "@*")) ORDER BY NMIS_SOURCE_LOTS.ID; | Enter, Exit | 0.58, 0.03, 1.31, 0.20 |
| ComboBox | Combo19 |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, Source_Lot_ID_and_Source_string.SOURCE, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN ORDER BY Source_Lot_ID_and_Source_string.SOURCE; |  | 1.94, 0.03, 2.33, 0.20 |
| TextBox | NOTE |  | NOTE |  |  | 1.44, 0.25, 7.73, 0.21 |
| TextBox | New_CN |  | =[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code |  |  | 3.19, 0.04, 0.97, 0.00 |
| TextBox | CN |  | CN |  |  | 4.62, 0.04, 0.58, 0.19 |
| ComboBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.ID_ORIGINAL, [Species_Product_and _Products].Class, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY, NMIS_AGREEMENT_LOTS.SOURCE_REQUIRED FROM NMIS_AGREEMENT_LOTS INNER JOIN [Species_Product_and _Products] ON NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN = [Species_Product_and _Products].CN WHERE (((NMIS_AGREEMENT_LOTS.BEGIN_FY)=[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].[Form]![FISCAL_YEAR]) AND ((NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN) Like IIf(IsNull([Forms]![Seed_Sow_Withdrawal_Ticket Subform]![Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].[Form]![AGREEMENT_LOT_CN]),[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].[Form]![SOURCE_LOT_CN],"*"))) ORDER BY NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID; | DblClick, Enter | 6.92, 0.03, 1.18, 0.20 |
| ComboBox | Combo121 |  | AGREEMENT_LOT_CN | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_SPECIES_PRODUCTS.SOWING_GROUP FROM NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN=NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN;  |  | 8.12, 0.03, 0.39, 0.20 |
| TextBox | DESTINATION_ASSOCIATE |  | DESTINATION_ASSOCIATE |  |  | 2.81, 0.04, 0.00, 0.00 |
| ComboBox | TICKET_CN |  | TICKET_CN | SELECT NMIS_TICKETS.CN, NMIS_TICKETS.TKT_NO FROM NMIS_TICKETS WHERE (((NMIS_TICKETS.TICKET_TYPE) Like "s*")) ORDER BY NMIS_TICKETS.FY DESC , NMIS_TICKETS.TKT_NO DESC;  | AfterUpdate, DblClick, Exit | 8.52, 0.03, 0.93, 0.20 |
| CommandButton | Open_Jobcode_Form | JC |  |  | Click | 9.47, 0.03, 0.38, 0.31 |
| CommandButton | Open_Storage_Location_Form | Loc |  |  | Click | 9.85, 0.03, 0.35, 0.31 |
| CommandButton | Open_More_Info_Form | + |  |  | Click | 0.05, 0.25, 0.17, 0.20 |
| TextBox | Index |  | Index |  |  | 8.99, 0.29, 0.42, 0.14 |
| CommandButton | Enter_Strat_Activity | Enter Strat Activity |  |  | Click | 0.30, 0.27, 1.10, 0.19 |
| CommandButton | Print_Lot_Label | Tag |  |  | Click | 10.23, 0.00, 0.35, 0.34 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub ACTIVITY_CODE_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ACTIVITY_CODES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

End Sub

Private Sub ACTIVITY_CODE_Enter()

    Activity_Code.Requery
    
End Sub

Private Sub ACTIVITY_UNITS_Enter()

    If IsNull(Activity_Code) Then
        MsgBox "Please enter and ACTIVITY CODE first", vbCritical
        Activity_Code.SetFocus
    End If
    
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

Private Sub Agreement_Lot_CN_AfterUpdate()

    AGREEMENT_LOT_CN.Requery
    
End Sub

Private Sub AGREEMENT_LOT_CN_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String
    Dim rs As Object
    
    LastAgreementCN = AGREEMENT_LOT_CN
    
    If (Not IsNull([AGREEMENT_LOT_CN]) Or [AGREEMENT_LOT_CN] = "") Then
        DoCmd.OpenForm "NMIS_AGREEMENT_LOTS", acNormal, , _
            "[CN] = Forms![Seed_Sow_Withdrawal_Ticket Subform]![Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].Form![AGREEMENT_LOT_CN] ", , acNormal
        Forms![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY].Visible = False
        DoCmd.GoToControl "ID"
        Forms![NMIS_AGREEMENT_LOTS]![Find_Lot].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Sort_By_Entry_Order].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots Label].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![Open_NMIS_Agreements Form].Visible = False
    End If
    
End Sub

Private Sub AGREEMENT_LOT_CN_Enter()

    AGREEMENT_LOT_CN.Requery
    
End Sub

Private Sub Enter_Strat_Activity_Click()

    LastActivityCN = CN
 
    If Activity_Code <> "STRAT" Then
    If IsNull(Forms![Seed_Sow_Withdrawal_Ticket Subform]![Default_Strat_Date]) Then
        MsgBox "Please enter a Default Strat Date"
    Else
        DoCmd.SetWarnings False
        Forms![Seed_Sow_Withdrawal_Ticket Subform]![Default_Activity_Code] = "STRAT"
        DoCmd.OpenQuery "StratAddActivityEnter"
        DoCmd.OpenQuery "StratAddUpdateCN"
        DoCmd.Requery
        Set rs = Me.Recordset.Clone
        rs.FindFirst "[CN] = '" & Me![LastActivityCN] & "'"
        Me.Bookmark = rs.Bookmark
        DoCmd.SetWarnings True
    End If
    Else
        MsgBox "Already a Strat Activity"
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

Private Sub Form_BeforeInsert(Cancel As Integer)

    If IsNull(ACTIVITY_DATE) Then
        ACTIVITY_DATE = [Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![DESIRED_DATE]
    End If
    
End Sub

Private Sub Form_BeforeUpdate(Cancel As Integer)

    If IsNull(ACTIVITY_DATE) Then
        ACTIVITY_DATE = [Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![DESIRED_DATE]
    End If
    
End Sub

Private Sub Open_More_Info_Form_Click()
On Error GoTo Err_Open_More_Info_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_ACTIVITIES_MORE_INFO_Ship_Tkt_FORM"
    stLinkCriteria = "[SOURCE_LOT_CN]=" & "'" & Me![SOURCE_LOT_CN] & "'"
   
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_More_Info_Form_Click:
    Exit Sub

Err_Open_More_Info_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_More_Info_Form_Click
    
End Sub

Private Sub Print_Lot_Label_Click()
On Error GoTo Err_Print_Lot_Label_Click

    Dim stDocName As String

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "040207" Then
            stDocName = "seed_shipping_lot_label_sw_040207"
    Else
        stDocName = "seed_shipping_lot_label_SW"
    End If
    DoCmd.OpenReport stDocName, acViewPreview
    
Exit_Print_Lot_Label_Click:
    Exit Sub

Err_Print_Lot_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Lot_Label_Click
    
End Sub

Private Sub Source_LOT_CN_DblClick(Cancel As Integer)

    SOURCE_LOT_CN.Locked = False
    MsgBox "Source ID Unlocked for editing"
    
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
            If Not IsNull([Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![NOTE]) Then
                NOTE = [Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![NOTE]
            End If
        End If
        If IsNull(DESTINATION_ASSOCIATE) Then
            DESTINATION_ASSOCIATE = [Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![DELIVERED_TO_ASSOCIATE]
        End If
        If (Not IsNull(Forms![Seed_Sow_Withdrawal_Ticket Subform]![Default_Activity_Code]) And _
            IsNull(Activity_Code)) Then
            Activity_Code = Forms![Seed_Sow_Withdrawal_Ticket Subform]![Default_Activity_Code]
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
Private Sub Open_Jobcode_Form_Click()
On Error GoTo Err_Open_Jobcode_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_MGMT_CODES_Sow_Withdrawal_Ticket subform"
    
    stLinkCriteria = "[ACTIVITY_ID_CN]=" & "'" & Me![CN] & "'"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Jobcode_Form_Click:
    Exit Sub

Err_Open_Jobcode_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Jobcode_Form_Click
    
End Sub
Private Sub Open_Storage_Location_Form_Click()
On Error GoTo Err_Open_Storage_Location_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_LOCATIONS_for_Sow_Withdrawal subform"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Storage_Location_Form_Click:
    Exit Sub

Err_Open_Storage_Location_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Storage_Location_Form_Click
    
End Sub
```
