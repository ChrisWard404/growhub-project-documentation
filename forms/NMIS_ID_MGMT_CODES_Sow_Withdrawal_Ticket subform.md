# Form: NMIS_ID_MGMT_CODES_Sow_Withdrawal_Ticket subform

**Caption:** Management Codes  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_ASSOCIATES`, `NMIS_SOURCE_LOTS`  
**Subforms/subreports:** `Form.NMIS_CLIENT_MGMT_CODES_SW subform`, `Form.NMIS_Special_Charges subform`  
**Opened from (VBA):** `Form_Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform`  
**Form events with code:** Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label147 | Management Codes/Special Charges |  |  |  | 2.43, 0.18, 3.62, 0.28 |
| Line | Line26 |  |  |  |  | 0.12, 0.62, 7.97, 0.00 |
| TextBox | CN |  |  |  |  | 0.88, 0.25, 1.08, 0.00 |
| CommandButton | Refresh_Close | Close |  |  | Click | 7.41, 0.08, 0.47, 0.28 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_CLIENT_MGMT_CODES subform |  | Form.NMIS_CLIENT_MGMT_CODES_SW subform (master: CN → child: ACTIVITY_ID_CN) |  |  | 0.08, 0.80, 3.17, 3.17 |
| Subform | Special_Charges subform | Special Charges | Form.NMIS_Special_Charges subform (master: CN → child: CN) |  |  | 3.29, 0.81, 4.80, 3.17 |
| Label | NMIS_ID_Mgmt_Codes subform Label | Management Codes |  |  |  | 0.15, 0.58, 1.41, 0.20 |
| Label | Label11 | Date: |  |  |  | 0.24, 0.33, 0.40, 0.20 |
| Label | Label12 | Activity Code: |  |  |  | 1.70, 0.33, 0.97, 0.20 |
| ComboBox | Activity_No_Name | Activity Description: | =[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].[Form]![ACTIVITY_CODE] | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES; |  | 5.08, 0.33, 2.96, 0.20 |
| Label | Label28 | Lot ID: |  |  |  | 0.15, 0.06, 0.49, 0.20 |
| ComboBox | Combo29 |  | =[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].[Form]![SOURCE_LOT_CN] | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS; |  | 0.70, 0.06, 1.47, 0.20 |
| TextBox | Activity_Date |  | =[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].[Form]![ACTIVITY_DATE] |  |  | 0.70, 0.33, 0.79, 0.20 |
| TextBox | Activity_Code |  | =[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].[Form]![ACTIVITY_CODE] |  |  | 2.73, 0.33, 0.82, 0.20 |
| Label | Stored_For_Label | Stored For: |  |  |  | 2.57, 0.06, 0.80, 0.20 |
| ComboBox | Stored_For |  | =[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].[Form]![SOURCE_LOT_CN] | SELECT NMIS_SOURCE_LOTS.CN, [STORED_FOR_ASSOCIATE] & " " & [Associate_Name] AS SF FROM NMIS_ASSOCIATES RIGHT JOIN NMIS_SOURCE_LOTS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE; |  | 3.44, 0.06, 4.60, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Form_Open(Cancel As Integer)
'If a new entry set to defaults on Shipping ticket

    If IsNull(Forms![NMIS_ID_Mgmt_Codes_Sow_Withdrawal_Ticket subform]! _
        [NMIS_CLIENT_MGMT_CODES subform]![CLIENT_ASSOCIATE]) Then
        If Not IsNull(Forms![Seed_Sow_Withdrawal_Ticket Subform]![Default_Payee]) Then
            [NMIS_CLIENT_MGMT_CODES subform].Form![CLIENT_ASSOCIATE] = _
            Forms![Seed_Sow_Withdrawal_Ticket Subform]![Default_Payee]
        End If
    End If
    If IsNull(Forms![NMIS_ID_Mgmt_Codes_Sow_Withdrawal_Ticket subform]! _
        [NMIS_CLIENT_MGMT_CODES subform]![MGMT_CODE]) Then
      If Not IsNull(Forms![Seed_Sow_Withdrawal_Ticket Subform]![Default_Mgmt_Code]) Then
        Forms![NMIS_ID_Mgmt_Codes_Sow_Withdrawal_Ticket subform]! _
          [NMIS_CLIENT_MGMT_CODES subform]![MGMT_CODE] = _
        Forms![Seed_Sow_Withdrawal_Ticket Subform]![Default_Mgmt_Code]
      End If
    End If
    
End Sub

Private Sub Refresh_Close_Click()
On Error GoTo Err_Refresh_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Refresh_Close_Click:
    Exit Sub

Err_Refresh_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_Close_Click
    
End Sub
```
